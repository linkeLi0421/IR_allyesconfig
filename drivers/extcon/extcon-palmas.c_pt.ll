; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-palmas.c_pt.bc'
source_filename = "../drivers/extcon/extcon-palmas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.palmas_usb = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, i32, i32, i8, i8, i8, i8 }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_extcon_palmas__303_428_palmas_usb_driver_init6 = internal global ptr @palmas_usb_driver_init, section ".initcall6.init", align 4
@palmas_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @palmas_usb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_palmas_usb_driver_exit = internal global ptr @palmas_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [40 x i8] c"extcon_palmas.alias=platform:palmas-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [57 x i8] c"extcon_palmas.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [56 x i8] c"extcon_palmas.description=Palmas USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [48 x i8] c"extcon_palmas.file=drivers/extcon/extcon-palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [26 x i8] c"extcon_palmas.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"palmas-usb\00", [21 x i8] zeroinitializer }, align 32
@of_palmas_match_tbl = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-usb-vid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6035-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6035-usb-vid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@palmas_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @palmas_usb_suspend, ptr @palmas_usb_resume, ptr @palmas_usb_suspend, ptr @palmas_usb_resume, ptr @palmas_usb_suspend, ptr @palmas_usb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get valid parent\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"palmas_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/extcon/extcon-palmas.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr = internal global ptr @palmas_usb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,wakeup\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,enable-id-detection\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,enable-vbus-detection\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get id gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-delay-ms\00", [46 x i8] zeroinitializer }, align 32
@palmas_extcon_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.15 = internal global ptr @palmas_usb_probe._entry.13, section ".printk_index", align 4
@palmas_usb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.18 = internal global ptr @palmas_usb_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"palmas_usb_id\00", [18 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get IRQ %d, err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.22 = internal global ptr @palmas_usb_probe._entry.20, section ".printk_index", align 4
@palmas_usb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get id irq\0A\00", [42 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.25 = internal global ptr @palmas_usb_probe._entry.23, section ".printk_index", align 4
@palmas_usb_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request handler for id irq\0A\00", [58 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.28 = internal global ptr @palmas_usb_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"palmas_usb_vbus\00", [16 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.31 = internal global ptr @palmas_usb_probe._entry.30, section ".printk_index", align 4
@palmas_usb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't remux GPIO1\0A\00", [45 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.34 = internal global ptr @palmas_usb_probe._entry.32, section ".printk_index", align 4
@palmas_usb_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get vbus irq\0A\00", [40 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.37 = internal global ptr @palmas_usb_probe._entry.35, section ".printk_index", align 4
@palmas_usb_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request handler for vbus irq\0A\00", [56 x i8] zeroinitializer }, align 32
@palmas_usb_probe._entry_ptr.40 = internal global ptr @palmas_usb_probe._entry.38, section ".printk_index", align 4
@devm_delayed_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&(w)->work)\00", [34 x i8] zeroinitializer }, align 32
@devm_delayed_work_autocancel.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&(w)->timer\00", [20 x i8] zeroinitializer }, align 32
@palmas_gpio_id_detect.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extcon_palmas\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas_gpio_id_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"USB-HOST cable is detached\0A\00", [36 x i8] zeroinitializer }, align 32
@palmas_gpio_id_detect.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.3, ptr @.str.47, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"USB-HOST cable is attached\0A\00", [36 x i8] zeroinitializer }, align 32
@palmas_id_irq_handler.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.48, ptr @.str.3, ptr @.str.47, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"palmas_id_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@palmas_id_irq_handler.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.48, ptr @.str.3, ptr @.str.46, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@palmas_id_irq_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.48, ptr @.str.3, ptr @.str.46, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@palmas_id_irq_handler.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" USB-HOST cable is attached\0A\00", [35 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@palmas_vbus_irq_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"palmas_vbus_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB cable is attached\0A\00", [41 x i8] zeroinitializer }, align 32
@palmas_vbus_irq_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Spurious connect event detected\0A\00", [63 x i8] zeroinitializer }, align 32
@palmas_vbus_irq_handler.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB cable is detached\0A\00", [41 x i8] zeroinitializer }, align 32
@palmas_vbus_irq_handler.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Spurious disconnect event detected\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"palmas_usb_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 419, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 422, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"of_palmas_match_tbl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 411, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"palmas_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 409, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 184, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 193, i32 52 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 195, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 197, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 207, i32 61 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 211, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 213, i32 63 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 232, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"palmas_extcon_cable\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 27, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 259, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 265, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 279, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 281, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 288, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 301, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 317, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 319, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 331, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 339, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 352, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 50, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 131, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 134, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 92, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 110, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 55, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 57, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 64, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [34 x i8] c"../drivers/extcon/extcon-palmas.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 66, i32 4 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_palmas_usb_driver_exit, ptr @__initcall__kmod_extcon_palmas__303_428_palmas_usb_driver_init6, ptr @palmas_usb_driver_exit, ptr @palmas_usb_probe._entry, ptr @palmas_usb_probe._entry.13, ptr @palmas_usb_probe._entry.16, ptr @palmas_usb_probe._entry.20, ptr @palmas_usb_probe._entry.23, ptr @palmas_usb_probe._entry.26, ptr @palmas_usb_probe._entry.30, ptr @palmas_usb_probe._entry.32, ptr @palmas_usb_probe._entry.35, ptr @palmas_usb_probe._entry.38, ptr @palmas_usb_probe._entry_ptr, ptr @palmas_usb_probe._entry_ptr.15, ptr @palmas_usb_probe._entry_ptr.18, ptr @palmas_usb_probe._entry_ptr.22, ptr @palmas_usb_probe._entry_ptr.25, ptr @palmas_usb_probe._entry_ptr.28, ptr @palmas_usb_probe._entry_ptr.31, ptr @palmas_usb_probe._entry_ptr.34, ptr @palmas_usb_probe._entry_ptr.37, ptr @palmas_usb_probe._entry_ptr.40, ptr @palmas_usb_driver, ptr @.str, ptr @of_palmas_match_tbl, ptr @palmas_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @palmas_extcon_cable, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @devm_delayed_work_autocancel.__key, ptr @.str.41, ptr @devm_delayed_work_autocancel.__key.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_palmas_match_tbl to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_extcon_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_usb_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_usb_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @palmas_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %debounce = alloca i32, align 4
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
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tobool10.not = icmp ne ptr %7, null
  %tobool11.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool10.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i349 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i349, null
  %conv = zext i1 %tobool.i to i32
  %wakeup = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %wakeup to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %wakeup, align 4
  %call.i350 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %tobool.i351 = icmp ne ptr %call.i350, null
  %enable_id_detection = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 16
  %frombool = zext i1 %tobool.i351 to i8
  %9 = ptrtoint ptr %enable_id_detection to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %enable_id_detection, align 1
  %call.i352 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %tobool.i353 = icmp ne ptr %call.i352, null
  %enable_vbus_detection = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 15
  %frombool16 = zext i1 %tobool.i353 to i8
  %10 = ptrtoint ptr %enable_vbus_detection to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool16, ptr %enable_vbus_detection, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end9
  %wakeup17 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 14
  %11 = ptrtoint ptr %wakeup17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %wakeup17, align 4
  %enable_id_detection18 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %enable_id_detection18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enable_id_detection18, align 1
  %enable_vbus_detection19 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 15
  %13 = ptrtoint ptr %enable_vbus_detection19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %enable_vbus_detection19, align 4
  br i1 %tobool11.not, label %if.else.if.end25_crit_edge, label %if.then21

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  %16 = ptrtoint ptr %wakeup17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %wakeup17, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge, %if.then12
  %call27 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 1) #6
  %id_gpiod = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call27, ptr %id_gpiod, align 4
  %cmp.i354 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i354, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call27 to i32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %call37 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1) #6
  %vbus_gpiod = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call37, ptr %vbus_gpiod, align 4
  %cmp.i355 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i355, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call37 to i32
  %call44 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %enable_id_detection46 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 16
  %21 = ptrtoint ptr %enable_id_detection46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_id_detection46, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool47.not = icmp eq i8 %22, 0
  br i1 %tobool47.not, label %if.end45.if.end54_crit_edge, label %land.lhs.true49

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

