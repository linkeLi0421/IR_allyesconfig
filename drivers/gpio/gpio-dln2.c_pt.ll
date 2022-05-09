; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-dln2.c_pt.bc'
source_filename = "../drivers/gpio/gpio-dln2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dln2_gpio = type { ptr, %struct.gpio_chip, %struct.irq_chip, [1 x i32], [1 x i32], [1 x i32], [32 x i32], %struct.mutex }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dln2_gpio_pin_val = type <{ i16, i8 }>
%struct.dln2_gpio_pin = type { i16 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.69 = type <{ i16, i8, i16 }>
%struct.anon.70 = type <{ i16, i8, i16, i8 }>

@__initcall__kmod_gpio_dln2__223_515_dln2_gpio_driver_init6 = internal global ptr @dln2_gpio_driver_init, section ".initcall6.init", align 4
@dln2_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dln2_gpio_probe, ptr @dln2_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dln2_gpio_driver_exit = internal global ptr @dln2_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [56 x i8] c"gpio_dln2.author=Daniel Baluta <daniel.baluta@intel.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [64 x i8] c"gpio_dln2.description=Driver for the Diolan DLN2 GPIO interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [38 x i8] c"gpio_dln2.file=drivers/gpio/gpio-dln2\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"gpio_dln2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [35 x i8] c"gpio_dln2.alias=platform:dln2-gpio\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dln2-gpio\00", [22 x i8] zeroinitializer }, align 32
@dln2_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get pin count: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dln2_gpio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-dln2.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dln2_gpio_probe._entry_ptr = internal global ptr @dln2_gpio_probe._entry, section ".printk_index", align 4
@dln2_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 442, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clamping pins to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dln2_gpio_probe._entry_ptr.9 = internal global ptr @dln2_gpio_probe._entry.6, section ".printk_index", align 4
@dln2_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dln2->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dln2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-irq\00", [23 x i8] zeroinitializer }, align 32
@dln2_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dln2_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dln2_gpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add gpio chip: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dln2_gpio_probe._entry_ptr.15 = internal global ptr @dln2_gpio_probe._entry.13, section ".printk_index", align 4
@dln2_gpio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register event cb: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dln2_gpio_probe._entry_ptr.18 = internal global ptr @dln2_gpio_probe._entry.16, section ".printk_index", align 4
@dln2_irq_bus_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set event\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dln2_irq_bus_unlock\00", [44 x i8] zeroinitializer }, align 32
@dln2_irq_bus_unlock._entry_ptr = internal global ptr @dln2_irq_bus_unlock._entry, section ".printk_index", align 4
@dln2_gpio_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"short event message\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dln2_gpio_event\00", [16 x i8] zeroinitializer }, align 32
@dln2_gpio_event._entry_ptr = internal global ptr @dln2_gpio_event._entry, section ".printk_index", align 4
@dln2_gpio_event._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"out of bounds pin %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dln2_gpio_event._entry_ptr.25 = internal global ptr @dln2_gpio_event._entry.23, section ".printk_index", align 4
@dln2_gpio_event._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pin %d not mapped to IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@dln2_gpio_event._entry_ptr.28 = internal global ptr @dln2_gpio_event._entry.26, section ".printk_index", align 4
@switch.table.dln2_irq_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 17, i32 33, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 33]
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"dln2_gpio_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 509, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 510, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 437, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 442, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 449, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 453, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 468, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 486, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 488, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 495, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 381, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 401, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 407, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [28 x i8] c"../drivers/gpio/gpio-dln2.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 424, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"switch.table.dln2_irq_set_type\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_dln2_gpio_driver_exit, ptr @__initcall__kmod_gpio_dln2__223_515_dln2_gpio_driver_init6, ptr @dln2_gpio_driver_exit, ptr @dln2_gpio_event._entry, ptr @dln2_gpio_event._entry.23, ptr @dln2_gpio_event._entry.26, ptr @dln2_gpio_event._entry_ptr, ptr @dln2_gpio_event._entry_ptr.25, ptr @dln2_gpio_event._entry_ptr.28, ptr @dln2_gpio_probe._entry, ptr @dln2_gpio_probe._entry.13, ptr @dln2_gpio_probe._entry.16, ptr @dln2_gpio_probe._entry.6, ptr @dln2_gpio_probe._entry_ptr, ptr @dln2_gpio_probe._entry_ptr.15, ptr @dln2_gpio_probe._entry_ptr.18, ptr @dln2_gpio_probe._entry_ptr.9, ptr @dln2_irq_bus_unlock._entry, ptr @dln2_irq_bus_unlock._entry_ptr, ptr @dln2_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @dln2_gpio_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dln2_gpio_probe.lock_key, ptr @dln2_gpio_probe.request_key, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @switch.table.dln2_irq_set_type], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_irq_bus_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_event._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_gpio_event._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dln2_irq_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dln2_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dln2_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dln2_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %count.i = alloca i16, align 2
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %count.i) #6
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %count.i, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %len.i, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %pdev, i16 noundef zeroext 257, ptr noundef null, i32 noundef 0, ptr noundef nonnull %count.i, ptr noundef nonnull %len.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.dln2_gpio_get_pin_count.exit.thread_crit_edge, label %if.end.i

