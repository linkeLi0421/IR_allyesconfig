; ModuleID = '/llk/IR_all_yes/drivers/iommu/rockchip-iommu.c_pt.bc'
source_filename = "../drivers/iommu/rockchip-iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rk_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, i64 }
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
%struct.rk_iommu = type { ptr, ptr, i32, i32, ptr, i32, i8, %struct.iommu_device, %struct.list_head, ptr, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.rk_iommu_domain = type { %struct.list_head, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.iommu_domain }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.rk_iommudata = type { ptr, ptr }

@__initcall__kmod_rockchip_iommu__237_1415_rk_iommu_init4 = internal global ptr @rk_iommu_init, section ".initcall4.init", align 4
@rk_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk_iommu_probe, ptr null, ptr @rk_iommu_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rk_iommu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rk_iommu\00", [23 x i8] zeroinitializer }, align 32
@rk_iommu_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iommu_data_ops_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iommu_data_ops_v2 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rk_iommu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_suspend, ptr @rk_iommu_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iommu/rockchip-iommu.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,disable-mmu-reset\00", [37 x i8] zeroinitializer }, align 32
@rk_iommu_clocks = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@rk_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @rk_iommu_domain_alloc, ptr @rk_iommu_domain_free, ptr @rk_iommu_attach_device, ptr @rk_iommu_detach_device, ptr @rk_iommu_map, ptr null, ptr @rk_iommu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_iova_to_phys, ptr @rk_iommu_probe_device, ptr @rk_iommu_release_device, ptr null, ptr @rk_iommu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8384512, ptr null }, [60 x i8] zeroinitializer }, align 32
@dma_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@rk_iommu_domain_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 1088, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA map error for DT\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk_iommu_domain_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_iommu_domain_alloc._entry_ptr = internal global ptr @rk_iommu_domain_alloc._entry, section ".printk_index", align 4
@rk_iommu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&rk_domain->iommus_lock\00", [40 x i8] zeroinitializer }, align 32
@rk_iommu_domain_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rk_domain->dt_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rk_iommu_attach_device.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.1, ptr @.str.16, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rockchip_iommu\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk_iommu_attach_device\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Attaching to iommu domain\0A\00", [37 x i8] zeroinitializer }, align 32
@rk_iommu_attach_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rk_iommu_enable_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 431, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Enable stall request timed out, status: %#08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk_iommu_enable_stall\00", [42 x i8] zeroinitializer }, align 32
@rk_iommu_enable_stall._entry_ptr = internal global ptr @rk_iommu_enable_stall._entry, section ".printk_index", align 4
@rk_iommu_force_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 517, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Error during raw reset. MMU_DTE_ADDR is not functioning\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk_iommu_force_reset\00", [43 x i8] zeroinitializer }, align 32
@rk_iommu_force_reset._entry_ptr = internal global ptr @rk_iommu_force_reset._entry, section ".printk_index", align 4
@rk_iommu_force_reset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.1, i32 528, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FORCE_RESET command timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@rk_iommu_force_reset._entry_ptr.23 = internal global ptr @rk_iommu_force_reset._entry.21, section ".printk_index", align 4
@rk_iommu_enable_paging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 473, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Enable paging request timed out, status: %#08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk_iommu_enable_paging\00", [41 x i8] zeroinitializer }, align 32
@rk_iommu_enable_paging._entry_ptr = internal global ptr @rk_iommu_enable_paging._entry, section ".printk_index", align 4
@rk_iommu_disable_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.1, i32 452, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Disable stall request timed out, status: %#08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk_iommu_disable_stall\00", [41 x i8] zeroinitializer }, align 32
@rk_iommu_disable_stall._entry_ptr = internal global ptr @rk_iommu_disable_stall._entry, section ".printk_index", align 4
@rk_iommu_detach_device.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.1, ptr @.str.29, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk_iommu_detach_device\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Detaching from iommu domain\0A\00", [35 x i8] zeroinitializer }, align 32
@rk_iommu_detach_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rk_iommu_disable_paging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.1, i32 494, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Disable paging request timed out, status: %#08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rk_iommu_disable_paging\00", [40 x i8] zeroinitializer }, align 32
@rk_iommu_disable_paging._entry_ptr = internal global ptr @rk_iommu_disable_paging._entry, section ".printk_index", align 4
@rk_dte_get_page_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.1, i32 766, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DMA mapping error while allocating page table\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk_dte_get_page_table\00", [42 x i8] zeroinitializer }, align 32
@rk_dte_get_page_table._entry_ptr = internal global ptr @rk_dte_get_page_table._entry, section ".printk_index", align 4
@rk_iommu_map_iova._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.1, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013iova: %pad already mapped to %pa cannot remap to phys: %pa prot: %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rk_iommu_map_iova\00", [46 x i8] zeroinitializer }, align 32
@rk_iommu_map_iova._entry_ptr = internal global ptr @rk_iommu_map_iova._entry, section ".printk_index", align 4
@rk_iommu_zap_iova.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rk_iommu_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rk_iommu_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.1, i32 642, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Page fault at %pad of type %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk_iommu_irq\00", [19 x i8] zeroinitializer }, align 32
@rk_iommu_irq._entry_ptr = internal global ptr @rk_iommu_irq._entry, section ".printk_index", align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@rk_iommu_irq._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.1, i32 655, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Page fault while iommu not attached to domain?\0A\00", [48 x i8] zeroinitializer }, align 32
@rk_iommu_irq._entry_ptr.42 = internal global ptr @rk_iommu_irq._entry.40, section ".printk_index", align 4
@rk_iommu_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.1, i32 662, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BUS_ERROR occurred at %pad\0A\00", [36 x i8] zeroinitializer }, align 32
@rk_iommu_irq._entry_ptr.45 = internal global ptr @rk_iommu_irq._entry.43, section ".printk_index", align 4
@rk_iommu_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.37, ptr @.str.1, i32 666, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unexpected int_status: %#08x\0A\00", [34 x i8] zeroinitializer }, align 32
@rk_iommu_irq._entry_ptr.48 = internal global ptr @rk_iommu_irq._entry.46, section ".printk_index", align 4
@log_iova._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.1, i32 602, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"iova = %pad: dte_index: %#03x pte_index: %#03x page_offset: %#03x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"log_iova\00", [23 x i8] zeroinitializer }, align 32
@log_iova._entry_ptr = internal global ptr @log_iova._entry, section ".printk_index", align 4
@log_iova._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.1, i32 606, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"mmu_dte_addr: %pa dte@%pa: %#08x valid: %u pte@%pa: %#08x valid: %u page@%pa flags: %#03x\0A\00", [37 x i8] zeroinitializer }, align 32
@log_iova._entry_ptr.53 = internal global ptr @log_iova._entry.51, section ".printk_index", align 4
@iommu_data_ops_v1 = internal global { %struct.rk_iommu_ops, [32 x i8] } { %struct.rk_iommu_ops { ptr @rk_dte_pt_address, ptr @rk_mk_dte, ptr @rk_mk_pte, ptr @rk_dte_addr_phys, ptr @rk_dma_addr_dte, i64 4294967295 }, [32 x i8] zeroinitializer }, align 32
@iommu_data_ops_v2 = internal global { %struct.rk_iommu_ops, [32 x i8] } { %struct.rk_iommu_ops { ptr @rk_dte_pt_address_v2, ptr @rk_mk_dte_v2, ptr @rk_mk_pte_v2, ptr @rk_dte_addr_phys_v2, ptr @rk_dma_addr_dte_v2, i64 1099511627775 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"rk_iommu_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1400, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1404, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"rk_iommu_dt_ids\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1390, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"rk_iommu_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1366, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"rk_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 126, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1228, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1253, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"rk_iommu_clocks\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 93, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"rk_iommu_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1188, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [8 x i8] c"dma_dev\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 125, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 94, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 94, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1088, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1092, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1093, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 326, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1034, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 430, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 517, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 528, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 472, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 451, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 998, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 493, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 766, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 842, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 640, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 655, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 662, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 665, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 601, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 603, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [18 x i8] c"iommu_data_ops_v1\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1372, i32 28 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"iommu_data_ops_v2\00", align 1
@___asan_gen_.260 = private constant [34 x i8] c"../drivers/iommu/rockchip-iommu.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1381, i32 28 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__initcall__kmod_rockchip_iommu__237_1415_rk_iommu_init4, ptr @log_iova._entry, ptr @log_iova._entry.51, ptr @log_iova._entry_ptr, ptr @log_iova._entry_ptr.53, ptr @rk_dte_get_page_table._entry, ptr @rk_dte_get_page_table._entry_ptr, ptr @rk_iommu_disable_paging._entry, ptr @rk_iommu_disable_paging._entry_ptr, ptr @rk_iommu_disable_stall._entry, ptr @rk_iommu_disable_stall._entry_ptr, ptr @rk_iommu_domain_alloc._entry, ptr @rk_iommu_domain_alloc._entry_ptr, ptr @rk_iommu_enable_paging._entry, ptr @rk_iommu_enable_paging._entry_ptr, ptr @rk_iommu_enable_stall._entry, ptr @rk_iommu_enable_stall._entry_ptr, ptr @rk_iommu_force_reset._entry, ptr @rk_iommu_force_reset._entry.21, ptr @rk_iommu_force_reset._entry_ptr, ptr @rk_iommu_force_reset._entry_ptr.23, ptr @rk_iommu_irq._entry, ptr @rk_iommu_irq._entry.40, ptr @rk_iommu_irq._entry.43, ptr @rk_iommu_irq._entry.46, ptr @rk_iommu_irq._entry_ptr, ptr @rk_iommu_irq._entry_ptr.42, ptr @rk_iommu_irq._entry_ptr.45, ptr @rk_iommu_irq._entry_ptr.48, ptr @rk_iommu_map_iova._entry, ptr @rk_iommu_map_iova._entry_ptr, ptr @rk_iommu_driver, ptr @.str, ptr @rk_iommu_dt_ids, ptr @rk_iommu_pm_ops, ptr @rk_ops, ptr @.str.1, ptr @.str.2, ptr @rk_iommu_clocks, ptr @rk_iommu_ops, ptr @dma_dev, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rk_iommu_domain_alloc.__key, ptr @.str.9, ptr @rk_iommu_domain_alloc.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @iommu_data_ops_v1, ptr @iommu_data_ops_v2], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_domain_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_domain_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_enable_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_force_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_force_reset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_enable_paging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_disable_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_disable_paging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_dte_get_page_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_map_iova._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_irq._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_iommu_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_iova._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_iova._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_data_ops_v1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_data_ops_v2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk_iommu_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup144_crit_edge, label %if.end

entry.cleanup144_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %num_mmu = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %num_mmu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_mmu, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %5 = load ptr, ptr @rk_ops, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call3, ptr @rk_ops, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %6 = load ptr, ptr @rk_ops, align 4
  %cmp.not = icmp eq ptr %6, %call3
  br i1 %cmp.not, label %if.end30, label %do.end, !prof !140

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1228, i32 noundef 9, ptr noundef null) #11
  br label %cleanup144

if.end30:                                         ; preds = %if.end6
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #11
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !141

devm_kcalloc.exit.thread:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %bases245 = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %bases245 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bases245, align 4
  br label %cleanup144

devm_kcalloc.exit:                                ; preds = %if.end30
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %10, i32 noundef 3520) #11
  %bases = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %bases to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %bases, align 4
  %tobool33.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool33.not, label %devm_kcalloc.exit.cleanup144_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup144_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36256.not = icmp eq i32 %1, 0
  br i1 %cmp36256.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0257 = phi i32 [ %inc50, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call37 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %i.0257) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.end40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %call42 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call37) #11
  %12 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bases, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0257
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call42, ptr %arrayidx, align 4
  %15 = load ptr, ptr %bases, align 4
  %arrayidx45 = getelementptr ptr, ptr %15, i32 %i.0257
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx45, align 4
  %cmp.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end40.for.inc_crit_edge, label %if.end48

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_mmu, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %num_mmu, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc50 = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc50, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp52 = icmp eq i32 %21, 0
  br i1 %cmp52, label %if.then53, label %if.end57

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bases, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup144

if.end57:                                         ; preds = %for.end
  %call58 = tail call i32 @platform_irq_count(ptr noundef %pdev) #11
  %num_irq = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %num_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call58, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp60 = icmp slt i32 %call58, 0
  br i1 %cmp60, label %if.end57.cleanup144_crit_edge, label %if.end63

if.end57.cleanup144_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

if.end63:                                         ; preds = %if.end57
  %call.i233 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %reset_disabled = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 6
  %frombool = zext i1 %call.i233 to i8
  %28 = ptrtoint ptr %reset_disabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %reset_disabled, align 4
  %num_clocks = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %num_clocks to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %num_clocks, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call5.i.i234 = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 16, i32 noundef 3520) #11
  %clocks = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i234, ptr %clocks, align 4
  %tobool69.not = icmp eq ptr %call5.i.i234, null
  br i1 %tobool69.not, label %if.end63.cleanup144_crit_edge, label %for.cond72.preheader

if.end63.cleanup144_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

for.cond72.preheader:                             ; preds = %if.end63
  %33 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp74259 = icmp sgt i32 %34, 0
  br i1 %cmp74259, label %for.cond72.preheader.for.body75_crit_edge, label %for.cond72.preheader.for.end81_crit_edge

for.cond72.preheader.for.end81_crit_edge:         ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.cond72.preheader.for.body75_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.cond72.preheader.for.body75_crit_edge
  %i.1260 = phi i32 [ %inc80, %for.body75.for.body75_crit_edge ], [ 0, %for.cond72.preheader.for.body75_crit_edge ]
  %arrayidx76 = getelementptr [2 x ptr], ptr @rk_iommu_clocks, i32 0, i32 %i.1260
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx76, align 4
  %37 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clocks, align 4
  %arrayidx78 = getelementptr %struct.clk_bulk_data, ptr %38, i32 %i.1260
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %arrayidx78, align 4
  %inc80 = add nuw nsw i32 %i.1260, 1
  %40 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_clocks, align 4
  %cmp74 = icmp slt i32 %inc80, %41
  br i1 %cmp74, label %for.body75.for.body75_crit_edge, label %for.body75.for.end81_crit_edge

for.body75.for.end81_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body75

for.end81:                                        ; preds = %for.body75.for.end81_crit_edge, %for.cond72.preheader.for.end81_crit_edge
  %.lcssa = phi i32 [ %34, %for.cond72.preheader.for.end81_crit_edge ], [ %41, %for.body75.for.end81_crit_edge ]
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %44 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clocks, align 4
  %call85 = tail call i32 @devm_clk_bulk_get(ptr noundef %43, i32 noundef %.lcssa, ptr noundef %45) #11
  %46 = zext i32 %call85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call85, label %for.end81.cleanup144_crit_edge [
    i32 -2, label %if.then87
    i32 0, label %for.end81.if.end92_crit_edge
  ]

