; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-xgene-sb.c_pt.bc'
source_filename = "../drivers/gpio/gpio-xgene-sb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xgene_gpio_sb = type { %struct.gpio_chip, ptr, ptr, i16, i16, i16 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_gpio_xgene_sb__223_333_xgene_gpio_sb_driver_init6 = internal global ptr @xgene_gpio_sb_driver_init, section ".initcall6.init", align 4
@xgene_gpio_sb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_gpio_sb_probe, ptr @xgene_gpio_sb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_gpio_sb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_gpio_sb_driver_exit = internal global ptr @xgene_gpio_sb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [34 x i8] c"gpio_xgene_sb.author=AppliedMicro\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [57 x i8] c"gpio_xgene_sb.description=APM X-Gene GPIO Standby driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [46 x i8] c"gpio_xgene_sb.file=drivers/gpio/gpio-xgene-sb\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [26 x i8] c"gpio_xgene_sb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgene-gpio-sb\00", [18 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-gpio-sb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to obtain parent domain\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgene_gpio_sb_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-xgene-sb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe._entry_ptr = internal global ptr @xgene_gpio_sb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apm,irq-start\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apm,nr-irqs\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apm,nr-gpios\00", [19 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 271, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Support %d gpios, %d irqs start from pin %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe._entry_ptr.12 = internal global ptr @xgene_gpio_sb_probe._entry.9, section ".printk_index", align 4
@xgene_gpio_sb_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_gpio_sb_domain_alloc, ptr @irq_domain_free_irqs_common, ptr @xgene_gpio_sb_domain_activate, ptr @xgene_gpio_sb_domain_deactivate, ptr @xgene_gpio_sb_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgene_gpio_sb_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgene_gpio_sb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to register X-Gene GPIO Standby driver\0A\00", [49 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe._entry_ptr.15 = internal global ptr @xgene_gpio_sb_probe._entry.13, section ".printk_index", align 4
@xgene_gpio_sb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"X-Gene GPIO Standby driver registered\0A\00", [57 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_probe._entry_ptr.18 = internal global ptr @xgene_gpio_sb_probe._entry.16, section ".printk_index", align 4
@xgene_gpio_sb_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr @xgene_gpio_sb_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sbgpio\00", [25 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@xgene_gpio_sb_domain_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unable to configure XGene GPIO standby pin %d as IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xgene_gpio_sb_domain_activate\00", [34 x i8] zeroinitializer }, align 32
@xgene_gpio_sb_domain_activate._entry_ptr = internal global ptr @xgene_gpio_sb_domain_activate._entry, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"xgene_gpio_sb_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 324, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 326, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"xgene_gpio_sb_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 310, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 241, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 257, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 262, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 267, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 270, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"xgene_gpio_sb_domain_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 209, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 283, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 285, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 291, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"xgene_gpio_sb_irq_chip\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 105, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 106, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [32 x i8] c"../drivers/gpio/gpio-xgene-sb.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 139, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_xgene_gpio_sb_driver_exit, ptr @__initcall__kmod_gpio_xgene_sb__223_333_xgene_gpio_sb_driver_init6, ptr @xgene_gpio_sb_domain_activate._entry, ptr @xgene_gpio_sb_domain_activate._entry_ptr, ptr @xgene_gpio_sb_driver_exit, ptr @xgene_gpio_sb_probe._entry, ptr @xgene_gpio_sb_probe._entry.13, ptr @xgene_gpio_sb_probe._entry.16, ptr @xgene_gpio_sb_probe._entry.9, ptr @xgene_gpio_sb_probe._entry_ptr, ptr @xgene_gpio_sb_probe._entry_ptr.12, ptr @xgene_gpio_sb_probe._entry_ptr.15, ptr @xgene_gpio_sb_probe._entry_ptr.18, ptr @xgene_gpio_sb_driver, ptr @.str, ptr @xgene_gpio_sb_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @xgene_gpio_sb_domain_ops, ptr @xgene_gpio_sb_probe.lock_key, ptr @xgene_gpio_sb_probe.request_key, ptr @.str.14, ptr @.str.17, ptr @xgene_gpio_sb_irq_chip, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_gpio_sb_domain_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_gpio_sb_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gpio_sb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_gpio_sb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #6
  %0 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val32, align 4, !annotation !66
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 364, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %regs6 = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %regs6, align 4
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp sgt i32 %call7, 0
  br i1 %cmp, label %if.end11, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end11:                                         ; preds = %if.end5
  %call9 = tail call ptr @irq_get_irq_data(i32 noundef %call7) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call9, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %conv = trunc i32 %4 to i16
  %parent_irq_base = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %parent_irq_base to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %parent_irq_base, align 4
  %call10 = tail call ptr @irq_get_irq_data(i32 noundef %call7) #6
  %domain = getelementptr inbounds %struct.irq_data, ptr %call10, i32 0, i32 5
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.do.end_crit_edge, label %if.end15

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end11.do.end_crit_edge, %if.end5.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %call1, i32 676
  %add.ptr17 = getelementptr i8, ptr %call1, i32 672
  %add.ptr18 = getelementptr i8, ptr %call1, i32 668
  %call19 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr, ptr noundef %add.ptr17, ptr noundef null, ptr noundef %add.ptr18, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xgene_gpio_sb_to_irq, ptr %to_irq, align 4
  %irq_start = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %irq_start to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8, ptr %irq_start, align 4
  %call.i139 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %val32, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool26.not = icmp eq i32 %call.i139, 0
  br i1 %tobool26.not, label %if.then27, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val32, align 4
  %conv28 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %irq_start to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv28, ptr %irq_start, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end22.if.end30_crit_edge
  %nirq = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %nirq to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 6, ptr %nirq, align 2
  %call.i140 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %val32, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool33.not = icmp eq i32 %call.i140, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val32, align 4
  %conv35 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %nirq to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv35, ptr %nirq, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 22, ptr %ngpio, align 4
  %call.i141 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull %val32, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool41.not = icmp eq i32 %call.i141, 0
  br i1 %tobool41.not, label %if.then42, label %if.end37.do.end49_crit_edge

if.end37.do.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val32, align 4
  %conv43 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv43, ptr %ngpio, align 4
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %if.end37.do.end49_crit_edge
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ngpio, align 4
  %conv53 = zext i16 %22 to i32
  %23 = ptrtoint ptr %nirq to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nirq, align 2
  %conv55 = zext i16 %24 to i32
  %25 = ptrtoint ptr %irq_start to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %irq_start, align 4
  %conv57 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %conv57) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %28 = ptrtoint ptr %nirq to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nirq, align 2
  %conv59 = zext i16 %29 to i32
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %30 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fwnode, align 4
  %call61 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %7, i32 noundef 0, i32 noundef %conv59, ptr noundef %31, ptr noundef nonnull @xgene_gpio_sb_domain_ops, ptr noundef nonnull %call.i) #6
  %irq_domain = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call61, ptr %irq_domain, align 4
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %do.end49.cleanup_crit_edge, label %if.end65

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %do.end49
  %domain68 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %domain68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call61, ptr %domain68, align 4
  %call71 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @xgene_gpio_sb_probe.lock_key, ptr noundef nonnull @xgene_gpio_sb_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end82, label %do.end76

