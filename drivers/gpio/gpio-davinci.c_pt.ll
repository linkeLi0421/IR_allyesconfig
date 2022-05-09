; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-davinci.c_pt.bc'
source_filename = "../drivers/gpio/gpio-davinci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.davinci_gpio_platform_data = type { i8, i32, i32, i32 }
%struct.davinci_gpio_controller = type { %struct.gpio_chip, ptr, %struct.spinlock, [5 x ptr], i32, [32 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.davinci_gpio_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.davinci_gpio_irq_data = type { ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_davinci__223_649_davinci_gpio_drv_reg2 = internal global ptr @davinci_gpio_drv_reg, section ".initcall2.init", align 4
@davinci_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"davinci_gpio\00", [19 x i8] zeroinitializer }, align 32
@davinci_gpio_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_gpio_get_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_gpio_get_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm6441-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @davinci_gpio_get_irq_chip }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@davinci_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No platform data found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"davinci_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-davinci.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_gpio_probe._entry_ptr = internal global ptr @davinci_gpio_probe._entry, section ".printk_index", align 4
@davinci_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"How many GPIOs?\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_gpio_probe._entry_ptr.8 = internal global ptr @davinci_gpio_probe._entry.6, section ".printk_index", align 4
@gpio_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ not populated\0A\00", [45 x i8] zeroinitializer }, align 32
@davinci_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chips->lock\00", [19 x i8] zeroinitializer }, align 32
@offset_array = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 56, i32 96, i32 136, i32 176], [44 x i8] zeroinitializer }, align 32
@davinci_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@davinci_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,ngpio\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,davinci-gpio-unbanked\00", [39 x i8] zeroinitializer }, align 32
@davinci_gpio_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Populating pdata from DT failed: err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"davinci_gpio_get_pdata\00", [41 x i8] zeroinitializer }, align 32
@davinci_gpio_get_pdata._entry_ptr = internal global ptr @davinci_gpio_get_pdata._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@davinci_gpio_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %ld getting gpio clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"davinci_gpio_irq_setup\00", [41 x i8] zeroinitializer }, align 32
@davinci_gpio_irq_setup._entry_ptr = internal global ptr @davinci_gpio_irq_setup._entry, section ".printk_index", align 4
@davinci_gpio_irq_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't allocate IRQ numbers\0A\00", [33 x i8] zeroinitializer }, align 32
@davinci_gpio_irq_setup._entry_ptr.20 = internal global ptr @davinci_gpio_irq_setup._entry.18, section ".printk_index", align 4
@davinci_gpio_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @davinci_gpio_irq_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@davinci_gpio_irq_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't register an IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@davinci_gpio_irq_setup._entry_ptr.23 = internal global ptr @davinci_gpio_irq_setup._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GPIO-AINTC\00", [21 x i8] zeroinitializer }, align 32
@davinci_gpio_get_irq_chip.gpio_unbanked = internal global { %struct.irq_chip_type, [44 x i8] } zeroinitializer, align 32
@gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr @gpio_irq_enable, ptr @gpio_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_irq_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@keystone_gpio_get_irq_chip.gpio_unbanked = internal global { %struct.irq_chip, [56 x i8] } zeroinitializer, align 32
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"davinci_gpio_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 633, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 636, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"davinci_gpio_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 625, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 200, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 213, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"gpio_base\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 241, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 260, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"offset_array\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 49, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 266, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 171, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 177, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 186, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 508, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 510, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 521, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"davinci_gpio_irq_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 447, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 530, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 559, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 454, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"gpio_irqchip\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 323, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 324, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"gpio_unbanked\00", align 1
@___asan_gen_.135 = private constant [31 x i8] c"../drivers/gpio/gpio-davinci.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 463, i32 25 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__initcall__kmod_gpio_davinci__223_649_davinci_gpio_drv_reg2, ptr @davinci_gpio_get_pdata._entry, ptr @davinci_gpio_get_pdata._entry_ptr, ptr @davinci_gpio_irq_setup._entry, ptr @davinci_gpio_irq_setup._entry.18, ptr @davinci_gpio_irq_setup._entry.21, ptr @davinci_gpio_irq_setup._entry_ptr, ptr @davinci_gpio_irq_setup._entry_ptr.20, ptr @davinci_gpio_irq_setup._entry_ptr.23, ptr @davinci_gpio_probe._entry, ptr @davinci_gpio_probe._entry.6, ptr @davinci_gpio_probe._entry_ptr, ptr @davinci_gpio_probe._entry_ptr.8, ptr @davinci_gpio_driver, ptr @.str, ptr @davinci_gpio_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @gpio_base, ptr @.str.9, ptr @davinci_gpio_probe.__key, ptr @.str.10, ptr @offset_array, ptr @davinci_gpio_probe.lock_key, ptr @davinci_gpio_probe.request_key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @davinci_gpio_irq_ops, ptr @.str.22, ptr @.str.24, ptr @davinci_gpio_get_irq_chip.gpio_unbanked, ptr @gpio_irqchip, ptr @.str.25, ptr @keystone_gpio_get_irq_chip.gpio_unbanked], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_array to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_irq_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_irq_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_gpio_get_irq_chip.gpio_unbanked to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_gpio_get_irq_chip.gpio_unbanked to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_gpio_drv_reg() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !77
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %davinci_gpio_get_pdata.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #7
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.davinci_gpio_get_pdata.exit.thread_crit_edge, label %if.end8.i

