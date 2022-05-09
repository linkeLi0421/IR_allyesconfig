; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-pch.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pch_gpio = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.pch_gpio_reg_data, i32, i32, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.pch_gpio_reg_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pch_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_pch__237_457_pch_gpio_driver_init6 = internal global ptr @pch_gpio_driver_init, section ".initcall6.init", align 4
@pch_gpio_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pch_gpio_pcidev_id, ptr @pch_gpio_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_gpio_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_gpio_driver_exit = internal global ptr @pch_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [41 x i8] c"gpio_pch.description=PCH GPIO PCI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [36 x i8] c"gpio_pch.file=drivers/gpio/gpio-pch\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"gpio_pch.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_pch\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pch_gpio\00", [23 x i8] zeroinitializer }, align 32
@pch_gpio_pcidev_id = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34819, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4315, i32 32788, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4315, i32 32835, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4315, i32 34819, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_gpio_suspend, ptr @pch_gpio_resume, ptr @pch_gpio_suspend, ptr @pch_gpio_resume, ptr @pch_gpio_suspend, ptr @pch_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_enable_device FAILED\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pch_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/gpio/gpio-pch.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry_ptr = internal global ptr @pch_gpio_probe._entry, section ".printk_index", align 4
@pch_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_request_regions FAILED-%d\00", [34 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry_ptr.9 = internal global ptr @pch_gpio_probe._entry.7, section ".printk_index", align 4
@pch_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->spinlock\00", [16 x i8] zeroinitializer }, align 32
@pch_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pch_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pch_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 380, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCH gpio: Failed to register GPIO\0A\00", [61 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry_ptr.13 = internal global ptr @pch_gpio_probe._entry.11, section ".printk_index", align 4
@gpio_pins = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 12, i32 8, i32 8], [20 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 387, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCH gpio: Failed to get IRQ base num\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry_ptr.17 = internal global ptr @pch_gpio_probe._entry.14, section ".printk_index", align 4
@pch_gpio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@pch_gpio_probe._entry_ptr.20 = internal global ptr @pch_gpio_probe._entry.18, section ".printk_index", align 4
@pch_irq_type.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pch_irq_type\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq=%d type=%d ch=%d pos=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.pch_irq_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 0, i32 4, i32 3, i32 1, i32 1, i32 1, i32 2], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"pch_gpio_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 448, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 457, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 449, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"pch_gpio_pcidev_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 435, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"pch_gpio_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 433, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 361, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 367, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 375, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 378, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 380, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"gpio_pins\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 47, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 387, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 400, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [27 x i8] c"../drivers/gpio/gpio-pch.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 240, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"switch.table.pch_irq_type\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pch_gpio_driver_exit, ptr @__initcall__kmod_gpio_pch__237_457_pch_gpio_driver_init6, ptr @pch_gpio_driver_exit, ptr @pch_gpio_probe._entry, ptr @pch_gpio_probe._entry.11, ptr @pch_gpio_probe._entry.14, ptr @pch_gpio_probe._entry.18, ptr @pch_gpio_probe._entry.7, ptr @pch_gpio_probe._entry_ptr, ptr @pch_gpio_probe._entry_ptr.13, ptr @pch_gpio_probe._entry_ptr.17, ptr @pch_gpio_probe._entry_ptr.20, ptr @pch_gpio_probe._entry_ptr.9, ptr @pch_gpio_driver, ptr @.str, ptr @.str.1, ptr @pch_gpio_pcidev_id, ptr @pch_gpio_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @pch_gpio_probe.__key, ptr @.str.10, ptr @pch_gpio_probe.lock_key, ptr @pch_gpio_probe.request_key, ptr @.str.12, ptr @gpio_pins, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @switch.table.pch_irq_type], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_pcidev_id to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_pins to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gpio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pch_irq_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_gpio_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 440, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call6) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %arrayidx = getelementptr ptr, ptr %call13, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %ioh = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %ioh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ioh, align 4
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %reg, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.10, ptr noundef nonnull @pch_gpio_probe.__key, i16 noundef signext 3) #6
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end12.pch_gpio_setup.exit_crit_edge

if.end12.pch_gpio_setup.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_gpio_setup.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %pch_gpio_setup.exit