do.end76:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  %34 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_domain, align 4
  call void @irq_domain_remove(ptr noundef %35) #6
  br label %cleanup

do.end82:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %do.end76, %do.end49.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %call71, %do.end76 ], [ 0, %do.end82 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end15.cleanup_crit_edge ], [ -19, %do.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_domain = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_to_irq(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #6
  %0 = getelementptr inbounds i8, ptr %fwspec, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %irq_start = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %irq_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %irq_start, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %gpio)
  %cmp = icmp ugt i32 %conv, %gpio
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nirq = getelementptr inbounds %struct.xgene_gpio_sb, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %nirq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nirq, align 2
  %conv2 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %gpio)
  %cmp5 = icmp ult i32 %add, %gpio
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwnode, align 4
  %10 = ptrtoint ptr %fwspec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %11 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %param_count, align 4
  %sub = sub i32 %gpio, %conv
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %param, align 4
  %arrayidx11 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %arrayidx11, align 4
  %call12 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %fwspec) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #6
  %0 = getelementptr inbounds i8, ptr %parent_fwspec, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp51.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.052, %virq
  %add1 = add i32 %i.052, %5
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add1, ptr noundef nonnull @xgene_gpio_sb_irq_chip, ptr noundef %3) #6
  %inc = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwnode, align 4
  %10 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %parent_fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.end.if.else_crit_edge, label %is_of_node.exit

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