for.end81.if.end92_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

for.end81.cleanup144_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

if.then87:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %num_clocks to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %num_clocks, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %for.end81.if.end92_crit_edge
  %48 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_clocks, align 4
  %50 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clocks, align 4
  %call95 = tail call i32 @clk_bulk_prepare(i32 noundef %49, ptr noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end92.cleanup144_crit_edge

if.end92.cleanup144_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

if.end98:                                         ; preds = %if.end92
  %call99 = tail call ptr @iommu_group_alloc() #11
  %group = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 10
  %52 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call99, ptr %group, align 4
  %cmp.i237 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then102, label %if.end105

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call99 to i32
  br label %err_unprepare_clocks

if.end105:                                        ; preds = %if.end98
  %iommu106 = getelementptr inbounds %struct.rk_iommu, ptr %call.i, i32 0, i32 7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end105.dev_name.exit_crit_edge

if.end105.dev_name.exit_crit_edge:                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end105.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %57, %if.end.i ], [ %55, %if.end105.dev_name.exit_crit_edge ]
  %call108 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu106, ptr noundef %dev1, ptr noundef null, ptr noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %dev_name.exit.err_put_group_crit_edge

dev_name.exit.err_put_group_crit_edge:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put_group

if.end111:                                        ; preds = %dev_name.exit
  %call113 = tail call i32 @iommu_device_register(ptr noundef %iommu106, ptr noundef nonnull @rk_iommu_ops, ptr noundef %dev1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.err_remove_sysfs_crit_edge

if.end111.err_remove_sysfs_crit_edge:             ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_sysfs

if.end116:                                        ; preds = %if.end111
  %58 = load ptr, ptr @dma_dev, align 4
  %tobool117.not = icmp eq ptr %58, null
  br i1 %tobool117.not, label %if.then118, label %if.end116.if.end120_crit_edge

if.end116.if.end120_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %dev1, ptr @dma_dev, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end116.if.end120_crit_edge
  %call121 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @rk_iommu_ops) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %59 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp124261 = icmp sgt i32 %60, 0
  br i1 %cmp124261, label %if.end120.for.body125_crit_edge, label %if.end120.for.end138_crit_edge

if.end120.for.end138_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

if.end120.for.body125_crit_edge:                  ; preds = %if.end120
  br label %for.body125

for.cond122:                                      ; preds = %dev_name.exit242
  %inc137 = add nuw nsw i32 %i.2262, 1
  %61 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_irq, align 4
  %cmp124 = icmp slt i32 %inc137, %62
  br i1 %cmp124, label %for.cond122.for.body125_crit_edge, label %for.cond122.for.end138_crit_edge

for.cond122.for.end138_crit_edge:                 ; preds = %for.cond122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond122.for.body125_crit_edge:                ; preds = %for.cond122
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body125

for.body125:                                      ; preds = %for.cond122.for.body125_crit_edge, %if.end120.for.body125_crit_edge
  %i.2262 = phi i32 [ %inc137, %for.cond122.for.body125_crit_edge ], [ 0, %if.end120.for.body125_crit_edge ]
  %call126 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.2262) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %for.body125.cleanup144_crit_edge, label %if.end129

for.body125.cleanup144_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup144

if.end129:                                        ; preds = %for.body125
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i239 = icmp eq ptr %66, null
  br i1 %tobool.not.i239, label %if.end.i240, label %if.end129.dev_name.exit242_crit_edge

if.end129.dev_name.exit242_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit242

if.end.i240:                                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit242

dev_name.exit242:                                 ; preds = %if.end.i240, %if.end129.dev_name.exit242_crit_edge
  %retval.0.i241 = phi ptr [ %68, %if.end.i240 ], [ %66, %if.end129.dev_name.exit242_crit_edge ]
  %call.i243 = tail call i32 @devm_request_threaded_irq(ptr noundef %64, i32 noundef %call126, ptr noundef nonnull @rk_iommu_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i241, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool133.not = icmp eq i32 %call.i243, 0
  br i1 %tobool133.not, label %for.cond122, label %cleanup

cleanup:                                          ; preds = %dev_name.exit242
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %err_remove_sysfs

for.end138:                                       ; preds = %for.cond122.for.end138_crit_edge, %if.end120.for.end138_crit_edge
  %69 = load ptr, ptr @rk_ops, align 4
  %dma_bit_mask = getelementptr inbounds %struct.rk_iommu_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %dma_bit_mask to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dma_bit_mask, align 8
  tail call fastcc void @dma_set_mask_and_coherent(ptr noundef %dev1, i64 noundef %71)
  br label %cleanup144

err_remove_sysfs:                                 ; preds = %cleanup, %if.end111.err_remove_sysfs_crit_edge
  %err.2 = phi i32 [ %call113, %if.end111.err_remove_sysfs_crit_edge ], [ %call.i243, %cleanup ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu106) #11
  br label %err_put_group

err_put_group:                                    ; preds = %err_remove_sysfs, %dev_name.exit.err_put_group_crit_edge
  %err.3 = phi i32 [ %call108, %dev_name.exit.err_put_group_crit_edge ], [ %err.2, %err_remove_sysfs ]
  %72 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %73) #11
  br label %err_unprepare_clocks

err_unprepare_clocks:                             ; preds = %err_put_group, %if.then102
  %err.4 = phi i32 [ %53, %if.then102 ], [ %err.3, %err_put_group ]
  %74 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_clocks, align 4
  %76 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_unprepare(i32 noundef %75, ptr noundef %77) #11
  br label %cleanup144

cleanup144:                                       ; preds = %err_unprepare_clocks, %for.end138, %for.body125.cleanup144_crit_edge, %if.end92.cleanup144_crit_edge, %for.end81.cleanup144_crit_edge, %if.end63.cleanup144_crit_edge, %if.end57.cleanup144_crit_edge, %if.then53, %devm_kcalloc.exit.cleanup144_crit_edge, %devm_kcalloc.exit.thread, %do.end, %entry.cleanup144_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ %26, %if.then53 ], [ %err.4, %err_unprepare_clocks ], [ 0, %for.end138 ], [ -12, %entry.cleanup144_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup144_crit_edge ], [ %call58, %if.end57.cleanup144_crit_edge ], [ -12, %if.end63.cleanup144_crit_edge ], [ %call85, %for.end81.cleanup144_crit_edge ], [ %call95, %if.end92.cleanup144_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call126, %for.body125.cleanup144_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_iommu_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_irq = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.011) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %5, i32 noundef %call1, ptr noundef %1) #11
  %inc = add nuw nsw i32 %i.011, 1
  %6 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_irq, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %iova.addr.i = alloca i32, align 4
  %mmu_dte_addr_phys.i = alloca i32, align 4
  %dte_addr_phys.i = alloca i32, align 4
  %pte_addr_phys.i = alloca i32, align 4
  %page_addr_phys.i = alloca i32, align 4
  %iova = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova) #11
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %iova, align 4, !annotation !142
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %2, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %lor.lhs.false
  %.b177 = load i1, ptr @rk_iommu_irq.__already_done, align 1
  br i1 %.b177, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !140

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rk_iommu_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 619, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  %num_clocks = getelementptr inbounds %struct.rk_iommu, ptr %dev_id, i32 0, i32 5
  %3 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr inbounds %struct.rk_iommu, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clocks, align 4
  %call40 = tail call i32 @clk_bulk_enable(i32 noundef %4, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond.preheader, label %do.end57, !prof !140

for.cond.preheader:                               ; preds = %if.end38
  %num_mmu = getelementptr inbounds %struct.rk_iommu, ptr %dev_id, i32 0, i32 2
  %7 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp74185 = icmp sgt i32 %8, 0
  br i1 %cmp74185, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bases = getelementptr inbounds %struct.rk_iommu, ptr %dev_id, i32 0, i32 1
  %domain = getelementptr inbounds %struct.rk_iommu, ptr %dev_id, i32 0, i32 9
  br label %for.body

do.end57:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 622, i32 noundef 9, ptr noundef null) #11
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bases, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.0187
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 32
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !143
  %14 = call i32 @llvm.bswap.i32(i32 %13) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp76 = icmp eq i32 %13, 0
  br i1 %cmp76, label %for.body.for.inc_crit_edge, label %if.end78

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end78:                                         ; preds = %for.body
  %15 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bases, align 4
  %arrayidx80 = getelementptr ptr, ptr %16, i32 %i.0187
  %17 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx80, align 4
  %add.ptr.i179 = getelementptr i8, ptr %18, i32 12
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #11, !srcloc !143
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %21 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %iova, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %if.end78.if.end109_crit_edge, label %if.then83

if.end78.if.end109_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then83:                                        ; preds = %if.end78
  %22 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bases, align 4
  %arrayidx85 = getelementptr ptr, ptr %23, i32 %i.0187
  %24 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx85, align 4
  %add.ptr.i180 = getelementptr i8, ptr %25, i32 4
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #11, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %27 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool88.not = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %cond94 = select i1 %tobool88.not, ptr @.str.39, ptr @.str.38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.36, ptr noundef nonnull %iova, ptr noundef nonnull %cond94) #14
  %30 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iova, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.addr.i)
  %32 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %iova.addr.i, align 4
  %33 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bases, align 4
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %i.0187
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mmu_dte_addr_phys.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dte_addr_phys.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pte_addr_phys.i) #11
  %37 = ptrtoint ptr %pte_addr_phys.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pte_addr_phys.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr_phys.i) #11
  %38 = ptrtoint ptr %page_addr_phys.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %page_addr_phys.i, align 4
  %shr.i.i = lshr i32 %31, 22
  %and.i.i = lshr i32 %31, 12
  %shr.i37.i = and i32 %and.i.i, 1023
  %and.i38.i = and i32 %31, 4095
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !143
  %40 = call i32 @llvm.bswap.i32(i32 %39) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %41 = load ptr, ptr @rk_ops, align 4
  %dte_addr_phys4.i = getelementptr inbounds %struct.rk_iommu_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dte_addr_phys4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dte_addr_phys4.i, align 4
  %call5.i = call i32 %43(i32 noundef %40) #11
  %44 = ptrtoint ptr %mmu_dte_addr_phys.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call5.i, ptr %mmu_dte_addr_phys.i, align 4
  %mul.i = shl nuw nsw i32 %shr.i.i, 2
  %add.i = add i32 %call5.i, %mul.i
  %45 = ptrtoint ptr %dte_addr_phys.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %dte_addr_phys.i, align 4
  %46 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %add.i, i32 -2130706432, i32 8454144) #15, !srcloc !145
  %47 = inttoptr i32 %46 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %and.i39.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool.i.not.i = icmp eq i32 %and.i39.i, 0
  br i1 %tobool.i.not.i, label %if.then83.log_iova.exit_crit_edge, label %if.end.i

if.then83.log_iova.exit_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %log_iova.exit

if.end.i:                                         ; preds = %if.then83
  %50 = load ptr, ptr @rk_ops, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %call8.i = call i32 %52(i32 noundef %49) #11
  %mul9.i = shl nuw nsw i32 %shr.i37.i, 2
  %add10.i = add i32 %call8.i, %mul9.i
  %53 = ptrtoint ptr %pte_addr_phys.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add10.i, ptr %pte_addr_phys.i, align 4
  %54 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %add10.i, i32 -2130706432, i32 8454144) #15, !srcloc !145
  %55 = inttoptr i32 %54 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %and.i40.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40.i)
  %tobool.i41.not.i = icmp eq i32 %and.i40.i, 0
  br i1 %tobool.i41.not.i, label %if.end.i.log_iova.exit_crit_edge, label %if.end14.i

if.end.i.log_iova.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %log_iova.exit

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = load ptr, ptr @rk_ops, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %call16.i = call i32 %60(i32 noundef %57) #11
  %add17.i = add i32 %call16.i, %and.i38.i
  %61 = ptrtoint ptr %page_addr_phys.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add17.i, ptr %page_addr_phys.i, align 4
  %and.i = and i32 %57, 510
  br label %log_iova.exit

log_iova.exit:                                    ; preds = %if.end14.i, %if.end.i.log_iova.exit_crit_edge, %if.then83.log_iova.exit_crit_edge
  %pte.0.i = phi i32 [ %57, %if.end14.i ], [ %57, %if.end.i.log_iova.exit_crit_edge ], [ 0, %if.then83.log_iova.exit_crit_edge ]
  %page_flags.0.i = phi i32 [ %and.i, %if.end14.i ], [ 0, %if.end.i.log_iova.exit_crit_edge ], [ 0, %if.then83.log_iova.exit_crit_edge ]
  %62 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.49, ptr noundef nonnull %iova.addr.i, i32 noundef %shr.i.i, i32 noundef %shr.i37.i, i32 noundef %and.i38.i) #14
  %64 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_id, align 4
  %and.i44.i = and i32 %pte.0.i, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.52, ptr noundef nonnull %mmu_dte_addr_phys.i, ptr noundef nonnull %dte_addr_phys.i, i32 noundef %49, i32 noundef %and.i39.i, ptr noundef nonnull %pte_addr_phys.i, i32 noundef %pte.0.i, i32 noundef %and.i44.i, ptr noundef nonnull %page_addr_phys.i, i32 noundef %page_flags.0.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr_phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pte_addr_phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dte_addr_phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mmu_dte_addr_phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.addr.i)
  %66 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %domain, align 4
  %tobool95.not = icmp eq ptr %67, null
  br i1 %tobool95.not, label %do.end102, label %if.then96

if.then96:                                        ; preds = %log_iova.exit
  call void @__sanitizer_cov_trace_pc() #13
  %not.tobool88.not = xor i1 %tobool88.not, true
  %cond = zext i1 %not.tobool88.not to i32
  %68 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_id, align 4
  %70 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iova, align 4
  %call99 = call i32 @report_iommu_fault(ptr noundef nonnull %67, ptr noundef %69, i32 noundef %71, i32 noundef %cond) #11
  br label %if.end104

do.end102:                                        ; preds = %log_iova.exit
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.41) #14
  br label %if.end104

if.end104:                                        ; preds = %do.end102, %if.then96
  %74 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bases, align 4
  %arrayidx106 = getelementptr ptr, ptr %75, i32 %i.0187
  %76 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx106, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  call void @arm_heavy_mb() #11
  %add.ptr.i181 = getelementptr i8, ptr %77, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 67108864) #11, !srcloc !147
  %78 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bases, align 4
  %arrayidx108 = getelementptr ptr, ptr %79, i32 %i.0187
  %80 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx108, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  call void @arm_heavy_mb() #11
  %add.ptr.i182 = getelementptr i8, ptr %81, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 83886080) #11, !srcloc !147
  br label %if.end109

if.end109:                                        ; preds = %if.end104, %if.end78.if.end109_crit_edge
  %and110 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end117_crit_edge, label %do.end115

