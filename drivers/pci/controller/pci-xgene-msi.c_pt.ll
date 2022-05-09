; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-xgene-msi.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-xgene-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.xgene_msi = type { ptr, ptr, ptr, i64, ptr, ptr, %struct.mutex, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.xgene_msi_group = type { ptr, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pci_xgene_msi__236_531_xgene_pcie_msi_init4 = internal global ptr @xgene_pcie_msi_init, section ".initcall4.init", align 4
@xgene_msi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_msi_probe, ptr @xgene_msi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_msi_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xgene-msi\00", [22 x i8] zeroinitializer }, align 32
@xgene_msi_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene1-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgene_msi_ctrl = internal global { %struct.xgene_msi, [56 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@xgene_msi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error allocating MSI bitmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgene_msi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/controller/pci-xgene-msi.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_msi_probe._entry_ptr = internal global ptr @xgene_msi_probe._entry, section ".printk_index", align 4
@xgene_msi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate MSI domain\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_msi_probe._entry_ptr.8 = internal global ptr @xgene_msi_probe._entry.6, section ".printk_index", align 4
@xgene_msi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to clear spurious IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@xgene_msi_probe._entry_ptr.11 = internal global ptr @xgene_msi_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci/xgene:online\00", [47 x i8] zeroinitializer }, align 32
@pci_xgene_online = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci/xgene:dead\00", [17 x i8] zeroinitializer }, align 32
@xgene_msi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 507, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"APM X-Gene PCIe MSI driver loaded\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_msi_probe._entry_ptr.17 = internal global ptr @xgene_msi_probe._entry.14, section ".printk_index", align 4
@xgene_msi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add CPU MSI notifier\0A\00", [32 x i8] zeroinitializer }, align 32
@xgene_msi_probe._entry_ptr.20 = internal global ptr @xgene_msi_probe._entry.18, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@xgene_msi_init_allocator.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&xgene_msi->bitmap_lock\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_irq_domain_alloc, ptr @xgene_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xgene_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @xgene_msi_top_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xgene_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@xgene_msi_top_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.23, ptr null, ptr null, ptr @pci_msi_unmask_irq, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"X-Gene1 MSI\00", [20 x i8] zeroinitializer }, align 32
@xgene_msi_hwirq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013failed to set affinity for GIC IRQ\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_msi_hwirq_alloc\00", [42 x i8] zeroinitializer }, align 32
@xgene_msi_hwirq_alloc._entry_ptr = internal global ptr @xgene_msi_hwirq_alloc._entry, section ".printk_index", align 4
@xgene_msi_hwirq_alloc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013failed to alloc CPU mask for affinity\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_msi_hwirq_alloc._entry_ptr.28 = internal global ptr @xgene_msi_hwirq_alloc._entry.26, section ".printk_index", align 4
@xgene_msi_isr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"xgene_msi_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 518, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 520, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"xgene_msi_match_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 429, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"xgene_msi_ctrl\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 45, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 458, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 464, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 491, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 497, i32 46 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"pci_xgene_online\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 349, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 502, i32 47 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 507, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 512, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 276, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 238, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"xgene_msi_domain_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 55, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"xgene_msi_bottom_irq_chip\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 188, i32 24 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 189, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"xgene_msi_top_irq_chip\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 47, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 48, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 395, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private constant [42 x i8] c"../drivers/pci/controller/pci-xgene-msi.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 398, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 108, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__initcall__kmod_pci_xgene_msi__236_531_xgene_pcie_msi_init4, ptr @xgene_msi_hwirq_alloc._entry, ptr @xgene_msi_hwirq_alloc._entry.26, ptr @xgene_msi_hwirq_alloc._entry_ptr, ptr @xgene_msi_hwirq_alloc._entry_ptr.28, ptr @xgene_msi_probe._entry, ptr @xgene_msi_probe._entry.14, ptr @xgene_msi_probe._entry.18, ptr @xgene_msi_probe._entry.6, ptr @xgene_msi_probe._entry.9, ptr @xgene_msi_probe._entry_ptr, ptr @xgene_msi_probe._entry_ptr.11, ptr @xgene_msi_probe._entry_ptr.17, ptr @xgene_msi_probe._entry_ptr.20, ptr @xgene_msi_probe._entry_ptr.8, ptr @xgene_msi_driver, ptr @.str, ptr @xgene_msi_match_table, ptr @xgene_msi_ctrl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @pci_xgene_online, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @xgene_msi_init_allocator.__key, ptr @.str.21, ptr @msi_domain_ops, ptr @xgene_msi_domain_info, ptr @xgene_msi_bottom_irq_chip, ptr @.str.22, ptr @xgene_msi_top_irq_chip, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_ctrl to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_xgene_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_init_allocator.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_top_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_hwirq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_msi_hwirq_alloc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_pcie_msi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_msi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_msi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgene_msi_ctrl, ptr %driver_data.i.i, align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #8
  store ptr %call1, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call1 to i32
  br label %error

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %conv = zext i32 %3 to i64
  store i64 %conv, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 3), align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  store ptr %5, ptr @xgene_msi_ctrl, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #8
  store i32 %call4.i.i, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 8), align 8
  %call.i = tail call ptr @bitmap_zalloc(i32 noundef 2048, i32 noundef 3264) #8
  store ptr %call.i, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 5), align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %do.body.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.i:                                        ; preds = %if.end
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 6), ptr noundef nonnull @.str.21, ptr noundef nonnull @xgene_msi_init_allocator.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 192) #11
  store ptr %call7.i.i.i.i, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 7), align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i, label %do.body.i.do.end_crit_edge, label %if.end11

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %do.body.i.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %error

