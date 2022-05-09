; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-gpio-vbus-usb.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-gpio-vbus-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gpio_vbus_data = type { ptr, ptr, %struct.usb_phy, ptr, ptr, i32, i32, %struct.delayed_work, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }

@__UNIQUE_ID_alias297 = internal constant [43 x i8] c"phy_gpio_vbus_usb.alias=platform:gpio-vbus\00", section ".modinfo", align 1
@__initcall__kmod_phy_gpio_vbus_usb__298_380_gpio_vbus_driver_init6 = internal global ptr @gpio_vbus_driver_init, section ".initcall6.init", align 4
@gpio_vbus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_vbus_probe, ptr @gpio_vbus_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_vbus_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_vbus_driver_exit = internal global ptr @gpio_vbus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [76 x i8] c"phy_gpio_vbus_usb.description=simple GPIO controlled OTG transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [39 x i8] c"phy_gpio_vbus_usb.author=Philipp Zabel\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [57 x i8] c"phy_gpio_vbus_usb.file=drivers/usb/phy/phy-gpio-vbus-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [30 x i8] c"phy_gpio_vbus_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-vbus\00", [22 x i8] zeroinitializer }, align 32
@gpio_vbus_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_vbus_pm_suspend, ptr @gpio_vbus_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't request vbus gpio, err: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_vbus_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/phy/phy-gpio-vbus-usb.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry_ptr = internal global ptr @gpio_vbus_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pullup\00", [25 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't request pullup gpio, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry_ptr.11 = internal global ptr @gpio_vbus_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udc_pullup\00", [21 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't request irq %i, err: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry_ptr.15 = internal global ptr @gpio_vbus_probe._entry.13, section ".printk_index", align 4
@gpio_vbus_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&gpio_vbus->work)->work)\00", [51 x i8] zeroinitializer }, align 32
@gpio_vbus_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&gpio_vbus->work)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbus_draw\00", [22 x i8] zeroinitializer }, align 32
@gpio_vbus_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.3, ptr @.str.4, ptr @.str.21, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_gpio_vbus_usb\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't get vbus_draw regulator, err: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't register transceiver, err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gpio_vbus_probe._entry_ptr.24 = internal global ptr @gpio_vbus_probe._entry.22, section ".printk_index", align 4
@gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gpio_vbus_set_peripheral\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unregistering gadget '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"registered gadget '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@gpio_vbus_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio_vbus_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VBUS %s (gadget: %s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"supplied\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"gpio_vbus_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 369, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 371, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"gpio_vbus_dev_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 361, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 261, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 264, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 267, i32 49 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 287, i32 57 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 291, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 296, i32 52 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 301, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 306, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 308, i32 56 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 310, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 318, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 176, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 193, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [39 x i8] c"../drivers/usb/phy/phy-gpio-vbus-usb.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 153, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_gpio_vbus_driver_exit, ptr @__initcall__kmod_phy_gpio_vbus_usb__298_380_gpio_vbus_driver_init6, ptr @gpio_vbus_driver_exit, ptr @gpio_vbus_probe._entry, ptr @gpio_vbus_probe._entry.13, ptr @gpio_vbus_probe._entry.22, ptr @gpio_vbus_probe._entry.9, ptr @gpio_vbus_probe._entry_ptr, ptr @gpio_vbus_probe._entry_ptr.11, ptr @gpio_vbus_probe._entry_ptr.15, ptr @gpio_vbus_probe._entry_ptr.24, ptr @gpio_vbus_driver, ptr @.str, ptr @gpio_vbus_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @gpio_vbus_probe.__key, ptr @.str.16, ptr @gpio_vbus_probe.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_vbus_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_vbus_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_vbus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_vbus_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 392, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i183 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #4
  %phy = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 2
  %otg = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i183, ptr %otg, align 4
  %tobool7.not = icmp eq ptr %call.i183, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev11 = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev11, align 4
  %label = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %label, align 4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %phy, align 4
  %set_power = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 2, i32 25
  %5 = ptrtoint ptr %set_power to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gpio_vbus_set_power, ptr %set_power, align 4
  %set_suspend = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 2, i32 26
  %6 = ptrtoint ptr %set_suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gpio_vbus_set_suspend, ptr %set_suspend, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %call.i183, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i183, i32 0, i32 2
  %8 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %phy, ptr %usb_phy, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i183, i32 0, i32 7
  %9 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpio_vbus_set_peripheral, ptr %set_peripheral, align 4
  %call25 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 1) #4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %11) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end9
  %call34 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call25, ptr noundef nonnull @.str.7) #4
  %call35 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #4
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call35, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call35, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 15
  %or = or i32 %and, 128
  br label %if.end40

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call39 = tail call i32 @gpiod_to_irq(ptr noundef %17) #4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  %irq.0 = phi i32 [ %13, %if.then37 ], [ %call39, %if.else ]
  %irqflags.0 = phi i32 [ %or, %if.then37 ], [ 131, %if.else ]
  %irq41 = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %irq41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %irq.0, ptr %irq41, align 4
  %call42 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #4
  %pullup_gpiod = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %pullup_gpiod to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call42, ptr %pullup_gpiod, align 4
  %cmp.i184 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %call42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %20) #7
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %tobool54.not = icmp eq ptr %call42, null
  br i1 %tobool54.not, label %if.end52.if.end58_crit_edge, label %if.then55

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %call57 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call42, ptr noundef nonnull @.str.12) #4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end52.if.end58_crit_edge
  %call.i185 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %irq.0, ptr noundef nonnull @gpio_vbus_irq, ptr noundef null, i32 noundef %irqflags.0, ptr noundef nonnull @.str.7, ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool61.not = icmp eq i32 %call.i185, 0
  br i1 %tobool61.not, label %do.body69, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %irq.0, i32 noundef %call.i185) #7
  br label %cleanup