if.end109.if.end117_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.44, ptr noundef nonnull %iova) #14
  br label %if.end117

if.end117:                                        ; preds = %do.end115, %if.end109.if.end117_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %tobool119.not = icmp ult i32 %14, 4
  br i1 %tobool119.not, label %if.end117.if.end125_crit_edge, label %do.end123

if.end117.if.end125_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.47, i32 noundef %14) #14
  br label %if.end125

if.end125:                                        ; preds = %do.end123, %if.end117.if.end125_crit_edge
  %86 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bases, align 4
  %arrayidx127 = getelementptr ptr, ptr %87, i32 %i.0187
  %88 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx127, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  call void @arm_heavy_mb() #11
  %add.ptr.i183 = getelementptr i8, ptr %89, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %13) #11, !srcloc !147
  br label %for.inc

for.inc:                                          ; preds = %if.end125, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.0186, %for.body.for.inc_crit_edge ], [ 1, %if.end125 ]
  %inc = add nuw nsw i32 %i.0187, 1
  %90 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_mmu, align 4
  %cmp74 = icmp slt i32 %inc, %91
  br i1 %cmp74, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  %92 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_clocks, align 4
  %94 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clocks, align 4
  call void @clk_bulk_disable(i32 noundef %93, ptr noundef %95) #11
  br label %out

out:                                              ; preds = %for.end, %do.end57
  %ret.2 = phi i32 [ %ret.0.lcssa, %for.end ], [ 0, %do.end57 ]
  %96 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_id, align 4
  %call.i184 = call i32 @__pm_runtime_idle(ptr noundef %97, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rk_iommu_domain_alloc(i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 3, label %entry.if.end_crit_edge49
  ]

entry.if.end_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge49
  %1 = load ptr, ptr @dma_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 140) #16
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = tail call i32 @get_zeroed_page(i32 noundef 3268) #11
  %3 = inttoptr i32 %call7 to ptr
  %dt = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end6.err_free_domain_crit_edge, label %if.end11

if.end6.err_free_domain_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_domain

if.end11:                                         ; preds = %if.end6
  %5 = load ptr, ptr @dma_dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %3) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end11
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !140

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 4096) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %call7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %call7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dt_dma = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dt_dma to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %dt_dma, align 4
  %12 = load ptr, ptr @dma_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %12, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %do.body19

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @dma_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #14
  %14 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dt, align 8
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #11
  br label %err_free_domain

do.body19:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %iommus_lock = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %iommus_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @rk_iommu_domain_alloc.__key, i16 noundef signext 3) #11
  %dt_lock = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %dt_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @rk_iommu_domain_alloc.__key.10, i16 noundef signext 3) #11
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %domain = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 5
  %geometry = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 1
  %20 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %aperture_end, align 8
  %force_aperture = getelementptr inbounds %struct.rk_iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 2
  %21 = ptrtoint ptr %force_aperture to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %force_aperture, align 4
  br label %cleanup

err_free_domain:                                  ; preds = %do.end, %if.end6.err_free_domain_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_domain, %do.body19, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_free_domain ], [ %domain, %do.body19 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_iommu_domain_free(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -104
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not = icmp eq ptr %1, %add.ptr.i
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1115, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dt = getelementptr i8, ptr %domain, i32 -96
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %if.end
  %i.037 = phi i32 [ 0, %if.end ], [ %inc, %if.end26.for.body_crit_edge ]
  %2 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dt, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %i.037
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.if.end26_crit_edge, label %if.then23

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = load ptr, ptr @rk_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call24 = tail call i32 %8(i32 noundef %5) #11
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call24, i32 -2130706432, i32 8454144) #15, !srcloc !145
  %10 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %call24, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.body.if.end26_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load ptr, ptr @dma_dev, align 4
  %dt_dma = getelementptr i8, ptr %domain, i32 -92
  %12 = ptrtoint ptr %dt_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dt_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %14 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dt, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_attach_device(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -104
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %dev_iommu_priv_get.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_priv_get.exit.i:                        ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_iommu_priv_get.exit.i.cleanup_crit_edge, label %rk_iommu_from_dev.exit

dev_iommu_priv_get.exit.i.cleanup_crit_edge:      ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rk_iommu_from_dev.exit:                           ; preds = %dev_iommu_priv_get.exit.i
  %iommu.i = getelementptr inbounds %struct.rk_iommudata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %rk_iommu_from_dev.exit.cleanup_crit_edge, label %do.body

rk_iommu_from_dev.exit.cleanup_crit_edge:         ; preds = %rk_iommu_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %rk_iommu_from_dev.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk_iommu_attach_device.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rk_iommu_attach_device, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !149

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk_iommu_attach_device.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %domain8 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %domain8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain8, align 4
  %cmp = icmp eq ptr %7, %domain
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rk_iommu_detach_device(ptr noundef nonnull %7, ptr noundef %dev)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %8 = ptrtoint ptr %domain8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %domain, ptr %domain8, align 4
  %iommus_lock = getelementptr i8, ptr %domain, i32 -88
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommus_lock) #11
  %node = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 8
  %prev.i = getelementptr i8, ptr %domain, i32 -100
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %add.ptr.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommus_lock, i32 noundef %call22) #11
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %16, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %list_add_tail.exit.cleanup_crit_edge, label %lor.lhs.false

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %land.rhs, label %if.end85

land.rhs:                                         ; preds = %lor.lhs.false
  %.b117 = load i1, ptr @rk_iommu_attach_device.__already_done, align 1
  br i1 %.b117, label %land.rhs.cleanup_crit_edge, label %if.then49, !prof !140

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rk_iommu_attach_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1050, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end85:                                         ; preds = %lor.lhs.false
  %call86 = tail call fastcc i32 @rk_iommu_enable(ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end85.if.end90_crit_edge, label %if.then88

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %domain8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain8, align 4
  tail call void @rk_iommu_detach_device(ptr noundef %18, ptr noundef %dev)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85.if.end90_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i119 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then49, %land.rhs.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %rk_iommu_from_dev.exit.cleanup_crit_edge, %dev_iommu_priv_get.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call86, %if.end90 ], [ 0, %rk_iommu_from_dev.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %dev_iommu_priv_get.exit.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_iommu_detach_device(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %dev_iommu_priv_get.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_priv_get.exit.i:                        ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_iommu_priv_get.exit.i.cleanup_crit_edge, label %rk_iommu_from_dev.exit

dev_iommu_priv_get.exit.i.cleanup_crit_edge:      ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rk_iommu_from_dev.exit:                           ; preds = %dev_iommu_priv_get.exit.i
  %iommu.i = getelementptr inbounds %struct.rk_iommudata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %rk_iommu_from_dev.exit.cleanup_crit_edge, label %do.body

rk_iommu_from_dev.exit.cleanup_crit_edge:         ; preds = %rk_iommu_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %rk_iommu_from_dev.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk_iommu_detach_device.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rk_iommu_detach_device, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !149

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk_iommu_detach_device.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %domain8 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %domain8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain8, align 4
  %cmp.not = icmp eq ptr %7, %domain
  br i1 %cmp.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %8 = ptrtoint ptr %domain8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %domain8, align 4
  %iommus_lock = getelementptr i8, ptr %domain, i32 -88
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommus_lock) #11
  %node = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del_init.exit_crit_edge

if.end10.list_del_init.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end10.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommus_lock, i32 noundef %call17) #11
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %18, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %land.rhs, label %if.end69

land.rhs:                                         ; preds = %list_del_init.exit
  %.b98 = load i1, ptr @rk_iommu_detach_device.__already_done, align 1
  br i1 %.b98, label %land.rhs.cleanup_crit_edge, label %if.then43, !prof !140

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rk_iommu_detach_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1011, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end69:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp77.not = icmp eq i32 %call.i, 0
  br i1 %cmp77.not, label %if.end69.cleanup_crit_edge, label %if.then79

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then79:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rk_iommu_disable(ptr noundef nonnull %5)
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call.i99 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end69.cleanup_crit_edge, %if.then43, %land.rhs.cleanup_crit_edge, %do.end.cleanup_crit_edge, %rk_iommu_from_dev.exit.cleanup_crit_edge, %dev_iommu_priv_get.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_map(ptr noundef %domain, i32 noundef %_iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i37 = alloca i32, align 4
  %iova.addr.i = alloca i32, align 4
  %paddr.addr.i = alloca i32, align 4
  %page_phys.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -104
  %dt_lock = getelementptr i8, ptr %domain, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dt_lock) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %dt_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %dt_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 752, 0\0A.popsection", ""() #11, !srcloc !150
  unreachable

do.end9.i:                                        ; preds = %entry
  %shr.i.i = lshr i32 %_iova, 22
  %dt.i = getelementptr i8, ptr %domain, i32 -96
  %2 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dt.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end13.i, label %do.end9.i.rk_dte_get_page_table.exit_crit_edge

do.end9.i.rk_dte_get_page_table.exit_crit_edge:   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_dte_get_page_table.exit

if.end13.i:                                       ; preds = %do.end9.i
  %call14.i = tail call i32 @get_zeroed_page(i32 noundef 2596) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.then_crit_edge, label %if.end18.i

if.end13.i.if.then_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end18.i:                                       ; preds = %if.end13.i
  %6 = inttoptr i32 %call14.i to ptr
  %7 = load ptr, ptr @dma_dev, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %6) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end18.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !140

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %7) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %11, %if.end.i.i.i ], [ %9, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %12 = load ptr, ptr @dma_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %12, i32 noundef -1) #11
  br label %do.end25.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end18.i
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef nonnull %6, i32 noundef 4096) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %call14.i, 1073741824
  %shr.i46.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i46.i
  %and.i47.i = and i32 %call14.i, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i.i, i32 noundef %and.i47.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %14 = load ptr, ptr @dma_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef %call41.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end25.i_crit_edge, label %if.end27.i

dma_map_single_attrs.exit.i.do.end25.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25.i

do.end25.i:                                       ; preds = %dma_map_single_attrs.exit.i.do.end25.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %15 = load ptr, ptr @dma_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32) #14
  tail call void @free_pages(i32 noundef %call14.i, i32 noundef 0) #11
  br label %if.then

if.end27.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = load ptr, ptr @rk_ops, align 4
  %mk_dtentries.i = getelementptr inbounds %struct.rk_iommu_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mk_dtentries.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mk_dtentries.i, align 4
  %call28.i = tail call i32 %18(i32 noundef %call41.i.i) #11
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call28.i, ptr %arrayidx.i, align 4
  %dt_dma.i = getelementptr i8, ptr %domain, i32 -92
  %20 = ptrtoint ptr %dt_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dt_dma.i, align 4
  %mul.i = shl nuw nsw i32 %shr.i.i, 2
  %add.i = add i32 %21, %mul.i
  %22 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %22, i32 noundef %add.i, i32 noundef 4, i32 noundef 1) #11
  br label %rk_dte_get_page_table.exit

rk_dte_get_page_table.exit:                       ; preds = %if.end27.i, %do.end9.i.rk_dte_get_page_table.exit_crit_edge
  %dte.0.i = phi i32 [ %5, %do.end9.i.rk_dte_get_page_table.exit_crit_edge ], [ %call28.i, %if.end27.i ]
  %23 = load ptr, ptr @rk_ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %call29.i = tail call i32 %25(i32 noundef %dte.0.i) #11
  %26 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call29.i, i32 -2130706432, i32 8454144) #15, !srcloc !145
  %27 = inttoptr i32 %26 to ptr
  %cmp.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rk_dte_get_page_table.exit.if.then_crit_edge, label %if.end

rk_dte_get_page_table.exit.if.then_crit_edge:     ; preds = %rk_dte_get_page_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %rk_dte_get_page_table.exit.if.then_crit_edge, %do.end25.i, %if.end13.i.if.then_crit_edge
  %retval.0.i55 = phi ptr [ %27, %rk_dte_get_page_table.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end25.i ], [ inttoptr (i32 -12 to ptr), %if.end13.i.if.then_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dt_lock, i32 noundef %call3) #11
  %28 = ptrtoint ptr %retval.0.i55 to i32
  br label %cleanup

if.end:                                           ; preds = %rk_dte_get_page_table.exit
  %29 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dt.i, align 4
  %arrayidx = getelementptr i32, ptr %30, i32 %shr.i.i
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %and.i = lshr i32 %_iova, 12
  %shr.i36 = and i32 %and.i, 1023
  %arrayidx12 = getelementptr i32, ptr %27, i32 %shr.i36
  %33 = load ptr, ptr @rk_ops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %call13 = tail call i32 %35(i32 noundef %32) #11
  %mul = shl nuw nsw i32 %shr.i36, 2
  %add = add i32 %call13, %mul
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.addr.i)
  %36 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %_iova, ptr %iova.addr.i, align 4
  %div43.i = lshr i32 %size, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_phys.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i37)
  %37 = ptrtoint ptr %dt_lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %agg.tmp.sroa.0.0.copyload.i.i39 = load volatile i32, ptr %dt_lock, align 4
  %38 = ptrtoint ptr %agg.tmp.sroa.0.i.i37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i39, ptr %agg.tmp.sroa.0.i.i37, align 4
  %lock.sroa.0.0.extract.shift.i.i.i40 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i39, 16
  %conv.i.i.i41 = and i32 %agg.tmp.sroa.0.0.copyload.i.i39, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i41, i32 %lock.sroa.0.0.extract.shift.i.i.i40)
  %cmp.i.i.not.i42 = icmp eq i32 %conv.i.i.i41, %lock.sroa.0.0.extract.shift.i.i.i40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i37)
  br i1 %cmp.i.i.not.i42, label %do.body4.i43, label %for.cond.preheader.i, !prof !141

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp49.not.i = icmp ult i32 %size, 4096
  br i1 %cmp49.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div43.i, i32 1) #11
  br label %for.body.i

do.body4.i43:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 811, 0\0A.popsection", ""() #11, !srcloc !151
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %pte_count.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add4750.i = phi i32 [ %add.i47, %for.inc.i.for.body.i_crit_edge ], [ %paddr, %for.body.preheader.i ]
  %arrayidx.i44 = getelementptr i32, ptr %arrayidx12, i32 %pte_count.051.i
  %39 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i44, align 4
  %and.i.i45 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.i.not.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.i.not.i46, label %for.inc.i, label %unwind.i