if.end11:                                         ; preds = %do.body.i
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 2048, i32 noundef 2048, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef nonnull @xgene_msi_ctrl) #8
  store ptr %call1.i.i, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 1), align 4
  %tobool.not.i121 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i121, label %if.end11.do.end17_crit_edge, label %if.end.i

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.end.i:                                         ; preds = %if.end11
  %8 = load ptr, ptr @xgene_msi_ctrl, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call4.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i, ptr noundef nonnull @xgene_msi_domain_info, ptr noundef nonnull %call1.i.i) #8
  store ptr %call4.i, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 2), align 8
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.for.body_crit_edge

if.end.i.for.body_crit_edge:                      ; preds = %if.end.i
  br label %for.body

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 1), align 4
  tail call void @irq_domain_remove(ptr noundef %9) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then7.i, %if.end11.do.end17_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %error

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %if.end.i.for.body_crit_edge
  %irq_index.0133 = phi i32 [ %inc, %if.end25.for.body_crit_edge ], [ 0, %if.end.i.for.body_crit_edge ]
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %irq_index.0133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %for.body.error_crit_edge, label %if.end25

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end25:                                         ; preds = %for.body
  %10 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 7), align 4
  %gic_irq = getelementptr %struct.xgene_msi_group, ptr %10, i32 %irq_index.0133, i32 1
  %11 = ptrtoint ptr %gic_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call21, ptr %gic_irq, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 7), align 4
  %msi_grp = getelementptr %struct.xgene_msi_group, ptr %12, i32 %irq_index.0133, i32 2
  %13 = ptrtoint ptr %msi_grp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %irq_index.0133, ptr %msi_grp, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 7), align 4
  %arrayidx29 = getelementptr %struct.xgene_msi_group, ptr %14, i32 %irq_index.0133
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xgene_msi_ctrl, ptr %arrayidx29, align 4
  %inc = add nuw nsw i32 %irq_index.0133, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end25.for.cond34.preheader_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end25.for.cond34.preheader_crit_edge:          ; preds = %if.end25
  br label %for.cond34.preheader

for.cond30:                                       ; preds = %for.cond34.preheader
  %inc51 = add nuw nsw i32 %irq_index.1135, 1
  %exitcond138.not = icmp eq i32 %inc51, 16
  br i1 %exitcond138.not, label %for.end52, label %for.cond30.for.cond34.preheader_crit_edge