land.lhs.true49:                                  ; preds = %if.end45
  %23 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %id_gpiod, align 4
  %tobool51.not = icmp eq ptr %24, null
  br i1 %tobool51.not, label %land.lhs.true49.if.end54_crit_edge, label %if.then52

land.lhs.true49.if.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %enable_id_detection46 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %enable_id_detection46, align 1
  %enable_gpio_id_detection = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 17
  %26 = ptrtoint ptr %enable_gpio_id_detection to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %enable_gpio_id_detection, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true49.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %enable_vbus_detection55 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 15
  %27 = ptrtoint ptr %enable_vbus_detection55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enable_vbus_detection55, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool56.not = icmp eq i8 %28, 0
  br i1 %tobool56.not, label %if.end54.if.end63_crit_edge, label %land.lhs.true58

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.lhs.true58:                                  ; preds = %if.end54
  %29 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbus_gpiod, align 4
  %tobool60.not = icmp eq ptr %30, null
  br i1 %tobool60.not, label %land.lhs.true58.if.end63_crit_edge, label %if.then61

land.lhs.true58.if.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %enable_vbus_detection55 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enable_vbus_detection55, align 4
  %enable_gpio_vbus_detection = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %enable_gpio_vbus_detection to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %enable_gpio_vbus_detection, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true58.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  %enable_gpio_id_detection64 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 17
  %33 = ptrtoint ptr %enable_gpio_id_detection64 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enable_gpio_id_detection64, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool65.not = icmp eq i8 %34, 0
  br i1 %tobool65.not, label %if.end63.if.end77_crit_edge, label %if.then66

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then66:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debounce) #6
  %35 = ptrtoint ptr %debounce to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %debounce, align 4, !annotation !129
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull %debounce, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool68.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool68.not, label %if.then66.if.end70_crit_edge, label %if.then69