for.inc.i:                                        ; preds = %for.body.i
  %41 = load ptr, ptr @rk_ops, align 4
  %mk_ptentries.i = getelementptr inbounds %struct.rk_iommu_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mk_ptentries.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mk_ptentries.i, align 8
  %call13.i = tail call i32 %43(i32 noundef %add4750.i, i32 noundef %prot) #11
  %44 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call13.i, ptr %arrayidx.i44, align 4
  %add.i47 = add i32 %add4750.i, 4096
  %inc.i = add nuw nsw i32 %pte_count.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %mul.i.i = shl nuw nsw i32 %div43.i, 2
  %45 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %45, i32 noundef %add, i32 noundef %mul.i.i, i32 noundef 1) #11
  %46 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iova.addr.i, align 4
  tail call fastcc void @rk_iommu_zap_iova(ptr noundef %add.ptr.i, i32 noundef %47, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.i.i48 = icmp ugt i32 %size, 4096
  br i1 %cmp.i.i48, label %if.then.i.i50, label %for.end.i.rk_iommu_map_iova.exit_crit_edge

for.end.i.rk_iommu_map_iova.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_map_iova.exit

if.then.i.i50:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %size, -4096
  %sub.i.i49 = add i32 %add.i.i, %47
  tail call fastcc void @rk_iommu_zap_iova(ptr noundef %add.ptr.i, i32 noundef %sub.i.i49, i32 noundef 4096) #11
  br label %rk_iommu_map_iova.exit

unwind.i:                                         ; preds = %for.body.i
  %48 = ptrtoint ptr %paddr.addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add4750.i, ptr %paddr.addr.i, align 4
  %mul.i51 = shl i32 %pte_count.051.i, 12
  %div25.i.i = and i32 %pte_count.051.i, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %49 = ptrtoint ptr %dt_lock to i32
  call void @__asan_load4_noabort(i32 %49)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %dt_lock, align 4
  %50 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %for.cond.preheader.i.i, !prof !141

for.cond.preheader.i.i:                           ; preds = %unwind.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i51)
  %cmp29.not.i.i = icmp eq i32 %mul.i51, 0
  br i1 %cmp29.not.i.i, label %for.cond.preheader.i.i.rk_iommu_unmap_iova.exit.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.rk_iommu_unmap_iova.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_unmap_iova.exit.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div25.i.i, i32 1) #11
  br label %for.body.i.i

do.body4.i.i:                                     ; preds = %unwind.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 788, 0\0A.popsection", ""() #11, !srcloc !152
  unreachable

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %pte_count.030.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %arrayidx12, i32 %pte_count.030.i.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i.rk_iommu_unmap_iova.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.rk_iommu_unmap_iova.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_unmap_iova.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %and.i26.i.i = and i32 %52, -2
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i26.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %pte_count.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.rk_iommu_unmap_iova.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.rk_iommu_unmap_iova.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_unmap_iova.exit.i

rk_iommu_unmap_iova.exit.i:                       ; preds = %for.inc.i.i.rk_iommu_unmap_iova.exit.i_crit_edge, %for.body.i.i.rk_iommu_unmap_iova.exit.i_crit_edge, %for.cond.preheader.i.i.rk_iommu_unmap_iova.exit.i_crit_edge
  %pte_count.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.rk_iommu_unmap_iova.exit.i_crit_edge ], [ %pte_count.030.i.i, %for.body.i.i.rk_iommu_unmap_iova.exit.i_crit_edge ], [ %umax.i.i, %for.inc.i.i.rk_iommu_unmap_iova.exit.i_crit_edge ]
  %mul.i.i.i = shl i32 %pte_count.0.lcssa.i.i, 2
  %54 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %54, i32 noundef %add, i32 noundef %mul.i.i.i, i32 noundef 1) #11
  %55 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iova.addr.i, align 4
  %add17.i = add i32 %56, %mul.i51
  store i32 %add17.i, ptr %iova.addr.i, align 4
  %57 = load ptr, ptr @rk_ops, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %60 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i44, align 4
  %call19.i = tail call i32 %59(i32 noundef %61) #11
  %62 = ptrtoint ptr %page_phys.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call19.i, ptr %page_phys.i, align 4
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %iova.addr.i, ptr noundef nonnull %page_phys.i, ptr noundef nonnull %paddr.addr.i, i32 noundef %prot) #14
  br label %rk_iommu_map_iova.exit

rk_iommu_map_iova.exit:                           ; preds = %rk_iommu_unmap_iova.exit.i, %if.then.i.i50, %for.end.i.rk_iommu_map_iova.exit_crit_edge
  %retval.0.i52 = phi i32 [ -98, %rk_iommu_unmap_iova.exit.i ], [ 0, %for.end.i.rk_iommu_map_iova.exit_crit_edge ], [ 0, %if.then.i.i50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.addr.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dt_lock, i32 noundef %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %rk_iommu_map_iova.exit, %if.then
  %retval.0 = phi i32 [ %28, %if.then ], [ %retval.0.i52, %rk_iommu_map_iova.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_unmap(ptr noundef %domain, i32 noundef %_iova, i32 noundef %size, ptr nocapture noundef readnone %gather) #2 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -104
  %dt_lock = getelementptr i8, ptr %domain, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dt_lock) #11
  %dt = getelementptr i8, ptr %domain, i32 -96
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dt, align 4
  %shr.i = lshr i32 %_iova, 22
  %arrayidx = getelementptr i32, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dt_lock, i32 noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @rk_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call9 = tail call i32 %6(i32 noundef %3) #11
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call9, i32 -2130706432, i32 8454144) #15, !srcloc !145
  %8 = inttoptr i32 %7 to ptr
  %and.i34 = lshr i32 %_iova, 12
  %shr.i35 = and i32 %and.i34, 1023
  %add.ptr = getelementptr i32, ptr %8, i32 %shr.i35
  %mul = shl nuw nsw i32 %shr.i35, 2
  %add = add i32 %call9, %mul
  %div25.i = lshr i32 %size, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %9 = ptrtoint ptr %dt_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %dt_lock, align 4
  %10 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !141

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp29.not.i = icmp ult i32 %size, 4096
  br i1 %cmp29.not.i, label %for.cond.preheader.i.rk_iommu_unmap_iova.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.rk_iommu_unmap_iova.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_unmap_iova.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div25.i, i32 1) #11
  br label %for.body.i

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 788, 0\0A.popsection", ""() #11, !srcloc !152
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %pte_count.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %pte_count.030.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.rk_iommu_unmap_iova.exit_crit_edge, label %for.inc.i

for.body.i.rk_iommu_unmap_iova.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_unmap_iova.exit

for.inc.i:                                        ; preds = %for.body.i
  %and.i26.i = and i32 %12, -2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i26.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %pte_count.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.rk_iommu_unmap_iova.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.rk_iommu_unmap_iova.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_unmap_iova.exit

rk_iommu_unmap_iova.exit:                         ; preds = %for.inc.i.rk_iommu_unmap_iova.exit_crit_edge, %for.body.i.rk_iommu_unmap_iova.exit_crit_edge, %for.cond.preheader.i.rk_iommu_unmap_iova.exit_crit_edge
  %pte_count.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.rk_iommu_unmap_iova.exit_crit_edge ], [ %umax.i, %for.inc.i.rk_iommu_unmap_iova.exit_crit_edge ], [ %pte_count.030.i, %for.body.i.rk_iommu_unmap_iova.exit_crit_edge ]
  %mul.i.i = shl i32 %pte_count.0.lcssa.i, 2
  %14 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %14, i32 noundef %add, i32 noundef %mul.i.i, i32 noundef 1) #11
  %mul.i = shl i32 %pte_count.0.lcssa.i, 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dt_lock, i32 noundef %call3) #11
  tail call fastcc void @rk_iommu_zap_iova(ptr noundef %add.ptr.i, i32 noundef %_iova, i32 noundef %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %rk_iommu_unmap_iova.exit, %if.then
  %retval.0 = phi i32 [ %mul.i, %rk_iommu_unmap_iova.exit ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_iova_to_phys(ptr noundef %domain, i32 noundef %iova) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dt_lock = getelementptr i8, ptr %domain, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dt_lock) #11
  %dt = getelementptr i8, ptr %domain, i32 -96
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dt, align 4
  %shr.i = lshr i32 %iova, 22
  %arrayidx = getelementptr i32, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @rk_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call8 = tail call i32 %6(i32 noundef %3) #11
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call8, i32 -2130706432, i32 8454144) #15, !srcloc !145
  %8 = inttoptr i32 %7 to ptr
  %and.i25 = lshr i32 %iova, 12
  %shr.i26 = and i32 %and.i25, 1023
  %arrayidx11 = getelementptr i32, ptr %8, i32 %shr.i26
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %and.i27 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.i28.not = icmp eq i32 %and.i27, 0
  br i1 %tobool.i28.not, label %if.end.out_crit_edge, label %if.end14

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load ptr, ptr @rk_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call16 = tail call i32 %13(i32 noundef %10) #11
  %and.i29 = and i32 %iova, 4095
  %add = add i32 %call16, %and.i29
  br label %out

out:                                              ; preds = %if.end14, %if.end.out_crit_edge, %entry.out_crit_edge
  %phys.0 = phi i32 [ %add, %if.end14 ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dt_lock, i32 noundef %call3) #11
  ret i32 %phys.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rk_iommu_probe_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_priv_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %dev_iommu_priv_get.exit.i

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_priv_get.exit.i:                        ; preds = %dev_iommu_priv_get.exit
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %tobool.not.i11 = icmp eq ptr %5, null
  br i1 %tobool.not.i11, label %dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge, label %cond.true.i

dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge: ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_from_dev.exit

cond.true.i:                                      ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %iommu.i12 = getelementptr inbounds %struct.rk_iommudata, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %iommu.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu.i12, align 4
  br label %rk_iommu_from_dev.exit

rk_iommu_from_dev.exit:                           ; preds = %cond.true.i, %dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge ]
  %8 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond.i, align 4
  %call4 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %9, i32 noundef 5) #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %3, align 4
  %iommu5 = getelementptr inbounds %struct.rk_iommu, ptr %cond.i, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %rk_iommu_from_dev.exit, %dev_iommu_priv_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %iommu5, %rk_iommu_from_dev.exit ], [ inttoptr (i32 -19 to ptr), %dev_iommu_priv_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk_iommu_release_device(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i, align 4
  tail call void @device_link_del(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rk_iommu_device_group(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.rk_iommu_from_dev.exit_crit_edge, label %dev_iommu_priv_get.exit.i

entry.rk_iommu_from_dev.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_from_dev.exit

dev_iommu_priv_get.exit.i:                        ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge, label %cond.true.i

dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge: ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_from_dev.exit

cond.true.i:                                      ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %iommu.i = getelementptr inbounds %struct.rk_iommudata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i, align 4
  br label %rk_iommu_from_dev.exit

rk_iommu_from_dev.exit:                           ; preds = %cond.true.i, %dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge, %entry.rk_iommu_from_dev.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ null, %dev_iommu_priv_get.exit.i.rk_iommu_from_dev.exit_crit_edge ], [ null, %entry.rk_iommu_from_dev.exit_crit_edge ]
  %group = getelementptr inbounds %struct.rk_iommu, ptr %cond.i, i32 0, i32 10
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %call1 = tail call ptr @iommu_group_ref_get(ptr noundef %7) #11
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_of_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dma_dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 8, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  %call1 = tail call ptr @of_find_device_by_node(ptr noundef %2) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %iommu = getelementptr inbounds %struct.rk_iommudata, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %iommu to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %iommu, align 4
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %6 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %priv1.i, align 4
  tail call void @platform_device_put(ptr noundef %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_iommu_enable(ptr nocapture noundef readonly %iommu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 9
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %num_clocks = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 5
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 4
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 4
  %call2 = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @rk_iommu_enable_stall(ptr noundef %iommu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_disable_clocks_crit_edge

if.end.out_disable_clocks_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_clocks

if.end6:                                          ; preds = %if.end
  %reset_disabled.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 6
  %6 = ptrtoint ptr %reset_disabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reset_disabled.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end6.rk_iommu_force_reset.exit_crit_edge

if.end6.rk_iommu_force_reset.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit

for.cond.preheader.i:                             ; preds = %if.end6
  %num_mmu.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 2
  %8 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp91.i = icmp sgt i32 %9, 0
  br i1 %cmp91.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.rk_iommu_command.exit.i_crit_edge

for.cond.preheader.i.rk_iommu_command.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %bases.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %10 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mmu.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %12 = load ptr, ptr @rk_ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %call.i = tail call i32 %14(i32 noundef -889275714) #11
  %15 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bases.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.092.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %call.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #11, !srcloc !147
  %20 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bases.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %21, i32 %i.092.i
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !143
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %25)
  %cmp4.not.i = icmp eq i32 %call.i, %25
  br i1 %cmp4.not.i, label %for.cond.i, label %for.body.i.rk_iommu_force_reset.exit.thread_crit_edge

for.body.i.rk_iommu_force_reset.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit.thread

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i.i = icmp sgt i32 %11, 0
  br i1 %cmp4.i.i, label %for.end.i.do.body.i.i_crit_edge, label %for.end.i.rk_iommu_command.exit.i_crit_edge

for.end.i.rk_iommu_command.exit.i_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i

for.end.i.do.body.i.i_crit_edge:                  ; preds = %for.end.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.end.i.do.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %for.end.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bases.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %27, i32 %i.05.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 100663296) #11, !srcloc !147
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %30 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_mmu.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %31
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.rk_iommu_command.exit.i_crit_edge

do.body.i.i.rk_iommu_command.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

rk_iommu_command.exit.i:                          ; preds = %do.body.i.i.rk_iommu_command.exit.i_crit_edge, %for.end.i.rk_iommu_command.exit.i_crit_edge, %for.cond.preheader.i.rk_iommu_command.exit.i_crit_edge
  %call7.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call7.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 526) #11
  %32 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp10.i93.i = icmp sgt i32 %33, 0
  br i1 %cmp10.i93.i, label %for.body.lr.ph.i.lr.ph.i, label %rk_iommu_command.exit.i.rk_iommu_force_reset.exit_crit_edge

rk_iommu_command.exit.i.rk_iommu_force_reset.exit_crit_edge: ; preds = %rk_iommu_command.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit

for.body.lr.ph.i.lr.ph.i:                         ; preds = %rk_iommu_command.exit.i
  %bases.i68.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %for.body.lr.ph.i.lr.ph.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.lr.ph.i ], [ %i.012.i.i.be, %for.body.i.i.backedge ]
  %done.0.off011.i.i = phi i1 [ true, %for.body.lr.ph.i.lr.ph.i ], [ %done.0.off011.i.i.be, %for.body.i.i.backedge ]
  %34 = ptrtoint ptr %bases.i68.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bases.i68.i, align 4
  %arrayidx.i69.i = getelementptr ptr, ptr %35, i32 %i.012.i.i
  %36 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i69.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp1.i.i = icmp eq i32 %38, 0
  %and9.i.i = and i1 %done.0.off011.i.i, %cmp1.i.i
  %inc.i70.i = add nuw nsw i32 %i.012.i.i, 1
  %39 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i70.i, i32 %40)
  %cmp.i71.i = icmp slt i32 %inc.i70.i, %40
  br i1 %cmp.i71.i, label %for.body.i.i.for.body.i.i.backedge_crit_edge, label %rk_iommu_is_reset_done.exit.i

for.body.i.i.for.body.i.i.backedge_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.backedge

for.body.i.i.backedge:                            ; preds = %if.then35.i.for.body.i.i.backedge_crit_edge, %for.body.i.i.for.body.i.i.backedge_crit_edge
  %i.012.i.i.be = phi i32 [ %inc.i70.i, %for.body.i.i.for.body.i.i.backedge_crit_edge ], [ 0, %if.then35.i.for.body.i.i.backedge_crit_edge ]
  %done.0.off011.i.i.be = phi i1 [ %and9.i.i, %for.body.i.i.for.body.i.i.backedge_crit_edge ], [ true, %if.then35.i.for.body.i.i.backedge_crit_edge ]
  br label %for.body.i.i

rk_iommu_is_reset_done.exit.i:                    ; preds = %for.body.i.i
  br i1 %and9.i.i, label %rk_iommu_is_reset_done.exit.i.rk_iommu_force_reset.exit_crit_edge, label %land.lhs.true.i

rk_iommu_is_reset_done.exit.i.rk_iommu_force_reset.exit_crit_edge: ; preds = %rk_iommu_is_reset_done.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit

land.lhs.true.i:                                  ; preds = %rk_iommu_is_reset_done.exit.i
  %call27.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call27.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call27.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then30.i, label %if.then35.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp10.i74.i = icmp sgt i32 %42, 0
  br i1 %cmp10.i74.i, label %if.then30.i.for.body.i84.i_crit_edge, label %if.then30.i.rk_iommu_force_reset.exit_crit_edge

if.then30.i.rk_iommu_force_reset.exit_crit_edge:  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit

if.then30.i.for.body.i84.i_crit_edge:             ; preds = %if.then30.i
  br label %for.body.i84.i

for.body.i84.i:                                   ; preds = %for.body.i84.i.for.body.i84.i_crit_edge, %if.then30.i.for.body.i84.i_crit_edge
  %i.012.i77.i = phi i32 [ %inc.i82.i, %for.body.i84.i.for.body.i84.i_crit_edge ], [ 0, %if.then30.i.for.body.i84.i_crit_edge ]
  %done.0.off011.i78.i = phi i1 [ %and9.i81.i, %for.body.i84.i.for.body.i84.i_crit_edge ], [ true, %if.then30.i.for.body.i84.i_crit_edge ]
  %43 = ptrtoint ptr %bases.i68.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bases.i68.i, align 4
  %arrayidx.i79.i = getelementptr ptr, ptr %44, i32 %i.012.i77.i
  %45 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i79.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp1.i80.i = icmp eq i32 %47, 0
  %and9.i81.i = and i1 %done.0.off011.i78.i, %cmp1.i80.i
  %inc.i82.i = add nuw nsw i32 %i.012.i77.i, 1
  %48 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_mmu.i, align 4
  %cmp.i83.i = icmp slt i32 %inc.i82.i, %49
  br i1 %cmp.i83.i, label %for.body.i84.i.for.body.i84.i_crit_edge, label %for.end37.i

for.body.i84.i.for.body.i84.i_crit_edge:          ; preds = %for.body.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i84.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 25001, i32 noundef 100000, i32 noundef 2) #11
  %50 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp10.i.i = icmp sgt i32 %51, 0
  br i1 %cmp10.i.i, label %if.then35.i.for.body.i.i.backedge_crit_edge, label %if.then35.i.rk_iommu_force_reset.exit_crit_edge