for.cond30.for.cond34.preheader_crit_edge:        ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond30.for.cond34.preheader_crit_edge, %if.end25.for.cond34.preheader_crit_edge
  %irq_index.1135 = phi i32 [ %inc51, %for.cond30.for.cond34.preheader_crit_edge ], [ 0, %if.end25.for.cond34.preheader_crit_edge ]
  %shl.i = shl i32 %irq_index.1135, 19
  %16 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i = getelementptr i8, ptr %16, i32 %shl.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !79
  %18 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.1 = getelementptr i8, ptr %18, i32 65536
  %add.ptr3.i.1 = getelementptr i8, ptr %add.ptr1.i.1, i32 %shl.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.1) #8, !srcloc !79
  %20 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.2 = getelementptr i8, ptr %20, i32 131072
  %add.ptr3.i.2 = getelementptr i8, ptr %add.ptr1.i.2, i32 %shl.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.2) #8, !srcloc !79
  %22 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.3 = getelementptr i8, ptr %22, i32 196608
  %add.ptr3.i.3 = getelementptr i8, ptr %add.ptr1.i.3, i32 %shl.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.3) #8, !srcloc !79
  %24 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.4 = getelementptr i8, ptr %24, i32 262144
  %add.ptr3.i.4 = getelementptr i8, ptr %add.ptr1.i.4, i32 %shl.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.4) #8, !srcloc !79
  %26 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.5 = getelementptr i8, ptr %26, i32 327680
  %add.ptr3.i.5 = getelementptr i8, ptr %add.ptr1.i.5, i32 %shl.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.5) #8, !srcloc !79
  %28 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.6 = getelementptr i8, ptr %28, i32 393216
  %add.ptr3.i.6 = getelementptr i8, ptr %add.ptr1.i.6, i32 %shl.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.6) #8, !srcloc !79
  %30 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr1.i.7 = getelementptr i8, ptr %30, i32 458752
  %add.ptr3.i.7 = getelementptr i8, ptr %add.ptr1.i.7, i32 %shl.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.7) #8, !srcloc !79
  %32 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 4), align 8
  %add.ptr.i = getelementptr i8, ptr %32, i32 8388608
  %shl.i123 = shl i32 %irq_index.1135, 16
  %add.ptr1.i124 = getelementptr i8, ptr %add.ptr.i, i32 %shl.i123
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i124) #8, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool43.not = icmp eq i32 %33, 0
  br i1 %tobool43.not, label %for.cond30, label %do.end47

do.end47:                                         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %error

for.end52:                                        ; preds = %for.cond30
  %call.i125 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.12, i1 noundef zeroext true, ptr noundef nonnull @xgene_msi_hwirq_alloc, ptr noundef null, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp54 = icmp slt i32 %call.i125, 0
  br i1 %cmp54, label %for.end52.do.end68_crit_edge, label %if.end57

for.end52.do.end68_crit_edge:                     ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

