; ModuleID = '/llk/IR_all_yes/drivers/misc/hi6421v600-irq.c_pt.bc'
source_filename = "../drivers/misc/hi6421v600-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.hi6421v600_irq = type { ptr, ptr, i32, ptr, ptr, %struct.spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_hi6421v600_irq__227_303_hi6421v600_irq_driver_init6 = internal global ptr @hi6421v600_irq_driver_init, section ".initcall6.init", align 4
@hi6421v600_irq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi6421v600_irq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hi6421v600_irq_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi6421v600_irq_driver_exit = internal global ptr @hi6421v600_irq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [59 x i8] c"hi6421v600_irq.description=HiSilicon Hi6421v600 IRQ driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [48 x i8] c"hi6421v600_irq.file=drivers/misc/hi6421v600-irq\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [30 x i8] c"hi6421v600_irq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hi6421v600-irq\00", [17 x i8] zeroinitializer }, align 32
@hi6421v600_irq_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"hi6421v600-irq\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/misc/hi6421v600-irq.c\00", [34 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error %d when getting IRQs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi6421v600_irq_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry_ptr = internal global ptr @hi6421v600_irq_probe._entry, section ".printk_index", align 4
@hi6421v600_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @hi6421v600_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.1, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry_ptr.9 = internal global ptr @hi6421v600_irq_probe._entry.7, section ".printk_index", align 4
@hi6421v600_irq_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.1, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to map H/W IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry_ptr.12 = internal global ptr @hi6421v600_irq_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmic\00", [27 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.1, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to start IRQ handling thread: error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@hi6421v600_irq_probe._entry_ptr.16 = internal global ptr @hi6421v600_irq_probe._entry.14, section ".printk_index", align 4
@hi6421v600_pmu_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @hi6421v600_irq_unmask, ptr @hi6421v600_irq_mask, ptr null, ptr @hi6421v600_irq_mask, ptr null, ptr @hi6421v600_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hi6421v600\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"hi6421v600_irq_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 296, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 299, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"hi6421v600_irq_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 290, i32 40 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 232, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 242, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 248, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"hi6421v600_domain_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 192, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 263, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 270, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 280, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 282, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"hi6421v600_pmu_irqchip\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 171, i32 24 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [33 x i8] c"../drivers/misc/hi6421v600-irq.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 185, i32 30 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_hi6421v600_irq_driver_exit, ptr @__initcall__kmod_hi6421v600_irq__227_303_hi6421v600_irq_driver_init6, ptr @hi6421v600_irq_driver_exit, ptr @hi6421v600_irq_probe._entry, ptr @hi6421v600_irq_probe._entry.10, ptr @hi6421v600_irq_probe._entry.14, ptr @hi6421v600_irq_probe._entry.7, ptr @hi6421v600_irq_probe._entry_ptr, ptr @hi6421v600_irq_probe._entry_ptr.12, ptr @hi6421v600_irq_probe._entry_ptr.16, ptr @hi6421v600_irq_probe._entry_ptr.9, ptr @hi6421v600_irq_driver, ptr @.str, ptr @hi6421v600_irq_table, ptr @.str.1, ptr @hi6421v600_irq_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hi6421v600_domain_ops, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @hi6421v600_pmu_irqchip, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_irq_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421v600_pmu_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421v600_irq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6421v600_irq_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6421v600_irq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi6421v600_irq_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421v600_irq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pending.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !55

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 232, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %regmap31 = getelementptr inbounds %struct.hi6421v600_irq, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %regmap31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %regmap31, align 4
  %lock = getelementptr inbounds %struct.hi6421v600_irq, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hi6421v600_irq_probe.__key, i16 noundef signext 3) #5
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call37 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.hi6421v600_irq, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call37, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call37) #8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end29
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending.i) #5
  %12 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %pending.i, align 4, !annotation !56
  %13 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap31, align 4
  %call.i122 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 514, i32 noundef 255) #5
  %15 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap31, align 4
  %call.1.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 515, i32 noundef 255) #5
  %17 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap31, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 530, ptr noundef nonnull %pending.i) #5
  %19 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap31, align 4
  %call9.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 530, i32 noundef 255) #5
  %21 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap31, align 4
  %call6.1.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 531, ptr noundef nonnull %pending.i) #5
  %23 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap31, align 4
  %call9.1.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 531, i32 noundef 255) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending.i) #5
  %call.i123 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #5
  %irqs = getelementptr inbounds %struct.hi6421v600_irq, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i123, ptr %irqs, align 4
  %tobool48.not = icmp eq ptr %call.i123, null
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %tobool.not.i.i = icmp eq ptr %3, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef 14, i32 noundef 0, ptr noundef nonnull @hi6421v600_domain_ops, ptr noundef nonnull %call.i) #5
  %domain = getelementptr inbounds %struct.hi6421v600_irq, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1.i, ptr %domain, align 4
  %tobool53.not = icmp eq ptr %call1.i, null
  br i1 %tobool53.not, label %do.end57, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end50
  %27 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %domain, align 4
  %call.i124 = call i32 @irq_create_mapping_affinity(ptr noundef %28, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool62.not = icmp eq i32 %call.i124, 0
  br i1 %tobool62.not, label %for.body.preheader.do.end66_crit_edge, label %if.end67

for.body.preheader.do.end66_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.end66:                                         ; preds = %if.end67.12.do.end66_crit_edge, %if.end67.11.do.end66_crit_edge, %if.end67.10.do.end66_crit_edge, %if.end67.9.do.end66_crit_edge, %if.end67.8.do.end66_crit_edge, %if.end67.7.do.end66_crit_edge, %if.end67.6.do.end66_crit_edge, %if.end67.5.do.end66_crit_edge, %if.end67.4.do.end66_crit_edge, %if.end67.3.do.end66_crit_edge, %if.end67.2.do.end66_crit_edge, %if.end67.1.do.end66_crit_edge, %if.end67.do.end66_crit_edge, %for.body.preheader.do.end66_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end67:                                         ; preds = %for.body.preheader
  %29 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irqs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i124, ptr %30, align 4
  %32 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %domain, align 4
  %call.i124.1 = call i32 @irq_create_mapping_affinity(ptr noundef %33, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.1)
  %tobool62.not.1 = icmp eq i32 %call.i124.1, 0
  br i1 %tobool62.not.1, label %if.end67.do.end66_crit_edge, label %if.end67.1

if.end67.do.end66_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.1:                                       ; preds = %if.end67
  %34 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irqs, align 4
  %arrayidx.1 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i124.1, ptr %arrayidx.1, align 4
  %37 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domain, align 4
  %call.i124.2 = call i32 @irq_create_mapping_affinity(ptr noundef %38, i32 noundef 2, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.2)
  %tobool62.not.2 = icmp eq i32 %call.i124.2, 0
  br i1 %tobool62.not.2, label %if.end67.1.do.end66_crit_edge, label %if.end67.2

if.end67.1.do.end66_crit_edge:                    ; preds = %if.end67.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.2:                                       ; preds = %if.end67.1
  %39 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irqs, align 4
  %arrayidx.2 = getelementptr i32, ptr %40, i32 2
  %41 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i124.2, ptr %arrayidx.2, align 4
  %42 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domain, align 4
  %call.i124.3 = call i32 @irq_create_mapping_affinity(ptr noundef %43, i32 noundef 3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.3)
  %tobool62.not.3 = icmp eq i32 %call.i124.3, 0
  br i1 %tobool62.not.3, label %if.end67.2.do.end66_crit_edge, label %if.end67.3

if.end67.2.do.end66_crit_edge:                    ; preds = %if.end67.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.3:                                       ; preds = %if.end67.2
  %44 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irqs, align 4
  %arrayidx.3 = getelementptr i32, ptr %45, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i124.3, ptr %arrayidx.3, align 4
  %47 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %domain, align 4
  %call.i124.4 = call i32 @irq_create_mapping_affinity(ptr noundef %48, i32 noundef 4, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.4)
  %tobool62.not.4 = icmp eq i32 %call.i124.4, 0
  br i1 %tobool62.not.4, label %if.end67.3.do.end66_crit_edge, label %if.end67.4

if.end67.3.do.end66_crit_edge:                    ; preds = %if.end67.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.4:                                       ; preds = %if.end67.3
  %49 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irqs, align 4
  %arrayidx.4 = getelementptr i32, ptr %50, i32 4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i124.4, ptr %arrayidx.4, align 4
  %52 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %domain, align 4
  %call.i124.5 = call i32 @irq_create_mapping_affinity(ptr noundef %53, i32 noundef 5, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.5)
  %tobool62.not.5 = icmp eq i32 %call.i124.5, 0
  br i1 %tobool62.not.5, label %if.end67.4.do.end66_crit_edge, label %if.end67.5

if.end67.4.do.end66_crit_edge:                    ; preds = %if.end67.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.5:                                       ; preds = %if.end67.4
  %54 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %irqs, align 4
  %arrayidx.5 = getelementptr i32, ptr %55, i32 5
  %56 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i124.5, ptr %arrayidx.5, align 4
  %57 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %domain, align 4
  %call.i124.6 = call i32 @irq_create_mapping_affinity(ptr noundef %58, i32 noundef 6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.6)
  %tobool62.not.6 = icmp eq i32 %call.i124.6, 0
  br i1 %tobool62.not.6, label %if.end67.5.do.end66_crit_edge, label %if.end67.6

if.end67.5.do.end66_crit_edge:                    ; preds = %if.end67.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.6:                                       ; preds = %if.end67.5
  %59 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irqs, align 4
  %arrayidx.6 = getelementptr i32, ptr %60, i32 6
  %61 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i124.6, ptr %arrayidx.6, align 4
  %62 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %domain, align 4
  %call.i124.7 = call i32 @irq_create_mapping_affinity(ptr noundef %63, i32 noundef 7, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.7)
  %tobool62.not.7 = icmp eq i32 %call.i124.7, 0
  br i1 %tobool62.not.7, label %if.end67.6.do.end66_crit_edge, label %if.end67.7

if.end67.6.do.end66_crit_edge:                    ; preds = %if.end67.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.7:                                       ; preds = %if.end67.6
  %64 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %irqs, align 4
  %arrayidx.7 = getelementptr i32, ptr %65, i32 7
  %66 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i124.7, ptr %arrayidx.7, align 4
  %67 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %domain, align 4
  %call.i124.8 = call i32 @irq_create_mapping_affinity(ptr noundef %68, i32 noundef 8, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.8)
  %tobool62.not.8 = icmp eq i32 %call.i124.8, 0
  br i1 %tobool62.not.8, label %if.end67.7.do.end66_crit_edge, label %if.end67.8

if.end67.7.do.end66_crit_edge:                    ; preds = %if.end67.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.8:                                       ; preds = %if.end67.7
  %69 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irqs, align 4
  %arrayidx.8 = getelementptr i32, ptr %70, i32 8
  %71 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i124.8, ptr %arrayidx.8, align 4
  %72 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %domain, align 4
  %call.i124.9 = call i32 @irq_create_mapping_affinity(ptr noundef %73, i32 noundef 9, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.9)
  %tobool62.not.9 = icmp eq i32 %call.i124.9, 0
  br i1 %tobool62.not.9, label %if.end67.8.do.end66_crit_edge, label %if.end67.9

if.end67.8.do.end66_crit_edge:                    ; preds = %if.end67.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.9:                                       ; preds = %if.end67.8
  %74 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %irqs, align 4
  %arrayidx.9 = getelementptr i32, ptr %75, i32 9
  %76 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call.i124.9, ptr %arrayidx.9, align 4
  %77 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %domain, align 4
  %call.i124.10 = call i32 @irq_create_mapping_affinity(ptr noundef %78, i32 noundef 10, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.10)
  %tobool62.not.10 = icmp eq i32 %call.i124.10, 0
  br i1 %tobool62.not.10, label %if.end67.9.do.end66_crit_edge, label %if.end67.10

if.end67.9.do.end66_crit_edge:                    ; preds = %if.end67.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.10:                                      ; preds = %if.end67.9
  %79 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %irqs, align 4
  %arrayidx.10 = getelementptr i32, ptr %80, i32 10
  %81 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call.i124.10, ptr %arrayidx.10, align 4
  %82 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %domain, align 4
  %call.i124.11 = call i32 @irq_create_mapping_affinity(ptr noundef %83, i32 noundef 11, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.11)
  %tobool62.not.11 = icmp eq i32 %call.i124.11, 0
  br i1 %tobool62.not.11, label %if.end67.10.do.end66_crit_edge, label %if.end67.11

if.end67.10.do.end66_crit_edge:                   ; preds = %if.end67.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.11:                                      ; preds = %if.end67.10
  %84 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %irqs, align 4
  %arrayidx.11 = getelementptr i32, ptr %85, i32 11
  %86 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call.i124.11, ptr %arrayidx.11, align 4
  %87 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %domain, align 4
  %call.i124.12 = call i32 @irq_create_mapping_affinity(ptr noundef %88, i32 noundef 12, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.12)
  %tobool62.not.12 = icmp eq i32 %call.i124.12, 0
  br i1 %tobool62.not.12, label %if.end67.11.do.end66_crit_edge, label %if.end67.12

if.end67.11.do.end66_crit_edge:                   ; preds = %if.end67.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.12:                                      ; preds = %if.end67.11
  %89 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %irqs, align 4
  %arrayidx.12 = getelementptr i32, ptr %90, i32 12
  %91 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i124.12, ptr %arrayidx.12, align 4
  %92 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %domain, align 4
  %call.i124.13 = call i32 @irq_create_mapping_affinity(ptr noundef %93, i32 noundef 13, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.13)
  %tobool62.not.13 = icmp eq i32 %call.i124.13, 0
  br i1 %tobool62.not.13, label %if.end67.12.do.end66_crit_edge, label %if.end67.13

if.end67.12.do.end66_crit_edge:                   ; preds = %if.end67.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end67.13:                                      ; preds = %if.end67.12
  %94 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %irqs, align 4
  %arrayidx.13 = getelementptr i32, ptr %95, i32 13
  %96 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call.i124.13, ptr %arrayidx.13, align 4
  %97 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq, align 4
  %call70 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %98, ptr noundef nonnull @hi6421v600_irq_handler, ptr noundef null, i32 noundef 16520, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end67.13.cleanup_crit_edge

if.end67.13.cleanup_crit_edge:                    ; preds = %if.end67.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end75:                                         ; preds = %if.end67.13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call70) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.end67.13.cleanup_crit_edge, %do.end66, %do.end57, %if.end45.cleanup_crit_edge, %do.end42, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %10, %do.end42 ], [ -19, %do.end66 ], [ %call70, %do.end75 ], [ -19, %do.end57 ], [ -12, %if.end25.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ 0, %if.end67.13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421v600_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %__priv) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  %in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #5
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %in, align 4, !annotation !56
  %regmap = getelementptr inbounds %struct.hi6421v600_irq, ptr %__priv, i32 0, i32 4
  %irqs = getelementptr inbounds %struct.hi6421v600_irq, ptr %__priv, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 530, ptr noundef nonnull %in) #5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in, align 4
  %call3 = call i32 @regmap_write(ptr noundef %4, i32 noundef 530, i32 noundef %6) #5
  %7 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in, align 4
  %and = and i32 %8, 255
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %pending, align 4
  %and5 = and i32 %8, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 192
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 @generic_handle_irq(i32 noundef %13) #5
  %14 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqs, align 4
  %arrayidx9 = getelementptr i32, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  %call10 = call i32 @generic_handle_irq(i32 noundef %17) #5
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pending, align 4
  %and11 = and i32 %19, -193
  store i32 %and11, ptr %pending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = phi i32 [ %and11, %if.then ], [ %and, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end.if.end.1_crit_edge, label %if.end13

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.end13:                                         ; preds = %if.end
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call14)
  %cmp1637 = icmp slt i32 %call14, 8
  br i1 %cmp1637, label %if.end13.for.body17_crit_edge, label %if.end13.if.end.1_crit_edge