entry.dln2_gpio_get_pin_count.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_get_pin_count.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i = icmp ult i32 %3, 2
  br i1 %cmp1.i, label %if.end.i.dln2_gpio_get_pin_count.exit.thread_crit_edge, label %dln2_gpio_get_pin_count.exit

if.end.i.dln2_gpio_get_pin_count.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_get_pin_count.exit.thread

dln2_gpio_get_pin_count.exit.thread:              ; preds = %if.end.i.dln2_gpio_get_pin_count.exit.thread_crit_edge, %entry.dln2_gpio_get_pin_count.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -71, %if.end.i.dln2_gpio_get_pin_count.exit.thread_crit_edge ], [ %call.i.i, %entry.dln2_gpio_get_pin_count.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

dln2_gpio_get_pin_count.exit:                     ; preds = %if.end.i
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count.i, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %count.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %6)
  %cmp2 = icmp ugt i16 %6, 32
  br i1 %cmp2, label %if.then3, label %dln2_gpio_get_pin_count.exit.if.end7_crit_edge

dln2_gpio_get_pin_count.exit.if.end7_crit_edge:   ; preds = %dln2_gpio_get_pin_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %dln2_gpio_get_pin_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 32) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %dln2_gpio_get_pin_count.exit.if.end7_crit_edge
  %pins.0 = phi i16 [ 32, %if.then3 ], [ %6, %dln2_gpio_get_pin_count.exit.if.end7_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 720, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %do.body12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  %irq_lock = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @dln2_gpio_probe.__key) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call.i, align 4
  %gpio = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.11, ptr %gpio, align 4
  %parent = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  %base = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 19
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %pins.0, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 23
  %13 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %can_sleep, align 4
  %set = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dln2_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dln2_gpio_get, ptr %get, align 4
  %request = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dln2_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dln2_gpio_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 7
  %18 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dln2_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dln2_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 9
  %20 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dln2_gpio_direction_output, ptr %direction_output, align 4
  %set_config = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 14
  %21 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dln2_gpio_set_config, ptr %set_config, align 4
  %irqchip = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.12, ptr %name, align 4
  %irq_mask = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dln2_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2, i32 9
  %24 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dln2_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2, i32 13
  %25 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dln2_irq_set_type, ptr %irq_set_type, align 4
  %irq_bus_lock = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2, i32 15
  %26 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dln2_irq_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 2, i32 16
  %27 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dln2_irq_bus_unlock, ptr %irq_bus_sync_unlock, align 4
  %irq = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 37
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %irqchip, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 13
  %29 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 15
  %30 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 16
  %31 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 10
  %32 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 1, i32 37, i32 9
  %33 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio, ptr noundef nonnull %call.i, ptr noundef nonnull @dln2_gpio_probe.lock_key, ptr noundef nonnull @dln2_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end43, label %if.end44

do.end43:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call37) #9
  br label %cleanup