do.body69:                                        ; preds = %if.end58
  %work = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %21 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @gpio_vbus_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry77 = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry77, ptr %entry77, align 4
  %prev.i = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry77, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gpio_vbus_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @gpio_vbus_probe.__key.17) #4
  %call89 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #4
  %vbus_draw = getelementptr inbounds %struct.gpio_vbus_data, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %vbus_draw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call89, ptr %vbus_draw, align 4
  %cmp.i186 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %do.body93, label %do.body69.if.end106_crit_edge

do.body69.if.end106_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

do.body93:                                        ; preds = %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_vbus_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_vbus_probe, %if.then98)) #4
          to label %do.end104 [label %if.then98], !srcloc !80

if.then98:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %vbus_draw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbus_draw, align 4
  %28 = ptrtoint ptr %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_vbus_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %28) #4
  br label %do.end104

do.end104:                                        ; preds = %if.then98, %do.body93
  %29 = ptrtoint ptr %vbus_draw to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %vbus_draw, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.end104, %do.body69.if.end106_crit_edge
  %call108 = tail call i32 @usb_add_phy(ptr noundef %phy, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end106.cleanup_crit_edge, label %do.end113

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call108) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %if.end106.cleanup_crit_edge, %do.end65, %if.then45, %if.then28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then28 ], [ %20, %if.then45 ], [ %call.i185, %do.end65 ], [ %call108, %do.end113 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end106.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #4
  %work = getelementptr inbounds %struct.gpio_vbus_data, ptr %1, i32 0, i32 7
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #4
  %phy = getelementptr inbounds %struct.gpio_vbus_data, ptr %1, i32 0, i32 2
  tail call void @usb_remove_phy(ptr noundef %phy) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_set_power(ptr nocapture noundef %phy, i32 noundef %mA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %otg = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 5
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %vbus_draw1.i = getelementptr i8, ptr %phy, i32 264
  %4 = ptrtoint ptr %vbus_draw1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus_draw1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %vbus_draw_enabled.i = getelementptr i8, ptr %phy, i32 268
  %6 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbus_draw_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mA)
  %tobool2.not.i = icmp eq i32 %mA, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %mul.i = mul i32 %mA, 1000
  %call.i = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %5, i32 noundef 0, i32 noundef %mul.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then3.i.if.end19.i_crit_edge

if.then3.i.if.end19.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then5.i:                                       ; preds = %if.then3.i
  %call6.i = tail call i32 @regulator_enable(ptr noundef nonnull %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then5.i.if.end_crit_edge, label %if.then5.i.if.end19.sink.split.i_crit_edge

if.then5.i.if.end19.sink.split.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.sink.split.i

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not.i = icmp eq i32 %7, 0
  br i1 %tobool11.not.i, label %if.else.i.if.end19.i_crit_edge, label %if.then12.i

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.else.i
  %call13.i = tail call i32 @regulator_disable(ptr noundef nonnull %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.if.end_crit_edge, label %if.then12.i.if.end19.sink.split.i_crit_edge

if.then12.i.if.end19.sink.split.i_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.sink.split.i

if.then12.i.if.end_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end19.sink.split.i:                            ; preds = %if.then12.i.if.end19.sink.split.i_crit_edge, %if.then5.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.then5.i.if.end19.sink.split.i_crit_edge ], [ 0, %if.then12.i.if.end19.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %vbus_draw_enabled.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.else.i.if.end19.i_crit_edge, %if.then3.i.if.end19.i_crit_edge
  %mA20.i = getelementptr i8, ptr %phy, i32 272
  %9 = ptrtoint ptr %mA20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mA, ptr %mA20.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end19.i, %if.then12.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_set_suspend(ptr nocapture noundef %phy, i32 noundef %suspend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool.not = icmp eq i32 %suspend, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mA = getelementptr i8, ptr %phy, i32 272
  %0 = ptrtoint ptr %mA to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mA, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %otg.i = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 5
  %2 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %if.then.i, label %cond.end.gpio_vbus_set_power.exit_crit_edge

cond.end.gpio_vbus_set_power.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %gpio_vbus_set_power.exit

if.then.i:                                        ; preds = %cond.end
  %vbus_draw1.i.i = getelementptr i8, ptr %phy, i32 264
  %6 = ptrtoint ptr %vbus_draw1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus_draw1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.i.gpio_vbus_set_power.exit_crit_edge, label %if.end.i.i

if.then.i.gpio_vbus_set_power.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gpio_vbus_set_power.exit

if.end.i.i:                                       ; preds = %if.then.i
  %vbus_draw_enabled.i.i = getelementptr i8, ptr %phy, i32 268
  %8 = ptrtoint ptr %vbus_draw_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbus_draw_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool2.not.i.i = icmp eq i32 %cond, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %mul.i.i = mul i32 %cond, 1000
  %call.i.i = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %7, i32 noundef 0, i32 noundef %mul.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.then3.i.i.if.end19.i.i_crit_edge

if.then3.i.i.if.end19.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  %call6.i.i = tail call i32 @regulator_enable(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %if.then5.i.i.gpio_vbus_set_power.exit_crit_edge, label %if.then5.i.i.if.end19.sink.split.i.i_crit_edge

if.then5.i.i.if.end19.sink.split.i.i_crit_edge:   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.sink.split.i.i

if.then5.i.i.gpio_vbus_set_power.exit_crit_edge:  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gpio_vbus_set_power.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool11.not.i.i, label %if.else.i.i.if.end19.i.i_crit_edge, label %if.then12.i.i

if.else.i.i.if.end19.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  %call13.i.i = tail call i32 @regulator_disable(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.then12.i.i.gpio_vbus_set_power.exit_crit_edge, label %if.then12.i.i.if.end19.sink.split.i.i_crit_edge

if.then12.i.i.if.end19.sink.split.i.i_crit_edge:  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.sink.split.i.i

if.then12.i.i.gpio_vbus_set_power.exit_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gpio_vbus_set_power.exit

if.end19.sink.split.i.i:                          ; preds = %if.then12.i.i.if.end19.sink.split.i.i_crit_edge, %if.then5.i.i.if.end19.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 1, %if.then5.i.i.if.end19.sink.split.i.i_crit_edge ], [ 0, %if.then12.i.i.if.end19.sink.split.i.i_crit_edge ]
  %10 = ptrtoint ptr %vbus_draw_enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i.i, ptr %vbus_draw_enabled.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end19.sink.split.i.i, %if.else.i.i.if.end19.i.i_crit_edge, %if.then3.i.i.if.end19.i.i_crit_edge
  %mA20.i.i = getelementptr i8, ptr %phy, i32 272
  %11 = ptrtoint ptr %mA20.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %mA20.i.i, align 4
  br label %gpio_vbus_set_power.exit

gpio_vbus_set_power.exit:                         ; preds = %if.end19.i.i, %if.then12.i.i.gpio_vbus_set_power.exit_crit_edge, %if.then5.i.i.gpio_vbus_set_power.exit_crit_edge, %if.then.i.gpio_vbus_set_power.exit_crit_edge, %cond.end.gpio_vbus_set_power.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_set_peripheral(ptr nocapture noundef %otg, ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %dev = getelementptr i8, ptr %1, i32 260
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %do.body, label %if.end18

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_vbus_set_peripheral, %if.then8)) #4
          to label %do.end [label %if.then8], !srcloc !80

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %gadget10 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %4 = ptrtoint ptr %gadget10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget10, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %pullup_gpiod = getelementptr i8, ptr %1, i32 -4
  %8 = ptrtoint ptr %pullup_gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pullup_gpiod, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %do.end.if.end14_crit_edge, label %if.then12

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef 0) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end.if.end14_crit_edge
  %vbus_draw1.i = getelementptr i8, ptr %1, i32 264
  %10 = ptrtoint ptr %vbus_draw1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus_draw1.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end14.set_vbus_draw.exit_crit_edge, label %if.end.i

if.end14.set_vbus_draw.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_vbus_draw.exit

if.end.i:                                         ; preds = %if.end14
  %vbus_draw_enabled.i = getelementptr i8, ptr %1, i32 268
  %12 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbus_draw_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not.i = icmp eq i32 %13, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then12.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.end.i
  %call13.i = tail call i32 @regulator_disable(ptr noundef nonnull %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.set_vbus_draw.exit_crit_edge, label %if.end19.sink.split.i

if.then12.i.set_vbus_draw.exit_crit_edge:         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_vbus_draw.exit

if.end19.sink.split.i:                            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %vbus_draw_enabled.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.end.i.if.end19.i_crit_edge
  %mA20.i = getelementptr i8, ptr %1, i32 272
  %15 = ptrtoint ptr %mA20.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mA20.i, align 4
  br label %set_vbus_draw.exit

set_vbus_draw.exit:                               ; preds = %if.end19.i, %if.then12.i.set_vbus_draw.exit_crit_edge, %if.end14.set_vbus_draw.exit_crit_edge
  %gadget15 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %16 = ptrtoint ptr %gadget15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gadget15, align 4
  %call16 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %17) #4
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  %19 = ptrtoint ptr %gadget15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %gadget15, align 4
  br label %cleanup

if.end18:                                         ; preds = %entry
  %gadget19 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %20 = ptrtoint ptr %gadget19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %gadget, ptr %gadget19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_vbus_set_peripheral, %if.then32)) #4
          to label %do.end37 [label %if.then32], !srcloc !80

if.then32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 10
  %21 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef %22) #4
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %if.end18
  %vbus = getelementptr i8, ptr %1, i32 376
  %23 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %vbus, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %3, i32 164
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %otg1.i = getelementptr inbounds %struct.gpio_vbus_data, ptr %25, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %otg1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %otg1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_vbus_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_vbus_set_peripheral, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !80