is_of_node.exit:                                  ; preds = %for.end
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %12, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.if.else_crit_edge

is_of_node.exit.if.else_crit_edge:                ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %13 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %param_count, align 4
  %param5 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %14 = ptrtoint ptr %param5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %param5, align 4
  %parent_irq_base = getelementptr inbounds %struct.xgene_gpio_sb, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %parent_irq_base to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %parent_irq_base, align 4
  %conv = zext i16 %16 to i32
  %add7 = add i32 %5, -32
  %sub = add i32 %add7, %conv
  %arrayidx9 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx13, align 4
  br label %if.end28

if.else:                                          ; preds = %is_of_node.exit.if.else_crit_edge, %for.end.if.else_crit_edge
  br i1 %tobool.not.i.i, label %if.else.cleanup_crit_edge, label %is_fwnode_irqchip.exit

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

is_fwnode_irqchip.exit:                           ; preds = %if.else
  %ops.i48 = getelementptr inbounds %struct.fwnode_handle, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i48, align 4
  %cmp.i49 = icmp eq ptr %22, @irqchip_fwnode_ops
  br i1 %cmp.i49, label %if.then16, label %is_fwnode_irqchip.exit.cleanup_crit_edge

is_fwnode_irqchip.exit.cleanup_crit_edge:         ; preds = %is_fwnode_irqchip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %is_fwnode_irqchip.exit
  call void @__sanitizer_cov_trace_pc() #8
  %param_count17 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %23 = ptrtoint ptr %param_count17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %param_count17, align 4
  %parent_irq_base18 = getelementptr inbounds %struct.xgene_gpio_sb, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %parent_irq_base18 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %parent_irq_base18, align 4
  %conv19 = zext i16 %25 to i32
  %add20 = add i32 %5, %conv19
  %param21 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %26 = ptrtoint ptr %param21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add20, ptr %param21, align 4
  %arrayidx24 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then16, %if.then
  %call29 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %is_fwnode_irqchip.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ -22, %is_fwnode_irqchip.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_domain_activate(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %irq_data, i1 noundef zeroext %reserve) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_start = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %irq_start, align 4
  %conv = zext i16 %5 to i32
  %add = add i32 %3, %conv
  %call = tail call i32 @gpiochip_lock_as_irq(ptr noundef %1, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %add) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 660
  %mul = shl i32 %add, 1
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %call.i = tail call i32 %11(ptr noundef %add.ptr) #6
  %rem1.i = and i32 %mul, 30
  %shl2.i = shl nuw nsw i32 1, %rem1.i
  %or.i = or i32 %call.i, %shl2.i
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i, align 4
  tail call void %13(ptr noundef %add.ptr, i32 noundef %or.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_gpio_sb_domain_deactivate(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_start = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %irq_start, align 4
  %conv = zext i16 %5 to i32
  %add = add i32 %3, %conv
  tail call void @gpiochip_unlock_as_irq(ptr noundef %1, i32 noundef %add) #6
  %regs = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 660
  %mul = shl i32 %add, 1
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i = tail call i32 %9(ptr noundef %add.ptr) #6
  %rem1.i = and i32 %mul, 30
  %shl2.i = shl nuw nsw i32 1, %rem1.i
  %neg.i = xor i32 %shl2.i, -1
  %and.i = and i32 %call.i, %neg.i
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  tail call void %11(ptr noundef %add.ptr, i32 noundef %and.i) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgene_gpio_sb_domain_translate(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  %nirq = getelementptr inbounds %struct.xgene_gpio_sb, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %nirq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nirq, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp1.not = icmp ult i32 %5, %conv
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %hwirq, align 4
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_gpio_sb_irq_set_type(ptr noundef %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %irq_start = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %irq_start, align 4
  %conv = zext i16 %5 to i32
  %add = add i32 %3, %conv
  %and = and i32 %type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %switch.selectcmp.case1 = icmp eq i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %switch.selectcmp.case2 = icmp eq i32 %and, 2
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %regs = getelementptr inbounds %struct.xgene_gpio_sb, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 660
  %mul = shl i32 %add, 1
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_reg.i, align 4
  %call.i = tail call i32 %9(ptr noundef %add.ptr) #6
  %rem1.i = and i32 %mul, 30
  %shl2.i = shl nuw nsw i32 1, %rem1.i
  %or.i = or i32 %shl2.i, %call.i
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  tail call void %11(ptr noundef %add.ptr, i32 noundef %or.i) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %13, i32 656
  %14 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq, align 4
  %16 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg.i, align 4
  %call.i21 = tail call i32 %17(ptr noundef %add.ptr4) #6
  %rem1.i22 = and i32 %15, 31
  %shl2.i23 = shl nuw i32 1, %rem1.i22
  %or.i24 = or i32 %call.i21, %shl2.i23
  %neg.i25 = xor i32 %shl2.i23, -1
  %and.i26 = and i32 %call.i21, %neg.i25
  %data.0.i = select i1 %switch.selectcmp, i32 %and.i26, i32 %or.i24
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  tail call void %19(ptr noundef %add.ptr4, i32 noundef %data.0.i) #6
  %and6 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool.not, i32 4, i32 1
  %call8 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %.) #6
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_gpio_xgene_sb__223_333_xgene_gpio_sb_driver_init6, !1, !"__initcall__kmod_gpio_xgene_sb__223_333_xgene_gpio_sb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 333, i32 1}
!2 = !{ptr @__exitcall_xgene_gpio_sb_driver_exit, !1, !"__exitcall_xgene_gpio_sb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 335, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 336, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 337, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 326, i32 14}
!12 = !{ptr @xgene_gpio_sb_driver, !13, !"xgene_gpio_sb_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 324, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 241, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xgene_gpio_sb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @xgene_gpio_sb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 257, i32 6}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 262, i32 44}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 267, i32 44}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 270, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xgene_gpio_sb_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @xgene_gpio_sb_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @xgene_gpio_sb_probe.lock_key, !34, !"lock_key", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 283, i32 8}
!35 = !{ptr @xgene_gpio_sb_probe.request_key, !34, !"request_key", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 285, i32 3}
!38 = !{ptr @xgene_gpio_sb_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xgene_gpio_sb_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 291, i32 2}
!42 = !{ptr @xgene_gpio_sb_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @xgene_gpio_sb_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @xgene_gpio_sb_domain_ops, !45, !"xgene_gpio_sb_domain_ops", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 209, i32 36}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 106, i32 20}
!48 = !{ptr @xgene_gpio_sb_irq_chip, !49, !"xgene_gpio_sb_irq_chip", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 105, i32 24}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 139, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xgene_gpio_sb_domain_activate._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @xgene_gpio_sb_domain_activate._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @xgene_gpio_sb_of_match, !56, !"xgene_gpio_sb_of_match", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-xgene-sb.c", i32 310, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