if.then35.i.rk_iommu_force_reset.exit_crit_edge:  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit

if.then35.i.for.body.i.i.backedge_crit_edge:      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.backedge

for.end37.i:                                      ; preds = %for.body.i84.i
  br i1 %and9.i81.i, label %for.end37.i.rk_iommu_force_reset.exit_crit_edge, label %for.end37.i.rk_iommu_force_reset.exit.thread_crit_edge

for.end37.i.rk_iommu_force_reset.exit.thread_crit_edge: ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit.thread

for.end37.i.rk_iommu_force_reset.exit_crit_edge:  ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_force_reset.exit

rk_iommu_force_reset.exit.thread:                 ; preds = %for.end37.i.rk_iommu_force_reset.exit.thread_crit_edge, %for.body.i.rk_iommu_force_reset.exit.thread_crit_edge
  %.str.22.sink.i = phi ptr [ @.str.22, %for.end37.i.rk_iommu_force_reset.exit.thread_crit_edge ], [ @.str.19, %for.body.i.rk_iommu_force_reset.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ -110, %for.end37.i.rk_iommu_force_reset.exit.thread_crit_edge ], [ -14, %for.body.i.rk_iommu_force_reset.exit.thread_crit_edge ]
  %52 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iommu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull %.str.22.sink.i) #14
  br label %out_disable_stall

rk_iommu_force_reset.exit:                        ; preds = %for.end37.i.rk_iommu_force_reset.exit_crit_edge, %if.then35.i.rk_iommu_force_reset.exit_crit_edge, %if.then30.i.rk_iommu_force_reset.exit_crit_edge, %rk_iommu_is_reset_done.exit.i.rk_iommu_force_reset.exit_crit_edge, %rk_iommu_command.exit.i.rk_iommu_force_reset.exit_crit_edge, %if.end6.rk_iommu_force_reset.exit_crit_edge
  %num_mmu = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 2
  %54 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp71 = icmp sgt i32 %55, 0
  br i1 %cmp71, label %for.body.lr.ph, label %rk_iommu_force_reset.exit.out_disable_stall_crit_edge

rk_iommu_force_reset.exit.out_disable_stall_crit_edge: ; preds = %rk_iommu_force_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

for.body.lr.ph:                                   ; preds = %rk_iommu_force_reset.exit
  %bases = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  %dt_dma = getelementptr i8, ptr %1, i32 -92
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %56 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bases, align 4
  %arrayidx = getelementptr ptr, ptr %57, i32 %i.072
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %60 = load ptr, ptr @rk_ops, align 4
  %dma_addr_dte = getelementptr inbounds %struct.rk_iommu_ops, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %dma_addr_dte to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_addr_dte, align 8
  %63 = ptrtoint ptr %dt_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dt_dma, align 4
  %call11 = tail call i32 %62(i32 noundef %64) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %65 = tail call i32 @llvm.bswap.i32(i32 %call11) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %65) #11, !srcloc !147
  %66 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bases, align 4
  %arrayidx13 = getelementptr ptr, ptr %67, i32 %i.072
  %68 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  tail call void @arm_heavy_mb() #11
  %add.ptr.i43 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 67108864) #11, !srcloc !147
  %70 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bases, align 4
  %arrayidx15 = getelementptr ptr, ptr %71, i32 %i.072
  %72 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %add.ptr.i44 = getelementptr i8, ptr %73, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 50331648) #11, !srcloc !147
  %inc = add nuw nsw i32 %i.072, 1
  %74 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_mmu, align 4
  %cmp = icmp slt i32 %inc, %75
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp10.i.i45 = icmp sgt i32 %75, 0
  br i1 %cmp10.i.i45, label %for.body.lr.ph.i.i47, label %for.end.out_disable_stall_crit_edge

for.end.out_disable_stall_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

for.body.lr.ph.i.i47:                             ; preds = %for.end
  %bases.i.i46 = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body.i.i52

for.body.i.i52:                                   ; preds = %for.body.i.i52.for.body.i.i52_crit_edge, %for.body.lr.ph.i.i47
  %i.012.i.i48 = phi i32 [ 0, %for.body.lr.ph.i.i47 ], [ %inc.i.i50, %for.body.i.i52.for.body.i.i52_crit_edge ]
  %enable.0.off011.i.i = phi i1 [ true, %for.body.lr.ph.i.i47 ], [ %tobool4.i.i, %for.body.i.i52.for.body.i.i52_crit_edge ]
  %76 = ptrtoint ptr %bases.i.i46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bases.i.i46, align 4
  %arrayidx.i.i49 = getelementptr ptr, ptr %77, i32 %i.012.i.i48
  %78 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i49, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !143
  %81 = lshr i32 %80, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i.i = zext i1 %enable.0.off011.i.i to i32
  %and3.i.i = and i32 %81, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %inc.i.i50 = add nuw nsw i32 %i.012.i.i48, 1
  %82 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_mmu, align 4
  %cmp.i.i51 = icmp slt i32 %inc.i.i50, %83
  br i1 %cmp.i.i51, label %for.body.i.i52.for.body.i.i52_crit_edge, label %rk_iommu_is_paging_enabled.exit.i

for.body.i.i52.for.body.i.i52_crit_edge:          ; preds = %for.body.i.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i52

rk_iommu_is_paging_enabled.exit.i:                ; preds = %for.body.i.i52
  br i1 %tobool4.i.i, label %rk_iommu_is_paging_enabled.exit.i.out_disable_stall_crit_edge, label %if.end.i

rk_iommu_is_paging_enabled.exit.i.out_disable_stall_crit_edge: ; preds = %rk_iommu_is_paging_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

if.end.i:                                         ; preds = %rk_iommu_is_paging_enabled.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp4.i.i53 = icmp sgt i32 %83, 0
  br i1 %cmp4.i.i53, label %if.end.i.do.body.i.i56_crit_edge, label %if.end.i.rk_iommu_command.exit.i58_crit_edge

if.end.i.rk_iommu_command.exit.i58_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i58

if.end.i.do.body.i.i56_crit_edge:                 ; preds = %if.end.i
  br label %do.body.i.i56

do.body.i.i56:                                    ; preds = %do.body.i.i56.do.body.i.i56_crit_edge, %if.end.i.do.body.i.i56_crit_edge
  %i.05.i.i54 = phi i32 [ %inc.i55.i, %do.body.i.i56.do.body.i.i56_crit_edge ], [ 0, %if.end.i.do.body.i.i56_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %84 = ptrtoint ptr %bases.i.i46 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bases.i.i46, align 4
  %arrayidx.i54.i = getelementptr ptr, ptr %85, i32 %i.05.i.i54
  %86 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i54.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %87, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 0) #11, !srcloc !147
  %inc.i55.i = add nuw nsw i32 %i.05.i.i54, 1
  %88 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_mmu, align 4
  %cmp.i56.i = icmp slt i32 %inc.i55.i, %89
  br i1 %cmp.i56.i, label %do.body.i.i56.do.body.i.i56_crit_edge, label %do.body.i.i56.rk_iommu_command.exit.i58_crit_edge

do.body.i.i56.rk_iommu_command.exit.i58_crit_edge: ; preds = %do.body.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i58

do.body.i.i56.do.body.i.i56_crit_edge:            ; preds = %do.body.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i56

rk_iommu_command.exit.i58:                        ; preds = %do.body.i.i56.rk_iommu_command.exit.i58_crit_edge, %if.end.i.rk_iommu_command.exit.i58_crit_edge
  %call1.i = tail call i64 @ktime_get() #11
  %add.i.i57 = add i64 %call1.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 469) #11
  %90 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp10.i5898.i = icmp sgt i32 %91, 0
  br i1 %cmp10.i5898.i, label %rk_iommu_command.exit.i58.for.body.i70.i_crit_edge, label %rk_iommu_command.exit.i58.out_disable_stall_crit_edge

rk_iommu_command.exit.i58.out_disable_stall_crit_edge: ; preds = %rk_iommu_command.exit.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

rk_iommu_command.exit.i58.for.body.i70.i_crit_edge: ; preds = %rk_iommu_command.exit.i58
  br label %for.body.i70.i

for.body.i70.i:                                   ; preds = %for.body.i70.i.backedge, %rk_iommu_command.exit.i58.for.body.i70.i_crit_edge
  %i.012.i61.i = phi i32 [ %i.012.i61.i.be, %for.body.i70.i.backedge ], [ 0, %rk_iommu_command.exit.i58.for.body.i70.i_crit_edge ]
  %enable.0.off011.i62.i = phi i1 [ %enable.0.off011.i62.i.be, %for.body.i70.i.backedge ], [ true, %rk_iommu_command.exit.i58.for.body.i70.i_crit_edge ]
  %92 = ptrtoint ptr %bases.i.i46 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bases.i.i46, align 4
  %arrayidx.i63.i = getelementptr ptr, ptr %93, i32 %i.012.i61.i
  %94 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i63.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.i) #11, !srcloc !143
  %97 = lshr i32 %96, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i65.i = zext i1 %enable.0.off011.i62.i to i32
  %and3.i66.i = and i32 %97, %conv.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i66.i)
  %tobool4.i67.i = icmp ne i32 %and3.i66.i, 0
  %inc.i68.i = add nuw nsw i32 %i.012.i61.i, 1
  %98 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i68.i, i32 %99)
  %cmp.i69.i = icmp slt i32 %inc.i68.i, %99
  br i1 %cmp.i69.i, label %for.body.i70.i.for.body.i70.i.backedge_crit_edge, label %rk_iommu_is_paging_enabled.exit72.i

for.body.i70.i.for.body.i70.i.backedge_crit_edge: ; preds = %for.body.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i70.i.backedge

for.body.i70.i.backedge:                          ; preds = %if.then23.i.for.body.i70.i.backedge_crit_edge, %for.body.i70.i.for.body.i70.i.backedge_crit_edge
  %i.012.i61.i.be = phi i32 [ %inc.i68.i, %for.body.i70.i.for.body.i70.i.backedge_crit_edge ], [ 0, %if.then23.i.for.body.i70.i.backedge_crit_edge ]
  %enable.0.off011.i62.i.be = phi i1 [ %tobool4.i67.i, %for.body.i70.i.for.body.i70.i.backedge_crit_edge ], [ true, %if.then23.i.for.body.i70.i.backedge_crit_edge ]
  br label %for.body.i70.i

rk_iommu_is_paging_enabled.exit72.i:              ; preds = %for.body.i70.i
  br i1 %tobool4.i67.i, label %rk_iommu_is_paging_enabled.exit72.i.out_disable_stall_crit_edge, label %land.lhs.true.i60

rk_iommu_is_paging_enabled.exit72.i.out_disable_stall_crit_edge: ; preds = %rk_iommu_is_paging_enabled.exit72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

land.lhs.true.i60:                                ; preds = %rk_iommu_is_paging_enabled.exit72.i
  %call15.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i57)
  %cmp3.i.i59 = icmp sgt i64 %call15.i, %add.i.i57
  br i1 %cmp3.i.i59, label %if.then18.i, label %if.then23.i

if.then18.i:                                      ; preds = %land.lhs.true.i60
  %100 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp10.i75.i = icmp sgt i32 %101, 0
  br i1 %cmp10.i75.i, label %if.then18.i.for.body.i87.i_crit_edge, label %if.then18.i.out_disable_stall_crit_edge

if.then18.i.out_disable_stall_crit_edge:          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