if.end44:                                         ; preds = %do.body12
  %call45 = call i32 @dln2_register_event_cb(ptr noundef %pdev, i16 noundef zeroext 271, ptr noundef nonnull @dln2_gpio_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call45) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end44.cleanup_crit_edge, %do.end43, %if.end7.cleanup_crit_edge, %dln2_gpio_get_pin_count.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %dln2_gpio_get_pin_count.exit.thread ], [ %call37, %do.end43 ], [ %call45, %do.end50 ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dln2_unregister_event_cb(ptr noundef %pdev, i16 noundef zeroext 271) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %req.i = alloca %struct.dln2_gpio_pin_val, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %req.i) #6
  %0 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %req.i, i32 0, i32 1
  %conv.i = trunc i32 %offset to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %req.i, align 2
  %conv3.i = trunc i32 %value to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3.i, ptr %0, align 2
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %5, i16 noundef zeroext 268, ptr noundef nonnull %req.i, i32 noundef 3, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %req.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %req.i.i14 = alloca %struct.dln2_gpio_pin, align 2
  %rsp.i.i15 = alloca %struct.dln2_gpio_pin_val, align 2
  %len.i.i16 = alloca i32, align 4
  %req.i.i = alloca %struct.dln2_gpio_pin, align 2
  %rsp.i.i = alloca %struct.dln2_gpio_pin_val, align 2
  %len.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %output_enabled.i = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 3
  %div3.i.i = lshr i32 %offset, 5
  %arrayidx.i.i = getelementptr i32, ptr %output_enabled.i, i32 %div3.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %offset, 31
  %2 = shl nuw i32 1, %and.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.not = icmp eq i32 %3, 0
  br i1 %cmp2.not.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i.i) #6
  %conv.i.i = trunc i32 %offset to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %5 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %req.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rsp.i.i) #6
  %6 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %rsp.i.i, align 2, !annotation !74
  %7 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %rsp.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %len.i.i, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %11, i16 noundef zeroext 267, ptr noundef nonnull %req.i.i, i32 noundef 2, ptr noundef nonnull %rsp.i.i, ptr noundef nonnull %len.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.dln2_gpio_pin_val.exit.thread.i_crit_edge, label %if.end.i.i

if.then3.dln2_gpio_pin_val.exit.thread.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_pin_val.exit.thread.i

if.end.i.i:                                       ; preds = %if.then3
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp4.i.i = icmp ult i32 %13, 3
  br i1 %cmp4.i.i, label %if.end.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_pin_val.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %14 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %req.i.i, align 2
  %16 = ptrtoint ptr %rsp.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rsp.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp10.not.i.i = icmp eq i16 %15, %17
  br i1 %cmp10.not.i.i, label %dln2_gpio_pin_val.exit.i, label %lor.lhs.false.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge

lor.lhs.false.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_pin_val.exit.thread.i

dln2_gpio_pin_val.exit.thread.i:                  ; preds = %lor.lhs.false.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge, %if.end.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge, %if.then3.dln2_gpio_pin_val.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -71, %if.end.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge ], [ -71, %lor.lhs.false.i.i.dln2_gpio_pin_val.exit.thread.i_crit_edge ], [ %call.i.i, %if.then3.dln2_gpio_pin_val.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rsp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i.i) #6
  br label %cleanup

dln2_gpio_pin_val.exit.i:                         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rsp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i = icmp ne i8 %19, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i.i14) #6
  %conv.i.i17 = trunc i32 %offset to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i17) #6
  %21 = ptrtoint ptr %req.i.i14 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %req.i.i14, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rsp.i.i15) #6
  %22 = ptrtoint ptr %rsp.i.i15 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %rsp.i.i15, align 2, !annotation !74
  %23 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %rsp.i.i15, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i16) #6
  %25 = ptrtoint ptr %len.i.i16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %len.i.i16, align 4
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %call.i.i18 = call i32 @dln2_transfer(ptr noundef %27, i16 noundef zeroext 269, ptr noundef nonnull %req.i.i14, i32 noundef 2, ptr noundef nonnull %rsp.i.i15, ptr noundef nonnull %len.i.i16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.i.i19 = icmp slt i32 %call.i.i18, 0
  br i1 %cmp.i.i19, label %if.end5.dln2_gpio_pin_val.exit.thread.i25_crit_edge, label %if.end.i.i21

if.end5.dln2_gpio_pin_val.exit.thread.i25_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_pin_val.exit.thread.i25

if.end.i.i21:                                     ; preds = %if.end5
  %28 = ptrtoint ptr %len.i.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp4.i.i20 = icmp ult i32 %29, 3
  br i1 %cmp4.i.i20, label %if.end.i.i21.dln2_gpio_pin_val.exit.thread.i25_crit_edge, label %lor.lhs.false.i.i23

if.end.i.i21.dln2_gpio_pin_val.exit.thread.i25_crit_edge: ; preds = %if.end.i.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_pin_val.exit.thread.i25

lor.lhs.false.i.i23:                              ; preds = %if.end.i.i21
  %30 = ptrtoint ptr %req.i.i14 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %req.i.i14, align 2
  %32 = ptrtoint ptr %rsp.i.i15 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rsp.i.i15, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp10.not.i.i22 = icmp eq i16 %31, %33
  br i1 %cmp10.not.i.i22, label %dln2_gpio_pin_val.exit.i28, label %lor.lhs.false.i.i23.dln2_gpio_pin_val.exit.thread.i25_crit_edge

lor.lhs.false.i.i23.dln2_gpio_pin_val.exit.thread.i25_crit_edge: ; preds = %lor.lhs.false.i.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_pin_val.exit.thread.i25

dln2_gpio_pin_val.exit.thread.i25:                ; preds = %lor.lhs.false.i.i23.dln2_gpio_pin_val.exit.thread.i25_crit_edge, %if.end.i.i21.dln2_gpio_pin_val.exit.thread.i25_crit_edge, %if.end5.dln2_gpio_pin_val.exit.thread.i25_crit_edge
  %retval.0.i.ph.i24 = phi i32 [ -71, %if.end.i.i21.dln2_gpio_pin_val.exit.thread.i25_crit_edge ], [ -71, %lor.lhs.false.i.i23.dln2_gpio_pin_val.exit.thread.i25_crit_edge ], [ %call.i.i18, %if.end5.dln2_gpio_pin_val.exit.thread.i25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rsp.i.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i.i14) #6
  br label %cleanup

dln2_gpio_pin_val.exit.i28:                       ; preds = %lor.lhs.false.i.i23
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %23, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rsp.i.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i.i14) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i26 = icmp ne i8 %35, 0
  %lnot.ext.i27 = zext i1 %tobool.i26 to i32
  br label %cleanup