if.then66.if.end70_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %debounce to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 20, ptr %debounce, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.then66.if.end70_crit_edge
  %37 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %id_gpiod, align 4
  %39 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debounce, align 4
  %mul = mul i32 %40, 1000
  %call72 = call i32 @gpiod_set_debounce(ptr noundef %38, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp = icmp slt i32 %call72, 0
  br i1 %cmp, label %if.else.i, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.else.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debounce, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %42) #6
  %sw_debounce_jiffies = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 11
  %43 = ptrtoint ptr %sw_debounce_jiffies to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call2.i, ptr %sw_debounce_jiffies, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else.i, %if.end70.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce) #6
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end63.if.end77_crit_edge
  %wq_detectid = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 12
  call void @__init_work(ptr noundef %wq_detectid, i32 noundef 0) #6
  %44 = ptrtoint ptr %wq_detectid to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %wq_detectid, align 4
  %lockdep_map.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @devm_delayed_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %45 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 12, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %47 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @palmas_gpio_id_detect, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 12, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @devm_delayed_work_autocancel.__key.42) #6
  %call.i356 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %wq_detectid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool80.not = icmp eq i32 %call.i356, 0
  br i1 %tobool80.not, label %if.end82, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82:                                         ; preds = %if.end77
  %usb = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 13
  %48 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %usb, align 4
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %3, ptr %call.i, align 4
  %dev85 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %dev85 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %dev85, align 4
  %wakeup86 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 14
  %51 = ptrtoint ptr %wakeup86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wakeup86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp ne i32 %52, 0
  %arrayidx.i3.i = getelementptr %struct.palmas, ptr %3, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i3.i, align 4
  %..i = zext i1 %tobool.not.i to i32
  %call.i4.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 83, i32 noundef %..i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call88 = call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @palmas_extcon_cable) #6
  %edev = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call88, ptr %edev, align 4
  %cmp.i357 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357, label %do.end94, label %if.end96

do.end94:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end96:                                         ; preds = %if.end82
  %call99 = call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end106, label %do.end104

do.end104:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end106:                                        ; preds = %if.end96
  %57 = ptrtoint ptr %enable_id_detection46 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %enable_id_detection46, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool108.not = icmp eq i8 %58, 0
  br i1 %tobool108.not, label %if.else125, label %if.then109

if.then109:                                       ; preds = %if.end106
  %irq_data = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 8
  %59 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irq_data, align 4
  %call110 = call i32 @regmap_irq_get_virq(ptr noundef %60, i32 noundef 20) #6
  %id_otg_irq = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 3
  %61 = ptrtoint ptr %id_otg_irq to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call110, ptr %id_otg_irq, align 4
  %62 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_data, align 4
  %call112 = call i32 @regmap_irq_get_virq(ptr noundef %63, i32 noundef 21) #6
  %id_irq = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 4
  %64 = ptrtoint ptr %id_irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call112, ptr %id_irq, align 4
  %65 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev85, align 4
  %call115 = call i32 @devm_request_threaded_irq(ptr noundef %66, i32 noundef %call112, ptr noundef null, ptr noundef nonnull @palmas_id_irq_handler, i32 noundef 8195, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %do.end121, label %if.then109.if.end153_crit_edge

if.then109.if.end153_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

do.end121:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %68, i32 noundef %call115) #9
  br label %cleanup

if.else125:                                       ; preds = %if.end106
  %69 = ptrtoint ptr %enable_gpio_id_detection64 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %enable_gpio_id_detection64, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool127.not = icmp eq i8 %70, 0
  br i1 %tobool127.not, label %if.else125.if.end153_crit_edge, label %if.then128

if.else125.if.end153_crit_edge:                   ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.then128:                                       ; preds = %if.else125
  %71 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %id_gpiod, align 4
  %call130 = call i32 @gpiod_to_irq(ptr noundef %72) #6
  %gpio_id_irq = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 7
  %73 = ptrtoint ptr %gpio_id_irq to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call130, ptr %gpio_id_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp132 = icmp slt i32 %call130, 0
  br i1 %cmp132, label %do.end137, label %if.end140