if.then18.i.for.body.i87.i_crit_edge:             ; preds = %if.then18.i
  br label %for.body.i87.i

for.body.i87.i:                                   ; preds = %for.body.i87.i.for.body.i87.i_crit_edge, %if.then18.i.for.body.i87.i_crit_edge
  %i.012.i78.i = phi i32 [ %inc.i85.i, %for.body.i87.i.for.body.i87.i_crit_edge ], [ 0, %if.then18.i.for.body.i87.i_crit_edge ]
  %enable.0.off011.i79.i = phi i1 [ %tobool4.i84.i, %for.body.i87.i.for.body.i87.i_crit_edge ], [ true, %if.then18.i.for.body.i87.i_crit_edge ]
  %102 = ptrtoint ptr %bases.i.i46 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bases.i.i46, align 4
  %arrayidx.i80.i = getelementptr ptr, ptr %103, i32 %i.012.i78.i
  %104 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i80.i, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %105, i32 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.i) #11, !srcloc !143
  %107 = lshr i32 %106, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i82.i = zext i1 %enable.0.off011.i79.i to i32
  %and3.i83.i = and i32 %107, %conv.i82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i83.i)
  %tobool4.i84.i = icmp ne i32 %and3.i83.i, 0
  %inc.i85.i = add nuw nsw i32 %i.012.i78.i, 1
  %108 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_mmu, align 4
  %cmp.i86.i = icmp slt i32 %inc.i85.i, %109
  br i1 %cmp.i86.i, label %for.body.i87.i.for.body.i87.i_crit_edge, label %for.end.i61

for.body.i87.i.for.body.i87.i_crit_edge:          ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i87.i

if.then23.i:                                      ; preds = %land.lhs.true.i60
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  %110 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_mmu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp10.i58.i = icmp sgt i32 %111, 0
  br i1 %cmp10.i58.i, label %if.then23.i.for.body.i70.i.backedge_crit_edge, label %if.then23.i.out_disable_stall_crit_edge

if.then23.i.out_disable_stall_crit_edge:          ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

if.then23.i.for.body.i70.i.backedge_crit_edge:    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i70.i.backedge

for.end.i61:                                      ; preds = %for.body.i87.i
  br i1 %tobool4.i84.i, label %for.end.i61.out_disable_stall_crit_edge, label %for.cond28.preheader.i

for.end.i61.out_disable_stall_crit_edge:          ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

for.cond28.preheader.i:                           ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp2999.i = icmp sgt i32 %109, 0
  br i1 %cmp2999.i, label %for.cond28.preheader.i.do.end32.i_crit_edge, label %for.cond28.preheader.i.out_disable_stall_crit_edge

for.cond28.preheader.i.out_disable_stall_crit_edge: ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

for.cond28.preheader.i.do.end32.i_crit_edge:      ; preds = %for.cond28.preheader.i
  br label %do.end32.i

do.end32.i:                                       ; preds = %do.end32.i.do.end32.i_crit_edge, %for.cond28.preheader.i.do.end32.i_crit_edge
  %i.0100.i = phi i32 [ %inc.i63, %do.end32.i.do.end32.i_crit_edge ], [ 0, %for.cond28.preheader.i.do.end32.i_crit_edge ]
  %112 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iommu, align 4
  %114 = ptrtoint ptr %bases.i.i46 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bases.i.i46, align 4
  %arrayidx.i62 = getelementptr ptr, ptr %115, i32 %i.0100.i
  %116 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i62, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %117, i32 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #11, !srcloc !143
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.24, i32 noundef %119) #14
  %inc.i63 = add nuw nsw i32 %i.0100.i, 1
  %120 = ptrtoint ptr %num_mmu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_mmu, align 4
  %cmp29.i = icmp slt i32 %inc.i63, %121
  br i1 %cmp29.i, label %do.end32.i.do.end32.i_crit_edge, label %do.end32.i.out_disable_stall_crit_edge

do.end32.i.out_disable_stall_crit_edge:           ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_disable_stall

do.end32.i.do.end32.i_crit_edge:                  ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

out_disable_stall:                                ; preds = %do.end32.i.out_disable_stall_crit_edge, %for.cond28.preheader.i.out_disable_stall_crit_edge, %for.end.i61.out_disable_stall_crit_edge, %if.then23.i.out_disable_stall_crit_edge, %if.then18.i.out_disable_stall_crit_edge, %rk_iommu_is_paging_enabled.exit72.i.out_disable_stall_crit_edge, %rk_iommu_command.exit.i58.out_disable_stall_crit_edge, %rk_iommu_is_paging_enabled.exit.i.out_disable_stall_crit_edge, %for.end.out_disable_stall_crit_edge, %rk_iommu_force_reset.exit.out_disable_stall_crit_edge, %rk_iommu_force_reset.exit.thread
  %ret.0 = phi i32 [ %retval.0.ph.i, %rk_iommu_force_reset.exit.thread ], [ 0, %rk_iommu_is_paging_enabled.exit.i.out_disable_stall_crit_edge ], [ 0, %for.end.out_disable_stall_crit_edge ], [ 0, %for.end.i61.out_disable_stall_crit_edge ], [ 0, %if.then18.i.out_disable_stall_crit_edge ], [ -110, %for.cond28.preheader.i.out_disable_stall_crit_edge ], [ 0, %rk_iommu_command.exit.i58.out_disable_stall_crit_edge ], [ 0, %rk_iommu_force_reset.exit.out_disable_stall_crit_edge ], [ -110, %do.end32.i.out_disable_stall_crit_edge ], [ 0, %rk_iommu_is_paging_enabled.exit72.i.out_disable_stall_crit_edge ], [ 0, %if.then23.i.out_disable_stall_crit_edge ]
  tail call fastcc void @rk_iommu_disable_stall(ptr noundef %iommu)
  br label %out_disable_clocks

out_disable_clocks:                               ; preds = %out_disable_stall, %if.end.out_disable_clocks_crit_edge
  %ret.1 = phi i32 [ %call3, %if.end.out_disable_clocks_crit_edge ], [ %ret.0, %out_disable_stall ]
  %122 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_clocks, align 4
  %124 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_disable(i32 noundef %123, ptr noundef %125) #11
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clocks, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_disable_clocks ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_iommu_enable_stall(ptr nocapture noundef readonly %iommu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mmu.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 2
  %0 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.i = icmp sgt i32 %1, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %bases.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %active.0.off011.i = phi i1 [ true, %for.body.lr.ph.i ], [ %tobool4.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bases.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !143
  %7 = lshr i32 %6, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i = zext i1 %active.0.off011.i to i32
  %and3.i = and i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %8 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mmu.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %rk_iommu_is_stall_active.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

rk_iommu_is_stall_active.exit:                    ; preds = %for.body.i
  br i1 %tobool4.i, label %rk_iommu_is_stall_active.exit.cleanup_crit_edge, label %if.end

rk_iommu_is_stall_active.exit.cleanup_crit_edge:  ; preds = %rk_iommu_is_stall_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %rk_iommu_is_stall_active.exit
  %10 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.i57 = icmp sgt i32 %11, 0
  br i1 %cmp10.i57, label %if.end.for.body.i68_crit_edge, label %if.end.rk_iommu_command.exit_crit_edge

if.end.rk_iommu_command.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit

if.end.for.body.i68_crit_edge:                    ; preds = %if.end
  br label %for.body.i68

for.body.i68:                                     ; preds = %for.body.i68.for.body.i68_crit_edge, %if.end.for.body.i68_crit_edge
  %i.012.i60 = phi i32 [ %inc.i66, %for.body.i68.for.body.i68_crit_edge ], [ 0, %if.end.for.body.i68_crit_edge ]
  %enable.0.off011.i = phi i1 [ %tobool4.i65, %for.body.i68.for.body.i68_crit_edge ], [ true, %if.end.for.body.i68_crit_edge ]
  %12 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bases.i, align 4
  %arrayidx.i61 = getelementptr ptr, ptr %13, i32 %i.012.i60
  %14 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i61, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62) #11, !srcloc !143
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i63 = zext i1 %enable.0.off011.i to i32
  %and3.i64 = and i32 %17, %conv.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i64)
  %tobool4.i65 = icmp ne i32 %and3.i64, 0
  %inc.i66 = add nuw nsw i32 %i.012.i60, 1
  %18 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_mmu.i, align 4
  %cmp.i67 = icmp slt i32 %inc.i66, %19
  br i1 %cmp.i67, label %for.body.i68.for.body.i68_crit_edge, label %rk_iommu_is_paging_enabled.exit

for.body.i68.for.body.i68_crit_edge:              ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i68

rk_iommu_is_paging_enabled.exit:                  ; preds = %for.body.i68
  br i1 %tobool4.i65, label %if.end3, label %rk_iommu_is_paging_enabled.exit.cleanup_crit_edge

rk_iommu_is_paging_enabled.exit.cleanup_crit_edge: ; preds = %rk_iommu_is_paging_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %rk_iommu_is_paging_enabled.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.i = icmp sgt i32 %19, 0
  br i1 %cmp4.i, label %if.end3.do.body.i_crit_edge, label %if.end3.rk_iommu_command.exit_crit_edge

if.end3.rk_iommu_command.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit

if.end3.do.body.i_crit_edge:                      ; preds = %if.end3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end3.do.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i72, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end3.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bases.i, align 4
  %arrayidx.i71 = getelementptr ptr, ptr %21, i32 %i.05.i
  %22 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i71, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #11, !srcloc !147
  %inc.i72 = add nuw nsw i32 %i.05.i, 1
  %24 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_mmu.i, align 4
  %cmp.i73 = icmp slt i32 %inc.i72, %25
  br i1 %cmp.i73, label %do.body.i.do.body.i_crit_edge, label %do.body.i.rk_iommu_command.exit_crit_edge

do.body.i.rk_iommu_command.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

rk_iommu_command.exit:                            ; preds = %do.body.i.rk_iommu_command.exit_crit_edge, %if.end3.rk_iommu_command.exit_crit_edge, %if.end.rk_iommu_command.exit_crit_edge
  %call4 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call4, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 427) #11
  %26 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.i75117 = icmp sgt i32 %27, 0
  br i1 %cmp10.i75117, label %rk_iommu_command.exit.for.body.i87_crit_edge, label %rk_iommu_command.exit.cleanup_crit_edge

rk_iommu_command.exit.cleanup_crit_edge:          ; preds = %rk_iommu_command.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rk_iommu_command.exit.for.body.i87_crit_edge:     ; preds = %rk_iommu_command.exit
  br label %for.body.i87

for.body.i87:                                     ; preds = %for.body.i87.backedge, %rk_iommu_command.exit.for.body.i87_crit_edge
  %i.012.i78 = phi i32 [ %i.012.i78.be, %for.body.i87.backedge ], [ 0, %rk_iommu_command.exit.for.body.i87_crit_edge ]
  %active.0.off011.i79 = phi i1 [ %active.0.off011.i79.be, %for.body.i87.backedge ], [ true, %rk_iommu_command.exit.for.body.i87_crit_edge ]
  %28 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bases.i, align 4
  %arrayidx.i80 = getelementptr ptr, ptr %29, i32 %i.012.i78
  %30 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i80, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81) #11, !srcloc !143
  %33 = lshr i32 %32, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i82 = zext i1 %active.0.off011.i79 to i32
  %and3.i83 = and i32 %33, %conv.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i83)
  %tobool4.i84 = icmp ne i32 %and3.i83, 0
  %inc.i85 = add nuw nsw i32 %i.012.i78, 1
  %34 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i85, i32 %35)
  %cmp.i86 = icmp slt i32 %inc.i85, %35
  br i1 %cmp.i86, label %for.body.i87.for.body.i87.backedge_crit_edge, label %rk_iommu_is_stall_active.exit89

for.body.i87.for.body.i87.backedge_crit_edge:     ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i87.backedge

for.body.i87.backedge:                            ; preds = %if.then26.for.body.i87.backedge_crit_edge, %for.body.i87.for.body.i87.backedge_crit_edge
  %i.012.i78.be = phi i32 [ %inc.i85, %for.body.i87.for.body.i87.backedge_crit_edge ], [ 0, %if.then26.for.body.i87.backedge_crit_edge ]
  %active.0.off011.i79.be = phi i1 [ %tobool4.i84, %for.body.i87.for.body.i87.backedge_crit_edge ], [ true, %if.then26.for.body.i87.backedge_crit_edge ]
  br label %for.body.i87

rk_iommu_is_stall_active.exit89:                  ; preds = %for.body.i87
  br i1 %tobool4.i84, label %rk_iommu_is_stall_active.exit89.cleanup_crit_edge, label %land.lhs.true

rk_iommu_is_stall_active.exit89.cleanup_crit_edge: ; preds = %rk_iommu_is_stall_active.exit89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %rk_iommu_is_stall_active.exit89
  %call18 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then26

if.then21:                                        ; preds = %land.lhs.true
  %36 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp10.i92 = icmp sgt i32 %37, 0
  br i1 %cmp10.i92, label %if.then21.for.body.i104_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.for.body.i104_crit_edge:                ; preds = %if.then21
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %if.then21.for.body.i104_crit_edge
  %i.012.i95 = phi i32 [ %inc.i102, %for.body.i104.for.body.i104_crit_edge ], [ 0, %if.then21.for.body.i104_crit_edge ]
  %active.0.off011.i96 = phi i1 [ %tobool4.i101, %for.body.i104.for.body.i104_crit_edge ], [ true, %if.then21.for.body.i104_crit_edge ]
  %38 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bases.i, align 4
  %arrayidx.i97 = getelementptr ptr, ptr %39, i32 %i.012.i95
  %40 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i97, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #11, !srcloc !143
  %43 = lshr i32 %42, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i99 = zext i1 %active.0.off011.i96 to i32
  %and3.i100 = and i32 %43, %conv.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i100)
  %tobool4.i101 = icmp ne i32 %and3.i100, 0
  %inc.i102 = add nuw nsw i32 %i.012.i95, 1
  %44 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_mmu.i, align 4
  %cmp.i103 = icmp slt i32 %inc.i102, %45
  br i1 %cmp.i103, label %for.body.i104.for.body.i104_crit_edge, label %for.end

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i104

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  %46 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp10.i75 = icmp sgt i32 %47, 0
  br i1 %cmp10.i75, label %if.then26.for.body.i87.backedge_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26.for.body.i87.backedge_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i87.backedge

for.end:                                          ; preds = %for.body.i104
  br i1 %tobool4.i101, label %for.end.cleanup_crit_edge, label %for.cond31.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond31.preheader:                             ; preds = %for.end
  %48 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp32118 = icmp sgt i32 %49, 0
  br i1 %cmp32118, label %for.cond31.preheader.do.end35_crit_edge, label %for.cond31.preheader.cleanup_crit_edge

for.cond31.preheader.cleanup_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond31.preheader.do.end35_crit_edge:          ; preds = %for.cond31.preheader
  br label %do.end35