cleanup:                                          ; preds = %dln2_gpio_pin_val.exit.i28, %dln2_gpio_pin_val.exit.thread.i25, %dln2_gpio_pin_val.exit.i, %dln2_gpio_pin_val.exit.thread.i
  %retval.0 = phi i32 [ %retval.0.i.ph.i, %dln2_gpio_pin_val.exit.thread.i ], [ %lnot.ext.i, %dln2_gpio_pin_val.exit.i ], [ %retval.0.i.ph.i24, %dln2_gpio_pin_val.exit.thread.i25 ], [ %lnot.ext.i27, %dln2_gpio_pin_val.exit.i28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %req.i39 = alloca %struct.dln2_gpio_pin, align 2
  %req.i = alloca %struct.dln2_gpio_pin, align 2
  %req = alloca %struct.dln2_gpio_pin, align 2
  %rsp = alloca %struct.dln2_gpio_pin_val, align 2
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #6
  %conv = trunc i32 %offset to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %req, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rsp) #6
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %rsp, align 2, !annotation !74
  %3 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %rsp, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i) #6
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %0, ptr %req.i, align 2
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %8, i16 noundef zeroext 272, ptr noundef nonnull %req.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %call3 = call i32 @dln2_transfer(ptr noundef %10, i16 noundef zeroext 276, ptr noundef nonnull %req, i32 noundef 2, ptr noundef nonnull %rsp, ptr noundef nonnull %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp8 = icmp ult i32 %12, 3
  br i1 %cmp8, label %if.end7.out_disable_crit_edge, label %lor.lhs.false

if.end7.out_disable_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable

lor.lhs.false:                                    ; preds = %if.end7
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %req, align 2
  %15 = ptrtoint ptr %rsp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rsp, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp14.not = icmp eq i16 %14, %16
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false.out_disable_crit_edge

lor.lhs.false.out_disable_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable

if.end17:                                         ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.end17.out_disable_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb19
  ]

if.end17.out_disable_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_disable

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %output_enabled = getelementptr inbounds %struct.dln2_gpio, ptr %call, i32 0, i32 3
  call void @_clear_bit(i32 noundef %offset, ptr noundef %output_enabled) #6
  br label %cleanup

sw.bb19:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %output_enabled20 = getelementptr inbounds %struct.dln2_gpio, ptr %call, i32 0, i32 3
  call void @_set_bit(i32 noundef %offset, ptr noundef %output_enabled20) #6
  br label %cleanup

out_disable:                                      ; preds = %if.end17.out_disable_crit_edge, %lor.lhs.false.out_disable_crit_edge, %if.end7.out_disable_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i39) #6
  %20 = ptrtoint ptr %req.i39 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %0, ptr %req.i39, align 2
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %call.i.i41 = call i32 @dln2_transfer(ptr noundef %22, i16 noundef zeroext 273, ptr noundef nonnull %req.i39, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i39) #6
  br label %cleanup