if.end57:                                         ; preds = %for.end52
  store i32 %call.i125, ptr @pci_xgene_online, align 4
  %call.i126 = tail call i32 @__cpuhp_setup_state(i32 noundef 35, ptr noundef nonnull @.str.13, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @xgene_msi_hwirq_free, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool59.not = icmp eq i32 %call.i126, 0
  br i1 %tobool59.not, label %do.end64, label %if.end57.do.end68_crit_edge

if.end57.do.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

do.end68:                                         ; preds = %if.end57.do.end68_crit_edge, %for.end52.do.end68_crit_edge
  %rc.0 = phi i32 [ %call.i125, %for.end52.do.end68_crit_edge ], [ %call.i126, %if.end57.do.end68_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %error

error:                                            ; preds = %do.end68, %do.end47, %for.body.error_crit_edge, %do.end17, %do.end, %if.then
  %rc.1 = phi i32 [ %1, %if.then ], [ -12, %do.end ], [ -12, %do.end17 ], [ -22, %do.end47 ], [ %rc.0, %do.end68 ], [ %call21, %for.body.error_crit_edge ]
  %call70 = tail call i32 @xgene_msi_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end64
  %retval.0 = phi i32 [ %rc.1, %error ], [ 0, %do.end64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_msi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @pci_xgene_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__cpuhp_remove_state(i32 noundef %2, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__cpuhp_remove_state(i32 noundef 35, i1 noundef zeroext true) #8
  %msi_groups = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %msi_groups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msi_groups, align 4
  tail call void @kfree(ptr noundef %4) #8
  %bitmap = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap, align 4
  tail call void @bitmap_free(ptr noundef %6) #8
  %7 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bitmap, align 4
  %msi_domain.i = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msi_domain.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %9) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %inner_domain.i = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %inner_domain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inner_domain.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.xgene_free_domains.exit_crit_edge, label %if.then3.i

if.end.i.xgene_free_domains.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xgene_free_domains.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %11) #8
  br label %xgene_free_domains.exit

xgene_free_domains.exit:                          ; preds = %if.then3.i, %if.end.i.xgene_free_domains.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_msi_hwirq_alloc(i32 noundef %cpu) #2 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cpu)
  %cmp40 = icmp slt i32 %cpu, 16
  br i1 %cmp40, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.041 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %cpu, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 7), align 4
  %gic_irq = getelementptr %struct.xgene_msi_group, ptr %1, i32 %i.041, i32 1
  %2 = ptrtoint ptr %gic_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gic_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.xgene_msi_group, ptr %1, i32 %i.041
  call void @irq_set_chained_handler_and_data(i32 noundef %3, ptr noundef nonnull @xgene_msi_isr, ptr noundef %arrayidx) #8
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #8
  br i1 %call, label %if.then2, label %if.end14.thread

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %6, 31
  %7 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %7, 536870908
  %8 = call ptr @memset(ptr %5, i32 0, i32 %mul.i.i)
  %9 = load ptr, ptr %mask, align 4
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %10, %cpu
  br i1 %cmp.not.i.i.i, label %if.then2.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then2.cpumask_set_cpu.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then2
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !81

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then2.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %cpu, ptr noundef %9) #8
  %11 = ptrtoint ptr %gic_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gic_irq, align 4
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mask, align 4
  %call4 = call i32 @irq_set_affinity(i32 noundef %12, ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end14.thread36, label %if.end14

if.end14.thread36:                                ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %16) #8
  br label %for.inc

if.end14.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %if.then16

if.end14:                                         ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %18) #8
  br label %if.then16