if.end13.if.end.1_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.end13.for.body17_crit_edge:                    ; preds = %if.end13
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end13.for.body17_crit_edge
  %offset.038 = phi i32 [ %call23, %for.body17.for.body17_crit_edge ], [ %call14, %if.end13.for.body17_crit_edge ]
  %21 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irqs, align 4
  %arrayidx20 = getelementptr i32, ptr %22, i32 %offset.038
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx20, align 4
  %call21 = call i32 @generic_handle_irq(i32 noundef %24) #5
  %add22 = add nsw i32 %offset.038, 1
  %call23 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef %add22) #5
  %cmp16 = icmp slt i32 %call23, 8
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.if.end.1_crit_edge

for.body17.if.end.1_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17

if.end.1:                                         ; preds = %for.body17.if.end.1_crit_edge, %if.end13.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.1 = call i32 @regmap_read(ptr noundef %26, i32 noundef 531, ptr noundef nonnull %in) #5
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in, align 4
  %call3.1 = call i32 @regmap_write(ptr noundef %28, i32 noundef 531, i32 noundef %30) #5
  %31 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in, align 4
  %and.1 = and i32 %32, 255
  %33 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.1, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1.for.inc24.1_crit_edge, label %if.end13.1

if.end.1.for.inc24.1_crit_edge:                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.1