if.end.i.davinci_gpio_get_pdata.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %davinci_gpio_get_pdata.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %3 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.do.end.i_crit_edge

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end12.i:                                       ; preds = %if.end8.i
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  %ngpio.i = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %call.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ngpio.i, align 4
  %call.i.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %7 = call i32 @llvm.smin.i32(i32 %call.i.i31.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i31.i)
  %tobool14.not.i = icmp sgt i32 %call.i.i31.i, -1
  br i1 %tobool14.not.i, label %davinci_gpio_get_pdata.exit.thread179, label %if.end12.i.do.end.i_crit_edge

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

davinci_gpio_get_pdata.exit.thread179:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %gpio_unbanked.i = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %call.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %gpio_unbanked.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gpio_unbanked.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end

do.end.i:                                         ; preds = %if.end12.i.do.end.i_crit_edge, %if.end8.i.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %3, %if.end8.i.do.end.i_crit_edge ], [ %7, %if.end12.i.do.end.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %ret.0.i) #10
  br label %davinci_gpio_get_pdata.exit.thread

davinci_gpio_get_pdata.exit.thread:               ; preds = %do.end.i, %if.end.i.davinci_gpio_get_pdata.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %do.end

davinci_gpio_get_pdata.exit:                      ; preds = %entry
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %davinci_gpio_get_pdata.exit.do.end_crit_edge, label %davinci_gpio_get_pdata.exit.if.end_crit_edge

davinci_gpio_get_pdata.exit.if.end_crit_edge:     ; preds = %davinci_gpio_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

davinci_gpio_get_pdata.exit.do.end_crit_edge:     ; preds = %davinci_gpio_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %davinci_gpio_get_pdata.exit.do.end_crit_edge, %davinci_gpio_get_pdata.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %davinci_gpio_get_pdata.exit.if.end_crit_edge, %davinci_gpio_get_pdata.exit.thread179
  %retval.0.i182 = phi ptr [ %call.i.i, %davinci_gpio_get_pdata.exit.thread179 ], [ %12, %davinci_gpio_get_pdata.exit.if.end_crit_edge ]
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i182, ptr %platform_data, align 8
  %ngpio2 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %retval.0.i182, i32 0, i32 2
  %14 = ptrtoint ptr %ngpio2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ngpio2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %cmp8 = icmp ugt i32 %15, 2048
  br i1 %cmp8, label %do.end20, label %if.end7.if.end26_crit_edge, !prof !78

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 217, i32 noundef 9, ptr noundef null) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.end7.if.end26_crit_edge
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 2048)
  %gpio_unbanked = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %retval.0.i182, i32 0, i32 3
  %17 = ptrtoint ptr %gpio_unbanked to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio_unbanked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool36.not = icmp eq i32 %18, 0
  %sub = add nuw nsw i32 %16, 15
  %div162 = lshr i32 %sub, 4
  %nirq.0 = select i1 %tobool36.not, i32 %div162, i32 %18
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 548, i32 noundef 3520) #7
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %if.end26.cleanup_crit_edge, label %if.end43

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.end26
  %call44 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  store ptr %call44, ptr @gpio_base, align 4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call44 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0185, 1
  %exitcond.not = icmp eq i32 %inc, %nirq.0
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0185 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end43.for.body_crit_edge ]
  %call50 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0185) #7
  %arrayidx = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 5, i32 %i.0185
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call50, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp53 = icmp slt i32 %call50, 0
  br i1 %cmp53, label %if.then54, label %for.cond