cleanup:                                          ; preds = %out_disable, %sw.bb19, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %out_disable ], [ 0, %sw.bb19 ], [ 0, %sw.bb ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rsp) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %req.i = alloca %struct.dln2_gpio_pin, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i) #6
  %conv.i = trunc i32 %offset to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %1 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %req.i, align 2
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %3, i16 noundef zeroext 273, ptr noundef nonnull %req.i, i32 noundef 2, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %output_enabled = getelementptr inbounds %struct.dln2_gpio, ptr %call, i32 0, i32 3
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %output_enabled, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %2 = xor i32 %1, -1
  %3 = lshr i32 %2, %and.i
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %req.i = alloca %struct.dln2_gpio_pin_val, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %req.i) #6
  %0 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %req.i, i32 0, i32 1
  %conv.i = trunc i32 %offset to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %req.i, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 2
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %5, i16 noundef zeroext 275, ptr noundef nonnull %req.i, i32 noundef 3, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.dln2_gpio_set_direction.exit_crit_edge, label %if.end.i

entry.dln2_gpio_set_direction.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_set_direction.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %output_enabled.i = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 3
  call void @_clear_bit(i32 noundef %offset, ptr noundef %output_enabled.i) #6
  br label %dln2_gpio_set_direction.exit

dln2_gpio_set_direction.exit:                     ; preds = %if.end.i, %entry.dln2_gpio_set_direction.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %req.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %req.i7 = alloca %struct.dln2_gpio_pin_val, align 2
  %req.i = alloca %struct.dln2_gpio_pin_val, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %req.i) #6
  %0 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %req.i, i32 0, i32 1
  %conv.i = trunc i32 %offset to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %req.i, align 2
  %conv3.i = trunc i32 %value to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3.i, ptr %0, align 2
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %5, i16 noundef zeroext 268, ptr noundef nonnull %req.i, i32 noundef 3, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %req.i7) #6
  %6 = getelementptr inbounds %struct.dln2_gpio_pin_val, ptr %req.i7, i32 0, i32 1
  %7 = ptrtoint ptr %req.i7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %1, ptr %req.i7, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %6, align 2
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call.i.i9 = call i32 @dln2_transfer(ptr noundef %10, i16 noundef zeroext 275, ptr noundef nonnull %req.i7, i32 noundef 3, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i, label %if.end.dln2_gpio_set_direction.exit_crit_edge, label %if.end.i

if.end.dln2_gpio_set_direction.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dln2_gpio_set_direction.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %output_enabled.i = getelementptr inbounds %struct.dln2_gpio, ptr %call.i, i32 0, i32 3
  call void @_set_bit(i32 noundef %offset, ptr noundef %output_enabled.i) #6
  br label %dln2_gpio_set_direction.exit

dln2_gpio_set_direction.exit:                     ; preds = %if.end.i, %if.end.dln2_gpio_set_direction.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %req.i7) #6
  br label %cleanup