do.end35:                                         ; preds = %do.end35.do.end35_crit_edge, %for.cond31.preheader.do.end35_crit_edge
  %i.0119 = phi i32 [ %inc, %do.end35.do.end35_crit_edge ], [ 0, %for.cond31.preheader.do.end35_crit_edge ]
  %50 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iommu, align 4
  %52 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bases.i, align 4
  %arrayidx = getelementptr ptr, ptr %53, i32 %i.0119
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i107 = getelementptr i8, ptr %55, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #11, !srcloc !143
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.17, i32 noundef %57) #14
  %inc = add nuw nsw i32 %i.0119, 1
  %58 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_mmu.i, align 4
  %cmp32 = icmp slt i32 %inc, %59
  br i1 %cmp32, label %do.end35.do.end35_crit_edge, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end35.do.end35_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35

cleanup:                                          ; preds = %do.end35.cleanup_crit_edge, %for.cond31.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %rk_iommu_is_stall_active.exit89.cleanup_crit_edge, %rk_iommu_command.exit.cleanup_crit_edge, %rk_iommu_is_paging_enabled.exit.cleanup_crit_edge, %rk_iommu_is_stall_active.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rk_iommu_is_stall_active.exit.cleanup_crit_edge ], [ 0, %rk_iommu_is_paging_enabled.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then21.cleanup_crit_edge ], [ -110, %for.cond31.preheader.cleanup_crit_edge ], [ 0, %rk_iommu_command.exit.cleanup_crit_edge ], [ -110, %do.end35.cleanup_crit_edge ], [ 0, %if.then26.cleanup_crit_edge ], [ 0, %rk_iommu_is_stall_active.exit89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_iommu_disable_stall(ptr nocapture noundef readonly %iommu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_mmu.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 2
  %0 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.i = icmp sgt i32 %1, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %entry.rk_iommu_command.exit_crit_edge

entry.rk_iommu_command.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %bases.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %active.0.off011.i = phi i1 [ true, %for.body.lr.ph.i ], [ %tobool4.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bases.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !143
  %7 = lshr i32 %6, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i = zext i1 %active.0.off011.i to i32
  %and3.i = and i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %8 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mmu.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %rk_iommu_is_stall_active.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

rk_iommu_is_stall_active.exit:                    ; preds = %for.body.i
  br i1 %tobool4.i, label %if.end, label %rk_iommu_is_stall_active.exit.cleanup_crit_edge

rk_iommu_is_stall_active.exit.cleanup_crit_edge:  ; preds = %rk_iommu_is_stall_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %rk_iommu_is_stall_active.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.i = icmp sgt i32 %9, 0
  br i1 %cmp4.i, label %if.end.do.body.i_crit_edge, label %if.end.rk_iommu_command.exit_crit_edge

if.end.rk_iommu_command.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i4, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bases.i, align 4
  %arrayidx.i3 = getelementptr ptr, ptr %11, i32 %i.05.i
  %12 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i3, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #11, !srcloc !147
  %inc.i4 = add nuw nsw i32 %i.05.i, 1
  %14 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_mmu.i, align 4
  %cmp.i5 = icmp slt i32 %inc.i4, %15
  br i1 %cmp.i5, label %do.body.i.do.body.i_crit_edge, label %do.body.i.rk_iommu_command.exit_crit_edge

do.body.i.rk_iommu_command.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

rk_iommu_command.exit:                            ; preds = %do.body.i.rk_iommu_command.exit_crit_edge, %if.end.rk_iommu_command.exit_crit_edge, %entry.rk_iommu_command.exit_crit_edge
  %call1 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call1, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 448) #11
  %bases.i8 = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.then23, %rk_iommu_command.exit
  %16 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.i7 = icmp sgt i32 %17, 0
  br i1 %cmp10.i7, label %for.cond.for.body.i19_crit_edge, label %for.cond.land.lhs.true_crit_edge

for.cond.land.lhs.true_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.cond.for.body.i19_crit_edge:                  ; preds = %for.cond
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.body.i19.for.body.i19_crit_edge, %for.cond.for.body.i19_crit_edge
  %i.012.i10 = phi i32 [ %inc.i17, %for.body.i19.for.body.i19_crit_edge ], [ 0, %for.cond.for.body.i19_crit_edge ]
  %active.0.off011.i11 = phi i1 [ %tobool4.i16, %for.body.i19.for.body.i19_crit_edge ], [ true, %for.cond.for.body.i19_crit_edge ]
  %18 = ptrtoint ptr %bases.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bases.i8, align 4
  %arrayidx.i12 = getelementptr ptr, ptr %19, i32 %i.012.i10
  %20 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i12, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #11, !srcloc !143
  %23 = lshr i32 %22, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i14 = zext i1 %active.0.off011.i11 to i32
  %and3.i15 = and i32 %23, %conv.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i15)
  %tobool4.i16 = icmp ne i32 %and3.i15, 0
  %inc.i17 = add nuw nsw i32 %i.012.i10, 1
  %24 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_mmu.i, align 4
  %cmp.i18 = icmp slt i32 %inc.i17, %25
  br i1 %cmp.i18, label %for.body.i19.for.body.i19_crit_edge, label %rk_iommu_is_stall_active.exit21

for.body.i19.for.body.i19_crit_edge:              ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i19

rk_iommu_is_stall_active.exit21:                  ; preds = %for.body.i19
  br i1 %tobool4.i16, label %rk_iommu_is_stall_active.exit21.land.lhs.true_crit_edge, label %rk_iommu_is_stall_active.exit21.cleanup_crit_edge

rk_iommu_is_stall_active.exit21.cleanup_crit_edge: ; preds = %rk_iommu_is_stall_active.exit21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

rk_iommu_is_stall_active.exit21.land.lhs.true_crit_edge: ; preds = %rk_iommu_is_stall_active.exit21
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %rk_iommu_is_stall_active.exit21.land.lhs.true_crit_edge, %for.cond.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #11
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then18, label %if.then23

if.then18:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.i24 = icmp sgt i32 %27, 0
  br i1 %cmp10.i24, label %if.then18.for.body.i36_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18.for.body.i36_crit_edge:                 ; preds = %if.then18
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %if.then18.for.body.i36_crit_edge
  %i.012.i27 = phi i32 [ %inc.i34, %for.body.i36.for.body.i36_crit_edge ], [ 0, %if.then18.for.body.i36_crit_edge ]
  %active.0.off011.i28 = phi i1 [ %tobool4.i33, %for.body.i36.for.body.i36_crit_edge ], [ true, %if.then18.for.body.i36_crit_edge ]
  %28 = ptrtoint ptr %bases.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bases.i8, align 4
  %arrayidx.i29 = getelementptr ptr, ptr %29, i32 %i.012.i27
  %30 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #11, !srcloc !143
  %33 = lshr i32 %32, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i31 = zext i1 %active.0.off011.i28 to i32
  %and3.i32 = and i32 %33, %conv.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i32)
  %tobool4.i33 = icmp ne i32 %and3.i32, 0
  %inc.i34 = add nuw nsw i32 %i.012.i27, 1
  %34 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_mmu.i, align 4
  %cmp.i35 = icmp slt i32 %inc.i34, %35
  br i1 %cmp.i35, label %for.body.i36.for.body.i36_crit_edge, label %for.end

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i36

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  br label %for.cond

for.end:                                          ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp2945 = icmp sgt i32 %35, 0
  %or.cond = select i1 %tobool4.i33, i1 %cmp2945, i1 false
  br i1 %or.cond, label %for.end.do.end32_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.do.end32_crit_edge:                       ; preds = %for.end
  br label %do.end32

do.end32:                                         ; preds = %do.end32.do.end32_crit_edge, %for.end.do.end32_crit_edge
  %i.046 = phi i32 [ %inc, %do.end32.do.end32_crit_edge ], [ 0, %for.end.do.end32_crit_edge ]
  %36 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iommu, align 4
  %38 = ptrtoint ptr %bases.i8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bases.i8, align 4
  %arrayidx = getelementptr ptr, ptr %39, i32 %i.046
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i39 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !143
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.26, i32 noundef %43) #14
  %inc = add nuw nsw i32 %i.046, 1
  %44 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_mmu.i, align 4
  %cmp29 = icmp slt i32 %inc, %45
  br i1 %cmp29, label %do.end32.do.end32_crit_edge, label %do.end32.cleanup_crit_edge

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end32.do.end32_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

cleanup:                                          ; preds = %do.end32.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %rk_iommu_is_stall_active.exit21.cleanup_crit_edge, %rk_iommu_is_stall_active.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_iommu_disable(ptr nocapture noundef readonly %iommu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_clocks = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 5
  %0 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 4
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks, align 4
  %call = tail call i32 @clk_bulk_enable(i32 noundef %1, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !140

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 939, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call fastcc i32 @rk_iommu_enable_stall(ptr noundef %iommu)
  %num_mmu.i.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 2
  %4 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_mmu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.i.i = icmp sgt i32 %5, 0
  br i1 %cmp10.i.i, label %for.body.lr.ph.i.i, label %if.end.rk_iommu_command.exit.i_crit_edge

if.end.rk_iommu_command.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %bases.i.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %enable.0.off011.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %tobool4.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %bases.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bases.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 %i.012.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !143
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i.i = zext i1 %enable.0.off011.i.i to i32
  %and3.i.i = and i32 %11, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %12 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_mmu.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %13
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %rk_iommu_is_paging_enabled.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

rk_iommu_is_paging_enabled.exit.i:                ; preds = %for.body.i.i
  br i1 %tobool4.i.i, label %if.end.i, label %rk_iommu_is_paging_enabled.exit.i.rk_iommu_disable_paging.exit_crit_edge

rk_iommu_is_paging_enabled.exit.i.rk_iommu_disable_paging.exit_crit_edge: ; preds = %rk_iommu_is_paging_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_disable_paging.exit

if.end.i:                                         ; preds = %rk_iommu_is_paging_enabled.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i.i = icmp sgt i32 %13, 0
  br i1 %cmp4.i.i, label %if.end.i.do.body.i.i_crit_edge, label %if.end.i.rk_iommu_command.exit.i_crit_edge

if.end.i.rk_iommu_command.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.do.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i4.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %if.end.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %bases.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bases.i.i, align 4
  %arrayidx.i3.i = getelementptr ptr, ptr %15, i32 %i.05.i.i
  %16 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i3.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !147
  %inc.i4.i = add nuw nsw i32 %i.05.i.i, 1
  %18 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_mmu.i.i, align 4
  %cmp.i5.i = icmp slt i32 %inc.i4.i, %19
  br i1 %cmp.i5.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.rk_iommu_command.exit.i_crit_edge

do.body.i.i.rk_iommu_command.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_command.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

rk_iommu_command.exit.i:                          ; preds = %do.body.i.i.rk_iommu_command.exit.i_crit_edge, %if.end.i.rk_iommu_command.exit.i_crit_edge, %if.end.rk_iommu_command.exit.i_crit_edge
  %call1.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call1.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 490) #11
  %bases.i8.i = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then23.i, %rk_iommu_command.exit.i
  %20 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_mmu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.i7.i = icmp sgt i32 %21, 0
  br i1 %cmp10.i7.i, label %for.cond.i.for.body.i19.i_crit_edge, label %for.cond.i.land.lhs.true.i_crit_edge

for.cond.i.land.lhs.true.i_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.cond.i.for.body.i19.i_crit_edge:              ; preds = %for.cond.i
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %for.body.i19.i.for.body.i19.i_crit_edge, %for.cond.i.for.body.i19.i_crit_edge
  %i.012.i10.i = phi i32 [ %inc.i17.i, %for.body.i19.i.for.body.i19.i_crit_edge ], [ 0, %for.cond.i.for.body.i19.i_crit_edge ]
  %enable.0.off011.i11.i = phi i1 [ %tobool4.i16.i, %for.body.i19.i.for.body.i19.i_crit_edge ], [ true, %for.cond.i.for.body.i19.i_crit_edge ]
  %22 = ptrtoint ptr %bases.i8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bases.i8.i, align 4
  %arrayidx.i12.i = getelementptr ptr, ptr %23, i32 %i.012.i10.i
  %24 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i12.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #11, !srcloc !143
  %27 = lshr i32 %26, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i14.i = zext i1 %enable.0.off011.i11.i to i32
  %and3.i15.i = and i32 %27, %conv.i14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i15.i)
  %tobool4.i16.i = icmp ne i32 %and3.i15.i, 0
  %inc.i17.i = add nuw nsw i32 %i.012.i10.i, 1
  %28 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_mmu.i.i, align 4
  %cmp.i18.i = icmp slt i32 %inc.i17.i, %29
  br i1 %cmp.i18.i, label %for.body.i19.i.for.body.i19.i_crit_edge, label %rk_iommu_is_paging_enabled.exit21.i

for.body.i19.i.for.body.i19.i_crit_edge:          ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i19.i

rk_iommu_is_paging_enabled.exit21.i:              ; preds = %for.body.i19.i
  br i1 %tobool4.i16.i, label %rk_iommu_is_paging_enabled.exit21.i.land.lhs.true.i_crit_edge, label %rk_iommu_is_paging_enabled.exit21.i.rk_iommu_disable_paging.exit_crit_edge

rk_iommu_is_paging_enabled.exit21.i.rk_iommu_disable_paging.exit_crit_edge: ; preds = %rk_iommu_is_paging_enabled.exit21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_disable_paging.exit

rk_iommu_is_paging_enabled.exit21.i.land.lhs.true.i_crit_edge: ; preds = %rk_iommu_is_paging_enabled.exit21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %rk_iommu_is_paging_enabled.exit21.i.land.lhs.true.i_crit_edge, %for.cond.i.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #11
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then18.i, label %if.then23.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %30 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_mmu.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp10.i24.i = icmp sgt i32 %31, 0
  br i1 %cmp10.i24.i, label %if.then18.i.for.body.i36.i_crit_edge, label %if.then18.i.for.end_crit_edge

if.then18.i.for.end_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then18.i.for.body.i36.i_crit_edge:             ; preds = %if.then18.i
  br label %for.body.i36.i

for.body.i36.i:                                   ; preds = %for.body.i36.i.for.body.i36.i_crit_edge, %if.then18.i.for.body.i36.i_crit_edge
  %i.012.i27.i = phi i32 [ %inc.i34.i, %for.body.i36.i.for.body.i36.i_crit_edge ], [ 0, %if.then18.i.for.body.i36.i_crit_edge ]
  %enable.0.off011.i28.i = phi i1 [ %tobool4.i33.i, %for.body.i36.i.for.body.i36.i_crit_edge ], [ true, %if.then18.i.for.body.i36.i_crit_edge ]
  %32 = ptrtoint ptr %bases.i8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bases.i8.i, align 4
  %arrayidx.i29.i = getelementptr ptr, ptr %33, i32 %i.012.i27.i
  %34 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i29.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30.i) #11, !srcloc !143
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %conv.i31.i = zext i1 %enable.0.off011.i28.i to i32
  %and3.i32.i = and i32 %37, %conv.i31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i32.i)
  %tobool4.i33.i = icmp ne i32 %and3.i32.i, 0
  %inc.i34.i = add nuw nsw i32 %i.012.i27.i, 1
  %38 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_mmu.i.i, align 4
  %cmp.i35.i = icmp slt i32 %inc.i34.i, %39
  br i1 %cmp.i35.i, label %for.body.i36.i.for.body.i36.i_crit_edge, label %for.end.i