if.end13.1:                                       ; preds = %if.end.1
  %call14.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call14.1)
  %cmp1637.1 = icmp slt i32 %call14.1, 8
  br i1 %cmp1637.1, label %if.end13.1.for.body17.1_crit_edge, label %if.end13.1.for.inc24.1_crit_edge

if.end13.1.for.inc24.1_crit_edge:                 ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.1

if.end13.1.for.body17.1_crit_edge:                ; preds = %if.end13.1
  br label %for.body17.1

for.body17.1:                                     ; preds = %for.body17.1.for.body17.1_crit_edge, %if.end13.1.for.body17.1_crit_edge
  %offset.038.1 = phi i32 [ %call23.1, %for.body17.1.for.body17.1_crit_edge ], [ %call14.1, %if.end13.1.for.body17.1_crit_edge ]
  %34 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irqs, align 4
  %add19.1 = add nsw i32 %offset.038.1, 8
  %arrayidx20.1 = getelementptr i32, ptr %35, i32 %add19.1
  %36 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx20.1, align 4
  %call21.1 = call i32 @generic_handle_irq(i32 noundef %37) #5
  %add22.1 = add nsw i32 %offset.038.1, 1
  %call23.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef %add22.1) #5
  %cmp16.1 = icmp slt i32 %call23.1, 8
  br i1 %cmp16.1, label %for.body17.1.for.body17.1_crit_edge, label %for.body17.1.for.inc24.1_crit_edge