do.end137:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  %74 = ptrtoint ptr %gpio_id_irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gpio_id_irq, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.then128
  %call143 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call130, ptr noundef null, ptr noundef nonnull @palmas_gpio_id_irq_handler, i32 noundef 8195, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %do.end149, label %if.end140.if.end153_crit_edge

if.end140.if.end153_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

do.end149:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end153:                                        ; preds = %if.end140.if.end153_crit_edge, %if.else125.if.end153_crit_edge, %if.then109.if.end153_crit_edge
  %76 = ptrtoint ptr %enable_vbus_detection55 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %enable_vbus_detection55, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool155.not = icmp eq i8 %77, 0
  br i1 %tobool155.not, label %if.else173, label %if.then156

if.then156:                                       ; preds = %if.end153
  %irq_data157 = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 8
  %78 = ptrtoint ptr %irq_data157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %irq_data157, align 4
  %call158 = call i32 @regmap_irq_get_virq(ptr noundef %79, i32 noundef 22) #6
  %vbus_otg_irq = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 5
  %80 = ptrtoint ptr %vbus_otg_irq to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call158, ptr %vbus_otg_irq, align 4
  %81 = ptrtoint ptr %irq_data157 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %irq_data157, align 4
  %call160 = call i32 @regmap_irq_get_virq(ptr noundef %82, i32 noundef 23) #6
  %vbus_irq = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 6
  %83 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call160, ptr %vbus_irq, align 4
  %84 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev85, align 4
  %call163 = call i32 @devm_request_threaded_irq(ptr noundef %85, i32 noundef %call160, ptr noundef null, ptr noundef nonnull @palmas_vbus_irq_handler, i32 noundef 8195, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %do.end169, label %if.then156.if.end213_crit_edge

if.then156.if.end213_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end169:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vbus_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %87, i32 noundef %call163) #9
  br label %cleanup

if.else173:                                       ; preds = %if.end153
  %enable_gpio_vbus_detection174 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 18
  %88 = ptrtoint ptr %enable_gpio_vbus_detection174 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %enable_gpio_vbus_detection174, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool175.not = icmp eq i8 %89, 0
  br i1 %tobool175.not, label %if.else173.if.end213_crit_edge, label %if.then176

if.else173.if.end213_crit_edge:                   ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

if.then176:                                       ; preds = %if.else173
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 2
  %90 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i, align 4
  %call.i.i358 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 250, i32 noundef 24, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i358)
  %cmp178 = icmp slt i32 %call.i.i358, 0
  br i1 %cmp178, label %do.end183, label %if.end185

do.end183:                                        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end185:                                        ; preds = %if.then176
  %irq_data186 = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 8
  %92 = ptrtoint ptr %irq_data186 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %irq_data186, align 4
  %call187 = call i32 @regmap_irq_get_virq(ptr noundef %93, i32 noundef 22) #6
  %vbus_otg_irq188 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 5
  %94 = ptrtoint ptr %vbus_otg_irq188 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call187, ptr %vbus_otg_irq188, align 4
  %95 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vbus_gpiod, align 4
  %call190 = call i32 @gpiod_to_irq(ptr noundef %96) #6
  %gpio_vbus_irq = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 8
  %97 = ptrtoint ptr %gpio_vbus_irq to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call190, ptr %gpio_vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp192 = icmp slt i32 %call190, 0
  br i1 %cmp192, label %do.end197, label %if.end200

do.end197:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #9
  %98 = ptrtoint ptr %gpio_vbus_irq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %gpio_vbus_irq, align 4
  br label %cleanup

if.end200:                                        ; preds = %if.end185
  %call203 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call190, ptr noundef null, ptr noundef nonnull @palmas_vbus_irq_handler, i32 noundef 8195, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %do.end209, label %if.end200.if.end213_crit_edge

if.end200.if.end213_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

do.end209:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end213:                                        ; preds = %if.end200.if.end213_crit_edge, %if.else173.if.end213_crit_edge, %if.then156.if.end213_crit_edge
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %101, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i359 = call i32 @regmap_write(ptr noundef %103, i32 noundef 84, i32 noundef 4) #6
  %104 = ptrtoint ptr %enable_id_detection46 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %enable_id_detection46, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i360 = icmp eq i8 %105, 0
  br i1 %tobool.not.i360, label %if.end213.if.end.i362_crit_edge, label %if.then.i361

if.end213.if.end.i362_crit_edge:                  ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i362