if.then16:                                        ; preds = %if.end14, %if.end14.thread
  %err.035 = phi i32 [ -22, %if.end14.thread ], [ %call4, %if.end14 ]
  %19 = ptrtoint ptr %gic_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gic_irq, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %20, ptr noundef null, ptr noundef null) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end14.thread36, %for.body.for.inc_crit_edge
  %21 = load i32, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 8), align 8
  %add = add i32 %21, %i.041
  %cmp = icmp slt i32 %add, 16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.035, %if.then16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_msi_hwirq_free(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cpu)
  %cmp6 = icmp slt i32 %cpu, 16
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %cpu, %entry.for.body_crit_edge ]
  %0 = load ptr, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 7), align 4
  %gic_irq = getelementptr %struct.xgene_msi_group, ptr %0, i32 %i.07, i32 1
  %1 = ptrtoint ptr %gic_irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gic_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chained_handler_and_data(i32 noundef %2, ptr noundef null, ptr noundef null) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 8), align 8
  %add = add i32 %3, %i.07
  %cmp = icmp slt i32 %add, 16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %bitmap_lock = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #8
  %bitmap = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 4
  %num_cpus = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 8
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %3, i32 noundef 2048, i32 noundef 0, i32 noundef %5, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 2048
  br i1 %cmp, label %if.then, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 4
  %8 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cpus, align 8
  tail call void @__bitmap_set(ptr noundef %7, i32 noundef %call.i, i32 noundef %9) #8
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %call.i, ptr noundef nonnull @xgene_msi_bottom_irq_chip, ptr noundef %11, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %if.then.cleanup_crit_edge ], [ -28, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %bitmap_lock = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #8
  %hwirq2 = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq2, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 8), align 8
  %rem.i.i11 = urem i32 %3, %4
  %sub.i = sub i32 %3, %rem.i.i11
  %bitmap = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmap, align 4
  %num_cpus = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cpus, align 8
  tail call void @__bitmap_clear(ptr noundef %6, i32 noundef %sub.i, i32 noundef %8) #8
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #8
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_msi_set_affinity(ptr nocapture noundef %irqdata, ptr noundef %mask, i1 noundef zeroext %force) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask, i32 noundef %0) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqdata, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 8), align 8
  %rem.i = urem i32 %2, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %call.i)
  %cmp = icmp eq i32 %rem.i, %call.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, %call.i
  %add = sub i32 %sub.i, %rem.i
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %hwirq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgene_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div1.i = lshr i32 %3, 8
  %msi_addr = getelementptr inbounds %struct.xgene_msi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %msi_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %msi_addr, align 8
  %rem.i = shl i32 %3, 3
  %mul = and i32 %rem.i, 120
  %add = add nuw nsw i32 %mul, %div1.i
  %shl = shl i32 %add, 16
  %conv = zext i32 %shl to i64
  %add4 = add i64 %5, %conv
  %shr = lshr i64 %add4, 32
  %conv6 = trunc i64 %shr to i32
  %6 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6, ptr %6, align 4
  %conv7 = trunc i64 %add4 to i32
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv7, ptr %msg, align 4
  %9 = load i32, ptr %hwirq, align 4
  %div1.i16 = lshr i32 %9, 4
  %rem.i17 = and i32 %div1.i16, 15
  %10 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem.i17, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_msi_isr(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %msi_grp2 = getelementptr inbounds %struct.xgene_msi_group, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %msi_grp2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msi_grp2, align 4
  %msi_regs.i = getelementptr inbounds %struct.xgene_msi, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %msi_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msi_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 8388608
  %shl.i = shl i32 %15, 16
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not95 = icmp eq i32 %18, 0
  br i1 %tobool.not95, label %chained_irq_enter.exit.while.end58_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end58_crit_edge:     ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end58

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %shl.i83 = shl i32 %15, 19
  %inner_domain = getelementptr inbounds %struct.xgene_msi, ptr %13, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end57.while.body_crit_edge, %while.body.lr.ph
  %grp_select.096 = phi i32 [ %19, %while.body.lr.ph ], [ %grp_select.1, %if.end57.while.body_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %grp_select.096, i1 true), !range !82
  %21 = ptrtoint ptr %msi_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msi_regs.i, align 8
  %add.ptr1.i84 = getelementptr i8, ptr %22, i32 %shl.i83
  %shl2.i = shl nuw nsw i32 %20, 16
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i84, i32 %shl2.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not93 = icmp eq i32 %23, 0
  br i1 %tobool6.not93, label %while.body.while.end_crit_edge, label %while.body7.lr.ph

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body7.lr.ph:                                ; preds = %while.body
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %mul = shl nuw nsw i32 %20, 4
  br label %while.body7

while.body7:                                      ; preds = %if.end43.while.body7_crit_edge, %while.body7.lr.ph
  %msir_val.094 = phi i32 [ %24, %while.body7.lr.ph ], [ %and, %if.end43.while.body7_crit_edge ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %msir_val.094, i1 true), !range !82
  %add = add nuw nsw i32 %25, %mul
  %mul11 = shl nuw nsw i32 %add, 4
  %add12 = add i32 %mul11, %15
  %26 = load i32, ptr getelementptr inbounds (%struct.xgene_msi, ptr @xgene_msi_ctrl, i32 0, i32 8), align 8
  %rem.i.i = urem i32 %add12, %26
  %sub.i = sub i32 %add12, %rem.i.i
  %27 = ptrtoint ptr %inner_domain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inner_domain, align 4
  %call14 = tail call i32 @generic_handle_domain_irq(ptr noundef %28, i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %while.body7.if.end43_crit_edge, label %land.rhs

while.body7.if.end43_crit_edge:                   ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.rhs:                                         ; preds = %while.body7
  %.b81 = load i1, ptr @xgene_msi_isr.__already_done, align 1
  br i1 %.b81, label %land.rhs.if.end43_crit_edge, label %if.then, !prof !81

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xgene_msi_isr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 331, i32 noundef 9, ptr noundef null) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then, %land.rhs.if.end43_crit_edge, %while.body7.if.end43_crit_edge
  %shl = shl nuw i32 1, %25
  %neg = xor i32 %shl, -1
  %and = and i32 %msir_val.094, %neg
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end43.while.end_crit_edge, label %if.end43.while.body7_crit_edge

if.end43.while.body7_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body7

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %while.body.while.end_crit_edge
  %shl51 = shl nuw i32 1, %20
  %neg52 = xor i32 %shl51, -1
  %and53 = and i32 %grp_select.096, %neg52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then55, label %while.end.if.end57_crit_edge

while.end.if.end57_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %msi_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msi_regs.i, align 8
  %add.ptr.i86 = getelementptr i8, ptr %30, i32 8388608
  %add.ptr1.i88 = getelementptr i8, ptr %add.ptr.i86, i32 %shl.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i88) #8, !srcloc !79
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %while.end.if.end57_crit_edge
  %grp_select.1 = phi i32 [ %and53, %while.end.if.end57_crit_edge ], [ %32, %if.then55 ]
  %tobool.not = icmp eq i32 %grp_select.1, 0
  br i1 %tobool.not, label %if.end57.while.end58_crit_edge, label %if.end57.while.body_crit_edge

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end57.while.end58_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end58