pch_gpio_setup.exit:                              ; preds = %if.end.i.i, %if.end12.pch_gpio_setup.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.end12.pch_gpio_setup.exit_crit_edge ]
  %gpio1.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i.i, ptr %gpio1.i, align 4
  %parent.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner.i, align 4
  %direction_input.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pch_gpio_direction_input, ptr %direction_input.i, align 4
  %get.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pch_gpio_get, ptr %get.i, align 4
  %direction_output.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 9
  %20 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pch_gpio_direction_output, ptr %direction_output.i, align 4
  %set.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 12
  %21 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pch_gpio_set, ptr %set.i, align 4
  %base.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 19
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %base.i, align 4
  %23 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ioh, align 4
  %arrayidx.i = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %26 to i16
  %ngpio.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 20
  %27 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 23
  %28 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %can_sleep.i, align 4
  %to_irq.i = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 3, i32 15
  %29 = ptrtoint ptr %to_irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pch_gpio_to_irq, ptr %to_irq.i, align 4
  %call19 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio1.i, ptr noundef nonnull %call.i, ptr noundef nonnull @pch_gpio_probe.lock_key, ptr noundef nonnull @pch_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end25, label %do.end24

do.end24:                                         ; preds = %pch_gpio_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end25:                                         ; preds = %pch_gpio_setup.exit
  %30 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ioh, align 4
  %arrayidx27 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx27, align 4
  %call28 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %dev1, i32 noundef -1, i32 noundef 0, i32 noundef %33, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  %irq_base34 = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %irq_base34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %irq_base34, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %irq_base36 = getelementptr inbounds %struct.pch_gpio, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %irq_base36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call28, ptr %irq_base36, align 4
  %36 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioh, align 4
  %arrayidx38 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx38, align 4
  %notmask = shl nsw i32 -1, %39
  %sub = xor i32 %notmask, -1
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %imask = getelementptr inbounds %struct.pch_regs, ptr %41, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %sub) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask, i32 %42) #6, !srcloc !64
  %43 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ioh, align 4
  %arrayidx41 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx41, align 4
  %notmask102 = shl nsw i32 -1, %46
  %sub43 = xor i32 %notmask102, -1
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %sub43) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %49) #6, !srcloc !64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %call.i103 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %51, ptr noundef nonnull @pch_gpio_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool46.not = icmp eq i32 %call.i103, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end35
  %52 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ioh, align 4
  %arrayidx53 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx53, align 4
  %56 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev2, align 4
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call.i105 = tail call ptr @devm_irq_alloc_generic_chip(ptr noundef %57, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %call28, ptr noundef %59, ptr noundef nonnull @handle_simple_irq) #6
  %tobool.not.i = icmp eq ptr %call.i105, null
  br i1 %tobool.not.i, label %if.end51.cleanup_crit_edge, label %if.end.i

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %private.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i105, i32 0, i32 14
  %60 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %private.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i105, i32 1, i32 0, i32 4, i32 1, i32 1
  %61 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pch_irq_ack, ptr %irq_ack.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i105, i32 1, i32 0, i32 4, i32 2
  %62 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pch_irq_mask, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i105, i32 1, i32 0, i32 4, i32 6
  %63 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @pch_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i105, i32 1, i32 3
  %64 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pch_irq_type, ptr %irq_set_type.i, align 4
  %65 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev2, align 4
  %notmask.i = shl nsw i32 -1, %55
  %sub.i = xor i32 %notmask.i, -1
  %call6.i = tail call i32 @devm_irq_setup_generic_chip(ptr noundef %66, ptr noundef nonnull %call.i105, i32 noundef %sub.i, i32 noundef 1, i32 noundef 3072, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end51.cleanup_crit_edge, %do.end50, %do.end33, %do.end24, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %do.end11 ], [ %call19, %do.end24 ], [ 0, %do.end33 ], [ %call.i103, %do.end50 ], [ -12, %entry.cleanup_crit_edge ], [ %call6.i, %if.end.i ], [ -12, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %istatus = getelementptr inbounds %struct.pch_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %istatus) #6, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %ioh = getelementptr inbounds %struct.pch_gpio, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ioh, align 4
  %arrayidx = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  %and = and i32 %3, %sub
  %8 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %reg_val, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg_val, i32 noundef %7, i32 noundef 0) #6
  %9 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ioh, align 4
  %arrayidx518 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx518, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %12)
  %cmp19 = icmp slt i32 %call3, %12
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq_base = getelementptr inbounds %struct.pch_gpio, ptr %dev_id, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ %call3, %for.body.lr.ph ], [ %call10, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_base, align 4
  %add = add i32 %14, %i.020
  %call6 = call i32 @generic_handle_irq(i32 noundef %add) #6
  %15 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ioh, align 4
  %arrayidx8 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8, align 4
  %add9 = add nsw i32 %i.020, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %reg_val, i32 noundef %18, i32 noundef %add9) #6
  %19 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ioh, align 4
  %arrayidx5 = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx5, align 4
  %cmp = icmp slt i32 %call10, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %23 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp ne i32 %24, 0
  %cond = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_direction_input(ptr noundef %gpio, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %pm6 = getelementptr inbounds %struct.pch_regs, ptr %1, i32 0, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm6) #6, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %ioh = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ioh, align 4
  %arrayidx = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %notmask = shl nsw i32 -1, %7
  %shl8 = shl nuw i32 1, %nr
  %8 = or i32 %notmask, %shl8
  %9 = xor i32 %8, -1
  %and9 = and i32 %3, %9
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %pm11 = getelementptr inbounds %struct.pch_regs, ptr %11, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and9) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm11, i32 %12) #6, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_get(ptr noundef %gpio, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %pi = getelementptr inbounds %struct.pch_regs, ptr %1, i32 0, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pi) #6, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %4 = lshr i32 %3, %nr
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_direction_output(ptr noundef %gpio, i32 noundef %nr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %po = getelementptr inbounds %struct.pch_regs, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %po) #6, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl7 = shl nuw i32 1, %nr
  %neg = xor i32 %shl7, -1
  %and = and i32 %3, %neg
  %or = or i32 %3, %shl7
  %reg_val.0 = select i1 %tobool.not, i32 %and, i32 %or
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %po9 = getelementptr inbounds %struct.pch_regs, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %po9, i32 %6) #6, !srcloc !64
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %pm11 = getelementptr inbounds %struct.pch_regs, ptr %8, i32 0, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm11) #6, !srcloc !65
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %ioh = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %ioh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ioh, align 4
  %arrayidx = getelementptr [3 x i32], ptr @gpio_pins, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %notmask = shl nsw i32 -1, %14
  %sub = xor i32 %notmask, -1
  %and14 = and i32 %10, %sub
  %or16 = or i32 %and14, %shl7
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg, align 4
  %pm18 = getelementptr inbounds %struct.pch_regs, ptr %16, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or16) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm18, i32 %17) #6, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_gpio_set(ptr noundef %gpio, i32 noundef %nr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %po = getelementptr inbounds %struct.pch_regs, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %po) #6, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl7 = shl nuw i32 1, %nr
  %or = or i32 %3, %shl7
  %neg = xor i32 %shl7, -1
  %and = and i32 %3, %neg
  %reg_val.0 = select i1 %tobool.not, i32 %and, i32 %or
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %po9 = getelementptr inbounds %struct.pch_regs, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %po9, i32 %6) #6, !srcloc !64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_to_irq(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %irq_base = getelementptr inbounds %struct.pch_gpio, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  %add = add i32 %1, %offset
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %5, %7
  %shl = shl nuw i32 1, %sub
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %iclr = getelementptr inbounds %struct.pch_regs, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %iclr, i32 %10) #6, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %5, %7
  %shl = shl nuw i32 1, %sub
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %imask = getelementptr inbounds %struct.pch_regs, ptr %9, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask, i32 %10) #6, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %5, %7
  %shl = shl nuw i32 1, %sub
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %imaskclr = getelementptr inbounds %struct.pch_regs, ptr %9, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imaskclr, i32 %10) #6, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %irq1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  %irq_base = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %5, %7
  %add = add i32 %7, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp = icmp slt i32 %5, %add
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %im0 = getelementptr inbounds %struct.pch_regs, ptr %9, i32 0, i32 9
  %im1 = getelementptr inbounds %struct.pch_regs, ptr %9, i32 0, i32 10
  %sub5 = add i32 %sub, -8
  %im_pos.0 = select i1 %cmp, i32 %sub, i32 %sub5
  %im_reg.0 = select i1 %cmp, ptr %im0, ptr %im1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_irq_type.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_irq_type, %do.end)) #6
          to label %if.then10 [label %do.end], !srcloc !67

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pch_irq_type.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %5, i32 noundef %type, i32 noundef %sub, i32 noundef %im_pos.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 8
  br i1 %12, label %switch.hole_check, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.pch_irq_type, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %3, i32 0, i32 7
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %im_reg.0) #6, !srcloc !65
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %mul = shl i32 %im_pos.0, 2
  %shl = shl i32 7, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %16, %neg
  %shl28 = shl i32 %switch.load, %mul
  %or = or i32 %and, %shl28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %im_reg.0, i32 %17) #6, !srcloc !64
  %and29 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else32, label %switch.lookup.if.end37.sink.split_crit_edge