cleanup:                                          ; preds = %dln2_gpio_set_direction.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i9, %dln2_gpio_set_direction.exit ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_gpio_set_config(ptr noundef %chip, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  %duration = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %duration) #6
  %and.i = and i32 %config, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %config)
  %1 = shl i32 %0, 8
  %2 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %duration, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %call.i = call i32 @dln2_transfer(ptr noundef %4, i16 noundef zeroext 260, ptr noundef nonnull %duration, i32 noundef 4, ptr noundef null, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %duration) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_irq_mask(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %unmasked_irqs = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %unmasked_irqs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_irq_unmask(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %unmasked_irqs = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %3, ptr noundef %unmasked_irqs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_irq_set_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dln2_irq_set_type, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr %struct.dln2_gpio, ptr %call1, i32 0, i32 6, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_irq_bus_lock(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %irq_lock = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_irq_bus_unlock(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  %req.i = alloca %struct.anon.69, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %enabled_irqs = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 5
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %enabled_irqs, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %shr.i = lshr i32 %5, %and.i
  %and1.i = and i32 %shr.i, 1
  %unmasked_irqs = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 4
  %arrayidx.i31 = getelementptr i32, ptr %unmasked_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i31, align 4
  %shr.i33 = lshr i32 %7, %and.i
  %and1.i34 = and i32 %shr.i33, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %and1.i34)
  %cmp.not = icmp eq i32 %and1.i, %and1.i34
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i34)
  %tobool.not = icmp eq i32 %and1.i34, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.dln2_gpio, ptr %call1, i32 0, i32 6, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @_set_bit(i32 noundef %3, ptr noundef %enabled_irqs) #6
  %10 = trunc i32 %9 to i8
  %phi.cast = and i8 %10, 15
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %enabled_irqs) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %type.0 = phi i8 [ %phi.cast, %if.then6 ], [ 0, %if.else ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i) #6
  %11 = getelementptr inbounds %struct.anon.69, ptr %req.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.anon.69, ptr %req.i, i32 0, i32 2
  %conv.i = trunc i32 %3 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %14 = ptrtoint ptr %req.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %req.i, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %type.0, ptr %11, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 0, ptr %12, align 1
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call1, align 4
  %call.i.i = call i32 @dln2_transfer(ptr noundef %18, i16 noundef zeroext 286, ptr noundef nonnull %req.i, i32 noundef 5, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not, label %if.end.if.end15_crit_edge, label %do.end

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.19) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  %irq_lock = getelementptr inbounds %struct.dln2_gpio, ptr %call1, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dln2_register_event_cb(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dln2_gpio_event(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %echo, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %len)
  %cmp = icmp ult i32 %len, 6
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.dln2_gpio, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin1 = getelementptr inbounds %struct.anon.70, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %pin1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %pin1, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %ngpio = getelementptr inbounds %struct.dln2_gpio, ptr %1, i32 0, i32 1, i32 20
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp4.not = icmp ult i16 %6, %8
  br i1 %cmp4.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent11 = getelementptr inbounds %struct.dln2_gpio, ptr %1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %parent11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef %conv) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.dln2_gpio, ptr %1, i32 0, i32 6, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %12, label %if.end12.sw.epilog_crit_edge [
    i32 17, label %sw.bb
    i32 33, label %sw.bb15
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  %value = getelementptr inbounds %struct.anon.70, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb15:                                          ; preds = %if.end12
  %value16 = getelementptr inbounds %struct.anon.70, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %value16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %value16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not = icmp eq i8 %17, 0
  br i1 %tobool17.not, label %sw.bb15.sw.epilog_crit_edge, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge
  %domain = getelementptr inbounds %struct.dln2_gpio, ptr %1, i32 0, i32 1, i32 37, i32 1
  %18 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domain, align 4
  %call21 = tail call i32 @generic_handle_domain_irq(ptr noundef %19, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %sw.epilog.cleanup_crit_edge, label %do.end28, !prof !75

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %parent30 = getelementptr inbounds %struct.dln2_gpio, ptr %1, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %parent30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.27, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %sw.epilog.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end9, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dln2_transfer(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dln2_unregister_event_cb(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_gpio_dln2__223_515_dln2_gpio_driver_init6, !1, !"__initcall__kmod_gpio_dln2__223_515_dln2_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-dln2.c", i32 515, i32 1}
!2 = !{ptr @__exitcall_dln2_gpio_driver_exit, !1, !"__exitcall_dln2_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-dln2.c", i32 517, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-dln2.c", i32 518, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-dln2.c", i32 519, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-dln2.c", i32 520, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-dln2.c", i32 510, i32 17}
!14 = !{ptr @dln2_gpio_driver, !15, !"dln2_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-dln2.c", i32 509, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-dln2.c", i32 437, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dln2_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dln2_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-dln2.c", i32 442, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dln2_gpio_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dln2_gpio_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dln2_gpio_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-dln2.c", i32 449, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-dln2.c", i32 453, i32 21}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-dln2.c", i32 468, i32 23}
!36 = !{ptr @dln2_gpio_probe.lock_key, !37, !"lock_key", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-dln2.c", i32 486, i32 8}
!38 = !{ptr @dln2_gpio_probe.request_key, !37, !"request_key", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-dln2.c", i32 488, i32 3}
!41 = !{ptr @dln2_gpio_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dln2_gpio_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-dln2.c", i32 495, i32 3}
!45 = !{ptr @dln2_gpio_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @dln2_gpio_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-dln2.c", i32 381, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dln2_irq_bus_unlock._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dln2_irq_bus_unlock._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-dln2.c", i32 401, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dln2_gpio_event._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dln2_gpio_event._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-dln2.c", i32 407, i32 3}
!59 = !{ptr @dln2_gpio_event._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dln2_gpio_event._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-dln2.c", i32 424, i32 3}
!63 = !{ptr @dln2_gpio_event._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dln2_gpio_event._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 2000, i32 1}