if.then.i361:                                     ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  %arrayidx.i23.i = getelementptr %struct.palmas, ptr %107, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i23.i, align 4
  %call.i24.i = call i32 @regmap_write(ptr noundef %109, i32 noundef 86, i32 noundef 4) #6
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  %arrayidx.i25.i = getelementptr %struct.palmas, ptr %111, i32 0, i32 2, i32 1
  %112 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i25.i, align 4
  %call.i26.i = call i32 @regmap_write(ptr noundef %113, i32 noundef 100, i32 noundef 17) #6
  br label %if.end.i362

if.end.i362:                                      ; preds = %if.then.i361, %if.end213.if.end.i362_crit_edge
  %114 = ptrtoint ptr %enable_vbus_detection55 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %enable_vbus_detection55, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool5.not.i = icmp eq i8 %115, 0
  br i1 %tobool5.not.i, label %if.end.i362.if.end8.i_crit_edge, label %if.then6.i

if.end.i362.if.end8.i_crit_edge:                  ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #8
  %vbus_irq.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 6
  %116 = ptrtoint ptr %vbus_irq.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vbus_irq.i, align 4
  %call7.i = call i32 @palmas_vbus_irq_handler(i32 noundef %117, ptr noundef nonnull %call.i) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i362.if.end8.i_crit_edge
  %118 = ptrtoint ptr %enable_id_detection46 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %enable_id_detection46, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool10.not.i = icmp eq i8 %119, 0
  br i1 %tobool10.not.i, label %if.end8.i.palmas_enable_irq.exit_crit_edge, label %if.then11.i

if.end8.i.palmas_enable_irq.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %palmas_enable_irq.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 30) #6
  %id_irq.i = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 4
  %120 = ptrtoint ptr %id_irq.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %id_irq.i, align 4
  %call12.i = call i32 @palmas_id_irq_handler(i32 noundef %121, ptr noundef nonnull %call.i) #6
  br label %palmas_enable_irq.exit

palmas_enable_irq.exit:                           ; preds = %if.then11.i, %if.end8.i.palmas_enable_irq.exit_crit_edge
  %enable_gpio_vbus_detection214 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 18
  %122 = ptrtoint ptr %enable_gpio_vbus_detection214 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %enable_gpio_vbus_detection214, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool215.not = icmp eq i8 %123, 0
  br i1 %tobool215.not, label %palmas_enable_irq.exit.if.end219_crit_edge, label %if.then216

palmas_enable_irq.exit.if.end219_crit_edge:       ; preds = %palmas_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

if.then216:                                       ; preds = %palmas_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_vbus_irq217 = getelementptr inbounds %struct.palmas_usb, ptr %call.i, i32 0, i32 8
  %124 = ptrtoint ptr %gpio_vbus_irq217 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %gpio_vbus_irq217, align 4
  %call218 = call i32 @palmas_vbus_irq_handler(i32 noundef %125, ptr noundef nonnull %call.i)
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %palmas_enable_irq.exit.if.end219_crit_edge
  call void @palmas_gpio_id_detect(ptr noundef %wq_detectid)
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end219, %do.end209, %do.end197, %do.end183, %do.end169, %do.end149, %do.end137, %do.end121, %do.end104, %do.end94, %if.end77.cleanup_crit_edge, %if.then40, %if.then30, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call34, %if.then30 ], [ %call44, %if.then40 ], [ -12, %do.end94 ], [ %call99, %do.end104 ], [ %call115, %do.end121 ], [ %call163, %do.end169 ], [ 0, %if.end219 ], [ %call.i.i358, %do.end183 ], [ %99, %do.end197 ], [ %call203, %do.end209 ], [ %75, %do.end137 ], [ %call143, %do.end149 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i356, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @palmas_gpio_id_detect(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %work, i32 -40
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %id_gpiod = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @extcon_set_state_sync(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_gpio_id_detect.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_gpio_id_detect, %if.then12)) #6
          to label %cleanup [label %if.then12], !srcloc !130

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %work, i32 -44
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_gpio_id_detect.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.46) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @extcon_set_state_sync(ptr noundef %1, i32 noundef 2, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_gpio_id_detect.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_gpio_id_detect, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !130

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr i8, ptr %work, i32 -44
  %6 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_gpio_id_detect.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.47) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.else, %if.then12, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_id_irq_handler(i32 noundef %irq, ptr nocapture noundef %_palmas_usb) #2 align 64 {