switch.lookup.if.end37.sink.split_crit_edge:      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

if.else32:                                        ; preds = %switch.lookup
  %and33 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else32.if.end37_crit_edge, label %if.else32.if.end37.sink.split_crit_edge

if.else32.if.end37.sink.split_crit_edge:          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.sink.split

if.else32.if.end37_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.else32.if.end37.sink.split_crit_edge, %switch.lookup.if.end37.sink.split_crit_edge
  %handle_edge_irq.sink = phi ptr [ @handle_level_irq, %switch.lookup.if.end37.sink.split_crit_edge ], [ @handle_edge_irq, %if.else32.if.end37.sink.split_crit_edge ]
  %common.i.i66 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %18 = ptrtoint ptr %common.i.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i.i66, align 4
  %handle_irq.i67 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %handle_irq.i67 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %handle_edge_irq.sink, ptr %handle_irq.i67, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else32.if.end37_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %switch.hole_check.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_irq_setup_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !65
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %pch_gpio_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pch_gpio_reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pch_gpio_reg.i, align 4
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 4
  %imask.i = getelementptr inbounds %struct.pch_regs, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask.i) #6, !srcloc !65
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %imask_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %imask_reg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %imask_reg.i, align 4
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %po.i = getelementptr inbounds %struct.pch_regs, ptr %13, i32 0, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %po.i) #6, !srcloc !65
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %po_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %po_reg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %po_reg.i, align 4
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %pm.i = getelementptr inbounds %struct.pch_regs, ptr %18, i32 0, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm.i) #6, !srcloc !65
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %pm_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %pm_reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pm_reg.i, align 4
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %im0.i = getelementptr inbounds %struct.pch_regs, ptr %23, i32 0, i32 9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %im0.i) #6, !srcloc !65
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %im0_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %im0_reg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %im0_reg.i, align 4
  %ioh.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %ioh.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ioh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  %im1.i = getelementptr inbounds %struct.pch_regs, ptr %30, i32 0, i32 10
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %im1.i) #6, !srcloc !65
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %im1_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %im1_reg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %im1_reg.i, align 4
  %34 = ptrtoint ptr %ioh.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr.i = load i32, ptr %ioh.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %35 = phi i32 [ %.pr.i, %if.then.i ], [ %28, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp17.i = icmp eq i32 %35, 2
  br i1 %cmp17.i, label %if.then18.i, label %if.end.i.pch_gpio_save_reg_conf.exit_crit_edge

if.end.i.pch_gpio_save_reg_conf.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_gpio_save_reg_conf.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i, align 4
  %gpio_use_sel.i = getelementptr inbounds %struct.pch_regs, ptr %37, i32 0, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpio_use_sel.i) #6, !srcloc !65
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %gpio_use_sel_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %gpio_use_sel_reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %gpio_use_sel_reg.i, align 4
  br label %pch_gpio_save_reg_conf.exit