if.then.i:                                        ; preds = %do.end37
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %call.i.i = tail call i32 @gpiod_get_value(ptr noundef %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  %cond.i = select i1 %tobool6.not.i, ptr @.str.31, ptr @.str.30
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gadget.i, align 4
  %tobool7.not.i = icmp eq ptr %31, null
  br i1 %tobool7.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond9.i = phi ptr [ %33, %cond.true.i ], [ @.str.32, %if.then.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_vbus_irq.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond.i, ptr noundef %cond9.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %cond.end.i, %do.end37
  %gadget10.i = getelementptr inbounds %struct.usb_otg, ptr %27, i32 0, i32 4
  %34 = ptrtoint ptr %gadget10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gadget10.i, align 4
  %tobool11.not.i57 = icmp eq ptr %35, null
  br i1 %tobool11.not.i57, label %do.end.i.cleanup_crit_edge, label %if.then12.i58

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12.i58:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %work.i = getelementptr inbounds %struct.gpio_vbus_data, ptr %25, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %work.i, i32 noundef 10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12.i58, %do.end.i.cleanup_crit_edge, %set_vbus_draw.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otg1 = getelementptr inbounds %struct.gpio_vbus_data, ptr %1, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %otg1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_vbus_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_vbus_irq, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @gpiod_get_value(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  %cond = select i1 %tobool6.not, ptr @.str.31, ptr @.str.30
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond9 = phi ptr [ %9, %cond.true ], [ @.str.32, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_vbus_irq.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond, ptr noundef %cond9) #4
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry
  %gadget10 = getelementptr inbounds %struct.usb_otg, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %gadget10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget10, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %do.end.if.end15_crit_edge, label %if.then12

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr inbounds %struct.gpio_vbus_data, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work, i32 noundef 10) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.end.if.end15_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_vbus_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr i8, ptr %work, i32 -276
  %otg = getelementptr i8, ptr %work, i32 -256
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -284
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @gpiod_get_value(ptr noundef %5) #4
  %vbus1 = getelementptr i8, ptr %work, i32 100
  %6 = ptrtoint ptr %vbus1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbus1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %7)
  %cmp = icmp eq i32 %call.i, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %vbus1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %vbus1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state, align 4
  %last_event = getelementptr i8, ptr %work, i32 -260
  %12 = ptrtoint ptr %last_event to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %last_event, align 4
  %13 = load ptr, ptr %otg, align 4
  %gadget12 = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %gadget12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget12, align 4
  %call13 = tail call i32 @usb_gadget_vbus_connect(ptr noundef %15) #4
  %vbus_draw1.i = getelementptr i8, ptr %work, i32 -12
  %16 = ptrtoint ptr %vbus_draw1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbus_draw1.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then6.set_vbus_draw.exit_crit_edge, label %if.end.i

if.then6.set_vbus_draw.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_vbus_draw.exit

if.end.i:                                         ; preds = %if.then6
  %vbus_draw_enabled.i = getelementptr i8, ptr %work, i32 -8
  %18 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vbus_draw_enabled.i, align 4
  %call.i75 = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %17, i32 noundef 0, i32 noundef 100000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i = icmp eq i32 %19, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then5.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @regulator_enable(ptr noundef nonnull %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then5.i.set_vbus_draw.exit_crit_edge, label %if.end19.sink.split.i

if.then5.i.set_vbus_draw.exit_crit_edge:          ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_vbus_draw.exit

if.end19.sink.split.i:                            ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %vbus_draw_enabled.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.end.i.if.end19.i_crit_edge
  %mA20.i = getelementptr i8, ptr %work, i32 -4
  %21 = ptrtoint ptr %mA20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %mA20.i, align 4
  br label %set_vbus_draw.exit

set_vbus_draw.exit:                               ; preds = %if.end19.i, %if.then5.i.set_vbus_draw.exit_crit_edge, %if.then6.set_vbus_draw.exit_crit_edge
  %pullup_gpiod = getelementptr i8, ptr %work, i32 -280
  %22 = ptrtoint ptr %pullup_gpiod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pullup_gpiod, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %set_vbus_draw.exit.cleanup.sink.split_crit_edge, label %if.then15

set_vbus_draw.exit.cleanup.sink.split_crit_edge:  ; preds = %set_vbus_draw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then15:                                        ; preds = %set_vbus_draw.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %23, i32 noundef 1) #4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end3
  %pullup_gpiod24 = getelementptr i8, ptr %work, i32 -280
  %24 = ptrtoint ptr %pullup_gpiod24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pullup_gpiod24, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %if.else.if.end28_crit_edge, label %if.then26

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_value(ptr noundef nonnull %25, i32 noundef 0) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else.if.end28_crit_edge
  %vbus_draw1.i76 = getelementptr i8, ptr %work, i32 -12
  %26 = ptrtoint ptr %vbus_draw1.i76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbus_draw1.i76, align 4
  %tobool.not.i77 = icmp eq ptr %27, null
  br i1 %tobool.not.i77, label %if.end28.set_vbus_draw.exit83_crit_edge, label %if.end.i79

if.end28.set_vbus_draw.exit83_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_vbus_draw.exit83

if.end.i79:                                       ; preds = %if.end28
  %vbus_draw_enabled.i78 = getelementptr i8, ptr %work, i32 -8
  %28 = ptrtoint ptr %vbus_draw_enabled.i78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vbus_draw_enabled.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not.i = icmp eq i32 %29, 0
  br i1 %tobool11.not.i, label %if.end.i79.if.end19.i82_crit_edge, label %if.then12.i

if.end.i79.if.end19.i82_crit_edge:                ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i82

if.then12.i:                                      ; preds = %if.end.i79
  %call13.i = tail call i32 @regulator_disable(ptr noundef nonnull %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.set_vbus_draw.exit83_crit_edge, label %if.end19.sink.split.i80

if.then12.i.set_vbus_draw.exit83_crit_edge:       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_vbus_draw.exit83

if.end19.sink.split.i80:                          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %vbus_draw_enabled.i78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %vbus_draw_enabled.i78, align 4
  br label %if.end19.i82

if.end19.i82:                                     ; preds = %if.end19.sink.split.i80, %if.end.i79.if.end19.i82_crit_edge
  %mA20.i81 = getelementptr i8, ptr %work, i32 -4
  %31 = ptrtoint ptr %mA20.i81 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mA20.i81, align 4
  br label %set_vbus_draw.exit83

set_vbus_draw.exit83:                             ; preds = %if.end19.i82, %if.then12.i.set_vbus_draw.exit83_crit_edge, %if.end28.set_vbus_draw.exit83_crit_edge
  %32 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %otg, align 4
  %gadget31 = getelementptr inbounds %struct.usb_otg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %gadget31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gadget31, align 4
  %call32 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %35) #4
  %36 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %otg, align 4
  %state35 = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %state35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %state35, align 4
  %last_event37 = getelementptr i8, ptr %work, i32 -260
  %39 = ptrtoint ptr %last_event37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %last_event37, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %set_vbus_draw.exit83, %if.then15, %set_vbus_draw.exit.cleanup.sink.split_crit_edge
  %.sink84 = phi i32 [ 0, %set_vbus_draw.exit83 ], [ 1, %if.then15 ], [ 1, %set_vbus_draw.exit.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %set_vbus_draw.exit83 ], [ 4, %if.then15 ], [ 4, %set_vbus_draw.exit.cleanup.sink.split_crit_edge ]
  %notifier = getelementptr i8, ptr %work, i32 -112
  %40 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %otg, align 4
  %gadget21 = getelementptr inbounds %struct.usb_otg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %gadget21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gadget21, align 4
  %call22 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef %.sink84, ptr noundef %43) #4
  tail call void @usb_phy_set_event(ptr noundef %phy, i32 noundef %.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.gpio_vbus_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_vbus_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.gpio_vbus_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_alias297, !1, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 367, i32 1}