if.then54:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @.str.9) #7
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i164 = icmp eq ptr %22, null
  br i1 %tobool.not.i164, label %if.end.i165, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i165:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i165, %for.end.dev_name.exit_crit_edge
  %retval.0.i166 = phi ptr [ %24, %if.end.i165 ], [ %22, %for.end.dev_name.exit_crit_edge ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i166, ptr %call.i, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @davinci_direction_in, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @davinci_gpio_get, ptr %get, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @davinci_direction_out, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @davinci_gpio_set, ptr %set, align 4
  %conv = trunc i32 %16 to i16
  %ngpio65 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %ngpio65 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %ngpio65, align 4
  %31 = ptrtoint ptr %retval.0.i182 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %retval.0.i182, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool66.not = icmp eq i8 %32, 0
  br i1 %tobool66.not, label %dev_name.exit.cond.end_crit_edge, label %cond.true

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %retval.0.i182, i32 0, i32 1
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %dev_name.exit.cond.end_crit_edge
  %cond = phi i32 [ %34, %cond.true ], [ -1, %dev_name.exit.cond.end_crit_edge ]
  %base69 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %35 = ptrtoint ptr %base69 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %base69, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 40
  %36 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %parent, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %lock = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @davinci_gpio_probe.__key, i16 noundef signext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp82186.not = icmp eq i32 %16, 0
  br i1 %cmp82186.not, label %cond.end.for.end89_crit_edge, label %for.body84.lr.ph

cond.end.for.end89_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.body84.lr.ph:                                 ; preds = %cond.end
  %sub79 = add nuw nsw i32 %16, 31
  %div80163 = lshr i32 %sub79, 5
  %40 = load ptr, ptr @gpio_base, align 4
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %bank.0187 = phi i32 [ 0, %for.body84.lr.ph ], [ %inc88, %for.body84.for.body84_crit_edge ]
  %arrayidx85 = getelementptr [5 x i32], ptr @offset_array, i32 0, i32 %bank.0187
  %41 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx85, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %42
  %arrayidx86 = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 3, i32 %bank.0187
  %43 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr, ptr %arrayidx86, align 4
  %inc88 = add nuw nsw i32 %bank.0187, 1
  %exitcond190.not = icmp eq i32 %inc88, %div80163
  br i1 %exitcond190.not, label %for.body84.for.end89_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body84

for.body84.for.end89_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.end89:                                        ; preds = %for.body84.for.end89_crit_edge, %cond.end.for.end89_crit_edge
  %call92 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @davinci_gpio_probe.lock_key, ptr noundef nonnull @davinci_gpio_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %for.end89.cleanup_crit_edge

for.end89.cleanup_crit_edge:                      ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end95:                                         ; preds = %for.end89
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %45 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_data, align 8
  %call2.i = call ptr @of_match_device(ptr noundef nonnull @davinci_gpio_ids, ptr noundef %dev1) #7
  %tobool.not.i167 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i167, label %if.end95.if.end.i169_crit_edge, label %if.then.i168

if.end95.if.end.i169_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i169

if.then.i168:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call2.i, i32 0, i32 3
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  br label %if.end.i169

if.end.i169:                                      ; preds = %if.then.i168, %if.end95.if.end.i169_crit_edge
  %gpio_get_irq_chip.0.i = phi ptr [ %48, %if.then.i168 ], [ @davinci_gpio_get_irq_chip, %if.end95.if.end.i169_crit_edge ]
  %ngpio3.i = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %ngpio3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ngpio3.i, align 4
  %call4.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i170, label %if.end9.i

do.end.i170:                                      ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call4.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %51) #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i169
  %call.i.i171 = call i32 @clk_prepare(ptr noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %tobool.not.i.i = icmp eq i32 %call.i.i171, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end9.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end13.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call4.i) #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i.i
  %gpio_unbanked.i172 = getelementptr inbounds %struct.davinci_gpio_platform_data, ptr %46, i32 0, i32 3
  %52 = ptrtoint ptr %gpio_unbanked.i172 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gpio_unbanked.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool14.not.i173 = icmp eq i32 %53, 0
  br i1 %tobool14.not.i173, label %if.then15.i, label %if.end13.i.if.end29.i_crit_edge