pch_gpio_save_reg_conf.exit:                      ; preds = %if.then18.i, %if.end.i.pch_gpio_save_reg_conf.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %reset = getelementptr inbounds %struct.pch_regs, ptr %3, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reset, i32 16777216) #6, !srcloc !64
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %reset7 = getelementptr inbounds %struct.pch_regs, ptr %5, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reset7, i32 0) #6, !srcloc !64
  %pch_gpio_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pch_gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pch_gpio_reg.i, align 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #6, !srcloc !64
  %imask_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %imask_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %imask_reg.i, align 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %imask.i = getelementptr inbounds %struct.pch_regs, ptr %14, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 %15) #6, !srcloc !64
  %po_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %po_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %po_reg.i, align 4
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %po.i = getelementptr inbounds %struct.pch_regs, ptr %19, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %po.i, i32 %20) #6, !srcloc !64
  %pm_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %pm_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pm_reg.i, align 4
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg, align 4
  %pm.i = getelementptr inbounds %struct.pch_regs, ptr %24, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm.i, i32 %25) #6, !srcloc !64
  %im0_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %im0_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %im0_reg.i, align 4
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %im0.i = getelementptr inbounds %struct.pch_regs, ptr %29, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %im0.i, i32 %30) #6, !srcloc !64
  %ioh.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %ioh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ioh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %im1_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %im1_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %im1_reg.i, align 4
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg, align 4
  %im1.i = getelementptr inbounds %struct.pch_regs, ptr %36, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %im1.i, i32 %37) #6, !srcloc !64
  %38 = ptrtoint ptr %ioh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i = load i32, ptr %ioh.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %39 = phi i32 [ %.pr.i, %if.then.i ], [ %32, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp12.i = icmp eq i32 %39, 2
  br i1 %cmp12.i, label %if.then13.i, label %if.end.i.pch_gpio_restore_reg_conf.exit_crit_edge

if.end.i.pch_gpio_restore_reg_conf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_gpio_restore_reg_conf.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_use_sel_reg.i = getelementptr inbounds %struct.pch_gpio, ptr %1, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %gpio_use_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gpio_use_sel_reg.i, align 4
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %gpio_use_sel.i = getelementptr inbounds %struct.pch_regs, ptr %43, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpio_use_sel.i, i32 %44) #6, !srcloc !64
  br label %pch_gpio_restore_reg_conf.exit