!2 = !{ptr @__initcall__kmod_phy_gpio_vbus_usb__298_380_gpio_vbus_driver_init6, !3, !"__initcall__kmod_phy_gpio_vbus_usb__298_380_gpio_vbus_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 380, i32 1}
!4 = !{ptr @__exitcall_gpio_vbus_driver_exit, !3, !"__exitcall_gpio_vbus_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 382, i32 1}
!7 = !{ptr @__UNIQUE_ID_author300, !8, !"__UNIQUE_ID_author300", i1 false, i1 false}
!8 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 383, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 384, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 371, i32 12}
!14 = !{ptr @gpio_vbus_driver, !15, !"gpio_vbus_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 369, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 261, i32 46}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 264, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gpio_vbus_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @gpio_vbus_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 267, i32 49}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 287, i32 57}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 291, i32 3}
!32 = !{ptr @gpio_vbus_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gpio_vbus_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 296, i32 52}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 301, i32 3}
!38 = !{ptr @gpio_vbus_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gpio_vbus_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @gpio_vbus_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 306, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gpio_vbus_probe.__key.17, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 308, i32 56}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 310, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gpio_vbus_probe.__UNIQUE_ID_ddebug296, !48, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 318, i32 3}
!53 = !{ptr @gpio_vbus_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gpio_vbus_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 176, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug294, !56, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 193, i32 2}
!61 = !{ptr @gpio_vbus_set_peripheral.__UNIQUE_ID_ddebug295, !60, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 153, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gpio_vbus_irq.__UNIQUE_ID_ddebug293, !63, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!66 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gpio_vbus_dev_pm_ops, !70, !"gpio_vbus_dev_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/usb/phy/phy-gpio-vbus-usb.c", i32 361, i32 32}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148699949, i64 2148699954, i64 2148699967, i64 2148700011, i64 2148700045, i64 2148700066}