if.end13.i.if.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = call i32 @__devm_irq_alloc_descs(ptr noundef %dev1, i32 noundef -1, i32 noundef 0, i32 noundef %50, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i174 = icmp slt i32 %call16.i, 0
  br i1 %cmp.i174, label %do.end20.i, label %if.end21.i

do.end20.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  call void @clk_disable(ptr noundef %call4.i) #7
  call void @clk_unprepare(ptr noundef %call4.i) #7
  br label %cleanup

if.end21.i:                                       ; preds = %if.then15.i
  %54 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node.i, align 8
  %call22.i = call ptr @irq_domain_add_legacy(ptr noundef %55, i32 noundef %50, i32 noundef %call16.i, i32 noundef 0, ptr noundef nonnull @davinci_gpio_irq_ops, ptr noundef %call.i) #7
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %do.end27.i, label %if.end21.i.if.end29.i_crit_edge

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  call void @clk_disable(ptr noundef %call4.i) #7
  call void @clk_unprepare(ptr noundef %call4.i) #7
  br label %cleanup

if.end29.i:                                       ; preds = %if.end21.i.if.end29.i_crit_edge, %if.end13.i.if.end29.i_crit_edge
  %irq_domain.0.i = phi ptr [ null, %if.end13.i.if.end29.i_crit_edge ], [ %call22.i, %if.end21.i.if.end29.i_crit_edge ]
  %to_irq.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %56 = ptrtoint ptr %to_irq.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @gpio_to_irq_banked, ptr %to_irq.i, align 4
  %irq_domain30.i = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 1
  %57 = ptrtoint ptr %irq_domain30.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %irq_domain.0.i, ptr %irq_domain30.i, align 4
  %58 = ptrtoint ptr %gpio_unbanked.i172 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gpio_unbanked.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool32.not.i = icmp eq i32 %59, 0
  br i1 %tobool32.not.i, label %for.cond52.preheader.i, label %if.then33.i

for.cond52.preheader.i:                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp53157.not.i = icmp eq i32 %50, 0
  br i1 %cmp53157.not.i, label %for.cond52.preheader.i.done.i_crit_edge, label %for.cond52.preheader.i.for.body54.i_crit_edge

for.cond52.preheader.i.for.body54.i_crit_edge:    ; preds = %for.cond52.preheader.i
  br label %for.body54.i

for.cond52.preheader.i.done.i_crit_edge:          ; preds = %for.cond52.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.then33.i:                                      ; preds = %if.end29.i
  %60 = ptrtoint ptr %to_irq.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @gpio_to_irq_unbanked, ptr %to_irq.i, align 4
  %61 = ptrtoint ptr %gpio_unbanked.i172 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gpio_unbanked.i172, align 4
  %gpio_unbanked37.i = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %gpio_unbanked37.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %gpio_unbanked37.i, align 4
  %64 = load i32, ptr %gpio_unbanked.i172, align 4
  %div149.i = lshr i32 %64, 4
  %sub.i = sub nsw i32 31, %div149.i
  %shr.i = lshr i32 -1, %sub.i
  %irqs.i = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 5
  %65 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irqs.i, align 4
  %call39.i = call ptr %gpio_get_irq_chip.0.i(i32 noundef %66) #7
  %name.i = getelementptr inbounds %struct.irq_chip, ptr %call39.i, i32 0, i32 1
  %67 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.24, ptr %name.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip, ptr %call39.i, i32 0, i32 13
  %68 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @gpio_irq_type_unbanked, ptr %irq_set_type.i, align 4
  %regs.i = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 3
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %set_falling.i = getelementptr inbounds %struct.davinci_gpio_regs, ptr %70, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %set_falling.i, i32 -1) #7, !srcloc !80
  %set_rising.i = getelementptr inbounds %struct.davinci_gpio_regs, ptr %70, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %set_rising.i, i32 -1) #7, !srcloc !80
  %71 = ptrtoint ptr %gpio_unbanked.i172 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gpio_unbanked.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp42155.not.i = icmp eq i32 %72, 0
  br i1 %cmp42155.not.i, label %if.then33.i.done.i_crit_edge, label %if.then33.i.for.body.i_crit_edge