while.end58:                                      ; preds = %if.end57.while.end58_crit_edge, %chained_irq_enter.exit.while.end58_crit_edge
  %33 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i90 = icmp eq ptr %34, null
  br i1 %tobool.not.i90, label %if.else.i91, label %while.end58.chained_irq_exit.exit_crit_edge

while.end58.chained_irq_exit.exit_crit_edge:      ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i91:                                      ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i91, %while.end58.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %36, %if.else.i91 ], [ %34, %while.end58.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_pci_xgene_msi__236_531_xgene_pcie_msi_init4, !1, !"__initcall__kmod_pci_xgene_msi__236_531_xgene_pcie_msi_init4", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 531, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 520, i32 11}
!4 = !{ptr @xgene_msi_driver, !5, !"xgene_msi_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 518, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 458, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @xgene_msi_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @xgene_msi_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 464, i32 3}
!16 = !{ptr @xgene_msi_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @xgene_msi_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 491, i32 4}
!20 = !{ptr @xgene_msi_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @xgene_msi_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 497, i32 46}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 502, i32 47}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 507, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgene_msi_probe._entry.14, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @xgene_msi_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 512, i32 2}
!33 = !{ptr @xgene_msi_probe._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @xgene_msi_probe._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @xgene_msi_ctrl, !36, !"xgene_msi_ctrl", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 45, i32 25}
!37 = !{ptr @xgene_msi_init_allocator.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 276, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @msi_domain_ops, !41, !"msi_domain_ops", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 238, i32 36}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 189, i32 12}
!44 = !{ptr @xgene_msi_bottom_irq_chip, !45, !"xgene_msi_bottom_irq_chip", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 188, i32 24}
!46 = !{ptr @xgene_msi_domain_info, !47, !"xgene_msi_domain_info", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 55, i32 32}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 48, i32 11}
!50 = !{ptr @xgene_msi_top_irq_chip, !51, !"xgene_msi_top_irq_chip", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 47, i32 24}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 395, i32 5}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @xgene_msi_hwirq_alloc._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @xgene_msi_hwirq_alloc._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 398, i32 4}
!59 = !{ptr @xgene_msi_hwirq_alloc._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @xgene_msi_hwirq_alloc._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 331, i32 4}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pci_xgene_online, !67, !"pci_xgene_online", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 349, i32 25}
!68 = !{ptr @xgene_msi_match_table, !69, !"xgene_msi_match_table", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/pci-xgene-msi.c", i32 429, i32 34}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 4906760}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i32 0, i32 33}