for.body17.1.for.inc24.1_crit_edge:               ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.1

for.body17.1.for.body17.1_crit_edge:              ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body17.1

for.inc24.1:                                      ; preds = %for.body17.1.for.inc24.1_crit_edge, %if.end13.1.for.inc24.1_crit_edge, %if.end.1.for.inc24.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421v600_irq_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @hi6421v600_pmu_irqchip, ptr noundef nonnull @handle_simple_irq, ptr noundef nonnull @.str.17) #5
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #5
  %call1 = tail call i32 @irq_set_irq_type(i32 noundef %virq, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi6421v600_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !56
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq.i, align 4
  %div19 = lshr i32 %4, 3
  %add = add nuw nsw i32 %div19, 514
  %lock = getelementptr inbounds %struct.hi6421v600_irq, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %regmap = getelementptr inbounds %struct.hi6421v600_irq, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %data) #5
  %7 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %8, 7
  %shl = shl nuw nsw i32 1, %and
  %neg = xor i32 %shl, -1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %and9 = and i32 %10, %neg
  store i32 %and9, ptr %data, align 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_write(ptr noundef %12, i32 noundef %add, i32 noundef %and9) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi6421v600_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !56
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq.i, align 4
  %div18 = lshr i32 %4, 3
  %add = add nuw nsw i32 %div18, 514
  %lock = getelementptr inbounds %struct.hi6421v600_irq, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %regmap = getelementptr inbounds %struct.hi6421v600_irq, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %data) #5
  %7 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %8, 7
  %shl = shl nuw nsw i32 1, %and
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %or = or i32 %shl, %10
  store i32 %or, ptr %data, align 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %12, i32 noundef %add, i32 noundef %or) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_hi6421v600_irq__227_303_hi6421v600_irq_driver_init6, !1, !"__initcall__kmod_hi6421v600_irq__227_303_hi6421v600_irq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/hi6421v600-irq.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_hi6421v600_irq_driver_exit, !1, !"__exitcall_hi6421v600_irq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/misc/hi6421v600-irq.c", i32 305, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/misc/hi6421v600-irq.c", i32 306, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/hi6421v600-irq.c", i32 299, i32 11}