if.then33.i.for.body.i_crit_edge:                 ; preds = %if.then33.i
  br label %for.body.i

if.then33.i.done.i_crit_edge:                     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then33.i.for.body.i_crit_edge
  %gpio.0156.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then33.i.for.body.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 5, i32 %gpio.0156.i
  %73 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx44.i, align 4
  %call45.i = call i32 @irq_set_chip(i32 noundef %74, ptr noundef %call39.i) #7
  %75 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx44.i, align 4
  %call48.i = call i32 @irq_set_handler_data(i32 noundef %76, ptr noundef %call.i) #7
  %77 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx44.i, align 4
  call void @irq_modify_status(i32 noundef %78, i32 noundef 0, i32 noundef 3) #7
  %inc.i = add nuw i32 %gpio.0156.i, 1
  %79 = ptrtoint ptr %gpio_unbanked.i172 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gpio_unbanked.i172, align 4
  %cmp42.i = icmp ult i32 %inc.i, %80
  br i1 %cmp42.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.done.i_crit_edge

for.body.i.done.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body54.i:                                     ; preds = %if.end62.i.for.body54.i_crit_edge, %for.cond52.preheader.i.for.body54.i_crit_edge
  %binten.0160.i = phi i32 [ %or.i, %if.end62.i.for.body54.i_crit_edge ], [ 0, %for.cond52.preheader.i.for.body54.i_crit_edge ]
  %bank.0159.i = phi i32 [ %inc68.i, %if.end62.i.for.body54.i_crit_edge ], [ 0, %for.cond52.preheader.i.for.body54.i_crit_edge ]
  %gpio.1158.i = phi i32 [ %add69.i, %if.end62.i.for.body54.i_crit_edge ], [ 0, %for.cond52.preheader.i.for.body54.i_crit_edge ]
  %div56148.i = lshr i32 %bank.0159.i, 1
  %arrayidx57.i = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 3, i32 %div56148.i
  %81 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx57.i, align 4
  %clr_falling.i = getelementptr inbounds %struct.davinci_gpio_regs, ptr %82, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %clr_falling.i, i32 -1) #7, !srcloc !80
  %clr_rising.i = getelementptr inbounds %struct.davinci_gpio_regs, ptr %82, i32 0, i32 6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %clr_rising.i, i32 -1) #7, !srcloc !80
  %call.i150.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool60.not.i = icmp eq ptr %call.i150.i, null
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end62.i

if.then61.i:                                      ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef %call4.i) #7
  call void @clk_unprepare(ptr noundef %call4.i) #7
  br label %cleanup

if.end62.i:                                       ; preds = %for.body54.i
  %83 = ptrtoint ptr %call.i150.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %call.i150.i, align 4
  %bank_num.i = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %call.i150.i, i32 0, i32 2
  %84 = ptrtoint ptr %bank_num.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bank.0159.i, ptr %bank_num.i, align 4
  %chip64.i = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %call.i150.i, i32 0, i32 1
  %85 = ptrtoint ptr %chip64.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %chip64.i, align 4
  %arrayidx66.i = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 5, i32 %bank.0159.i
  %86 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx66.i, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %87, ptr noundef nonnull @gpio_irq_handler, ptr noundef nonnull %call.i150.i) #7
  %shl.i = shl nuw i32 1, %bank.0159.i
  %or.i = or i32 %shl.i, %binten.0160.i
  %inc68.i = add i32 %bank.0159.i, 1
  %add69.i = add i32 %gpio.1158.i, 16
  %cmp53.i = icmp ult i32 %add69.i, %50
  br i1 %cmp53.i, label %if.end62.i.for.body54.i_crit_edge, label %if.end62.i.done.i_crit_edge

if.end62.i.done.i_crit_edge:                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end62.i.for.body54.i_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54.i