pch_gpio_restore_reg_conf.exit:                   ; preds = %if.then13.i, %if.end.i.pch_gpio_restore_reg_conf.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_gpio_pch__237_457_pch_gpio_driver_init6, !1, !"__initcall__kmod_gpio_pch__237_457_pch_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-pch.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_pch_gpio_driver_exit, !1, !"__exitcall_pch_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-pch.c", i32 459, i32 1}
!5 = !{ptr @__UNIQUE_ID_file239, !6, !"__UNIQUE_ID_file239", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-pch.c", i32 460, i32 1}
!7 = !{ptr @__UNIQUE_ID_license240, !6, !"__UNIQUE_ID_license240", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-pch.c", i32 449, i32 10}
!11 = !{ptr @pch_gpio_driver, !12, !"pch_gpio_driver", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-pch.c", i32 448, i32 26}
!13 = !{ptr @pch_gpio_pcidev_id, !14, !"pch_gpio_pcidev_id", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-pch.c", i32 435, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-pch.c", i32 361, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pch_gpio_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @pch_gpio_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-pch.c", i32 367, i32 3}
!25 = !{ptr @pch_gpio_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @pch_gpio_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @pch_gpio_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-pch.c", i32 375, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pch_gpio_probe.lock_key, !31, !"lock_key", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-pch.c", i32 378, i32 8}
!32 = !{ptr @pch_gpio_probe.request_key, !31, !"request_key", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-pch.c", i32 380, i32 3}
!35 = !{ptr @pch_gpio_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pch_gpio_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-pch.c", i32 387, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pch_gpio_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pch_gpio_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-pch.c", i32 400, i32 3}
!44 = !{ptr @pch_gpio_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pch_gpio_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @gpio_pins, !47, !"gpio_pins", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-pch.c", i32 47, i32 12}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-pch.c", i32 240, i32 2}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pch_irq_type.__UNIQUE_ID_ddebug236, !49, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!52 = !{ptr @pch_gpio_pm_ops, !53, !"pch_gpio_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-pch.c", i32 433, i32 8}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2152391111}
!64 = !{i64 4848989}
!65 = !{i64 4849407}
!66 = !{i64 2152389756}
!67 = !{i64 2148311175, i64 2148311180, i64 2148311193, i64 2148311237, i64 2148311271, i64 2148311292}