!10 = !{ptr @hi6421v600_irq_driver, !11, !"hi6421v600_irq_driver", i1 false, i1 false}
!11 = !{!"../drivers/misc/hi6421v600-irq.c", i32 296, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/hi6421v600-irq.c", i32 232, i32 6}
!14 = !{ptr @hi6421v600_irq_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/misc/hi6421v600-irq.c", i32 242, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/hi6421v600-irq.c", i32 248, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hi6421v600_irq_probe._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @hi6421v600_irq_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/hi6421v600-irq.c", i32 263, i32 3}
!26 = !{ptr @hi6421v600_irq_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hi6421v600_irq_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/hi6421v600-irq.c", i32 270, i32 4}
!30 = !{ptr @hi6421v600_irq_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hi6421v600_irq_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/hi6421v600-irq.c", i32 280, i32 6}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/hi6421v600-irq.c", i32 282, i32 3}
!36 = !{ptr @hi6421v600_irq_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hi6421v600_irq_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @hi6421v600_domain_ops, !39, !"hi6421v600_domain_ops", i1 false, i1 false}
!39 = !{!"../drivers/misc/hi6421v600-irq.c", i32 192, i32 36}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/hi6421v600-irq.c", i32 185, i32 30}
!42 = !{ptr @hi6421v600_pmu_irqchip, !43, !"hi6421v600_pmu_irqchip", i1 false, i1 false}
!43 = !{!"../drivers/misc/hi6421v600-irq.c", i32 171, i32 24}
!44 = !{ptr @hi6421v600_irq_table, !45, !"hi6421v600_irq_table", i1 false, i1 false}
!45 = !{!"../drivers/misc/hi6421v600-irq.c", i32 290, i32 40}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"auto-init"}