done.i:                                           ; preds = %if.end62.i.done.i_crit_edge, %for.body.i.done.i_crit_edge, %if.then33.i.done.i_crit_edge, %for.cond52.preheader.i.done.i_crit_edge
  %binten.1.i = phi i32 [ 0, %for.cond52.preheader.i.done.i_crit_edge ], [ %shr.i, %if.then33.i.done.i_crit_edge ], [ %or.i, %if.end62.i.done.i_crit_edge ], [ %shr.i, %for.body.i.done.i_crit_edge ]
  %88 = call i32 @llvm.bswap.i32(i32 %binten.1.i) #7
  %89 = load ptr, ptr @gpio_base, align 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %88) #7, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %done.i, %if.then61.i, %do.end27.i, %do.end20.i, %if.then3.i.i, %if.end9.i.cleanup_crit_edge, %do.end.i170, %for.end89.cleanup_crit_edge, %if.then54, %if.then46, %if.end26.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %19, %if.then46 ], [ %call57, %if.then54 ], [ -22, %do.end ], [ -12, %if.end26.cleanup_crit_edge ], [ %call92, %for.end89.cleanup_crit_edge ], [ %51, %do.end.i170 ], [ 0, %done.i ], [ -12, %if.then61.i ], [ %call16.i, %do.end20.i ], [ -19, %do.end27.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i171, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_direction_in(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %div1.i = lshr i32 %offset, 5
  %rem.i.i = and i32 %offset, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %arrayidx.i = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 3, i32 %div1.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %lock.i = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 2
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %or.i = or i32 %3, %shl.i.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %4) #7, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %div5 = lshr i32 %offset, 5
  %arrayidx = getelementptr %struct.davinci_gpio_controller, ptr %call, i32 0, i32 3, i32 %div5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %rem.i = and i32 %offset, 31
  %in_data = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %in_data) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = lshr i32 %3, %rem.i
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %div1.i = lshr i32 %offset, 5
  %rem.i.i = and i32 %offset, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %arrayidx.i = getelementptr %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 3, i32 %div1.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %lock.i = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call.i, i32 0, i32 2
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %neg.i = xor i32 %shl.i.i, -1
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool9.not.i = icmp eq i32 %value, 0
  %set_data.i = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 2
  %clr_data.i = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 3
  %cond.i = select i1 %tobool9.not.i, ptr %clr_data.i, ptr %set_data.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %4) #7, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %5) #7, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %div4 = lshr i32 %offset, 5
  %arrayidx = getelementptr %struct.davinci_gpio_controller, ptr %call, i32 0, i32 3, i32 %div4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %rem.i = and i32 %offset, 31
  %shl.i = shl nuw i32 1, %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %set_data = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 2
  %clr_data = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 3
  %cond = select i1 %tobool.not, ptr %clr_data, ptr %set_data
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl.i)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond, i32 %2) #7, !srcloc !80
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @davinci_gpio_get_irq_chip(i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #7
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %2 = call ptr @memcpy(ptr @davinci_gpio_get_irq_chip.gpio_unbanked, ptr %1, i32 180)
  ret ptr @davinci_gpio_get_irq_chip.gpio_unbanked
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_to_irq_banked(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %irq_domain = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %1, i32 noundef %offset, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_to_irq_unbanked(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %gpio_unbanked = getelementptr inbounds %struct.davinci_gpio_controller, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_unbanked to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_unbanked, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp ugt i32 %1, %offset
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.davinci_gpio_controller, ptr %call, i32 0, i32 5, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_irq_type_unbanked(ptr nocapture noundef readonly %data, i32 noundef %trigger) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %regs = getelementptr inbounds %struct.davinci_gpio_controller, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.davinci_gpio_controller, ptr %3, i32 0, i32 5, i32 %i.035
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2 = icmp eq i32 %7, %9
  br i1 %cmp2, label %if.end5, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %trigger)
  %tobool.not.old = icmp ult i32 %trigger, 4
  br i1 %tobool.not.old, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i = and i32 %i.035, 31
  %shl.i = shl nuw i32 1, %rem.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i)
  %and9 = and i32 %trigger, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %set_falling = getelementptr inbounds %struct.davinci_gpio_regs, ptr %5, i32 0, i32 7
  %clr_falling = getelementptr inbounds %struct.davinci_gpio_regs, ptr %5, i32 0, i32 8
  %cond = select i1 %tobool10.not, ptr %clr_falling, ptr %set_falling
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond, i32 %10) #7, !srcloc !80
  %and11 = and i32 %trigger, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %set_rising = getelementptr inbounds %struct.davinci_gpio_regs, ptr %5, i32 0, i32 5
  %clr_rising = getelementptr inbounds %struct.davinci_gpio_regs, ptr %5, i32 0, i32 6
  %cond16 = select i1 %tobool12.not, ptr %clr_rising, ptr %set_rising
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond16, i32 %10) #7, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %bank_num1 = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bank_num1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_num1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %chip = getelementptr inbounds %struct.davinci_gpio_irq_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = and i32 %3, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %spec.select = select i1 %cmp, i32 -65536, i32 65535
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %14(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %16(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %intstat = getelementptr inbounds %struct.davinci_gpio_regs, ptr %5, i32 0, i32 9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intstat) #7, !srcloc !81
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and41 = and i32 %20, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool.not42 = icmp eq i32 %and41, 0
  br i1 %tobool.not42, label %chained_irq_enter.exit.while.end16_crit_edge, label %if.end5.lr.ph

chained_irq_enter.exit.while.end16_crit_edge:     ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end16

if.end5.lr.ph:                                    ; preds = %chained_irq_enter.exit
  %div = sdiv i32 %3, 2
  %mul = shl i32 %div, 5
  %irq_domain = getelementptr inbounds %struct.davinci_gpio_controller, ptr %7, i32 0, i32 1
  br label %if.end5

while.cond7.while.cond.loopexit_crit_edge:        ; preds = %while.body9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intstat) #7, !srcloc !81
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %and = and i32 %22, %spec.select
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond7.while.cond.loopexit_crit_edge.while.end16_crit_edge, label %while.cond7.while.cond.loopexit_crit_edge.if.end5_crit_edge