entry:
  %set = alloca i32, align 4
  %id_src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #6
  %0 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %set, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id_src) #6
  %1 = ptrtoint ptr %id_src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id_src, align 4, !annotation !129
  %edev1 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 2
  %2 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edev1, align 4
  %4 = ptrtoint ptr %_palmas_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_palmas_usb, align 4
  %arrayidx.i = getelementptr %struct.palmas, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 96, ptr noundef nonnull %set) #6
  %8 = ptrtoint ptr %_palmas_usb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_palmas_usb, align 4
  %arrayidx.i122 = getelementptr %struct.palmas, ptr %9, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i122, align 4
  %call.i123 = call i32 @regmap_read(ptr noundef %11, i32 noundef 95, ptr noundef nonnull %id_src) #6
  %12 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %id_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id_src, align 4
  %and4 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %_palmas_usb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_palmas_usb, align 4
  %arrayidx.i124 = getelementptr %struct.palmas, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i124, align 4
  %call.i125 = call i32 @regmap_write(ptr noundef %19, i32 noundef 97, i32 noundef 1) #6
  %linkstat = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 13
  %20 = ptrtoint ptr %linkstat to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %linkstat, align 4
  %call8 = call i32 @extcon_set_state_sync(ptr noundef %3, i32 noundef 2, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_id_irq_handler, %if.then13)) #6
          to label %if.end95 [label %if.then13], !srcloc !130

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_id_irq_handler.__UNIQUE_ID_ddebug297, ptr noundef %22, ptr noundef nonnull @.str.47) #6
  br label %if.end95

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.if.else41_crit_edge, label %land.lhs.true16

if.else.if.else41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else41

land.lhs.true16:                                  ; preds = %if.else
  %23 = ptrtoint ptr %id_src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id_src, align 4
  %and17 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true16.if.else41_crit_edge, label %if.then19

land.lhs.true16.if.else41_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else41

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %_palmas_usb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_palmas_usb, align 4
  %arrayidx.i126 = getelementptr %struct.palmas, ptr %26, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i126, align 4
  %call.i127 = call i32 @regmap_write(ptr noundef %28, i32 noundef 97, i32 noundef 16) #6
  %linkstat22 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 13
  %29 = ptrtoint ptr %linkstat22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %linkstat22, align 4
  %call23 = call i32 @extcon_set_state_sync(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_id_irq_handler, %if.then36)) #6
          to label %if.end95 [label %if.then36], !srcloc !130

if.then36:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %30 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev37, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_id_irq_handler.__UNIQUE_ID_ddebug298, ptr noundef %31, ptr noundef nonnull @.str.46) #6
  br label %if.end95

if.else41:                                        ; preds = %land.lhs.true16.if.else41_crit_edge, %if.else.if.else41_crit_edge
  %linkstat42 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 13
  %32 = ptrtoint ptr %linkstat42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %linkstat42, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %if.else41.if.end95_crit_edge [
    i32 2, label %land.lhs.true43
    i32 0, label %land.lhs.true69
  ]

if.else41.if.end95_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true43:                                  ; preds = %if.else41
  br i1 %tobool.not, label %if.then46, label %land.lhs.true43.if.end95_crit_edge

land.lhs.true43.if.end95_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %linkstat42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %linkstat42, align 4
  %call48 = call i32 @extcon_set_state_sync(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_id_irq_handler, %if.then61)) #6
          to label %if.end95 [label %if.then61], !srcloc !130

if.then61:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %dev62 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %36 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev62, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_id_irq_handler.__UNIQUE_ID_ddebug299, ptr noundef %37, ptr noundef nonnull @.str.46) #6
  br label %if.end95

land.lhs.true69:                                  ; preds = %if.else41
  %38 = ptrtoint ptr %id_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id_src, align 4
  %and70 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.end95_crit_edge, label %if.then72

land.lhs.true69.if.end95_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %linkstat42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %linkstat42, align 4
  %call74 = call i32 @extcon_set_state_sync(ptr noundef %3, i32 noundef 2, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_id_irq_handler, %if.then87)) #6
          to label %if.end95 [label %if.then87], !srcloc !130

if.then87:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  %dev88 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %41 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev88, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_id_irq_handler.__UNIQUE_ID_ddebug300, ptr noundef %42, ptr noundef nonnull @.str.49) #6
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %if.then72, %land.lhs.true69.if.end95_crit_edge, %if.then61, %if.then46, %land.lhs.true43.if.end95_crit_edge, %if.else41.if.end95_crit_edge, %if.then36, %if.then19, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id_src) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_id_irq_handler(i32 noundef %irq, ptr noundef %_palmas_usb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %wq_detectid = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 12
  %sw_debounce_jiffies = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 11
  %1 = ptrtoint ptr %sw_debounce_jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sw_debounce_jiffies, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %wq_detectid, i32 noundef %2) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_vbus_irq_handler(i32 noundef %irq, ptr nocapture noundef %_palmas_usb) #2 align 64 {