for.body.i36.i.for.body.i36.i_crit_edge:          ; preds = %for.body.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i36.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp2945.i = icmp sgt i32 %39, 0
  %or.cond.i = select i1 %tobool4.i33.i, i1 %cmp2945.i, i1 false
  br i1 %or.cond.i, label %for.end.i.do.end32.i_crit_edge, label %for.end.i.rk_iommu_disable_paging.exit_crit_edge

for.end.i.rk_iommu_disable_paging.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_disable_paging.exit

for.end.i.do.end32.i_crit_edge:                   ; preds = %for.end.i
  br label %do.end32.i

do.end32.i:                                       ; preds = %do.end32.i.do.end32.i_crit_edge, %for.end.i.do.end32.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %do.end32.i.do.end32.i_crit_edge ], [ 0, %for.end.i.do.end32.i_crit_edge ]
  %40 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iommu, align 4
  %42 = ptrtoint ptr %bases.i8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bases.i8.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %43, i32 %i.046.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #11, !srcloc !143
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.30, i32 noundef %47) #14
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %48 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_mmu.i.i, align 4
  %cmp29.i = icmp slt i32 %inc.i, %49
  br i1 %cmp29.i, label %do.end32.i.do.end32.i_crit_edge, label %do.end32.i.rk_iommu_disable_paging.exit_crit_edge

do.end32.i.rk_iommu_disable_paging.exit_crit_edge: ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_disable_paging.exit

do.end32.i.do.end32.i_crit_edge:                  ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

rk_iommu_disable_paging.exit:                     ; preds = %do.end32.i.rk_iommu_disable_paging.exit_crit_edge, %for.end.i.rk_iommu_disable_paging.exit_crit_edge, %rk_iommu_is_paging_enabled.exit21.i.rk_iommu_disable_paging.exit_crit_edge, %rk_iommu_is_paging_enabled.exit.i.rk_iommu_disable_paging.exit_crit_edge
  %50 = phi i32 [ %13, %rk_iommu_is_paging_enabled.exit.i.rk_iommu_disable_paging.exit_crit_edge ], [ %39, %for.end.i.rk_iommu_disable_paging.exit_crit_edge ], [ %49, %do.end32.i.rk_iommu_disable_paging.exit_crit_edge ], [ %29, %rk_iommu_is_paging_enabled.exit21.i.rk_iommu_disable_paging.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp42 = icmp sgt i32 %50, 0
  br i1 %cmp42, label %for.body.lr.ph, label %rk_iommu_disable_paging.exit.for.end_crit_edge

rk_iommu_disable_paging.exit.for.end_crit_edge:   ; preds = %rk_iommu_disable_paging.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %rk_iommu_disable_paging.exit
  %bases = getelementptr inbounds %struct.rk_iommu, ptr %iommu, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %51 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bases, align 4
  %arrayidx = getelementptr ptr, ptr %52, i32 %i.043
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %add.ptr.i = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !147
  %55 = ptrtoint ptr %bases to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bases, align 4
  %arrayidx23 = getelementptr ptr, ptr %56, i32 %i.043
  %57 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #11, !srcloc !147
  %inc = add nuw nsw i32 %i.043, 1
  %59 = ptrtoint ptr %num_mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_mmu.i.i, align 4
  %cmp = icmp slt i32 %inc, %60
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rk_iommu_disable_paging.exit.for.end_crit_edge, %if.then18.i.for.end_crit_edge
  tail call fastcc void @rk_iommu_disable_stall(ptr noundef %iommu)
  %61 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_clocks, align 4
  %63 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_disable(i32 noundef %62, ptr noundef %64) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_iommu_zap_iova(ptr noundef %rk_domain, i32 noundef %iova, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommus_lock = getelementptr inbounds %struct.rk_iommu_domain, ptr %rk_domain, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommus_lock) #11
  %0 = ptrtoint ptr %rk_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0116 = load ptr, ptr %rk_domain, align 4
  %cmp.i.not117 = icmp eq ptr %pos.0116, %rk_domain
  br i1 %cmp.i.not117, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.i = add i32 %size, %iova
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %iova)
  %cmp213.i = icmp ugt i32 %add.i, %iova
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %pos.0118 = phi ptr [ %pos.0116, %for.body.lr.ph ], [ %pos.0, %cleanup.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pos.0118, i32 -48
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %2, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %land.rhs, label %if.end54

land.rhs:                                         ; preds = %for.body
  %.b112 = load i1, ptr @rk_iommu_zap_iova.__already_done, align 1
  br i1 %.b112, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !140

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rk_iommu_zap_iova.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 722, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end54:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.end54.cleanup_crit_edge, label %if.then56

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then56:                                        ; preds = %if.end54
  %num_clocks = getelementptr i8, ptr %pos.0118, i32 -28
  %3 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr i8, ptr %pos.0118, i32 -32
  %5 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clocks, align 4
  %call58 = tail call i32 @clk_bulk_enable(i32 noundef %4, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end81_crit_edge, label %do.end75, !prof !140

if.then56.if.end81_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.end75:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 726, i32 noundef 9, ptr noundef null) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %if.then56.if.end81_crit_edge
  %num_mmu.i = getelementptr i8, ptr %pos.0118, i32 -40
  %7 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_mmu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15.i = icmp sgt i32 %8, 0
  br i1 %cmp15.i, label %for.cond1.preheader.lr.ph.i, label %if.end81.rk_iommu_zap_lines.exit_crit_edge

if.end81.rk_iommu_zap_lines.exit_crit_edge:       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_zap_lines.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end81
  %bases.i = getelementptr i8, ptr %pos.0118, i32 -44
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp213.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.end.i_crit_edge

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %iova.014.i = phi i32 [ %add4.i, %for.body3.i.for.body3.i_crit_edge ], [ %iova, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %9 = ptrtoint ptr %bases.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bases.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.016.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %iova.014.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #11, !srcloc !147
  %add4.i = add i32 %iova.014.i, 4096
  %cmp2.i = icmp ult i32 %add4.i, %add.i
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.end.i_crit_edge

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.end.i:                                        ; preds = %for.body3.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %14 = ptrtoint ptr %num_mmu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_mmu.i, align 4
  %cmp.i114 = icmp slt i32 %inc.i, %15
  br i1 %cmp.i114, label %for.end.i.for.cond1.preheader.i_crit_edge, label %for.end.i.rk_iommu_zap_lines.exit_crit_edge

for.end.i.rk_iommu_zap_lines.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rk_iommu_zap_lines.exit

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

rk_iommu_zap_lines.exit:                          ; preds = %for.end.i.rk_iommu_zap_lines.exit_crit_edge, %if.end81.rk_iommu_zap_lines.exit_crit_edge
  %16 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks, align 4
  %18 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clocks, align 4
  tail call void @clk_bulk_disable(i32 noundef %17, ptr noundef %19) #11
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %call.i115 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %rk_iommu_zap_lines.exit, %if.end54.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %22 = ptrtoint ptr %pos.0118 to i32
  call void @__asan_load4_noabort(i32 %22)
  %pos.0 = load ptr, ptr %pos.0118, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %rk_domain
  br i1 %cmp.i.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommus_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_pt_address(i32 noundef %dte) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %dte, -4096
  ret i32 %and
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_dte(i32 noundef %pt_dma) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %pt_dma, -4096
  %or = or i32 %and, 1
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_pte(i32 noundef %page, i32 noundef %prot) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %prot, 1
  %or4 = and i32 %and, 6
  %and5 = and i32 %page, -4096
  %or6 = or i32 %and5, %or4
  %or7 = or i32 %or6, 1
  ret i32 %or7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_addr_phys(i32 noundef returned %addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %addr
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_dma_addr_dte(i32 noundef returned %dt_dma) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %dt_dma
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_pt_address_v2(i32 noundef %dte) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = and i32 %dte, -4096
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_dte_v2(i32 noundef %pt_dma) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = and i32 %pt_dma, -4096
  %1 = or i32 %0, 1
  ret i32 %1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_pte_v2(i32 noundef %page, i32 noundef %prot) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %prot to i3
  %rev = tail call i3 @llvm.bitreverse.i3(i3 %trunc)
  %or4 = zext i3 %rev to i32
  %0 = and i32 %page, -4096
  %1 = or i32 %0, %or4
  %or5 = or i32 %1, 1
  ret i32 %or5
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_addr_phys_v2(i32 noundef %addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %addr, -4096
  ret i32 %and
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk_dma_addr_dte_v2(i32 noundef %dt_dma) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %dt_dma, -4096
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %domain = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rk_iommu_disable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_iommu_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %domain = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @rk_iommu_enable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !93, !95, !97, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_rockchip_iommu__237_1415_rk_iommu_init4, !1, !"__initcall__kmod_rockchip_iommu__237_1415_rk_iommu_init4", i1 false, i1 false}
!1 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1415, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1404, i32 14}
!4 = !{ptr @rk_iommu_driver, !5, !"rk_iommu_driver", i1 false, i1 false}
!5 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1400, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1228, i32 6}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1253, i32 6}
!10 = !{ptr @rk_ops, !11, !"rk_ops", i1 false, i1 false}
!11 = !{!"../drivers/iommu/rockchip-iommu.c", i32 126, i32 35}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iommu/rockchip-iommu.c", i32 94, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/rockchip-iommu.c", i32 94, i32 10}
!16 = !{ptr @rk_iommu_clocks, !17, !"rk_iommu_clocks", i1 false, i1 false}
!17 = !{!"../drivers/iommu/rockchip-iommu.c", i32 93, i32 27}
!18 = !{ptr @rk_iommu_ops, !19, !"rk_iommu_ops", i1 false, i1 false}
!19 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1188, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1088, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rk_iommu_domain_alloc._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @rk_iommu_domain_alloc._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rk_iommu_domain_alloc.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1092, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rk_iommu_domain_alloc.__key.10, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1093, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1034, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rk_iommu_attach_device.__UNIQUE_ID_ddebug236, !38, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1050, i32 14}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iommu/rockchip-iommu.c", i32 430, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rk_iommu_enable_stall._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rk_iommu_enable_stall._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iommu/rockchip-iommu.c", i32 517, i32 4}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rk_iommu_force_reset._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rk_iommu_force_reset._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iommu/rockchip-iommu.c", i32 528, i32 3}
!56 = !{ptr @rk_iommu_force_reset._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rk_iommu_force_reset._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iommu/rockchip-iommu.c", i32 472, i32 4}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rk_iommu_enable_paging._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rk_iommu_enable_paging._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iommu/rockchip-iommu.c", i32 451, i32 4}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rk_iommu_disable_stall._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rk_iommu_disable_stall._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iommu/rockchip-iommu.c", i32 998, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rk_iommu_detach_device.__UNIQUE_ID_ddebug235, !69, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1011, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iommu/rockchip-iommu.c", i32 493, i32 4}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rk_iommu_disable_paging._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @rk_iommu_disable_paging._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iommu/rockchip-iommu.c", i32 766, i32 3}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rk_dte_get_page_table._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @rk_dte_get_page_table._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iommu/rockchip-iommu.c", i32 842, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rk_iommu_map_iova._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rk_iommu_map_iova._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/iommu/rockchip-iommu.c", i32 722, i32 7}
!91 = !{ptr @dma_dev, !92, !"dma_dev", i1 false, i1 false}
!92 = !{!"../drivers/iommu/rockchip-iommu.c", i32 125, i32 23}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/iommu/rockchip-iommu.c", i32 619, i32 14}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iommu/rockchip-iommu.c", i32 640, i32 4}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rk_iommu_irq._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @rk_iommu_irq._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iommu/rockchip-iommu.c", i32 655, i32 5}
!104 = !{ptr @rk_iommu_irq._entry.40, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rk_iommu_irq._entry_ptr.42, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iommu/rockchip-iommu.c", i32 662, i32 4}
!108 = !{ptr @rk_iommu_irq._entry.43, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @rk_iommu_irq._entry_ptr.45, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iommu/rockchip-iommu.c", i32 665, i32 4}
!112 = !{ptr @rk_iommu_irq._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @rk_iommu_irq._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iommu/rockchip-iommu.c", i32 601, i32 2}
!116 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @log_iova._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @log_iova._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iommu/rockchip-iommu.c", i32 603, i32 2}
!121 = !{ptr @log_iova._entry.51, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @log_iova._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @rk_iommu_dt_ids, !124, !"rk_iommu_dt_ids", i1 false, i1 false}
!124 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1390, i32 34}
!125 = !{ptr @iommu_data_ops_v1, !126, !"iommu_data_ops_v1", i1 false, i1 false}
!126 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1372, i32 28}
!127 = !{ptr @iommu_data_ops_v2, !128, !"iommu_data_ops_v2", i1 false, i1 false}
!128 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1381, i32 28}
!129 = !{ptr @rk_iommu_pm_ops, !130, !"rk_iommu_pm_ops", i1 false, i1 false}
!130 = !{!"../drivers/iommu/rockchip-iommu.c", i32 1366, i32 32}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{!"auto-init"}
!143 = !{i64 6292365}
!144 = !{i64 2154413219}
!145 = !{i64 2148882823, i64 2148882846, i64 2148882878, i64 2148882910, i64 2148882948, i64 2148882978}
!146 = !{i64 2154414245}
!147 = !{i64 6291947}
!148 = !{i64 2154413431}
!149 = !{i64 2148757799, i64 2148757804, i64 2148757817, i64 2148757861, i64 2148757895, i64 2148757916}
!150 = !{i64 2154450525, i64 2154451020, i64 2154450562, i64 2154450618, i64 2154450652, i64 2154450676, i64 2154450717, i64 2154450738, i64 2154450766, i64 2154450800}
!151 = !{i64 2154456613, i64 2154457108, i64 2154456650, i64 2154456706, i64 2154456740, i64 2154456764, i64 2154456805, i64 2154456826, i64 2154456854, i64 2154456888}
!152 = !{i64 2154454649, i64 2154455144, i64 2154454686, i64 2154454742, i64 2154454776, i64 2154454800, i64 2154454841, i64 2154454862, i64 2154454890, i64 2154454924}
!153 = !{i8 0, i8 2}
!154 = !{i64 2154413836}