while.cond7.while.cond.loopexit_crit_edge.if.end5_crit_edge: ; preds = %while.cond7.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

while.cond7.while.cond.loopexit_crit_edge.while.end16_crit_edge: ; preds = %while.cond7.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end16

if.end5:                                          ; preds = %while.cond7.while.cond.loopexit_crit_edge.if.end5_crit_edge, %if.end5.lr.ph
  %and43 = phi i32 [ %and41, %if.end5.lr.ph ], [ %and, %while.cond7.while.cond.loopexit_crit_edge.if.end5_crit_edge ]
  %23 = tail call i32 @llvm.bswap.i32(i32 %and43)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intstat, i32 %23) #7, !srcloc !80
  br label %while.body9

while.body9:                                      ; preds = %while.body9.while.body9_crit_edge, %if.end5
  %status.040 = phi i32 [ %and43, %if.end5 ], [ %and12, %while.body9.while.body9_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %status.040, i1 true) #7, !range !82
  %shl11 = shl nuw i32 1, %24
  %neg = xor i32 %shl11, -1
  %and12 = and i32 %status.040, %neg
  %add = or i32 %24, %mul
  %25 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_domain, align 4
  %call13 = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %add) #7
  %tobool8.not = icmp eq i32 %and12, 0
  br i1 %tobool8.not, label %while.cond7.while.cond.loopexit_crit_edge, label %while.body9.while.body9_crit_edge

while.body9.while.body9_crit_edge:                ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body9

while.end16:                                      ; preds = %while.cond7.while.cond.loopexit_crit_edge.while.end16_crit_edge, %chained_irq_enter.exit.while.end16_crit_edge
  %27 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i33 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %irq_eoi.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i33, align 4
  %tobool.not.i34 = icmp eq ptr %30, null
  br i1 %tobool.not.i34, label %if.else.i35, label %while.end16.chained_irq_exit.exit_crit_edge