entry:
  %vbus_line_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 2
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_line_state) #6
  %2 = ptrtoint ptr %vbus_line_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vbus_line_state, align 4, !annotation !129
  %3 = ptrtoint ptr %_palmas_usb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_palmas_usb, align 4
  %arrayidx.i = getelementptr %struct.palmas, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %vbus_line_state) #6
  %7 = ptrtoint ptr %vbus_line_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbus_line_state, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %linkstat32 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 13
  %9 = ptrtoint ptr %linkstat32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linkstat32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp33 = icmp eq i32 %10, 1
  br i1 %tobool.not, label %if.then31, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp33, label %do.body10, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %linkstat32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %linkstat32, align 4
  %call4 = call i32 @extcon_set_state_sync(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_vbus_irq_handler, %if.then9)) #6
          to label %if.end74 [label %if.then9], !srcloc !130

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug293, ptr noundef %13, ptr noundef nonnull @.str.51) #6
  br label %if.end74

do.body10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_vbus_irq_handler, %if.then22)) #6
          to label %if.end74 [label %if.then22], !srcloc !130

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug294, ptr noundef %15, ptr noundef nonnull @.str.52) #6
  br label %if.end74

if.then31:                                        ; preds = %entry
  br i1 %cmp33, label %if.then34, label %do.body55

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %linkstat32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %linkstat32, align 4
  %call36 = call i32 @extcon_set_state_sync(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_vbus_irq_handler, %if.then49)) #6
          to label %if.end74 [label %if.then49], !srcloc !130

if.then49:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %dev50 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %17 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug295, ptr noundef %18, ptr noundef nonnull @.str.53) #6
  br label %if.end74

do.body55:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@palmas_vbus_irq_handler, %if.then67)) #6
          to label %if.end74 [label %if.then67], !srcloc !130

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %dev68 = getelementptr inbounds %struct.palmas_usb, ptr %_palmas_usb, i32 0, i32 1
  %19 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev68, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug296, ptr noundef %20, ptr noundef nonnull @.str.54) #6
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %do.body55, %if.then49, %if.then34, %if.then22, %do.body10, %if.then9, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_line_state) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %res) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_usb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end16_crit_edge, label %device_may_wakeup.exit

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end16_crit_edge, label %if.then

device_may_wakeup.exit.if.end16_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %device_may_wakeup.exit
  %enable_vbus_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %enable_vbus_detection to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_vbus_detection, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %vbus_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbus_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %enable_gpio_vbus_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %enable_gpio_vbus_detection to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_gpio_vbus_detection, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_vbus_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %gpio_vbus_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_vbus_irq, align 4
  %call.i25 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %enable_id_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %enable_id_detection to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_id_detection, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %id_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id_irq, align 4
  %call.i26 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %enable_gpio_id_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %enable_gpio_id_detection to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_gpio_id_detection, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_id_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %gpio_id_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_id_irq, align 4
  %call.i27 = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 1) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge, %device_may_wakeup.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_usb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end16_crit_edge, label %device_may_wakeup.exit

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end16_crit_edge, label %if.then

device_may_wakeup.exit.if.end16_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %device_may_wakeup.exit
  %enable_vbus_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %enable_vbus_detection to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_vbus_detection, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %vbus_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbus_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %enable_gpio_vbus_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %enable_gpio_vbus_detection to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_gpio_vbus_detection, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_vbus_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %gpio_vbus_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_vbus_irq, align 4
  %call.i35 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 0) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %enable_id_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %enable_id_detection to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_id_detection, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %id_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id_irq, align 4
  %call.i36 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %enable_gpio_id_detection = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %enable_gpio_id_detection to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_gpio_id_detection, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_id_irq = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %gpio_id_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_id_irq, align 4
  %call.i37 = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 0) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge, %device_may_wakeup.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  %enable_gpio_vbus_detection17 = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %enable_gpio_vbus_detection17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_gpio_vbus_detection17, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not = icmp eq i8 %22, 0
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_vbus_irq20 = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %gpio_vbus_irq20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_vbus_irq20, align 4
  %call21 = tail call i32 @palmas_vbus_irq_handler(i32 noundef %24, ptr noundef %1)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %wq_detectid = getelementptr inbounds %struct.palmas_usb, ptr %1, i32 0, i32 12
  tail call void @palmas_gpio_id_detect(ptr noundef %wq_detectid)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !94, !95, !97, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_extcon_palmas__303_428_palmas_usb_driver_init6, !1, !"__initcall__kmod_extcon_palmas__303_428_palmas_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-palmas.c", i32 428, i32 1}