while.end16.chained_irq_exit.exit_crit_edge:      ; preds = %while.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i35:                                      ; preds = %while.end16
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i35, %while.end16.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %32, %if.else.i35 ], [ %30, %while.end16.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_gpio_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %div8 = lshr i32 %hw, 5
  %arrayidx = getelementptr %struct.davinci_gpio_controller, ptr %1, i32 0, i32 3, i32 %div8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @gpio_irqchip, ptr noundef nonnull @handle_simple_irq, ptr noundef nonnull @.str) #7
  %call = tail call i32 @irq_set_irq_type(i32 noundef %irq, i32 noundef 0) #7
  %call1 = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %3) #7
  %rem.i = and i32 %hw, 31
  %shl.i = shl nuw i32 1, %rem.i
  %4 = inttoptr i32 %shl.i to ptr
  %call3 = tail call i32 @irq_set_handler_data(i32 noundef %irq, ptr noundef nonnull %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 3, i32 %and
  %and3 = and i32 %spec.store.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.if.end6_crit_edge, label %if.then5

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %6)
  %set_falling = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %set_falling, i32 %9) #7, !srcloc !80
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry.if.end6_crit_edge
  %and7 = and i32 %spec.store.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %6)
  %set_rising = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %set_rising, i32 %10) #7, !srcloc !80
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %clr_falling = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %clr_falling, i32 %7) #7, !srcloc !80
  %clr_rising = getelementptr inbounds %struct.davinci_gpio_regs, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %clr_rising, i32 %7) #7, !srcloc !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_irq_type(ptr nocapture noundef readnone %d, i32 noundef %trigger) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %trigger)
  %tobool.not = icmp ult i32 %trigger, 4
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @keystone_gpio_get_irq_chip(i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_chip.exit_crit_edge, label %cond.true.i

entry.irq_get_chip.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_chip.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  br label %irq_get_chip.exit

irq_get_chip.exit:                                ; preds = %cond.true.i, %entry.irq_get_chip.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.irq_get_chip.exit_crit_edge ]
  %2 = call ptr @memcpy(ptr @keystone_gpio_get_irq_chip.gpio_unbanked, ptr %cond.i, i32 136)
  ret ptr @keystone_gpio_get_irq_chip.gpio_unbanked
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_gpio_davinci__223_649_davinci_gpio_drv_reg2, !1, !"__initcall__kmod_gpio_davinci__223_649_davinci_gpio_drv_reg2", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-davinci.c", i32 649, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-davinci.c", i32 636, i32 12}
!4 = !{ptr @davinci_gpio_driver, !5, !"davinci_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-davinci.c", i32 633, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-davinci.c", i32 200, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @davinci_gpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @davinci_gpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-davinci.c", i32 213, i32 3}
!16 = !{ptr @davinci_gpio_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @davinci_gpio_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-davinci.c", i32 241, i32 46}
!20 = !{ptr @davinci_gpio_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-davinci.c", i32 260, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @davinci_gpio_probe.lock_key, !24, !"lock_key", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-davinci.c", i32 266, i32 8}
!25 = !{ptr @davinci_gpio_probe.request_key, !24, !"request_key", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-davinci.c", i32 171, i32 33}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-davinci.c", i32 177, i32 33}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-davinci.c", i32 186, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @davinci_gpio_get_pdata._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @davinci_gpio_get_pdata._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @gpio_base, !36, !"gpio_base", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-davinci.c", i32 48, i32 22}
!37 = !{ptr @offset_array, !38, !"offset_array", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-davinci.c", i32 49, i32 21}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-davinci.c", i32 508, i32 26}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-davinci.c", i32 510, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @davinci_gpio_irq_setup._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @davinci_gpio_irq_setup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-davinci.c", i32 521, i32 4}
!48 = !{ptr @davinci_gpio_irq_setup._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @davinci_gpio_irq_setup._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-davinci.c", i32 530, i32 4}
!52 = !{ptr @davinci_gpio_irq_setup._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @davinci_gpio_irq_setup._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-davinci.c", i32 559, i32 20}
!56 = !{ptr @davinci_gpio_get_irq_chip.gpio_unbanked, !57, !"gpio_unbanked", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-davinci.c", i32 454, i32 30}
!58 = !{ptr @davinci_gpio_irq_ops, !59, !"davinci_gpio_irq_ops", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-davinci.c", i32 447, i32 36}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-davinci.c", i32 324, i32 11}
!62 = !{ptr @gpio_irqchip, !63, !"gpio_irqchip", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-davinci.c", i32 323, i32 24}
!64 = !{ptr @davinci_gpio_ids, !65, !"davinci_gpio_ids", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-davinci.c", i32 625, i32 34}
!66 = !{ptr @keystone_gpio_get_irq_chip.gpio_unbanked, !67, !"gpio_unbanked", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-davinci.c", i32 463, i32 25}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i8 0, i8 2}
!80 = !{i64 4854399}
!81 = !{i64 4854817}
!82 = !{i32 0, i32 33}