!2 = !{ptr @__exitcall_palmas_usb_driver_exit, !1, !"__exitcall_palmas_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-palmas.c", i32 430, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-palmas.c", i32 431, i32 1}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-palmas.c", i32 432, i32 1}
!9 = !{ptr @__UNIQUE_ID_file307, !10, !"__UNIQUE_ID_file307", i1 false, i1 false}
!10 = !{!"../drivers/extcon/extcon-palmas.c", i32 433, i32 1}
!11 = !{ptr @__UNIQUE_ID_license308, !10, !"__UNIQUE_ID_license308", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-palmas.c", i32 422, i32 11}
!14 = !{ptr @palmas_usb_driver, !15, !"palmas_usb_driver", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-palmas.c", i32 419, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-palmas.c", i32 184, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @palmas_usb_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @palmas_usb_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/extcon/extcon-palmas.c", i32 193, i32 52}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/extcon/extcon-palmas.c", i32 195, i32 7}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/extcon/extcon-palmas.c", i32 197, i32 7}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/extcon/extcon-palmas.c", i32 207, i32 61}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/extcon/extcon-palmas.c", i32 211, i32 10}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-palmas.c", i32 213, i32 63}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/extcon/extcon-palmas.c", i32 232, i32 34}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/extcon/extcon-palmas.c", i32 259, i32 3}
!40 = !{ptr @palmas_usb_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @palmas_usb_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/extcon/extcon-palmas.c", i32 265, i32 3}
!44 = !{ptr @palmas_usb_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @palmas_usb_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/extcon/extcon-palmas.c", i32 279, i32 5}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/extcon/extcon-palmas.c", i32 281, i32 4}
!50 = !{ptr @palmas_usb_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @palmas_usb_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/extcon/extcon-palmas.c", i32 288, i32 4}
!54 = !{ptr @palmas_usb_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @palmas_usb_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/extcon/extcon-palmas.c", i32 301, i32 4}
!58 = !{ptr @palmas_usb_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @palmas_usb_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/extcon/extcon-palmas.c", i32 317, i32 5}
!62 = !{ptr @palmas_usb_probe._entry.30, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/extcon/extcon-palmas.c", i32 319, i32 4}
!64 = !{ptr @palmas_usb_probe._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/extcon/extcon-palmas.c", i32 331, i32 4}
!67 = !{ptr @palmas_usb_probe._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @palmas_usb_probe._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/extcon/extcon-palmas.c", i32 339, i32 4}
!71 = !{ptr @palmas_usb_probe._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @palmas_usb_probe._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/extcon/extcon-palmas.c", i32 352, i32 4}
!75 = !{ptr @palmas_usb_probe._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @palmas_usb_probe._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @devm_delayed_work_autocancel.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/devm-helpers.h", i32 50, i32 2}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @devm_delayed_work_autocancel.__key.42, !78, !"__key", i1 false, i1 false}
!81 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/extcon/extcon-palmas.c", i32 131, i32 3}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @palmas_gpio_id_detect.__UNIQUE_ID_ddebug301, !83, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/extcon/extcon-palmas.c", i32 134, i32 3}
!89 = !{ptr @palmas_gpio_id_detect.__UNIQUE_ID_ddebug302, !88, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!90 = !{ptr @palmas_extcon_cable, !91, !"palmas_extcon_cable", i1 false, i1 false}
!91 = !{!"../drivers/extcon/extcon-palmas.c", i32 27, i32 27}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/extcon/extcon-palmas.c", i32 92, i32 3}
!94 = !{ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug297, !93, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!95 = !{ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug298, !96, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!96 = !{!"../drivers/extcon/extcon-palmas.c", i32 100, i32 3}
!97 = !{ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug299, !98, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!98 = !{!"../drivers/extcon/extcon-palmas.c", i32 105, i32 3}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/extcon/extcon-palmas.c", i32 110, i32 3}
!101 = !{ptr @palmas_id_irq_handler.__UNIQUE_ID_ddebug300, !100, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/extcon/extcon-palmas.c", i32 55, i32 4}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug293, !103, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/extcon/extcon-palmas.c", i32 57, i32 4}
!108 = !{ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug294, !107, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/extcon/extcon-palmas.c", i32 64, i32 4}
!111 = !{ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug295, !110, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/extcon/extcon-palmas.c", i32 66, i32 4}
!114 = !{ptr @palmas_vbus_irq_handler.__UNIQUE_ID_ddebug296, !113, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!115 = !{ptr @of_palmas_match_tbl, !116, !"of_palmas_match_tbl", i1 false, i1 false}
!116 = !{!"../drivers/extcon/extcon-palmas.c", i32 411, i32 34}
!117 = !{ptr @palmas_pm_ops, !118, !"palmas_pm_ops", i1 false, i1 false}
!118 = !{!"../drivers/extcon/extcon-palmas.c", i32 409, i32 8}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i8 0, i8 2}
!129 = !{!"auto-init"}
!130 = !{i64 2148291672, i64 2148291677, i64 2148291690, i64 2148291734, i64 2148291768, i64 2148291789}
