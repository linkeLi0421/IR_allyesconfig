; ModuleID = '/llk/IR_all_yes/drivers/iommu/arm/arm-smmu/arm-smmu.c_pt.bc'
source_filename = "../drivers/iommu/arm/arm-smmu/arm-smmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_smmu_match_data = type { i32, i32 }
%struct.arm_smmu_device = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, [4 x i32], ptr, %struct.atomic_t, i32, i16, i16, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.spinlock, %struct.iommu_device }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.arm_smmu_cb = type { [2 x i64], [2 x i32], [2 x i32], ptr }
%struct.arm_smmu_impl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_smmu_cfg = type { i8, i8, %union.anon.87, i32, i32, i8 }
%union.anon.87 = type { i16 }
%struct.arm_smmu_domain = type { ptr, ptr, i32, ptr, %struct.arm_smmu_cfg, i32, %struct.mutex, %struct.spinlock, %struct.iommu_domain }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
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
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.95 }
%struct.anon.95 = type { [4 x i64], i32 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.anon.93 = type { i32, i32, i32, i32 }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.arm_smmu_master_cfg = type { ptr, [0 x i16] }
%struct.arm_smmu_s2cr = type { ptr, i32, i32, i32, i8 }
%struct.arm_smmu_smr = type { i16, i16, i8, i8 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_force_stage = internal constant [21 x i8] c"arm_smmu.force_stage\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_stage = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_stage = internal constant %struct.kernel_param { ptr @__param_str_force_stage, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @force_stage } }, section "__param", align 4
@__UNIQUE_ID_force_stagetype363 = internal constant [34 x i8] c"arm_smmu.parmtype=force_stage:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_stage364 = internal constant [292 x i8] c"arm_smmu.parm=force_stage:Force SMMU mappings to be installed at a particular stage of translation. A value of '1' or '2' forces the corresponding stage. All other values are ignored (i.e. no stage is forced). Note that selecting a specific stage will disable support for nested translation.\00", section ".modinfo", align 1
@__param_str_disable_bypass = internal constant [24 x i8] c"arm_smmu.disable_bypass\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_bypass = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_disable_bypass = internal constant %struct.kernel_param { ptr @__param_str_disable_bypass, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @disable_bypass } }, section "__param", align 4
@__UNIQUE_ID_disable_bypasstype365 = internal constant [38 x i8] c"arm_smmu.parmtype=disable_bypass:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_bypass366 = internal constant [228 x i8] c"arm_smmu.parm=disable_bypass:Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.\00", section ".modinfo", align 1
@__initcall__kmod_arm_smmu__367_196_arm_smmu_legacy_bus_init6s = internal global ptr @arm_smmu_legacy_bus_init, section ".initcall6s.init", align 4
@__initcall__kmod_arm_smmu__540_2338_arm_smmu_driver_init6 = internal global ptr @arm_smmu_driver_init, section ".initcall6.init", align 4
@arm_smmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arm_smmu_device_probe, ptr @arm_smmu_device_remove, ptr @arm_smmu_device_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.33, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @arm_smmu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_smmu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_arm_smmu_driver_exit = internal global ptr @arm_smmu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description541 = internal constant [72 x i8] c"arm_smmu.description=IOMMU API for ARM architected SMMU implementations\00", section ".modinfo", align 1
@__UNIQUE_ID_author542 = internal constant [46 x i8] c"arm_smmu.author=Will Deacon <will@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias543 = internal constant [33 x i8] c"arm_smmu.alias=platform:arm-smmu\00", section ".modinfo", align 1
@__UNIQUE_ID_file544 = internal constant [50 x i8] c"arm_smmu.file=drivers/iommu/arm/arm-smmu/arm_smmu\00", section ".modinfo", align 1
@__UNIQUE_ID_license545 = internal constant [24 x i8] c"arm_smmu.license=GPL v2\00", section ".modinfo", align 1
@using_legacy_binding = internal global { i1, [31 x i8] } zeroinitializer, align 32
@arm_smmu_ops = internal global { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr @arm_smmu_capable, ptr @arm_smmu_domain_alloc, ptr @arm_smmu_domain_free, ptr @arm_smmu_attach_dev, ptr null, ptr null, ptr @arm_smmu_map_pages, ptr null, ptr @arm_smmu_unmap_pages, ptr @arm_smmu_flush_iotlb_all, ptr null, ptr @arm_smmu_iotlb_sync, ptr @arm_smmu_iova_to_phys, ptr @arm_smmu_probe_device, ptr @arm_smmu_release_device, ptr @arm_smmu_probe_finalize, ptr @arm_smmu_device_group, ptr @arm_smmu_enable_nesting, ptr @arm_smmu_set_pgtable_quirks, ptr @arm_smmu_get_resv_regions, ptr @generic_iommu_put_resv_regions, ptr null, ptr @arm_smmu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_smmu_def_domain_type, i32 -1, ptr null }, [60 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@amba_bustype = external dso_local global %struct.bus_type, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@fsl_mc_bus_type = external dso_local global %struct.bus_type, align 4
@arm_smmu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&smmu_domain->init_mutex\00", [39 x i8] zeroinitializer }, align 32
@arm_smmu_domain_alloc.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&smmu_domain->cb_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_smmu_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cannot attach to SMMU, is it on the same bus?\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_smmu_attach_dev\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/iommu/arm/arm-smmu/arm-smmu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arm_smmu_attach_dev._entry_ptr = internal global ptr @arm_smmu_attach_dev._entry, section ".printk_index", align 4
@arm_smmu_attach_dev._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"cannot attach to SMMU %s whilst already attached to domain on SMMU %s\0A\00", [57 x i8] zeroinitializer }, align 32
@arm_smmu_attach_dev._entry_ptr.10 = internal global ptr @arm_smmu_attach_dev._entry.8, section ".printk_index", align 4
@arm_smmu_s1_tlb_ops = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @arm_smmu_tlb_inv_context_s1, ptr @arm_smmu_tlb_inv_walk_s1, ptr @arm_smmu_tlb_add_page_s1 }, [20 x i8] zeroinitializer }, align 32
@arm_smmu_s2_tlb_ops_v2 = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @arm_smmu_tlb_inv_context_s2, ptr @arm_smmu_tlb_inv_walk_s2, ptr @arm_smmu_tlb_add_page_s2 }, [20 x i8] zeroinitializer }, align 32
@arm_smmu_s2_tlb_ops_v1 = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @arm_smmu_tlb_inv_context_s2, ptr @arm_smmu_tlb_inv_walk_s2_v1, ptr @arm_smmu_tlb_add_page_s2_v1 }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm-smmu-context-fault\00", [41 x i8] zeroinitializer }, align 32
@arm_smmu_init_domain_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 821, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request context IRQ %d (%u)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arm_smmu_init_domain_context\00", [35 x i8] zeroinitializer }, align 32
@arm_smmu_init_domain_context._entry_ptr = internal global ptr @arm_smmu_init_domain_context._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__arm_smmu_tlb_sync._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__arm_smmu_tlb_sync = private unnamed_addr constant [20 x i8] c"__arm_smmu_tlb_sync\00", align 1
@__arm_smmu_tlb_sync._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @__func__.__arm_smmu_tlb_sync, ptr @.str.5, i32 231, ptr @.str.6, ptr @.str.7 }, align 1
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TLB sync timed out -- SMMU may be deadlocked\0A\00", [50 x i8] zeroinitializer }, align 32
@__arm_smmu_tlb_sync._entry_ptr = internal global ptr @__arm_smmu_tlb_sync._entry, section ".printk_index", align 4
@arm_smmu_context_fault._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.arm_smmu_context_fault = private unnamed_addr constant [23 x i8] c"arm_smmu_context_fault\00", align 1
@arm_smmu_context_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.arm_smmu_context_fault, ptr @.str.5, i32 433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_smmu_context_fault._entry_ptr = internal global ptr @arm_smmu_context_fault._entry, section ".printk_index", align 4
@arm_smmu_iova_to_phys_hard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 1297, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"iova to phys timed out on %pad. Falling back to software table walk.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arm_smmu_iova_to_phys_hard\00", [37 x i8] zeroinitializer }, align 32
@arm_smmu_iova_to_phys_hard._entry_ptr = internal global ptr @arm_smmu_iova_to_phys_hard._entry, section ".printk_index", align 4
@arm_smmu_iova_to_phys_hard._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 1305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"translation fault!\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_smmu_iova_to_phys_hard._entry_ptr.21 = internal global ptr @arm_smmu_iova_to_phys_hard._entry.19, section ".printk_index", align 4
@arm_smmu_iova_to_phys_hard._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.5, i32 1306, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAR = 0x%llx\0A\00", [18 x i8] zeroinitializer }, align 32
@arm_smmu_iova_to_phys_hard._entry_ptr.24 = internal global ptr @arm_smmu_iova_to_phys_hard._entry.22, section ".printk_index", align 4
@arm_smmu_probe_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 1389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"stream ID 0x%x out of range for SMMU (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm_smmu_probe_device\00", [42 x i8] zeroinitializer }, align 32
@arm_smmu_probe_device._entry_ptr = internal global ptr @arm_smmu_probe_device._entry, section ".printk_index", align 4
@arm_smmu_probe_device._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 1394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SMR mask 0x%x out of range for SMMU (0x%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_smmu_probe_device._entry_ptr.29 = internal global ptr @arm_smmu_probe_device._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#stream-id-cells\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmu-masters\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stream-match-mask\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arm-smmu\00", [23 x i8] zeroinitializer }, align 32
@arm_smmu_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,smmu-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @smmu_generic_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,smmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @smmu_generic_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mmu-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @smmu_generic_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mmu-401\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_mmu401 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_mmu500 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,smmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cavium_smmuv2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,smmu-500\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_mmu500 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smmu-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcom_smmuv2 }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@arm_smmu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @arm_smmu_pm_suspend, ptr @arm_smmu_pm_resume, ptr @arm_smmu_pm_suspend, ptr @arm_smmu_pm_resume, ptr @arm_smmu_pm_suspend, ptr @arm_smmu_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arm_smmu_runtime_suspend, ptr @arm_smmu_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 2080, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate arm_smmu_device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm_smmu_device_probe\00", [42 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr = internal global ptr @arm_smmu_device_probe._entry, section ".printk_index", align 4
@arm_smmu_device_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 2117, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"found %d interrupts but expected at least %d\0A\00", [50 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.38 = internal global ptr @arm_smmu_device_probe._entry.36, section ".printk_index", align 4
@arm_smmu_device_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.5, i32 2124, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate %d irqs\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.41 = internal global ptr @arm_smmu_device_probe._entry.39, section ".printk_index", align 4
@arm_smmu_device_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.5, i32 2138, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clocks %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.44 = internal global ptr @arm_smmu_device_probe._entry.42, section ".printk_index", align 4
@arm_smmu_device_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.5, i32 2155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"found only %d context irq(s) but %d required\0A\00", [50 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.47 = internal global ptr @arm_smmu_device_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arm-smmu global fault\00", [42 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.35, ptr @.str.5, i32 2176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request global IRQ %d (%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.51 = internal global ptr @arm_smmu_device_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smmu.%pa\00", [23 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.5, i32 2184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register iommu in sysfs\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.55 = internal global ptr @arm_smmu_device_probe._entry.53, section ".printk_index", align 4
@arm_smmu_device_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.35, ptr @.str.5, i32 2190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to register iommu\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_smmu_device_probe._entry_ptr.58 = internal global ptr @arm_smmu_device_probe._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"#global-interrupts\00", [45 x i8] zeroinitializer }, align 32
@arm_smmu_device_dt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 1995, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing #global-interrupts property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm_smmu_device_dt_probe\00", [39 x i8] zeroinitializer }, align 32
@arm_smmu_device_dt_probe._entry_ptr = internal global ptr @arm_smmu_device_dt_probe._entry, section ".printk_index", align 4
@using_generic_binding = internal global { i1, [31 x i8] } zeroinitializer, align 32
@arm_smmu_device_dt_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.5, i32 2007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015arm-smmu: deprecated \22mmu-masters\22 DT property in use; %s support unavailable\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_smmu_device_dt_probe._entry_ptr.64 = internal global ptr @arm_smmu_device_dt_probe._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMA API\00", [24 x i8] zeroinitializer }, align 32
@arm_smmu_device_dt_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.5, i32 2013, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"not probing due to mismatched DT properties\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_smmu_device_dt_probe._entry_ptr.68 = internal global ptr @arm_smmu_device_dt_probe._entry.66, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 1695, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"probing hardware configuration...\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arm_smmu_device_cfg_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr = internal global ptr @arm_smmu_device_cfg_probe._entry, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.70, ptr @.str.5, i32 1697, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SMMUv%d with:\0A\00", [17 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.74 = internal global ptr @arm_smmu_device_cfg_probe._entry.72, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.70, ptr @.str.5, i32 1710, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09stage 1 translation\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.77 = internal global ptr @arm_smmu_device_cfg_probe._entry.75, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.70, ptr @.str.5, i32 1715, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09stage 2 translation\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.80 = internal global ptr @arm_smmu_device_cfg_probe._entry.78, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.70, ptr @.str.5, i32 1720, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09nested translation\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.83 = internal global ptr @arm_smmu_device_cfg_probe._entry.81, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.70, ptr @.str.5, i32 1725, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09no translation support!\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.86 = internal global ptr @arm_smmu_device_cfg_probe._entry.84, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.70, ptr @.str.5, i32 1732, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09address translation ops\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.89 = internal global ptr @arm_smmu_device_cfg_probe._entry.87, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.70, ptr @.str.5, i32 1744, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09%scoherent table walk\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.92 = internal global ptr @arm_smmu_device_cfg_probe._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"non-\00", [27 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.70, ptr @.str.5, i32 1747, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\09(IDR0.CTTW overridden by FW configuration)\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.97 = internal global ptr @arm_smmu_device_cfg_probe._entry.95, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.70, ptr @.str.5, i32 1762, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"stream-matching supported, but no SMRs present!\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.100 = internal global ptr @arm_smmu_device_cfg_probe._entry.98, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.70, ptr @.str.5, i32 1773, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\09stream matching with %u register groups\00", [55 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.103 = internal global ptr @arm_smmu_device_cfg_probe._entry.101, section ".printk_index", align 4
@arm_smmu_device_cfg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&smmu->stream_map_mutex\00", [40 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe.__key.105 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&smmu->global_sync_lock\00", [40 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.70, ptr @.str.5, i32 1803, ptr @.str.109, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"SMMU address space size (0x%x) differs from mapped region size (0x%x)!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.110 = internal global ptr @arm_smmu_device_cfg_probe._entry.107, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.70, ptr @.str.5, i32 1810, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"impossible number of S2 context banks!\0A\00", [56 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.113 = internal global ptr @arm_smmu_device_cfg_probe._entry.111, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.70, ptr @.str.5, i32 1814, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09%u context banks (%u stage-2 only)\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.116 = internal global ptr @arm_smmu_device_cfg_probe._entry.114, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.70, ptr @.str.5, i32 1839, ptr @.str.109, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set DMA mask for table walker\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.119 = internal global ptr @arm_smmu_device_cfg_probe._entry.117, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.70, ptr @.str.5, i32 1878, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\09Supported page sizes: 0x%08lx\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.122 = internal global ptr @arm_smmu_device_cfg_probe._entry.120, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.70, ptr @.str.5, i32 1883, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09Stage-1: %lu-bit VA -> %lu-bit IPA\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.125 = internal global ptr @arm_smmu_device_cfg_probe._entry.123, section ".printk_index", align 4
@arm_smmu_device_cfg_probe._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.70, ptr @.str.5, i32 1887, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09Stage-2: %lu-bit IPA -> %lu-bit PA\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_smmu_device_cfg_probe._entry_ptr.128 = internal global ptr @arm_smmu_device_cfg_probe._entry.126, section ".printk_index", align 4
@arm_smmu_global_fault.rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.129, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rs.lock\00", [24 x i8] zeroinitializer }, align 32
@__func__.arm_smmu_global_fault = private unnamed_addr constant [22 x i8] c"arm_smmu_global_fault\00", align 1
@arm_smmu_global_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @__func__.arm_smmu_global_fault, ptr @.str.5, i32 459, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"Blocked unknown Stream ID 0x%hx; boot with \22arm-smmu.disable_bypass=0\22 to allow, but this may have security implications\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_smmu_global_fault._entry_ptr = internal global ptr @arm_smmu_global_fault._entry, section ".printk_index", align 4
@arm_smmu_global_fault._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @__func__.arm_smmu_global_fault, ptr @.str.5, i32 462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unexpected global fault, this could be serious\0A\00", [48 x i8] zeroinitializer }, align 32
@arm_smmu_global_fault._entry_ptr.133 = internal global ptr @arm_smmu_global_fault._entry.131, section ".printk_index", align 4
@arm_smmu_global_fault._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @__func__.arm_smmu_global_fault, ptr @.str.5, i32 465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\09GFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_smmu_global_fault._entry_ptr.136 = internal global ptr @arm_smmu_global_fault._entry.134, section ".printk_index", align 4
@arm_smmu_device_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 2237, ptr @.str.71, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disabling translation\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm_smmu_device_remove\00", [41 x i8] zeroinitializer }, align 32
@arm_smmu_device_remove._entry_ptr = internal global ptr @arm_smmu_device_remove._entry, section ".printk_index", align 4
@smmu_generic_v1 = internal constant { %struct.arm_smmu_match_data, [24 x i8] } zeroinitializer, align 32
@smmu_generic_v2 = internal constant { %struct.arm_smmu_match_data, [24 x i8] } { %struct.arm_smmu_match_data { i32 2, i32 0 }, [24 x i8] zeroinitializer }, align 32
@arm_mmu401 = internal constant { %struct.arm_smmu_match_data, [24 x i8] } { %struct.arm_smmu_match_data { i32 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@arm_mmu500 = internal constant { %struct.arm_smmu_match_data, [24 x i8] } { %struct.arm_smmu_match_data { i32 2, i32 1 }, [24 x i8] zeroinitializer }, align 32
@cavium_smmuv2 = internal constant { %struct.arm_smmu_match_data, [24 x i8] } { %struct.arm_smmu_match_data { i32 2, i32 2 }, [24 x i8] zeroinitializer }, align 32
@qcom_smmuv2 = internal constant { %struct.arm_smmu_match_data, [24 x i8] } { %struct.arm_smmu_match_data { i32 2, i32 3 }, [24 x i8] zeroinitializer }, align 32
@switch.table.arm_smmu_device_cfg_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 36, i32 40, i32 42, i32 44], [44 x i8] zeroinitializer }, align 32
@switch.table.arm_smmu_device_cfg_probe.139 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 36, i32 40, i32 42, i32 44], [44 x i8] zeroinitializer }, align 32
@switch.table.arm_smmu_device_cfg_probe.140 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 36, i32 40, i32 42, i32 44], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 11]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"force_stage\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 57, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"disable_bypass\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 61, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"arm_smmu_driver\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2327, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"using_legacy_binding\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"arm_smmu_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1583, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 889, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 890, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1139, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1170, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"arm_smmu_s1_tlb_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 391, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"arm_smmu_s2_tlb_ops_v2\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 397, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"arm_smmu_s2_tlb_ops_v1\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 403, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 818, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 820, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 230, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 431, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1295, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1305, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1306, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1388, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1393, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 145, i32 35 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 123, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1550, i32 43 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2329, i32 13 }
@___asan_gen_.278 = private unnamed_addr constant [18 x i8] c"arm_smmu_of_match\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1907, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant [16 x i8] c"arm_smmu_pm_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2321, i32 32 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2080, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2116, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2124, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2138, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2153, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2172, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2175, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2182, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2184, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2190, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1993, i32 41 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1995, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [22 x i8] c"using_generic_binding\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2006, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2013, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1695, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1696, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1710, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1715, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1720, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1725, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1732, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1743, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1746, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1761, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1772, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1784, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1785, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1801, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1810, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1813, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1838, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1877, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1882, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1886, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 443, i32 9 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 457, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 461, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 463, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 2237, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant [16 x i8] c"smmu_generic_v1\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1900, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant [16 x i8] c"smmu_generic_v2\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1901, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [11 x i8] c"arm_mmu401\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1902, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [11 x i8] c"arm_mmu500\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1903, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant [14 x i8] c"cavium_smmuv2\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1904, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant [12 x i8] c"qcom_smmuv2\00", align 1
@___asan_gen_.553 = private constant [41 x i8] c"../drivers/iommu/arm/arm-smmu/arm-smmu.c\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.553, i32 1905, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant [39 x i8] c"switch.table.arm_smmu_device_cfg_probe\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [43 x i8] c"switch.table.arm_smmu_device_cfg_probe.139\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [43 x i8] c"switch.table.arm_smmu_device_cfg_probe.140\00", align 1
@llvm.compiler.used = appending global [200 x ptr] [ptr @__UNIQUE_ID_alias543, ptr @__UNIQUE_ID_author542, ptr @__UNIQUE_ID_description541, ptr @__UNIQUE_ID_disable_bypass366, ptr @__UNIQUE_ID_disable_bypasstype365, ptr @__UNIQUE_ID_file544, ptr @__UNIQUE_ID_force_stage364, ptr @__UNIQUE_ID_force_stagetype363, ptr @__UNIQUE_ID_license545, ptr @__arm_smmu_tlb_sync._entry, ptr @__arm_smmu_tlb_sync._entry_ptr, ptr @__exitcall_arm_smmu_driver_exit, ptr @__initcall__kmod_arm_smmu__367_196_arm_smmu_legacy_bus_init6s, ptr @__initcall__kmod_arm_smmu__540_2338_arm_smmu_driver_init6, ptr @__param_disable_bypass, ptr @__param_force_stage, ptr @arm_smmu_attach_dev._entry, ptr @arm_smmu_attach_dev._entry.8, ptr @arm_smmu_attach_dev._entry_ptr, ptr @arm_smmu_attach_dev._entry_ptr.10, ptr @arm_smmu_context_fault._entry, ptr @arm_smmu_context_fault._entry_ptr, ptr @arm_smmu_device_cfg_probe._entry, ptr @arm_smmu_device_cfg_probe._entry.101, ptr @arm_smmu_device_cfg_probe._entry.107, ptr @arm_smmu_device_cfg_probe._entry.111, ptr @arm_smmu_device_cfg_probe._entry.114, ptr @arm_smmu_device_cfg_probe._entry.117, ptr @arm_smmu_device_cfg_probe._entry.120, ptr @arm_smmu_device_cfg_probe._entry.123, ptr @arm_smmu_device_cfg_probe._entry.126, ptr @arm_smmu_device_cfg_probe._entry.72, ptr @arm_smmu_device_cfg_probe._entry.75, ptr @arm_smmu_device_cfg_probe._entry.78, ptr @arm_smmu_device_cfg_probe._entry.81, ptr @arm_smmu_device_cfg_probe._entry.84, ptr @arm_smmu_device_cfg_probe._entry.87, ptr @arm_smmu_device_cfg_probe._entry.90, ptr @arm_smmu_device_cfg_probe._entry.95, ptr @arm_smmu_device_cfg_probe._entry.98, ptr @arm_smmu_device_cfg_probe._entry_ptr, ptr @arm_smmu_device_cfg_probe._entry_ptr.100, ptr @arm_smmu_device_cfg_probe._entry_ptr.103, ptr @arm_smmu_device_cfg_probe._entry_ptr.110, ptr @arm_smmu_device_cfg_probe._entry_ptr.113, ptr @arm_smmu_device_cfg_probe._entry_ptr.116, ptr @arm_smmu_device_cfg_probe._entry_ptr.119, ptr @arm_smmu_device_cfg_probe._entry_ptr.122, ptr @arm_smmu_device_cfg_probe._entry_ptr.125, ptr @arm_smmu_device_cfg_probe._entry_ptr.128, ptr @arm_smmu_device_cfg_probe._entry_ptr.74, ptr @arm_smmu_device_cfg_probe._entry_ptr.77, ptr @arm_smmu_device_cfg_probe._entry_ptr.80, ptr @arm_smmu_device_cfg_probe._entry_ptr.83, ptr @arm_smmu_device_cfg_probe._entry_ptr.86, ptr @arm_smmu_device_cfg_probe._entry_ptr.89, ptr @arm_smmu_device_cfg_probe._entry_ptr.92, ptr @arm_smmu_device_cfg_probe._entry_ptr.97, ptr @arm_smmu_device_dt_probe._entry, ptr @arm_smmu_device_dt_probe._entry.62, ptr @arm_smmu_device_dt_probe._entry.66, ptr @arm_smmu_device_dt_probe._entry_ptr, ptr @arm_smmu_device_dt_probe._entry_ptr.64, ptr @arm_smmu_device_dt_probe._entry_ptr.68, ptr @arm_smmu_device_probe._entry, ptr @arm_smmu_device_probe._entry.36, ptr @arm_smmu_device_probe._entry.39, ptr @arm_smmu_device_probe._entry.42, ptr @arm_smmu_device_probe._entry.45, ptr @arm_smmu_device_probe._entry.49, ptr @arm_smmu_device_probe._entry.53, ptr @arm_smmu_device_probe._entry.56, ptr @arm_smmu_device_probe._entry_ptr, ptr @arm_smmu_device_probe._entry_ptr.38, ptr @arm_smmu_device_probe._entry_ptr.41, ptr @arm_smmu_device_probe._entry_ptr.44, ptr @arm_smmu_device_probe._entry_ptr.47, ptr @arm_smmu_device_probe._entry_ptr.51, ptr @arm_smmu_device_probe._entry_ptr.55, ptr @arm_smmu_device_probe._entry_ptr.58, ptr @arm_smmu_device_remove._entry, ptr @arm_smmu_device_remove._entry_ptr, ptr @arm_smmu_driver_exit, ptr @arm_smmu_global_fault._entry, ptr @arm_smmu_global_fault._entry.131, ptr @arm_smmu_global_fault._entry.134, ptr @arm_smmu_global_fault._entry_ptr, ptr @arm_smmu_global_fault._entry_ptr.133, ptr @arm_smmu_global_fault._entry_ptr.136, ptr @arm_smmu_init_domain_context._entry, ptr @arm_smmu_init_domain_context._entry_ptr, ptr @arm_smmu_iova_to_phys_hard._entry, ptr @arm_smmu_iova_to_phys_hard._entry.19, ptr @arm_smmu_iova_to_phys_hard._entry.22, ptr @arm_smmu_iova_to_phys_hard._entry_ptr, ptr @arm_smmu_iova_to_phys_hard._entry_ptr.21, ptr @arm_smmu_iova_to_phys_hard._entry_ptr.24, ptr @arm_smmu_probe_device._entry, ptr @arm_smmu_probe_device._entry.27, ptr @arm_smmu_probe_device._entry_ptr, ptr @arm_smmu_probe_device._entry_ptr.29, ptr @force_stage, ptr @disable_bypass, ptr @arm_smmu_driver, ptr @using_legacy_binding, ptr @arm_smmu_ops, ptr @arm_smmu_domain_alloc.__key, ptr @.str, ptr @arm_smmu_domain_alloc.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @arm_smmu_s1_tlb_ops, ptr @arm_smmu_s2_tlb_ops_v2, ptr @arm_smmu_s2_tlb_ops_v1, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @arm_smmu_context_fault._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @arm_smmu_of_match, ptr @arm_smmu_pm_ops, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @using_generic_binding, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @arm_smmu_device_cfg_probe.__key, ptr @.str.104, ptr @arm_smmu_device_cfg_probe.__key.105, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @arm_smmu_global_fault.rs, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @smmu_generic_v1, ptr @smmu_generic_v2, ptr @arm_mmu401, ptr @arm_mmu500, ptr @cavium_smmuv2, ptr @qcom_smmuv2, ptr @switch.table.arm_smmu_device_cfg_probe, ptr @switch.table.arm_smmu_device_cfg_probe.139, ptr @switch.table.arm_smmu_device_cfg_probe.140], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_stage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_bypass to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @using_legacy_binding to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_domain_alloc.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_attach_dev._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_s1_tlb_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_s2_tlb_ops_v2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_s2_tlb_ops_v1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_init_domain_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_context_fault._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_context_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_iova_to_phys_hard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_iova_to_phys_hard._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_iova_to_phys_hard._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_probe_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_probe_device._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_dt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @using_generic_binding to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_dt_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_dt_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe.__key.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_cfg_probe._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_global_fault.rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_global_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_global_fault._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_global_fault._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_smmu_device_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smmu_generic_v1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smmu_generic_v2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_mmu401 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_mmu500 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cavium_smmuv2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smmuv2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arm_smmu_device_cfg_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arm_smmu_device_cfg_probe.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arm_smmu_device_cfg_probe.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_legacy_bus_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b1, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @arm_smmu_bus_init(ptr noundef nonnull @arm_smmu_ops)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_smmu_write_context_bank(ptr noundef %smmu, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cbs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 11
  %0 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbs, align 4
  %arrayidx = getelementptr %struct.arm_smmu_cb, ptr %1, i32 %idx
  %cfg1 = getelementptr %struct.arm_smmu_cb, ptr %1, i32 %idx, i32 3
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %4 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numpage, align 4
  %add = add i32 %5, %idx
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %6 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef %smmu, i32 noundef %add, i32 noundef 0, i32 noundef 0) #12
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %12 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #12, !srcloc !296
  br label %cleanup

if.end:                                           ; preds = %entry
  %cbar = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %cbar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cbar, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  %version = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 5
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.not = icmp eq i32 %17, 0
  br i1 %cmp2.not, label %if.end.do.end53_crit_edge, label %if.then3

if.end.do.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

if.then3:                                         ; preds = %if.end
  %fmt = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp4 = icmp eq i32 %19, 1
  %. = zext i1 %cmp4 to i32
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  %and = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then3.if.end27_crit_edge, label %do.body12

if.then3.if.end27_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.body12:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %22 = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  %conv25 = zext i16 %24 to i32
  %shl = shl nuw i32 %conv25, 16
  %or = or i32 %shl, %.
  br label %if.end27

if.end27:                                         ; preds = %do.body12, %if.then3.if.end27_crit_edge
  %reg.1 = phi i32 [ %or, %do.body12 ], [ %., %if.then3.if.end27_crit_edge ]
  %shl28 = shl i32 %idx, 2
  %add29 = add i32 %shl28, 2048
  %impl.i327 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %25 = ptrtoint ptr %impl.i327 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %impl.i327, align 4
  %tobool.not.i328 = icmp eq ptr %26, null
  br i1 %tobool.not.i328, label %if.end27.if.else.i337_crit_edge, label %land.lhs.true.i331

if.end27.if.else.i337_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i337

land.lhs.true.i331:                               ; preds = %if.end27
  %write_reg.i329 = getelementptr inbounds %struct.arm_smmu_impl, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_reg.i329 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg.i329, align 4
  %tobool2.not.i330 = icmp eq ptr %28, null
  br i1 %tobool2.not.i330, label %land.lhs.true.i331.if.else.i337_crit_edge, label %if.then.i332, !prof !295

land.lhs.true.i331.if.else.i337_crit_edge:        ; preds = %land.lhs.true.i331
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i337

if.then.i332:                                     ; preds = %land.lhs.true.i331
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %28(ptr noundef %smmu, i32 noundef 1, i32 noundef %add29, i32 noundef %reg.1) #12
  br label %do.end53

if.else.i337:                                     ; preds = %land.lhs.true.i331.if.else.i337_crit_edge, %if.end27.if.else.i337_crit_edge
  %29 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #12
  %base.i.i333 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %30 = ptrtoint ptr %base.i.i333 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i333, align 4
  %pgshift.i.i334 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %32 = ptrtoint ptr %pgshift.i.i334 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pgshift.i.i334, align 4
  %shl.i.i335 = shl nuw i32 1, %33
  %add.ptr.i.i336 = getelementptr i8, ptr %31, i32 %shl.i.i335
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i336, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #12, !srcloc !296
  br label %do.end53

do.end53:                                         ; preds = %if.else.i337, %if.then.i332, %if.end.do.end53_crit_edge
  %34 = ptrtoint ptr %cbar to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cbar, align 4
  %shl56 = shl i32 %35, 16
  %and57 = and i32 %shl56, 196608
  %36 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp59 = icmp ult i32 %37, 2
  br i1 %cmp59, label %do.body68, label %do.end53.if.end91_crit_edge

do.end53.if.end91_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

do.body68:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  %irptndx = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %irptndx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %irptndx, align 1
  %conv87 = zext i8 %39 to i32
  %shl88 = shl nuw i32 %conv87, 24
  %or90 = or i32 %shl88, %and57
  br label %if.end91

if.end91:                                         ; preds = %do.body68, %do.end53.if.end91_crit_edge
  %reg.2 = phi i32 [ %or90, %do.body68 ], [ %and57, %do.end53.if.end91_crit_edge ]
  br i1 %cmp.not, label %if.else128, label %do.end108

do.end108:                                        ; preds = %if.end91
  %or127 = or i32 %reg.2, 62208
  %shl162.c326 = shl i32 %idx, 2
  %impl.i339 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %40 = ptrtoint ptr %impl.i339 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %impl.i339, align 4
  %tobool.not.i340 = icmp eq ptr %41, null
  br i1 %tobool.not.i340, label %do.end108.if.else.i350_crit_edge, label %land.lhs.true.i343

do.end108.if.else.i350_crit_edge:                 ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i350

land.lhs.true.i343:                               ; preds = %do.end108
  %write_reg.i341 = getelementptr inbounds %struct.arm_smmu_impl, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_reg.i341 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i341, align 4
  %tobool2.not.i342 = icmp eq ptr %43, null
  br i1 %tobool2.not.i342, label %land.lhs.true.i343.if.else.i350_crit_edge, label %if.then.i344, !prof !295

land.lhs.true.i343.if.else.i350_crit_edge:        ; preds = %land.lhs.true.i343
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i350

if.then.i344:                                     ; preds = %land.lhs.true.i343
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %43(ptr noundef %smmu, i32 noundef 1, i32 noundef %shl162.c326, i32 noundef %or127) #12
  br label %arm_smmu_writel.exit351

if.else.i350:                                     ; preds = %land.lhs.true.i343.if.else.i350_crit_edge, %do.end108.if.else.i350_crit_edge
  %44 = tail call i32 @llvm.bswap.i32(i32 %or127) #12
  %base.i.i345 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %45 = ptrtoint ptr %base.i.i345 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i345, align 4
  %pgshift.i.i346 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %47 = ptrtoint ptr %pgshift.i.i346 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pgshift.i.i346, align 4
  %shl.i.i347 = shl nuw i32 1, %48
  %add.ptr.i.i348 = getelementptr i8, ptr %46, i32 %shl.i.i347
  %add.ptr.i349 = getelementptr i8, ptr %add.ptr.i.i348, i32 %shl162.c326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349, i32 %44) #12, !srcloc !296
  br label %arm_smmu_writel.exit351

arm_smmu_writel.exit351:                          ; preds = %if.else.i350, %if.then.i344
  %49 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp167.not = icmp eq i32 %50, 0
  br i1 %cmp167.not, label %arm_smmu_writel.exit351.if.end173_crit_edge, label %if.then169

arm_smmu_writel.exit351.if.end173_crit_edge:      ; preds = %arm_smmu_writel.exit351
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.else128:                                       ; preds = %if.end91
  %features129 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %51 = ptrtoint ptr %features129 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %features129, align 4
  %and130 = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.end154, label %if.end173.critedge

do.end154:                                        ; preds = %if.else128
  %53 = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 2
  %56 = and i16 %55, 255
  %and158 = zext i16 %56 to i32
  %or159 = or i32 %reg.2, %and158
  %shl162.c325 = shl i32 %idx, 2
  %impl.i352 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %57 = ptrtoint ptr %impl.i352 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %impl.i352, align 4
  %tobool.not.i353 = icmp eq ptr %58, null
  br i1 %tobool.not.i353, label %do.end154.if.else.i363_crit_edge, label %land.lhs.true.i356

do.end154.if.else.i363_crit_edge:                 ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i363

land.lhs.true.i356:                               ; preds = %do.end154
  %write_reg.i354 = getelementptr inbounds %struct.arm_smmu_impl, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_reg.i354 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_reg.i354, align 4
  %tobool2.not.i355 = icmp eq ptr %60, null
  br i1 %tobool2.not.i355, label %land.lhs.true.i356.if.else.i363_crit_edge, label %if.then.i357, !prof !295

land.lhs.true.i356.if.else.i363_crit_edge:        ; preds = %land.lhs.true.i356
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i363

if.then.i357:                                     ; preds = %land.lhs.true.i356
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %60(ptr noundef %smmu, i32 noundef 1, i32 noundef %shl162.c325, i32 noundef %or159) #12
  br label %if.end173

if.else.i363:                                     ; preds = %land.lhs.true.i356.if.else.i363_crit_edge, %do.end154.if.else.i363_crit_edge
  %61 = tail call i32 @llvm.bswap.i32(i32 %or159) #12
  %base.i.i358 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %62 = ptrtoint ptr %base.i.i358 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i358, align 4
  %pgshift.i.i359 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %64 = ptrtoint ptr %pgshift.i.i359 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pgshift.i.i359, align 4
  %shl.i.i360 = shl nuw i32 1, %65
  %add.ptr.i.i361 = getelementptr i8, ptr %63, i32 %shl.i.i360
  %add.ptr.i362 = getelementptr i8, ptr %add.ptr.i.i361, i32 %shl162.c325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362, i32 %61) #12, !srcloc !296
  br label %if.end173

if.then169:                                       ; preds = %arm_smmu_writel.exit351
  %numpage170 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %66 = ptrtoint ptr %numpage170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %numpage170, align 4
  %add171 = add i32 %67, %idx
  %arrayidx172 = getelementptr %struct.arm_smmu_cb, ptr %1, i32 %idx, i32 1, i32 1
  %68 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx172, align 4
  %70 = ptrtoint ptr %impl.i339 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %impl.i339, align 4
  %tobool.not.i366 = icmp eq ptr %71, null
  br i1 %tobool.not.i366, label %if.then169.if.else.i376_crit_edge, label %land.lhs.true.i369

if.then169.if.else.i376_crit_edge:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i376

land.lhs.true.i369:                               ; preds = %if.then169
  %write_reg.i367 = getelementptr inbounds %struct.arm_smmu_impl, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_reg.i367 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg.i367, align 4
  %tobool2.not.i368 = icmp eq ptr %73, null
  br i1 %tobool2.not.i368, label %land.lhs.true.i369.if.else.i376_crit_edge, label %if.then.i370, !prof !295

land.lhs.true.i369.if.else.i376_crit_edge:        ; preds = %land.lhs.true.i369
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i376

if.then.i370:                                     ; preds = %land.lhs.true.i369
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %73(ptr noundef %smmu, i32 noundef %add171, i32 noundef 16, i32 noundef %69) #12
  br label %if.end173

if.else.i376:                                     ; preds = %land.lhs.true.i369.if.else.i376_crit_edge, %if.then169.if.else.i376_crit_edge
  %74 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  %base.i.i371 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %75 = ptrtoint ptr %base.i.i371 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i371, align 4
  %pgshift.i.i372 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %77 = ptrtoint ptr %pgshift.i.i372 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pgshift.i.i372, align 4
  %shl.i.i373 = shl i32 %add171, %78
  %add.ptr.i.i374 = getelementptr i8, ptr %76, i32 %shl.i.i373
  %add.ptr.i375 = getelementptr i8, ptr %add.ptr.i.i374, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i375, i32 %74) #12, !srcloc !296
  br label %if.end173

if.end173.critedge:                               ; preds = %if.else128
  %shl162.c = shl i32 %idx, 2
  %impl.i378 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %79 = ptrtoint ptr %impl.i378 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %impl.i378, align 4
  %tobool.not.i379 = icmp eq ptr %80, null
  br i1 %tobool.not.i379, label %if.end173.critedge.if.else.i389_crit_edge, label %land.lhs.true.i382

if.end173.critedge.if.else.i389_crit_edge:        ; preds = %if.end173.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i389

land.lhs.true.i382:                               ; preds = %if.end173.critedge
  %write_reg.i380 = getelementptr inbounds %struct.arm_smmu_impl, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_reg.i380 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_reg.i380, align 4
  %tobool2.not.i381 = icmp eq ptr %82, null
  br i1 %tobool2.not.i381, label %land.lhs.true.i382.if.else.i389_crit_edge, label %if.then.i383, !prof !295

land.lhs.true.i382.if.else.i389_crit_edge:        ; preds = %land.lhs.true.i382
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i389

if.then.i383:                                     ; preds = %land.lhs.true.i382
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %82(ptr noundef %smmu, i32 noundef 1, i32 noundef %shl162.c, i32 noundef %reg.2) #12
  br label %if.end173

if.else.i389:                                     ; preds = %land.lhs.true.i382.if.else.i389_crit_edge, %if.end173.critedge.if.else.i389_crit_edge
  %83 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #12
  %base.i.i384 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %84 = ptrtoint ptr %base.i.i384 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i384, align 4
  %pgshift.i.i385 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %86 = ptrtoint ptr %pgshift.i.i385 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pgshift.i.i385, align 4
  %shl.i.i386 = shl nuw i32 1, %87
  %add.ptr.i.i387 = getelementptr i8, ptr %85, i32 %shl.i.i386
  %add.ptr.i388 = getelementptr i8, ptr %add.ptr.i.i387, i32 %shl162.c
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388, i32 %83) #12, !srcloc !296
  br label %if.end173

if.end173:                                        ; preds = %if.else.i389, %if.then.i383, %if.else.i376, %if.then.i370, %if.else.i363, %if.then.i357, %arm_smmu_writel.exit351.if.end173_crit_edge
  %numpage174 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %88 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %numpage174, align 4
  %add175 = add i32 %89, %idx
  %tcr176 = getelementptr %struct.arm_smmu_cb, ptr %1, i32 %idx, i32 1
  %90 = ptrtoint ptr %tcr176 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tcr176, align 8
  %impl.i391 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %92 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i392 = icmp eq ptr %93, null
  br i1 %tobool.not.i392, label %if.end173.if.else.i402_crit_edge, label %land.lhs.true.i395

if.end173.if.else.i402_crit_edge:                 ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i402

land.lhs.true.i395:                               ; preds = %if.end173
  %write_reg.i393 = getelementptr inbounds %struct.arm_smmu_impl, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %write_reg.i393 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_reg.i393, align 4
  %tobool2.not.i394 = icmp eq ptr %95, null
  br i1 %tobool2.not.i394, label %land.lhs.true.i395.if.else.i402_crit_edge, label %if.then.i396, !prof !295

land.lhs.true.i395.if.else.i402_crit_edge:        ; preds = %land.lhs.true.i395
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i402

if.then.i396:                                     ; preds = %land.lhs.true.i395
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %95(ptr noundef %smmu, i32 noundef %add175, i32 noundef 48, i32 noundef %91) #12
  br label %arm_smmu_writel.exit403

if.else.i402:                                     ; preds = %land.lhs.true.i395.if.else.i402_crit_edge, %if.end173.if.else.i402_crit_edge
  %96 = tail call i32 @llvm.bswap.i32(i32 %91) #12
  %base.i.i397 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %97 = ptrtoint ptr %base.i.i397 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i397, align 4
  %pgshift.i.i398 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %99 = ptrtoint ptr %pgshift.i.i398 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pgshift.i.i398, align 4
  %shl.i.i399 = shl i32 %add175, %100
  %add.ptr.i.i400 = getelementptr i8, ptr %98, i32 %shl.i.i399
  %add.ptr.i401 = getelementptr i8, ptr %add.ptr.i.i400, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 %96) #12, !srcloc !296
  br label %arm_smmu_writel.exit403

arm_smmu_writel.exit403:                          ; preds = %if.else.i402, %if.then.i396
  %fmt178 = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 4
  %101 = ptrtoint ptr %fmt178 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fmt178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp179 = icmp eq i32 %102, 3
  %103 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %numpage174, align 4
  %add183 = add i32 %104, %idx
  br i1 %cmp179, label %if.then181, label %if.else194

if.then181:                                       ; preds = %arm_smmu_writel.exit403
  %105 = getelementptr inbounds %struct.arm_smmu_cfg, ptr %3, i32 0, i32 2
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %105, align 2
  %conv184 = zext i16 %107 to i32
  %108 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i405 = icmp eq ptr %109, null
  br i1 %tobool.not.i405, label %if.then181.if.else.i415_crit_edge, label %land.lhs.true.i408

if.then181.if.else.i415_crit_edge:                ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i415

land.lhs.true.i408:                               ; preds = %if.then181
  %write_reg.i406 = getelementptr inbounds %struct.arm_smmu_impl, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_reg.i406 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_reg.i406, align 4
  %tobool2.not.i407 = icmp eq ptr %111, null
  br i1 %tobool2.not.i407, label %land.lhs.true.i408.if.else.i415_crit_edge, label %if.then.i409, !prof !295

land.lhs.true.i408.if.else.i415_crit_edge:        ; preds = %land.lhs.true.i408
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i415

if.then.i409:                                     ; preds = %land.lhs.true.i408
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %111(ptr noundef %smmu, i32 noundef %add183, i32 noundef 52, i32 noundef %conv184) #12
  br label %arm_smmu_writel.exit416

if.else.i415:                                     ; preds = %land.lhs.true.i408.if.else.i415_crit_edge, %if.then181.if.else.i415_crit_edge
  %112 = tail call i32 @llvm.bswap.i32(i32 %conv184) #12
  %base.i.i410 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %113 = ptrtoint ptr %base.i.i410 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i410, align 4
  %pgshift.i.i411 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %115 = ptrtoint ptr %pgshift.i.i411 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pgshift.i.i411, align 4
  %shl.i.i412 = shl i32 %add183, %116
  %add.ptr.i.i413 = getelementptr i8, ptr %114, i32 %shl.i.i412
  %add.ptr.i414 = getelementptr i8, ptr %add.ptr.i.i413, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i414, i32 %112) #12, !srcloc !296
  br label %arm_smmu_writel.exit416

arm_smmu_writel.exit416:                          ; preds = %if.else.i415, %if.then.i409
  %117 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %numpage174, align 4
  %add186 = add i32 %118, %idx
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx, align 8
  %conv188 = trunc i64 %120 to i32
  %121 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i418 = icmp eq ptr %122, null
  br i1 %tobool.not.i418, label %arm_smmu_writel.exit416.if.else.i428_crit_edge, label %land.lhs.true.i421

arm_smmu_writel.exit416.if.else.i428_crit_edge:   ; preds = %arm_smmu_writel.exit416
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i428

land.lhs.true.i421:                               ; preds = %arm_smmu_writel.exit416
  %write_reg.i419 = getelementptr inbounds %struct.arm_smmu_impl, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %write_reg.i419 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_reg.i419, align 4
  %tobool2.not.i420 = icmp eq ptr %124, null
  br i1 %tobool2.not.i420, label %land.lhs.true.i421.if.else.i428_crit_edge, label %if.then.i422, !prof !295

land.lhs.true.i421.if.else.i428_crit_edge:        ; preds = %land.lhs.true.i421
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i428

if.then.i422:                                     ; preds = %land.lhs.true.i421
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %124(ptr noundef %smmu, i32 noundef %add186, i32 noundef 32, i32 noundef %conv188) #12
  br label %arm_smmu_writel.exit429

if.else.i428:                                     ; preds = %land.lhs.true.i421.if.else.i428_crit_edge, %arm_smmu_writel.exit416.if.else.i428_crit_edge
  %125 = tail call i32 @llvm.bswap.i32(i32 %conv188) #12
  %base.i.i423 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %126 = ptrtoint ptr %base.i.i423 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i.i423, align 4
  %pgshift.i.i424 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %128 = ptrtoint ptr %pgshift.i.i424 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pgshift.i.i424, align 4
  %shl.i.i425 = shl i32 %add186, %129
  %add.ptr.i.i426 = getelementptr i8, ptr %127, i32 %shl.i.i425
  %add.ptr.i427 = getelementptr i8, ptr %add.ptr.i.i426, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427, i32 %125) #12, !srcloc !296
  br label %arm_smmu_writel.exit429

arm_smmu_writel.exit429:                          ; preds = %if.else.i428, %if.then.i422
  %130 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %numpage174, align 4
  %add190 = add i32 %131, %idx
  %arrayidx192 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx192, align 8
  %conv193 = trunc i64 %133 to i32
  %134 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i431 = icmp eq ptr %135, null
  br i1 %tobool.not.i431, label %arm_smmu_writel.exit429.if.else.i441_crit_edge, label %land.lhs.true.i434

arm_smmu_writel.exit429.if.else.i441_crit_edge:   ; preds = %arm_smmu_writel.exit429
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i441

land.lhs.true.i434:                               ; preds = %arm_smmu_writel.exit429
  %write_reg.i432 = getelementptr inbounds %struct.arm_smmu_impl, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %write_reg.i432 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_reg.i432, align 4
  %tobool2.not.i433 = icmp eq ptr %137, null
  br i1 %tobool2.not.i433, label %land.lhs.true.i434.if.else.i441_crit_edge, label %if.then.i435, !prof !295

land.lhs.true.i434.if.else.i441_crit_edge:        ; preds = %land.lhs.true.i434
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i441

if.then.i435:                                     ; preds = %land.lhs.true.i434
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %137(ptr noundef %smmu, i32 noundef %add190, i32 noundef 40, i32 noundef %conv193) #12
  br label %arm_smmu_writel.exit442

if.else.i441:                                     ; preds = %land.lhs.true.i434.if.else.i441_crit_edge, %arm_smmu_writel.exit429.if.else.i441_crit_edge
  %138 = tail call i32 @llvm.bswap.i32(i32 %conv193) #12
  %base.i.i436 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %139 = ptrtoint ptr %base.i.i436 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i436, align 4
  %pgshift.i.i437 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %141 = ptrtoint ptr %pgshift.i.i437 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pgshift.i.i437, align 4
  %shl.i.i438 = shl i32 %add190, %142
  %add.ptr.i.i439 = getelementptr i8, ptr %140, i32 %shl.i.i438
  %add.ptr.i440 = getelementptr i8, ptr %add.ptr.i.i439, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i440, i32 %138) #12, !srcloc !296
  br label %arm_smmu_writel.exit442

arm_smmu_writel.exit442:                          ; preds = %if.else.i441, %if.then.i435
  br i1 %cmp.not, label %arm_smmu_writel.exit442.if.end216_crit_edge, label %arm_smmu_writel.exit442.if.then208_crit_edge

arm_smmu_writel.exit442.if.then208_crit_edge:     ; preds = %arm_smmu_writel.exit442
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then208

arm_smmu_writel.exit442.if.end216_crit_edge:      ; preds = %arm_smmu_writel.exit442
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.else194:                                       ; preds = %arm_smmu_writel.exit403
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx, align 8
  %145 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i444 = icmp eq ptr %146, null
  br i1 %tobool.not.i444, label %if.else194.if.else.i453_crit_edge, label %land.lhs.true.i446

if.else194.if.else.i453_crit_edge:                ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i453

land.lhs.true.i446:                               ; preds = %if.else194
  %write_reg64.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %write_reg64.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write_reg64.i, align 4
  %tobool2.not.i445 = icmp eq ptr %148, null
  br i1 %tobool2.not.i445, label %land.lhs.true.i446.if.else.i453_crit_edge, label %if.then.i447, !prof !295

land.lhs.true.i446.if.else.i453_crit_edge:        ; preds = %land.lhs.true.i446
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i453

if.then.i447:                                     ; preds = %land.lhs.true.i446
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %148(ptr noundef %smmu, i32 noundef %add183, i32 noundef 32, i64 noundef %144) #12
  br label %arm_smmu_writeq.exit

if.else.i453:                                     ; preds = %land.lhs.true.i446.if.else.i453_crit_edge, %if.else194.if.else.i453_crit_edge
  %base.i.i448 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %149 = ptrtoint ptr %base.i.i448 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i448, align 4
  %pgshift.i.i449 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %151 = ptrtoint ptr %pgshift.i.i449 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pgshift.i.i449, align 4
  %shl.i.i450 = shl i32 %add183, %152
  %add.ptr.i.i451 = getelementptr i8, ptr %150, i32 %shl.i.i450
  %add.ptr.i452 = getelementptr i8, ptr %add.ptr.i.i451, i32 32
  %shr.i.i = lshr i64 %144, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %153 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #12
  %add.ptr.i15.i = getelementptr i8, ptr %add.ptr.i452, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %153) #12, !srcloc !296
  %conv1.i.i = trunc i64 %144 to i32
  %154 = tail call i32 @llvm.bswap.i32(i32 %conv1.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i452, i32 %154) #12, !srcloc !296
  br label %arm_smmu_writeq.exit

arm_smmu_writeq.exit:                             ; preds = %if.else.i453, %if.then.i447
  br i1 %cmp.not, label %arm_smmu_writeq.exit.if.end216_crit_edge, label %if.then200

arm_smmu_writeq.exit.if.end216_crit_edge:         ; preds = %arm_smmu_writeq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.then200:                                       ; preds = %arm_smmu_writeq.exit
  %155 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %numpage174, align 4
  %add202 = add i32 %156, %idx
  %arrayidx204 = getelementptr [2 x i64], ptr %arrayidx, i32 0, i32 1
  %157 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %arrayidx204, align 8
  %159 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i455 = icmp eq ptr %160, null
  br i1 %tobool.not.i455, label %if.then200.if.else.i469_crit_edge, label %land.lhs.true.i458

if.then200.if.else.i469_crit_edge:                ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i469

land.lhs.true.i458:                               ; preds = %if.then200
  %write_reg64.i456 = getelementptr inbounds %struct.arm_smmu_impl, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %write_reg64.i456 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write_reg64.i456, align 4
  %tobool2.not.i457 = icmp eq ptr %162, null
  br i1 %tobool2.not.i457, label %land.lhs.true.i458.if.else.i469_crit_edge, label %if.then.i459, !prof !295

land.lhs.true.i458.if.else.i469_crit_edge:        ; preds = %land.lhs.true.i458
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i469

if.then.i459:                                     ; preds = %land.lhs.true.i458
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %162(ptr noundef %smmu, i32 noundef %add202, i32 noundef 40, i64 noundef %158) #12
  br label %if.then208

if.else.i469:                                     ; preds = %land.lhs.true.i458.if.else.i469_crit_edge, %if.then200.if.else.i469_crit_edge
  %base.i.i460 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %163 = ptrtoint ptr %base.i.i460 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i.i460, align 4
  %pgshift.i.i461 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %165 = ptrtoint ptr %pgshift.i.i461 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pgshift.i.i461, align 4
  %shl.i.i462 = shl i32 %add202, %166
  %add.ptr.i.i463 = getelementptr i8, ptr %164, i32 %shl.i.i462
  %add.ptr.i464 = getelementptr i8, ptr %add.ptr.i.i463, i32 40
  %shr.i.i465 = lshr i64 %158, 32
  %conv.i.i466 = trunc i64 %shr.i.i465 to i32
  %167 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i466) #12
  %add.ptr.i15.i467 = getelementptr i8, ptr %add.ptr.i464, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i467, i32 %167) #12, !srcloc !296
  %conv1.i.i468 = trunc i64 %158 to i32
  %168 = tail call i32 @llvm.bswap.i32(i32 %conv1.i.i468) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i464, i32 %168) #12, !srcloc !296
  br label %if.then208

if.then208:                                       ; preds = %if.else.i469, %if.then.i459, %arm_smmu_writel.exit442.if.then208_crit_edge
  %169 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %numpage174, align 4
  %add210 = add i32 %170, %idx
  %mair = getelementptr %struct.arm_smmu_cb, ptr %1, i32 %idx, i32 2
  %171 = ptrtoint ptr %mair to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mair, align 8
  %173 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i472 = icmp eq ptr %174, null
  br i1 %tobool.not.i472, label %if.then208.if.else.i482_crit_edge, label %land.lhs.true.i475

if.then208.if.else.i482_crit_edge:                ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i482

land.lhs.true.i475:                               ; preds = %if.then208
  %write_reg.i473 = getelementptr inbounds %struct.arm_smmu_impl, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %write_reg.i473 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write_reg.i473, align 4
  %tobool2.not.i474 = icmp eq ptr %176, null
  br i1 %tobool2.not.i474, label %land.lhs.true.i475.if.else.i482_crit_edge, label %if.then.i476, !prof !295

land.lhs.true.i475.if.else.i482_crit_edge:        ; preds = %land.lhs.true.i475
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i482

if.then.i476:                                     ; preds = %land.lhs.true.i475
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %176(ptr noundef %smmu, i32 noundef %add210, i32 noundef 56, i32 noundef %172) #12
  br label %arm_smmu_writel.exit483

if.else.i482:                                     ; preds = %land.lhs.true.i475.if.else.i482_crit_edge, %if.then208.if.else.i482_crit_edge
  %177 = tail call i32 @llvm.bswap.i32(i32 %172) #12
  %base.i.i477 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %178 = ptrtoint ptr %base.i.i477 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i477, align 4
  %pgshift.i.i478 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %180 = ptrtoint ptr %pgshift.i.i478 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pgshift.i.i478, align 4
  %shl.i.i479 = shl i32 %add210, %181
  %add.ptr.i.i480 = getelementptr i8, ptr %179, i32 %shl.i.i479
  %add.ptr.i481 = getelementptr i8, ptr %add.ptr.i.i480, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i481, i32 %177) #12, !srcloc !296
  br label %arm_smmu_writel.exit483

arm_smmu_writel.exit483:                          ; preds = %if.else.i482, %if.then.i476
  %182 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %numpage174, align 4
  %add213 = add i32 %183, %idx
  %arrayidx215 = getelementptr %struct.arm_smmu_cb, ptr %1, i32 %idx, i32 2, i32 1
  %184 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx215, align 4
  %186 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %impl.i391, align 4
  %tobool.not.i485 = icmp eq ptr %187, null
  br i1 %tobool.not.i485, label %arm_smmu_writel.exit483.if.else.i495_crit_edge, label %land.lhs.true.i488

arm_smmu_writel.exit483.if.else.i495_crit_edge:   ; preds = %arm_smmu_writel.exit483
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i495

land.lhs.true.i488:                               ; preds = %arm_smmu_writel.exit483
  %write_reg.i486 = getelementptr inbounds %struct.arm_smmu_impl, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %write_reg.i486 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %write_reg.i486, align 4
  %tobool2.not.i487 = icmp eq ptr %189, null
  br i1 %tobool2.not.i487, label %land.lhs.true.i488.if.else.i495_crit_edge, label %if.then.i489, !prof !295

land.lhs.true.i488.if.else.i495_crit_edge:        ; preds = %land.lhs.true.i488
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i495

if.then.i489:                                     ; preds = %land.lhs.true.i488
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %189(ptr noundef %smmu, i32 noundef %add213, i32 noundef 60, i32 noundef %185) #12
  br label %if.end216

if.else.i495:                                     ; preds = %land.lhs.true.i488.if.else.i495_crit_edge, %arm_smmu_writel.exit483.if.else.i495_crit_edge
  %190 = tail call i32 @llvm.bswap.i32(i32 %185) #12
  %base.i.i490 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %191 = ptrtoint ptr %base.i.i490 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i.i490, align 4
  %pgshift.i.i491 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %193 = ptrtoint ptr %pgshift.i.i491 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pgshift.i.i491, align 4
  %shl.i.i492 = shl i32 %add213, %194
  %add.ptr.i.i493 = getelementptr i8, ptr %192, i32 %shl.i.i492
  %add.ptr.i494 = getelementptr i8, ptr %add.ptr.i.i493, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i494, i32 %190) #12, !srcloc !296
  br label %if.end216

if.end216:                                        ; preds = %if.else.i495, %if.then.i489, %arm_smmu_writeq.exit.if.end216_crit_edge, %arm_smmu_writel.exit442.if.end216_crit_edge
  %spec.select = select i1 %cmp.not, i32 119, i32 4215
  %195 = ptrtoint ptr %impl.i391 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %impl.i391, align 4
  %tobool222.not = icmp eq ptr %196, null
  br i1 %tobool222.not, label %if.else229.thread, label %land.lhs.true223

if.else229.thread:                                ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %numpage174, align 4
  %add231509 = add i32 %198, %idx
  br label %if.else.i507

land.lhs.true223:                                 ; preds = %if.end216
  %write_sctlr = getelementptr inbounds %struct.arm_smmu_impl, ptr %196, i32 0, i32 13
  %199 = ptrtoint ptr %write_sctlr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write_sctlr, align 4
  %tobool225.not = icmp eq ptr %200, null
  br i1 %tobool225.not, label %land.lhs.true.i501, label %if.then226

if.then226:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %200(ptr noundef %smmu, i32 noundef %idx, i32 noundef %spec.select) #12
  br label %cleanup

land.lhs.true.i501:                               ; preds = %land.lhs.true223
  %201 = ptrtoint ptr %numpage174 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %numpage174, align 4
  %add231 = add i32 %202, %idx
  %write_reg.i499 = getelementptr inbounds %struct.arm_smmu_impl, ptr %196, i32 0, i32 1
  %203 = ptrtoint ptr %write_reg.i499 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write_reg.i499, align 4
  %tobool2.not.i500 = icmp eq ptr %204, null
  br i1 %tobool2.not.i500, label %land.lhs.true.i501.if.else.i507_crit_edge, label %if.then.i502, !prof !295

land.lhs.true.i501.if.else.i507_crit_edge:        ; preds = %land.lhs.true.i501
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i507

if.then.i502:                                     ; preds = %land.lhs.true.i501
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %204(ptr noundef %smmu, i32 noundef %add231, i32 noundef 0, i32 noundef %spec.select) #12
  br label %cleanup

if.else.i507:                                     ; preds = %land.lhs.true.i501.if.else.i507_crit_edge, %if.else229.thread
  %add231510 = phi i32 [ %add231509, %if.else229.thread ], [ %add231, %land.lhs.true.i501.if.else.i507_crit_edge ]
  %205 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  %base.i.i503 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %206 = ptrtoint ptr %base.i.i503 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base.i.i503, align 4
  %pgshift.i.i504 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %208 = ptrtoint ptr %pgshift.i.i504 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %pgshift.i.i504, align 4
  %shl.i.i505 = shl i32 %add231510, %209
  %add.ptr.i.i506 = getelementptr i8, ptr %207, i32 %shl.i.i505
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i506, i32 %205) #12, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.else.i507, %if.then.i502, %if.then226, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arm_smmu_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @arm_smmu_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_smmu_bus_init(ptr noundef %ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #12
  br i1 %call, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @amba_bustype) #12
  br i1 %call4, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %call6 = tail call i32 @bus_set_iommu(ptr noundef nonnull @amba_bustype, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.err_reset_platform_ops_crit_edge

if.then5.err_reset_platform_ops_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_platform_ops

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %call11 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @pci_bus_type) #12
  br i1 %call11, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i32 @bus_set_iommu(ptr noundef nonnull @pci_bus_type, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.err_reset_amba_ops_crit_edge

if.then12.err_reset_amba_ops_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_reset_amba_ops

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %call18 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @fsl_mc_bus_type) #12
  br i1 %call18, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @bus_set_iommu(ptr noundef nonnull @fsl_mc_bus_type, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.cleanup_crit_edge, label %err_reset_pci_ops

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_reset_pci_ops:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 @bus_set_iommu(ptr noundef nonnull @pci_bus_type, ptr noundef null) #12
  br label %err_reset_amba_ops

err_reset_amba_ops:                               ; preds = %err_reset_pci_ops, %if.then12.err_reset_amba_ops_crit_edge
  %err.0 = phi i32 [ %call20, %err_reset_pci_ops ], [ %call13, %if.then12.err_reset_amba_ops_crit_edge ]
  %call26 = tail call i32 @bus_set_iommu(ptr noundef nonnull @amba_bustype, ptr noundef null) #12
  br label %err_reset_platform_ops

err_reset_platform_ops:                           ; preds = %err_reset_amba_ops, %if.then5.err_reset_platform_ops_crit_edge
  %err.1 = phi i32 [ %err.0, %err_reset_amba_ops ], [ %call6, %if.then5.err_reset_platform_ops_crit_edge ]
  %call27 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %err_reset_platform_ops, %if.then19.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_reset_platform_ops ], [ %call1, %if.then.cleanup_crit_edge ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @arm_smmu_capable(i32 noundef %cap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.and = and i32 %cap, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_smmu_domain_alloc(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.then [
    i32 1, label %entry.if.end6_crit_edge
    i32 4, label %entry.if.end6_crit_edge21
  ]

entry.if.end6_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %.b20 = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b20, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %type, label %lor.lhs.false.cleanup_crit_edge [
    i32 3, label %lor.lhs.false.if.end6_crit_edge
    i32 11, label %lor.lhs.false.if.end6_crit_edge22
  ]

lor.lhs.false.if.end6_crit_edge22:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge22, %entry.if.end6_crit_edge, %entry.if.end6_crit_edge21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 208) #15
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %init_mutex = getelementptr inbounds %struct.arm_smmu_domain, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %init_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @arm_smmu_domain_alloc.__key) #12
  %cb_lock = getelementptr inbounds %struct.arm_smmu_domain, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %cb_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @arm_smmu_domain_alloc.__key.1, i16 noundef signext 3) #12
  %domain = getelementptr inbounds %struct.arm_smmu_domain, ptr %call7.i.i, i32 0, i32 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %domain, %do.body ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_domain_free(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %cfg2.i = getelementptr i8, ptr %domain, i32 -156
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.arm_smmu_destroy_domain_context.exit_crit_edge, label %lor.lhs.false.i

entry.arm_smmu_destroy_domain_context.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_destroy_domain_context.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp eq i32 %3, 4
  br i1 %cmp.i, label %lor.lhs.false.i.arm_smmu_destroy_domain_context.exit_crit_edge, label %if.end.i

lor.lhs.false.i.arm_smmu_destroy_domain_context.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_destroy_domain_context.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %disable_depth.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp ult i16 %bf.load.i.i.i, 8192
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.i.if.end6.i_crit_edge

if.then.i.i.if.end6.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.arm_smmu_destroy_domain_context.exit_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.arm_smmu_destroy_domain_context.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_destroy_domain_context.exit

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_destroy_domain_context.exit

if.end6.i:                                        ; preds = %if.then.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %cbs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %cbs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cbs.i, align 4
  %10 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cfg2.i, align 4
  %idxprom.i = zext i8 %11 to i32
  %cfg7.i = getelementptr %struct.arm_smmu_cb, ptr %9, i32 %idxprom.i, i32 3
  %12 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cfg7.i, align 8
  %13 = load i8, ptr %cfg2.i, align 4
  %conv.i = zext i8 %13 to i32
  tail call void @arm_smmu_write_context_bank(ptr noundef nonnull %1, i32 noundef %conv.i) #12
  %irptndx.i = getelementptr i8, ptr %domain, i32 -155
  %14 = ptrtoint ptr %irptndx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %irptndx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp10.not.i = icmp eq i8 %15, -1
  br i1 %cmp10.not.i, label %if.end6.i.if.end16.i_crit_edge, label %if.then12.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv9.i = zext i8 %15 to i32
  %irqs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irqs.i, align 4
  %num_global_irqs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %num_global_irqs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_global_irqs.i, align 4
  %add.i = add i32 %19, %conv9.i
  %arrayidx15.i = getelementptr i32, ptr %17, i32 %add.i
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %23, i32 noundef %21, ptr noundef %domain) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end6.i.if.end16.i_crit_edge
  %pgtbl_ops.i = getelementptr i8, ptr %domain, i32 -168
  %24 = ptrtoint ptr %pgtbl_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pgtbl_ops.i, align 4
  tail call void @free_io_pgtable_ops(ptr noundef %25) #12
  %context_map.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cfg2.i, align 4
  %conv18.i = zext i8 %27 to i32
  tail call void @_clear_bit(i32 noundef %conv18.i, ptr noundef %context_map.i) #12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %disable_depth.i.i39.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 12, i32 15
  %30 = ptrtoint ptr %disable_depth.i.i39.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i40.i = load i16, ptr %disable_depth.i.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i40.i)
  %tobool.not.i.i41.i = icmp ult i16 %bf.load.i.i40.i, 8192
  br i1 %tobool.not.i.i41.i, label %if.then.i43.i, label %if.end16.i.arm_smmu_destroy_domain_context.exit_crit_edge

if.end16.i.arm_smmu_destroy_domain_context.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_destroy_domain_context.exit

if.then.i43.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i42.i = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #12
  br label %arm_smmu_destroy_domain_context.exit

arm_smmu_destroy_domain_context.exit:             ; preds = %if.then.i43.i, %if.end16.i.arm_smmu_destroy_domain_context.exit_crit_edge, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.arm_smmu_destroy_domain_context.exit_crit_edge, %lor.lhs.false.i.arm_smmu_destroy_domain_context.exit_crit_edge, %entry.arm_smmu_destroy_domain_context.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_attach_dev(ptr noundef %domain, ptr noundef %dev) #0 align 64 {
entry:
  %pgtbl_cfg.i = alloca %struct.io_pgtable_cfg, align 8
  %.compoundliteral.sroa.8.i = alloca [44 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %dev_iommu_fwspec_get.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.do.end_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.do.end_crit_edge:       ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @arm_smmu_ops
  br i1 %cmp.not, label %dev_iommu_priv_get.exit, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %dev_iommu_fwspec_get.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #16
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %lor.lhs.false
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %if.end5

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %dev_iommu_priv_get.exit
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i59, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i59:                                      ; preds = %if.end5
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i59.if.end10_crit_edge

if.then.i59.if.end10_crit_edge:                   ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.i.i:                                      ; preds = %if.then.i59
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %cleanup

if.end10:                                         ; preds = %if.then.i59.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #12
  %14 = call ptr @memset(ptr %pgtbl_cfg.i, i32 255, i32 72)
  %cfg1.i = getelementptr i8, ptr %domain, i32 -156
  %init_mutex.i = getelementptr i8, ptr %domain, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %init_mutex.i, i32 noundef 0) #12
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i61 = icmp eq ptr %16, null
  br i1 %tobool.not.i61, label %if.end.i, label %arm_smmu_init_domain_context.exit.thread101

arm_smmu_init_domain_context.exit.thread101:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %init_mutex.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  br label %if.end14

if.end.i:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i = icmp eq i32 %18, 4
  br i1 %cmp.i, label %arm_smmu_init_domain_context.exit.thread104, label %if.end5.i

arm_smmu_init_domain_context.exit.thread104:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %stage.i = getelementptr i8, ptr %domain, i32 -140
  %19 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %stage.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %9, ptr %add.ptr.i, align 4
  tail call void @mutex_unlock(ptr noundef %init_mutex.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  br label %if.end14

if.end5.i:                                        ; preds = %if.end.i
  %features.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 4
  %21 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %features.i, align 4
  %and.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %stage8.i = getelementptr i8, ptr %domain, i32 -140
  %23 = ptrtoint ptr %stage8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %stage8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  %24 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features.i, align 4
  %and11.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.if.end15.i_crit_edge

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %stage14.i = getelementptr i8, ptr %domain, i32 -140
  %26 = ptrtoint ptr %stage14.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %stage14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end9.i.if.end15.i_crit_edge
  %27 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features.i, align 4
  %and17.i = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then19.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %fmt20.i = getelementptr i8, ptr %domain, i32 -148
  %29 = ptrtoint ptr %fmt20.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %fmt20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end21.i_crit_edge
  %30 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features.i, align 4
  %and23.i = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end29.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %stage25.i = getelementptr i8, ptr %domain, i32 -140
  %32 = ptrtoint ptr %stage25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stage25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp26.i = icmp eq i32 %33, 0
  br i1 %cmp26.i, label %if.then27.i, label %land.lhs.true.i.if.end29.i_crit_edge

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %fmt28.i = getelementptr i8, ptr %domain, i32 -148
  %34 = ptrtoint ptr %fmt28.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %fmt28.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.end21.i.if.end29.i_crit_edge
  %fmt30.i = getelementptr i8, ptr %domain, i32 -148
  %35 = ptrtoint ptr %fmt30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fmt30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp31.i = icmp eq i32 %36, 0
  br i1 %cmp31.i, label %land.lhs.true32.i, label %if.end29.i.if.end42.i_crit_edge

if.end29.i.if.end42.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.lhs.true32.i:                                ; preds = %if.end29.i
  %37 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %features.i, align 4
  %and34.i = and i32 %38, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true32.i.arm_smmu_init_domain_context.exit.thread98_crit_edge, label %if.then36.i

land.lhs.true32.i.arm_smmu_init_domain_context.exit.thread98_crit_edge: ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit.thread98

if.then36.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %fmt30.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %fmt30.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then36.i, %if.end29.i.if.end42.i_crit_edge
  %40 = phi i32 [ %36, %if.end29.i.if.end42.i_crit_edge ], [ 1, %if.then36.i ]
  %stage43.i = getelementptr i8, ptr %domain, i32 -140
  %41 = ptrtoint ptr %stage43.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stage43.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %42, label %if.end42.i.arm_smmu_init_domain_context.exit.thread98_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %if.end42.i.sw.bb72.i_crit_edge
    i32 1, label %if.end42.i.sw.bb72.i_crit_edge114
  ]

if.end42.i.sw.bb72.i_crit_edge114:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb72.i

if.end42.i.sw.bb72.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb72.i

if.end42.i.arm_smmu_init_domain_context.exit.thread98_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit.thread98

sw.bb.i:                                          ; preds = %if.end42.i
  %cbar.i = getelementptr i8, ptr %domain, i32 -152
  %44 = ptrtoint ptr %cbar.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %cbar.i, align 4
  %num_s2_context_banks.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 9
  %45 = ptrtoint ptr %num_s2_context_banks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_s2_context_banks.i, align 4
  %va_size.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 19
  %47 = ptrtoint ptr %va_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %va_size.i, align 4
  %ipa_size.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 20
  %49 = ptrtoint ptr %ipa_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ipa_size.i, align 4
  %51 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %40, label %if.else57.i [
    i32 1, label %sw.bb.i.if.end71.i_crit_edge
    i32 2, label %if.then49.i
  ]

sw.bb.i.if.end71.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then49.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = tail call i32 @llvm.umin.i32(i32 %48, i32 32) #12
  %53 = tail call i32 @llvm.umin.i32(i32 %50, i32 40) #12
  br label %if.end71.i

if.else57.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = tail call i32 @llvm.umin.i32(i32 %48, i32 32) #12
  %55 = tail call i32 @llvm.umin.i32(i32 %50, i32 32) #12
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else57.i, %if.then49.i, %sw.bb.i.if.end71.i_crit_edge
  %fmt.0.i = phi i32 [ 0, %if.then49.i ], [ 4, %if.else57.i ], [ 2, %sw.bb.i.if.end71.i_crit_edge ]
  %oas.0.i = phi i32 [ %53, %if.then49.i ], [ %55, %if.else57.i ], [ %50, %sw.bb.i.if.end71.i_crit_edge ]
  %ias.0.i = phi i32 [ %52, %if.then49.i ], [ %54, %if.else57.i ], [ %48, %sw.bb.i.if.end71.i_crit_edge ]
  %flush_ops.i = getelementptr i8, ptr %domain, i32 -160
  %56 = ptrtoint ptr %flush_ops.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @arm_smmu_s1_tlb_ops, ptr %flush_ops.i, align 4
  br label %sw.epilog.i

sw.bb72.i:                                        ; preds = %if.end42.i.sw.bb72.i_crit_edge, %if.end42.i.sw.bb72.i_crit_edge114
  %cbar73.i = getelementptr i8, ptr %domain, i32 -152
  %57 = ptrtoint ptr %cbar73.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cbar73.i, align 4
  %ipa_size74.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 20
  %58 = ptrtoint ptr %ipa_size74.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ipa_size74.i, align 4
  %pa_size.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 21
  %60 = ptrtoint ptr %pa_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp76.i = icmp eq i32 %40, 1
  %62 = tail call i32 @llvm.umin.i32(i32 %59, i32 40) #12
  %63 = tail call i32 @llvm.umin.i32(i32 %61, i32 40) #12
  %fmt.1.i = select i1 %cmp76.i, i32 3, i32 1
  %oas.1.i = select i1 %cmp76.i, i32 %61, i32 %63
  %ias.1.i = select i1 %cmp76.i, i32 %59, i32 %62
  %version.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 5
  %64 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp92.i = icmp eq i32 %65, 2
  %flush_ops94.i = getelementptr i8, ptr %domain, i32 -160
  br i1 %cmp92.i, label %if.then93.i, label %if.else95.i

if.then93.i:                                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %flush_ops94.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @arm_smmu_s2_tlb_ops_v2, ptr %flush_ops94.i, align 4
  br label %sw.epilog.i

if.else95.i:                                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %flush_ops94.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @arm_smmu_s2_tlb_ops_v1, ptr %flush_ops94.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else95.i, %if.then93.i, %if.end71.i
  %fmt.2.i = phi i32 [ %fmt.1.i, %if.then93.i ], [ %fmt.1.i, %if.else95.i ], [ %fmt.0.i, %if.end71.i ]
  %oas.2.i = phi i32 [ %oas.1.i, %if.then93.i ], [ %oas.1.i, %if.else95.i ], [ %oas.0.i, %if.end71.i ]
  %ias.2.i = phi i32 [ %ias.1.i, %if.then93.i ], [ %ias.1.i, %if.else95.i ], [ %ias.0.i, %if.end71.i ]
  %start.0.i = phi i32 [ 0, %if.then93.i ], [ 0, %if.else95.i ], [ %46, %if.end71.i ]
  %impl.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 7
  %68 = ptrtoint ptr %impl.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %impl.i.i, align 4
  %tobool.not.i.i62 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i62, label %sw.epilog.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.i.if.end.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog.i
  %alloc_context_bank.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %alloc_context_bank.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %alloc_context_bank.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i64

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i64:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i63 = tail call i32 %71(ptr noundef %add.ptr.i, ptr noundef %9, ptr noundef %dev, i32 noundef %start.0.i) #12
  br label %arm_smmu_alloc_context_bank.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.epilog.i.if.end.i.i_crit_edge
  %context_map.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 10
  %num_context_banks.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 8
  %72 = ptrtoint ptr %num_context_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_context_banks.i.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %if.end.i.i
  %call.i.i337.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %context_map.i.i, i32 noundef %73, i32 noundef %start.0.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i337.i, i32 %73)
  %cmp.i.i.i = icmp eq i32 %call.i.i337.i, %73
  br i1 %cmp.i.i.i, label %do.body.i.i.i.arm_smmu_init_domain_context.exit.thread98_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.arm_smmu_init_domain_context.exit.thread98_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit.thread98

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %call1.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i.i337.i, ptr noundef %context_map.i.i) #12
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.cond.i.i.i.arm_smmu_alloc_context_bank.exit.i_crit_edge, label %do.cond.i.i.i.do.body.i.i.i_crit_edge

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

do.cond.i.i.i.arm_smmu_alloc_context_bank.exit.i_crit_edge: ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_alloc_context_bank.exit.i

arm_smmu_alloc_context_bank.exit.i:               ; preds = %do.cond.i.i.i.arm_smmu_alloc_context_bank.exit.i_crit_edge, %if.then.i.i64
  %retval.0.i.i = phi i32 [ %call.i.i63, %if.then.i.i64 ], [ %call.i.i337.i, %do.cond.i.i.i.arm_smmu_alloc_context_bank.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp99.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp99.i, label %arm_smmu_alloc_context_bank.exit.i.arm_smmu_init_domain_context.exit.thread98_crit_edge, label %if.end101.i

arm_smmu_alloc_context_bank.exit.i.arm_smmu_init_domain_context.exit.thread98_crit_edge: ; preds = %arm_smmu_alloc_context_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit.thread98

if.end101.i:                                      ; preds = %arm_smmu_alloc_context_bank.exit.i
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %9, ptr %add.ptr.i, align 4
  %conv.i = trunc i32 %retval.0.i.i to i8
  %75 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i, ptr %cfg1.i, align 4
  %version103.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 5
  %76 = ptrtoint ptr %version103.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %version103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp104.i = icmp ult i32 %77, 2
  br i1 %cmp104.i, label %if.then106.i, label %if.else113.i

if.then106.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  %irptndx.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irptndx.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %irptndx.i, i32 1, i32 3, i32 1) #12
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %irptndx.i, ptr %irptndx.i, i32 1, ptr elementtype(i32) %irptndx.i) #12, !srcloc !301
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !302
  %conv108.i = trunc i32 %asmresult.i.i.i.i.i to i8
  %irptndx109.i = getelementptr i8, ptr %domain, i32 -155
  %79 = ptrtoint ptr %irptndx109.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv108.i, ptr %irptndx109.i, align 1
  %num_context_irqs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 24
  %80 = ptrtoint ptr %num_context_irqs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_context_irqs.i, align 4
  %conv111.i = and i32 %asmresult.i.i.i.i.i, 255
  %rem.i = urem i32 %conv111.i, %81
  %conv112.i = trunc i32 %rem.i to i8
  store i8 %conv112.i, ptr %irptndx109.i, align 1
  br label %if.end116.i

if.else113.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  %irptndx115.i = getelementptr i8, ptr %domain, i32 -155
  %82 = ptrtoint ptr %irptndx115.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %irptndx115.i, align 1
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.else113.i, %if.then106.i
  %83 = ptrtoint ptr %stage43.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %stage43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp118.i = icmp eq i32 %84, 1
  %85 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cfg1.i, align 4
  %conv122.i = zext i8 %86 to i16
  %add.i = zext i1 %cmp118.i to i16
  %conv126.sink.i = add nuw nsw i16 %conv122.i, %add.i
  %87 = getelementptr i8, ptr %domain, i32 -154
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv126.sink.i, ptr %87, align 2
  %pgsize_bitmap128.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 22
  %89 = ptrtoint ptr %pgsize_bitmap128.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pgsize_bitmap128.i, align 4
  %91 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %features.i, align 4
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %flush_ops134.i = getelementptr i8, ptr %domain, i32 -160
  %95 = ptrtoint ptr %flush_ops134.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %flush_ops134.i, align 4
  %97 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %9, align 4
  %.compoundliteral.sroa.8.i.4.i.4..sroa_idx = getelementptr inbounds i8, ptr %.compoundliteral.sroa.8.i, i32 4
  %99 = call ptr @memset(ptr %.compoundliteral.sroa.8.i.4.i.4..sroa_idx, i32 0, i32 40)
  %100 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %pgtbl_cfg.i, align 8
  %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 4
  %101 = ptrtoint ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %90, ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 8
  %102 = ptrtoint ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %ias.2.i, ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 12
  %103 = ptrtoint ptr %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %oas.2.i, ptr %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 16
  %104 = ptrtoint ptr %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %94, ptr %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.6212.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 20
  %105 = ptrtoint ptr %.compoundliteral.sroa.6212.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %96, ptr %.compoundliteral.sroa.6212.0.pgtbl_cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 24
  %106 = ptrtoint ptr %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %98, ptr %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.8.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 28
  %107 = call ptr @memcpy(ptr %.compoundliteral.sroa.8.0.pgtbl_cfg.sroa_idx.i, ptr %.compoundliteral.sroa.8.i, i32 44)
  %108 = ptrtoint ptr %impl.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %impl.i.i, align 4
  %tobool136.not.i = icmp eq ptr %109, null
  br i1 %tobool136.not.i, label %if.end116.i.if.end147.i_crit_edge, label %land.lhs.true137.i

if.end116.i.if.end147.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.i

land.lhs.true137.i:                               ; preds = %if.end116.i
  %init_context.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %init_context.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_context.i, align 4
  %tobool139.not.i = icmp eq ptr %111, null
  br i1 %tobool139.not.i, label %land.lhs.true137.i.if.end147.i_crit_edge, label %if.then140.i

land.lhs.true137.i.if.end147.i_crit_edge:         ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.i

if.then140.i:                                     ; preds = %land.lhs.true137.i
  %call143.i = call i32 %111(ptr noundef %add.ptr.i, ptr noundef nonnull %pgtbl_cfg.i, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %tobool144.not.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.not.i, label %if.then140.i.if.end147.i_crit_edge, label %if.then140.i.arm_smmu_init_domain_context.exit_crit_edge

if.then140.i.arm_smmu_init_domain_context.exit_crit_edge: ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit

if.then140.i.if.end147.i_crit_edge:               ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then140.i.if.end147.i_crit_edge, %land.lhs.true137.i.if.end147.i_crit_edge, %if.end116.i.if.end147.i_crit_edge
  %pgtbl_quirks.i = getelementptr i8, ptr %domain, i32 -164
  %112 = ptrtoint ptr %pgtbl_quirks.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pgtbl_quirks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool148.not.i = icmp eq i32 %113, 0
  br i1 %tobool148.not.i, label %if.end147.i.if.end152.i_crit_edge, label %if.then149.i

if.end147.i.if.end152.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

if.then149.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pgtbl_cfg.i, align 8
  %or.i = or i32 %115, %113
  store i32 %or.i, ptr %pgtbl_cfg.i, align 8
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then149.i, %if.end147.i.if.end152.i_crit_edge
  %call153.i = call ptr @alloc_io_pgtable_ops(i32 noundef %fmt.2.i, ptr noundef nonnull %pgtbl_cfg.i, ptr noundef %add.ptr.i) #12
  %tobool154.not.i = icmp eq ptr %call153.i, null
  br i1 %tobool154.not.i, label %if.end152.i.arm_smmu_init_domain_context.exit_crit_edge, label %if.end156.i

if.end152.i.arm_smmu_init_domain_context.exit_crit_edge: ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit

if.end156.i:                                      ; preds = %if.end152.i
  %116 = ptrtoint ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i, align 4
  %pgsize_bitmap158.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 2
  %118 = ptrtoint ptr %pgsize_bitmap158.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %pgsize_bitmap158.i, align 4
  %119 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pgtbl_cfg.i, align 8
  %and160.i = and i32 %120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  %notmask.i = shl nsw i32 -1, %ias.2.i
  br i1 %tobool161.not.i, label %if.else164.i, label %if.then162.i

if.then162.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #14
  %geometry.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5
  %121 = ptrtoint ptr %geometry.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %notmask.i, ptr %geometry.i, align 4
  br label %if.end168.i

if.else164.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = xor i32 %notmask.i, -1
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.else164.i, %if.then162.i
  %.sink.i = phi i32 [ %sub.i, %if.else164.i ], [ -1, %if.then162.i ]
  %122 = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink.i, ptr %122, align 4
  %force_aperture.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 2
  %124 = ptrtoint ptr %force_aperture.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %force_aperture.i, align 4
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 4
  %cbs.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %cbs.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cbs.i.i, align 4
  %129 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %cfg1.i, align 4
  %idxprom.i.i = zext i8 %130 to i32
  %arrayidx.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i
  %cbar.i.i = getelementptr i8, ptr %domain, i32 -152
  %131 = ptrtoint ptr %cbar.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cbar.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.not.i.i = icmp eq i32 %132, 0
  %cfg2.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 3
  %133 = ptrtoint ptr %cfg2.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %cfg1.i, ptr %cfg2.i.i, align 8
  br i1 %cmp.not.i.i, label %if.end102.i.i, label %if.then.i338.i

if.then.i338.i:                                   ; preds = %if.end168.i
  %134 = ptrtoint ptr %fmt30.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fmt30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %135)
  %cmp3.i.i = icmp eq i32 %135, 3
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i338.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7
  %tcr.i.i = getelementptr inbounds %struct.anon.93, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %tcr.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tcr.i.i, align 4
  %tcr5.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 1
  %139 = ptrtoint ptr %tcr5.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %tcr5.i.i, align 8
  br label %if.then28.i.i

if.else.i.i:                                      ; preds = %if.then.i338.i
  %tcr5.i.i.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %tcr5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load.i.i.i = load i32, ptr %tcr5.i.i.i, align 8
  %141 = lshr i32 %bf.load.i.i.i, 13
  %or132.i.i.i = and i32 %141, 65280
  %bf.lshr142.i.i.i = lshr i32 %bf.load.i.i.i, 15
  %bf.clear143.i.i.i = and i32 %bf.lshr142.i.i.i, 63
  %or169.i.i.i = or i32 %or132.i.i.i, %bf.clear143.i.i.i
  %142 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pgtbl_cfg.i, align 8
  %and170.i.i.i = and i32 %143, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i.i.i)
  %tobool171.not.i.i.i = icmp eq i32 %and170.i.i.i, 0
  %shl173.i.i.i = shl nuw i32 %or169.i.i.i, 16
  %or175.i.i.i = or i32 %shl173.i.i.i, 128
  %or176.i.i.i = or i32 %or169.i.i.i, 8388608
  %tcr.0.i.i.i = select i1 %tobool171.not.i.i.i, i32 %or176.i.i.i, i32 %or175.i.i.i
  %tcr7.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 1
  %144 = ptrtoint ptr %tcr7.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %tcr.0.i.i.i, ptr %tcr7.i.i, align 8
  %145 = ptrtoint ptr %tcr5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load.i169.i.i = load i32, ptr %tcr5.i.i.i, align 8
  %bf.lshr.i.i.i = lshr i32 %bf.load.i169.i.i, 29
  %or.i.i.i = or i32 %bf.lshr.i.i.i, 229376
  %arrayidx11.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 1, i32 1
  %146 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or.i.i.i, ptr %arrayidx11.i.i, align 4
  %147 = ptrtoint ptr %fmt30.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fmt30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp13.i.i = icmp eq i32 %148, 1
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else17.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i32 %bf.lshr.i.i.i, 229392
  %149 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or.i.i, ptr %arrayidx11.i.i, align 4
  br label %if.then28.i.i

if.else17.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or20.i.i = or i32 %tcr.0.i.i.i, -2147483648
  %150 = ptrtoint ptr %tcr7.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or20.i.i, ptr %tcr7.i.i, align 8
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.else17.i.i, %if.then14.i.i, %if.then4.i.i
  %151 = ptrtoint ptr %fmt30.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fmt30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %152)
  %cmp30.i.i = icmp eq i32 %152, 3
  br i1 %cmp30.i.i, label %if.then31.i.i, label %do.body40.i.i

if.then31.i.i:                                    ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %153 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %conv.i.i = zext i32 %155 to i64
  %156 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %conv.i.i, ptr %arrayidx.i.i, align 8
  %arrayidx35.i.i = getelementptr [2 x i64], ptr %arrayidx.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 0, ptr %arrayidx35.i.i, align 8
  br label %if.then104.i.i

do.body40.i.i:                                    ; preds = %if.then28.i.i
  %158 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %87, align 2
  %conv53.i.i = zext i16 %159 to i64
  %shl.i.i = shl nuw i64 %conv53.i.i, 48
  %160 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %shl.i.i, ptr %arrayidx.i.i, align 8
  %161 = load i16, ptr %87, align 2
  %conv80.i.i = zext i16 %161 to i64
  %shl81.i.i = shl nuw i64 %conv80.i.i, 48
  %arrayidx84.i.i = getelementptr [2 x i64], ptr %arrayidx.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %shl81.i.i, ptr %arrayidx84.i.i, align 8
  %163 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pgtbl_cfg.i, align 8
  %and85.i.i = and i32 %164, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  %165 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %165, align 8
  br i1 %tobool86.not.i.i, label %if.else92.i.i, label %if.then87.i.i

if.then87.i.i:                                    ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or91.i.i = or i64 %167, %shl81.i.i
  %168 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %or91.i.i, ptr %arrayidx84.i.i, align 8
  br label %if.then104.i.i

if.else92.i.i:                                    ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or96.i.i = or i64 %167, %shl.i.i
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %or96.i.i, ptr %arrayidx.i.i, align 8
  br label %if.then104.i.i

if.end102.i.i:                                    ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  %vtcr.i.i.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %170 = ptrtoint ptr %vtcr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %bf.load.i170.i.i = load i32, ptr %vtcr.i.i.i, align 8
  %bf.lshr182.i.i.i = lshr i32 %bf.load.i170.i.i, 13
  %or206.i.i.i = or i32 %bf.lshr182.i.i.i, -2147483648
  %tcr24.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 1
  %171 = ptrtoint ptr %tcr24.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %or206.i.i.i, ptr %tcr24.i.i, align 8
  %172 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %172, align 8
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %arrayidx.i.i, align 8
  br label %arm_smmu_init_context_bank.exit.i

if.then104.i.i:                                   ; preds = %if.else92.i.i, %if.then87.i.i, %if.then31.i.i
  %176 = ptrtoint ptr %fmt30.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %fmt30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %177)
  %cmp106.i.i = icmp eq i32 %177, 3
  br i1 %cmp106.i.i, label %if.then108.i.i, label %if.else112.i.i

if.then108.i.i:                                   ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %178 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7
  %prrr.i.i = getelementptr inbounds %struct.anon.93, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %prrr.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %prrr.i.i, align 4
  %mair.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 2
  %181 = ptrtoint ptr %mair.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %mair.i.i, align 8
  %nmrr.i.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %182 = ptrtoint ptr %nmrr.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nmrr.i.i, align 8
  %arrayidx111.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 2, i32 1
  %184 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx111.i.i, align 4
  br label %arm_smmu_init_context_bank.exit.i

if.else112.i.i:                                   ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mair113.i.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7, i32 0, i32 0, i32 2
  %185 = ptrtoint ptr %mair113.i.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %mair113.i.i, align 8
  %conv114.i.i = trunc i64 %186 to i32
  %mair115.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 2
  %187 = ptrtoint ptr %mair115.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv114.i.i, ptr %mair115.i.i, align 8
  %188 = load i64, ptr %mair113.i.i, align 8
  %shr.i.i = lshr i64 %188, 32
  %conv118.i.i = trunc i64 %shr.i.i to i32
  %arrayidx120.i.i = getelementptr %struct.arm_smmu_cb, ptr %128, i32 %idxprom.i.i, i32 2, i32 1
  %189 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %conv118.i.i, ptr %arrayidx120.i.i, align 4
  br label %arm_smmu_init_context_bank.exit.i

arm_smmu_init_context_bank.exit.i:                ; preds = %if.else112.i.i, %if.then108.i.i, %if.end102.i.i
  %190 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %cfg1.i, align 4
  %conv171.i = zext i8 %191 to i32
  call void @arm_smmu_write_context_bank(ptr noundef %9, i32 noundef %conv171.i) #12
  %irqs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 25
  %192 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %irqs.i, align 4
  %num_global_irqs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 23
  %194 = ptrtoint ptr %num_global_irqs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %num_global_irqs.i, align 4
  %irptndx172.i = getelementptr i8, ptr %domain, i32 -155
  %196 = ptrtoint ptr %irptndx172.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %irptndx172.i, align 1
  %conv173.i = zext i8 %197 to i32
  %add174.i = add i32 %195, %conv173.i
  %arrayidx.i = getelementptr i32, ptr %193, i32 %add174.i
  %198 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i, align 4
  %200 = ptrtoint ptr %impl.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %impl.i.i, align 4
  %tobool176.not.i = icmp eq ptr %201, null
  br i1 %tobool176.not.i, label %arm_smmu_init_context_bank.exit.i.if.else184.i_crit_edge, label %land.lhs.true177.i

arm_smmu_init_context_bank.exit.i.if.else184.i_crit_edge: ; preds = %arm_smmu_init_context_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else184.i

land.lhs.true177.i:                               ; preds = %arm_smmu_init_context_bank.exit.i
  %context_fault179.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %201, i32 0, i32 10
  %202 = ptrtoint ptr %context_fault179.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %context_fault179.i, align 4
  %tobool180.not.i = icmp eq ptr %203, null
  br i1 %tobool180.not.i, label %land.lhs.true177.i.if.else184.i_crit_edge, label %land.lhs.true177.i.if.end185.i_crit_edge

land.lhs.true177.i.if.end185.i_crit_edge:         ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185.i

land.lhs.true177.i.if.else184.i_crit_edge:        ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else184.i

if.else184.i:                                     ; preds = %land.lhs.true177.i.if.else184.i_crit_edge, %arm_smmu_init_context_bank.exit.i.if.else184.i_crit_edge
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.else184.i, %land.lhs.true177.i.if.end185.i_crit_edge
  %context_fault.0.i = phi ptr [ @arm_smmu_context_fault, %if.else184.i ], [ %203, %land.lhs.true177.i.if.end185.i_crit_edge ]
  %204 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %9, align 4
  %call.i339.i = call i32 @devm_request_threaded_irq(ptr noundef %205, i32 noundef %199, ptr noundef nonnull %context_fault.0.i, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.11, ptr noundef %domain) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339.i)
  %cmp188.i = icmp slt i32 %call.i339.i, 0
  br i1 %cmp188.i, label %do.end.i, label %if.end185.i.arm_smmu_init_domain_context.exit.thread_crit_edge

if.end185.i.arm_smmu_init_domain_context.exit.thread_crit_edge: ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_init_domain_context.exit.thread

do.end.i:                                         ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %9, align 4
  %208 = ptrtoint ptr %irptndx172.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %irptndx172.i, align 1
  %conv193.i = zext i8 %209 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.12, i32 noundef %conv193.i, i32 noundef %199) #16
  %210 = ptrtoint ptr %irptndx172.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -1, ptr %irptndx172.i, align 1
  br label %arm_smmu_init_domain_context.exit.thread

arm_smmu_init_domain_context.exit.thread:         ; preds = %do.end.i, %if.end185.i.arm_smmu_init_domain_context.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %init_mutex.i) #12
  %pgtbl_ops197.i = getelementptr i8, ptr %domain, i32 -168
  %211 = ptrtoint ptr %pgtbl_ops197.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call153.i, ptr %pgtbl_ops197.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  br label %if.end14

arm_smmu_init_domain_context.exit.thread98:       ; preds = %arm_smmu_alloc_context_bank.exit.i.arm_smmu_init_domain_context.exit.thread98_crit_edge, %do.body.i.i.i.arm_smmu_init_domain_context.exit.thread98_crit_edge, %if.end42.i.arm_smmu_init_domain_context.exit.thread98_crit_edge, %land.lhs.true32.i.arm_smmu_init_domain_context.exit.thread98_crit_edge
  %ret.1.i.ph = phi i32 [ -22, %land.lhs.true32.i.arm_smmu_init_domain_context.exit.thread98_crit_edge ], [ -22, %if.end42.i.arm_smmu_init_domain_context.exit.thread98_crit_edge ], [ %retval.0.i.i, %arm_smmu_alloc_context_bank.exit.i.arm_smmu_init_domain_context.exit.thread98_crit_edge ], [ -28, %do.body.i.i.i.arm_smmu_init_domain_context.exit.thread98_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %init_mutex.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  br label %rpm_put

arm_smmu_init_domain_context.exit:                ; preds = %if.end152.i.arm_smmu_init_domain_context.exit_crit_edge, %if.then140.i.arm_smmu_init_domain_context.exit_crit_edge
  %ret.0.i = phi i32 [ %call143.i, %if.then140.i.arm_smmu_init_domain_context.exit_crit_edge ], [ -12, %if.end152.i.arm_smmu_init_domain_context.exit_crit_edge ]
  %context_map.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 10
  %212 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %cfg1.i, align 4
  %conv199.i = zext i8 %213 to i32
  call void @_clear_bit(i32 noundef %conv199.i, ptr noundef %context_map.i) #12
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %add.ptr.i, align 4
  call void @mutex_unlock(ptr noundef %init_mutex.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp12 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp12, label %arm_smmu_init_domain_context.exit.rpm_put_crit_edge, label %arm_smmu_init_domain_context.exit.if.end14_crit_edge

arm_smmu_init_domain_context.exit.if.end14_crit_edge: ; preds = %arm_smmu_init_domain_context.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

arm_smmu_init_domain_context.exit.rpm_put_crit_edge: ; preds = %arm_smmu_init_domain_context.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpm_put

if.end14:                                         ; preds = %arm_smmu_init_domain_context.exit.if.end14_crit_edge, %arm_smmu_init_domain_context.exit.thread, %arm_smmu_init_domain_context.exit.thread104, %arm_smmu_init_domain_context.exit.thread101
  %215 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %add.ptr.i, align 4
  %cmp16.not = icmp eq ptr %216, %9
  br i1 %cmp16.not, label %if.end26, label %do.end20

do.end20:                                         ; preds = %if.end14
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i66 = icmp eq ptr %220, null
  br i1 %tobool.not.i66, label %if.end.i67, label %do.end20.dev_name.exit_crit_edge

do.end20.dev_name.exit_crit_edge:                 ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i67:                                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %218, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i67, %do.end20.dev_name.exit_crit_edge
  %retval.0.i68 = phi ptr [ %222, %if.end.i67 ], [ %220, %do.end20.dev_name.exit_crit_edge ]
  %223 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %9, align 4
  %init_name.i69 = getelementptr inbounds %struct.device, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %init_name.i69 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %init_name.i69, align 8
  %tobool.not.i70 = icmp eq ptr %226, null
  br i1 %tobool.not.i70, label %if.end.i71, label %dev_name.exit.dev_name.exit73_crit_edge

dev_name.exit.dev_name.exit73_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit73

if.end.i71:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %224, align 4
  br label %dev_name.exit73

dev_name.exit73:                                  ; preds = %if.end.i71, %dev_name.exit.dev_name.exit73_crit_edge
  %retval.0.i72 = phi ptr [ %228, %if.end.i71 ], [ %226, %dev_name.exit.dev_name.exit73_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i68, ptr noundef %retval.0.i72) #16
  br label %rpm_put

if.end26:                                         ; preds = %if.end14
  %s2crs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 17
  %229 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %s2crs.i, align 4
  %231 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %cfg1.i, align 4
  %stage.i74 = getelementptr i8, ptr %domain, i32 -140
  %233 = ptrtoint ptr %stage.i74 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %stage.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %234)
  %cmp.i75 = icmp eq i32 %234, 3
  %..i = zext i1 %cmp.i75 to i32
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %3, i32 0, i32 3
  %235 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp4.not5.not.i = icmp eq i32 %236, 0
  br i1 %cmp4.not5.not.i, label %if.end26.arm_smmu_domain_add_master.exit_crit_edge, label %for.body.lr.ph.i

if.end26.arm_smmu_domain_add_master.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_domain_add_master.exit

for.body.lr.ph.i:                                 ; preds = %if.end26
  %impl.i.i76 = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 7
  %features.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 4
  %smrs.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 16
  %base.i.i.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %9, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i77 = getelementptr %struct.arm_smmu_master_cfg, ptr %7, i32 0, i32 1, i32 %i.06.i
  %237 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx.i77, align 2
  %conv.i78 = sext i16 %238 to i32
  %type9.i = getelementptr %struct.arm_smmu_s2cr, ptr %230, i32 %conv.i78, i32 2
  %239 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %type9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %..i)
  %cmp10.i = icmp eq i32 %240, %..i
  br i1 %cmp10.i, label %land.lhs.true.i79, label %for.body.i.if.end19.i_crit_edge

for.body.i.if.end19.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

land.lhs.true.i79:                                ; preds = %for.body.i
  %cbndx14.i = getelementptr %struct.arm_smmu_s2cr, ptr %230, i32 %conv.i78, i32 4
  %241 = ptrtoint ptr %cbndx14.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %cbndx14.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %232, i8 %242)
  %cmp16.i = icmp eq i8 %232, %242
  br i1 %cmp16.i, label %land.lhs.true.i79.for.inc.i_crit_edge, label %land.lhs.true.i79.if.end19.i_crit_edge

land.lhs.true.i79.if.end19.i_crit_edge:           ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

land.lhs.true.i79.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end19.i:                                       ; preds = %land.lhs.true.i79.if.end19.i_crit_edge, %for.body.i.if.end19.i_crit_edge
  %243 = ptrtoint ptr %type9.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %..i, ptr %type9.i, align 4
  %privcfg.i = getelementptr %struct.arm_smmu_s2cr, ptr %230, i32 %conv.i78, i32 3
  %244 = ptrtoint ptr %privcfg.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %privcfg.i, align 4
  %cbndx24.i = getelementptr %struct.arm_smmu_s2cr, ptr %230, i32 %conv.i78, i32 4
  %245 = ptrtoint ptr %cbndx24.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %232, ptr %cbndx24.i, align 4
  %246 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %s2crs.i, align 4
  %248 = ptrtoint ptr %impl.i.i76 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %impl.i.i76, align 4
  %tobool.not.i.i80 = icmp eq ptr %249, null
  br i1 %tobool.not.i.i80, label %if.end19.i.do.body8.i.i_crit_edge, label %land.lhs.true.i.i82

if.end19.i.do.body8.i.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8.i.i

land.lhs.true.i.i82:                              ; preds = %if.end19.i
  %write_s2cr.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %249, i32 0, i32 12
  %250 = ptrtoint ptr %write_s2cr.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %write_s2cr.i.i, align 4
  %tobool2.not.i.i81 = icmp eq ptr %251, null
  br i1 %tobool2.not.i.i81, label %land.lhs.true.i.i82.do.body8.i.i_crit_edge, label %if.then.i.i83

land.lhs.true.i.i82.do.body8.i.i_crit_edge:       ; preds = %land.lhs.true.i.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8.i.i

if.then.i.i83:                                    ; preds = %land.lhs.true.i.i82
  call void @__sanitizer_cov_trace_pc() #14
  call void %251(ptr noundef %9, i32 noundef %conv.i78) #12
  br label %for.inc.i

do.body8.i.i:                                     ; preds = %land.lhs.true.i.i82.do.body8.i.i_crit_edge, %if.end19.i.do.body8.i.i_crit_edge
  %type.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %247, i32 %conv.i78, i32 2
  %252 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %type.i.i, align 4
  %privcfg.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %247, i32 %conv.i78, i32 3
  %254 = ptrtoint ptr %privcfg.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %privcfg.i.i, align 4
  %shl.i.i84 = shl i32 %253, 16
  %and22.i.i = and i32 %shl.i.i84, 196608
  %cbndx.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %247, i32 %conv.i78, i32 4
  %256 = ptrtoint ptr %cbndx.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %cbndx.i.i, align 4
  %conv47.i.i = zext i8 %257 to i32
  %shl74.i.i = shl i32 %255, 24
  %and75.i.i = and i32 %shl74.i.i, 50331648
  %or.i.i85 = or i32 %and75.i.i, %and22.i.i
  %or76.i.i = or i32 %or.i.i85, %conv47.i.i
  %258 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %features.i.i, align 4
  %and77.i.i = and i32 %259, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %do.body8.i.i.if.end87.i.i_crit_edge, label %land.lhs.true79.i.i

do.body8.i.i.if.end87.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i.i

land.lhs.true79.i.i:                              ; preds = %do.body8.i.i
  %260 = ptrtoint ptr %smrs.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %smrs.i.i, align 4
  %tobool80.not.i.i = icmp eq ptr %261, null
  br i1 %tobool80.not.i.i, label %land.lhs.true79.i.i.if.end87.i.i_crit_edge, label %land.lhs.true81.i.i

land.lhs.true79.i.i.if.end87.i.i_crit_edge:       ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i.i

land.lhs.true81.i.i:                              ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %valid.i.i = getelementptr %struct.arm_smmu_smr, ptr %261, i32 %conv.i78, i32 2
  %262 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %valid.i.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool83.not.i.i = icmp eq i8 %263, 0
  %or86.i.i = or i32 %or76.i.i, 1024
  %spec.select.i.i = select i1 %tobool83.not.i.i, i32 %or76.i.i, i32 %or86.i.i
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %land.lhs.true81.i.i, %land.lhs.true79.i.i.if.end87.i.i_crit_edge, %do.body8.i.i.if.end87.i.i_crit_edge
  %reg.0.i.i = phi i32 [ %or76.i.i, %land.lhs.true79.i.i.if.end87.i.i_crit_edge ], [ %or76.i.i, %do.body8.i.i.if.end87.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true81.i.i ]
  %shl88.i.i = shl nsw i32 %conv.i78, 2
  %add.i.i = add nsw i32 %shl88.i.i, 3072
  br i1 %tobool.not.i.i80, label %if.end87.i.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end87.i.i.if.else.i.i.i_crit_edge:             ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end87.i.i
  %write_reg.i.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %249, i32 0, i32 1
  %264 = ptrtoint ptr %write_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write_reg.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %265, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, label %if.then.i.i.i, !prof !295

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %265(ptr noundef %9, i32 noundef 0, i32 noundef %add.i.i, i32 noundef %reg.0.i.i) #12
  br label %for.inc.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.end87.i.i.if.else.i.i.i_crit_edge
  %266 = call i32 @llvm.bswap.i32(i32 %reg.0.i.i) #12
  %267 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %268, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %266) #12, !srcloc !296
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.then.i.i83, %land.lhs.true.i79.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %269 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %num_ids.i, align 4
  %cmp4.not.i = icmp ult i32 %inc.i, %270
  br i1 %cmp4.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.arm_smmu_domain_add_master.exit_crit_edge

for.inc.i.arm_smmu_domain_add_master.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_domain_add_master.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

arm_smmu_domain_add_master.exit:                  ; preds = %for.inc.i.arm_smmu_domain_add_master.exit_crit_edge, %if.end26.arm_smmu_domain_add_master.exit_crit_edge
  %271 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %9, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %272, i32 noundef 20) #12
  %273 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %9, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %274, i1 noundef zeroext true) #12
  br label %rpm_put

rpm_put:                                          ; preds = %arm_smmu_domain_add_master.exit, %dev_name.exit73, %arm_smmu_init_domain_context.exit.rpm_put_crit_edge, %arm_smmu_init_domain_context.exit.thread98
  %ret.0 = phi i32 [ %ret.0.i, %arm_smmu_init_domain_context.exit.rpm_put_crit_edge ], [ -22, %dev_name.exit73 ], [ 0, %arm_smmu_domain_add_master.exit ], [ %ret.1.i.ph, %arm_smmu_init_domain_context.exit.thread98 ]
  %275 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %9, align 4
  %disable_depth.i.i86 = getelementptr inbounds %struct.device, ptr %276, i32 0, i32 12, i32 15
  %277 = ptrtoint ptr %disable_depth.i.i86 to i32
  call void @__asan_load2_noabort(i32 %277)
  %bf.load.i.i87 = load i16, ptr %disable_depth.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i87)
  %tobool.not.i.i88 = icmp ult i16 %bf.load.i.i87, 8192
  br i1 %tobool.not.i.i88, label %if.then.i90, label %rpm_put.cleanup_crit_edge

rpm_put.cleanup_crit_edge:                        ; preds = %rpm_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i90:                                      ; preds = %rpm_put
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i89 = call i32 @__pm_runtime_suspend(ptr noundef %276, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i90, %rpm_put.cleanup_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %dev_iommu_priv_get.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -19, %dev_iommu_priv_get.exit.cleanup_crit_edge ], [ %ret.0, %rpm_put.cleanup_crit_edge ], [ %ret.0, %if.then.i90 ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_map_pages(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %pgsize, i32 noundef %pgcount, i32 noundef %prot, i32 noundef %gfp, ptr noundef %mapped) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr i8, ptr %domain, i32 -168
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.arm_smmu_rpm_get.exit_crit_edge

if.end.arm_smmu_rpm_get.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.arm_smmu_rpm_get.exit_crit_edge

if.then.i.arm_smmu_rpm_get.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.arm_smmu_rpm_get.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_rpm_get.exit

arm_smmu_rpm_get.exit:                            ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, %if.then.i.arm_smmu_rpm_get.exit_crit_edge, %if.end.arm_smmu_rpm_get.exit_crit_edge
  %map_pages = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %map_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_pages, align 4
  %call4 = tail call i32 %9(ptr noundef nonnull %1, i32 noundef %iova, i32 noundef %paddr, i32 noundef %pgsize, i32 noundef %pgcount, i32 noundef %prot, i32 noundef %gfp, ptr noundef %mapped) #12
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %disable_depth.i.i12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i13 = load i16, ptr %disable_depth.i.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i13)
  %tobool.not.i.i14 = icmp ult i16 %bf.load.i.i13, 8192
  br i1 %tobool.not.i.i14, label %if.then.i16, label %arm_smmu_rpm_get.exit.cleanup_crit_edge

arm_smmu_rpm_get.exit.cleanup_crit_edge:          ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i16:                                      ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i15 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i16, %arm_smmu_rpm_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call4, %arm_smmu_rpm_get.exit.cleanup_crit_edge ], [ %call4, %if.then.i16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_unmap_pages(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %pgsize, i32 noundef %pgcount, ptr noundef %iotlb_gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr i8, ptr %domain, i32 -168
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.arm_smmu_rpm_get.exit_crit_edge

if.end.arm_smmu_rpm_get.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.arm_smmu_rpm_get.exit_crit_edge

if.then.i.arm_smmu_rpm_get.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.arm_smmu_rpm_get.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_rpm_get.exit

arm_smmu_rpm_get.exit:                            ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, %if.then.i.arm_smmu_rpm_get.exit_crit_edge, %if.end.arm_smmu_rpm_get.exit_crit_edge
  %unmap_pages = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %unmap_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unmap_pages, align 4
  %call4 = tail call i32 %9(ptr noundef nonnull %1, i32 noundef %iova, i32 noundef %pgsize, i32 noundef %pgcount, ptr noundef %iotlb_gather) #12
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %disable_depth.i.i12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i13 = load i16, ptr %disable_depth.i.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i13)
  %tobool.not.i.i14 = icmp ult i16 %bf.load.i.i13, 8192
  br i1 %tobool.not.i.i14, label %if.then.i16, label %arm_smmu_rpm_get.exit.cleanup_crit_edge

arm_smmu_rpm_get.exit.cleanup_crit_edge:          ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i16:                                      ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i15 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i16, %arm_smmu_rpm_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call4, %arm_smmu_rpm_get.exit.cleanup_crit_edge ], [ %call4, %if.then.i16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_flush_iotlb_all(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %flush_ops = getelementptr i8, ptr %domain, i32 -160
  %0 = ptrtoint ptr %flush_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flush_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %if.then.arm_smmu_rpm_get.exit_crit_edge

if.then.arm_smmu_rpm_get.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.arm_smmu_rpm_get.exit_crit_edge

if.then.i.arm_smmu_rpm_get.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.arm_smmu_rpm_get.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_rpm_get.exit

arm_smmu_rpm_get.exit:                            ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, %if.then.i.arm_smmu_rpm_get.exit_crit_edge, %if.then.arm_smmu_rpm_get.exit_crit_edge
  %8 = ptrtoint ptr %flush_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flush_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %add.ptr.i) #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %disable_depth.i.i8 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 15
  %14 = ptrtoint ptr %disable_depth.i.i8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i9 = load i16, ptr %disable_depth.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i9)
  %tobool.not.i.i10 = icmp ult i16 %bf.load.i.i9, 8192
  br i1 %tobool.not.i.i10, label %if.then.i12, label %arm_smmu_rpm_get.exit.if.end_crit_edge

arm_smmu_rpm_get.exit.if.end_crit_edge:           ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i12:                                      ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i12, %arm_smmu_rpm_get.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_iotlb_sync(ptr noundef %domain, ptr nocapture noundef readnone %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.arm_smmu_rpm_get.exit_crit_edge

if.end.arm_smmu_rpm_get.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.arm_smmu_rpm_get.exit_crit_edge

if.then.i.arm_smmu_rpm_get.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.arm_smmu_rpm_get.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_rpm_get.exit

arm_smmu_rpm_get.exit:                            ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, %if.then.i.arm_smmu_rpm_get.exit_crit_edge, %if.end.arm_smmu_rpm_get.exit_crit_edge
  %version = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %arm_smmu_rpm_get.exit.if.then4_crit_edge, label %lor.lhs.false

arm_smmu_rpm_get.exit.if.then4_crit_edge:         ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

lor.lhs.false:                                    ; preds = %arm_smmu_rpm_get.exit
  %stage = getelementptr i8, ptr %domain, i32 -140
  %8 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %arm_smmu_rpm_get.exit.if.then4_crit_edge
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %cb_lock.i = getelementptr i8, ptr %domain, i32 -44
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #12
  %numpage.i = getelementptr inbounds %struct.arm_smmu_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %numpage.i, align 4
  %cfg.i = getelementptr i8, ptr %domain, i32 -156
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cfg.i, align 4
  %conv6.i = zext i8 %15 to i32
  %add.i = add i32 %13, %conv6.i
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %11, i32 noundef %add.i, i32 noundef 2032, i32 noundef 2036) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call3.i) #12
  br label %if.end5

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %global_sync_lock.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_sync_lock.i) #12
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 112, i32 noundef 116) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_sync_lock.i, i32 noundef %call2.i) #12
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %disable_depth.i.i13 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 15
  %18 = ptrtoint ptr %disable_depth.i.i13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i14 = load i16, ptr %disable_depth.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i14)
  %tobool.not.i.i15 = icmp ult i16 %bf.load.i.i14, 8192
  br i1 %tobool.not.i.i15, label %if.then.i17, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i17:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i16 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i17, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_iova_to_phys(ptr noundef %domain, i32 noundef %iova) #0 align 64 {
entry:
  %iova.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr i8, ptr %domain, i32 -168
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %stage = getelementptr i8, ptr %domain, i32 -140
  %6 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.addr.i)
  %8 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %iova, ptr %iova.addr.i, align 4
  %cfg2.i = getelementptr i8, ptr %domain, i32 -156
  %9 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pgtbl_ops, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cfg2.i, align 4
  %conv.i = zext i8 %14 to i32
  %disable_depth.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 15
  %15 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp ult i16 %bf.load.i.i.i, 8192
  br i1 %tobool.not.i.i.i, label %if.then.i.i, label %if.then2.do.body6.i_crit_edge

if.then2.do.body6.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6.i

if.then.i.i:                                      ; preds = %if.then2
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body6.i_crit_edge

if.then.i.i.do.body6.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.arm_smmu_iova_to_phys_hard.exit_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.arm_smmu_iova_to_phys_hard.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_iova_to_phys_hard.exit

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_iova_to_phys_hard.exit

do.body6.i:                                       ; preds = %if.then.i.i.do.body6.i_crit_edge, %if.then2.do.body6.i_crit_edge
  %cb_lock.i = getelementptr i8, ptr %domain, i32 -44
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #12
  %17 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iova.addr.i, align 4
  %and.i = and i32 %18, -4096
  %fmt.i = getelementptr i8, ptr %domain, i32 -148
  %19 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp14.i = icmp eq i32 %20, 1
  %numpage.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %numpage.i, align 4
  %add.i = add i32 %22, %conv.i
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %do.body6.i
  %conv17.i = zext i32 %and.i to i64
  %impl.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %impl.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %impl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then16.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.then16.i.if.else.i.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then16.i
  %write_reg64.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_reg64.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg64.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i127.i, !prof !295

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i127.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %26(ptr noundef %3, i32 noundef %add.i, i32 noundef 2048, i64 noundef %conv17.i) #12
  br label %if.end20.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then16.i.if.else.i.i_crit_edge
  %base.i.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %pgshift.i.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %pgshift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pgshift.i.i.i, align 4
  %shl.i.i.i = shl i32 %add.i, %30
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %shl.i.i.i
  %add.ptr.i128.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2048
  %add.ptr.i15.i.i = getelementptr i8, ptr %add.ptr.i128.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 0) #12, !srcloc !296
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %31) #12, !srcloc !296
  br label %if.end20.i

if.else.i:                                        ; preds = %do.body6.i
  %impl.i129.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %impl.i129.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %impl.i129.i, align 4
  %tobool.not.i130.i = icmp eq ptr %33, null
  br i1 %tobool.not.i130.i, label %if.else.i.if.else.i139.i_crit_edge, label %land.lhs.true.i132.i

if.else.i.if.else.i139.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i139.i

land.lhs.true.i132.i:                             ; preds = %if.else.i
  %write_reg.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg.i.i, align 4
  %tobool2.not.i131.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i131.i, label %land.lhs.true.i132.i.if.else.i139.i_crit_edge, label %if.then.i133.i, !prof !295

land.lhs.true.i132.i.if.else.i139.i_crit_edge:    ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i139.i

if.then.i133.i:                                   ; preds = %land.lhs.true.i132.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %35(ptr noundef %3, i32 noundef %add.i, i32 noundef 2048, i32 noundef %and.i) #12
  br label %if.end20.i

if.else.i139.i:                                   ; preds = %land.lhs.true.i132.i.if.else.i139.i_crit_edge, %if.else.i.if.else.i139.i_crit_edge
  %36 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %base.i.i134.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i134.i, align 4
  %pgshift.i.i135.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %pgshift.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pgshift.i.i135.i, align 4
  %shl.i.i136.i = shl i32 %add.i, %40
  %add.ptr.i.i137.i = getelementptr i8, ptr %38, i32 %shl.i.i136.i
  %add.ptr.i138.i = getelementptr i8, ptr %add.ptr.i.i137.i, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 %36) #12, !srcloc !296
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i139.i, %if.then.i133.i, %if.else.i.i, %if.then.i127.i
  %41 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %numpage.i, align 4
  %add22.i = add i32 %42, %conv.i
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add22.i, %46
  %add.ptr.i140.i = getelementptr i8, ptr %44, i32 %shl.i.i
  %add.ptr.i13 = getelementptr i8, ptr %add.ptr.i140.i, i32 2288
  %call24.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call24.i, 50000
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #12, !srcloc !304
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !305
  %and29168.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29168.i)
  %tobool.not169.i = icmp eq i32 %and29168.i, 0
  br i1 %tobool.not169.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.land.lhs.true.i_crit_edge

if.end20.i.land.lhs.true.i_crit_edge:             ; preds = %if.end20.i
  br label %land.lhs.true.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end20.i.land.lhs.true.i_crit_edge
  %call33.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call33.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call33.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then37.i, label %cond.false.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #12, !srcloc !304
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !306
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 1073740) #12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #12, !srcloc !304
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !305
  %and29.i = and i32 %53, 1
  %tobool.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not.i, label %cond.false.i.for.end.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then37.i, %if.end20.i.for.end.i_crit_edge
  %tmp.0.i = phi i32 [ %50, %if.then37.i ], [ %48, %if.end20.i.for.end.i_crit_edge ], [ %53, %cond.false.i.for.end.i_crit_edge ]
  %and53.i = and i32 %tmp.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end62.i, label %if.then56.i

if.then56.i:                                      ; preds = %for.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call11.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17, ptr noundef nonnull %iova.addr.i) #16
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %disable_depth.i.i142.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 12, i32 15
  %56 = ptrtoint ptr %disable_depth.i.i142.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i.i143.i = load i16, ptr %disable_depth.i.i142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i143.i)
  %tobool.not.i.i144.i = icmp ult i16 %bf.load.i.i143.i, 8192
  br i1 %tobool.not.i.i144.i, label %if.then.i146.i, label %if.then56.i.arm_smmu_rpm_put.exit.i_crit_edge

if.then56.i.arm_smmu_rpm_put.exit.i_crit_edge:    ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_put.exit.i

if.then.i146.i:                                   ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i145.i = call i32 @__pm_runtime_suspend(ptr noundef %55, i32 noundef 13) #12
  br label %arm_smmu_rpm_put.exit.i

arm_smmu_rpm_put.exit.i:                          ; preds = %if.then.i146.i, %if.then56.i.arm_smmu_rpm_put.exit.i_crit_edge
  %iova_to_phys.i = getelementptr inbounds %struct.io_pgtable_ops, ptr %10, i32 0, i32 4
  %57 = ptrtoint ptr %iova_to_phys.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iova_to_phys.i, align 4
  %59 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iova.addr.i, align 4
  %call61.i = call i32 %58(ptr noundef %10, i32 noundef %60) #12
  br label %arm_smmu_iova_to_phys_hard.exit

if.end62.i:                                       ; preds = %for.end.i
  %61 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %numpage.i, align 4
  %add64.i = add i32 %62, %conv.i
  %impl.i147.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 7
  %63 = ptrtoint ptr %impl.i147.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %impl.i147.i, align 4
  %tobool.not.i148.i = icmp eq ptr %64, null
  br i1 %tobool.not.i148.i, label %if.end62.i.if.end.i.i_crit_edge, label %land.lhs.true.i150.i

if.end62.i.if.end.i.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i150.i:                             ; preds = %if.end62.i
  %read_reg64.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %read_reg64.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_reg64.i.i, align 4
  %tobool2.not.i149.i = icmp eq ptr %66, null
  br i1 %tobool2.not.i149.i, label %land.lhs.true.i150.i.if.end.i.i_crit_edge, label %if.then.i151.i, !prof !295

land.lhs.true.i150.i.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i150.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i151.i:                                   ; preds = %land.lhs.true.i150.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i64 %66(ptr noundef %3, i32 noundef %add64.i, i32 noundef 80) #12
  br label %arm_smmu_readq.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i150.i.if.end.i.i_crit_edge, %if.end62.i.if.end.i.i_crit_edge
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %69 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i154.i = shl i32 %add64.i, %70
  %add.ptr.i.i155.i = getelementptr i8, ptr %68, i32 %shl.i.i154.i
  %add.ptr.i156.i = getelementptr i8, ptr %add.ptr.i.i155.i, i32 80
  %add.ptr.i16.i.i = getelementptr i32, ptr %add.ptr.i156.i, i32 1
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #12, !srcloc !304
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156.i) #12, !srcloc !304
  %73 = zext i32 %71 to i64
  %74 = zext i32 %72 to i64
  %75 = shl nuw i64 %74, 32
  %76 = or i64 %75, %73
  %77 = tail call i64 @llvm.bswap.i64(i64 %76) #12
  br label %arm_smmu_readq.exit.i

arm_smmu_readq.exit.i:                            ; preds = %if.end.i.i, %if.then.i151.i
  %retval.0.i157.i = phi i64 [ %call.i.i, %if.then.i151.i ], [ %77, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call11.i) #12
  %and67.i = and i64 %retval.0.i157.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67.i)
  %tobool68.not.i = icmp eq i64 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end76.i, label %do.end72.i

do.end72.i:                                       ; preds = %arm_smmu_readq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20) #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, i64 noundef %retval.0.i157.i) #16
  br label %out.i

if.end76.i:                                       ; preds = %arm_smmu_readq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iova.addr.i, align 4
  %and78.i = and i32 %79, 4095
  %80 = trunc i64 %retval.0.i157.i to i32
  %81 = and i32 %80, -4096
  %conv80.i = or i32 %and78.i, %81
  br label %out.i

out.i:                                            ; preds = %if.end76.i, %do.end72.i
  %addr.0.i = phi i32 [ 0, %do.end72.i ], [ %conv80.i, %if.end76.i ]
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %3, align 4
  %disable_depth.i.i158.i = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 12, i32 15
  %84 = ptrtoint ptr %disable_depth.i.i158.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load.i.i159.i = load i16, ptr %disable_depth.i.i158.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i159.i)
  %tobool.not.i.i160.i = icmp ult i16 %bf.load.i.i159.i, 8192
  br i1 %tobool.not.i.i160.i, label %if.then.i162.i, label %out.i.arm_smmu_iova_to_phys_hard.exit_crit_edge

out.i.arm_smmu_iova_to_phys_hard.exit_crit_edge:  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_iova_to_phys_hard.exit

if.then.i162.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i161.i = tail call i32 @__pm_runtime_suspend(ptr noundef %83, i32 noundef 13) #12
  br label %arm_smmu_iova_to_phys_hard.exit

arm_smmu_iova_to_phys_hard.exit:                  ; preds = %if.then.i162.i, %out.i.arm_smmu_iova_to_phys_hard.exit_crit_edge, %arm_smmu_rpm_put.exit.i, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.arm_smmu_iova_to_phys_hard.exit_crit_edge
  %retval.0.i = phi i32 [ %call61.i, %arm_smmu_rpm_put.exit.i ], [ %addr.0.i, %out.i.arm_smmu_iova_to_phys_hard.exit_crit_edge ], [ %addr.0.i, %if.then.i162.i ], [ 0, %if.then.i.i.i.arm_smmu_iova_to_phys_hard.exit_crit_edge ], [ 0, %do.end11.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.addr.i)
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 4
  %85 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iova_to_phys, align 4
  %call5 = tail call i32 %86(ptr noundef nonnull %1, i32 noundef %iova) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %arm_smmu_iova_to_phys_hard.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %arm_smmu_iova_to_phys_hard.exit ], [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_smmu_probe_device(ptr noundef %dev) #0 align 64 {
entry:
  %it.i = alloca %struct.of_phandle_iterator, align 4
  %data.i = alloca ptr, align 4
  %pci_sid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %dev_iommu_fwspec_get.exit.thread, label %dev_iommu_fwspec_get.exit

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %.b124 = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b124, label %dev_iommu_fwspec_get.exit.if.then_crit_edge, label %if.else

dev_iommu_fwspec_get.exit.if.then_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

dev_iommu_fwspec_get.exit.thread:                 ; preds = %entry
  %.b124164 = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b124164, label %dev_iommu_fwspec_get.exit.thread.if.then_crit_edge, label %dev_iommu_fwspec_get.exit.thread.cleanup91_crit_edge

dev_iommu_fwspec_get.exit.thread.cleanup91_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

dev_iommu_fwspec_get.exit.thread.if.then_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %dev_iommu_fwspec_get.exit.thread.if.then_crit_edge, %dev_iommu_fwspec_get.exit.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it.i) #12
  %4 = call ptr @memset(ptr %it.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #12
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %it.i, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_sid.i) #12
  %6 = ptrtoint ptr %pci_sid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pci_sid.i, align 4, !annotation !307
  %bus.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %cmp.i.i = icmp eq ptr %8, @pci_bus_type
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.dev_get_dev_node.exit.i_crit_edge

if.then.dev_get_dev_node.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_get_dev_node.exit.i

if.then.i.i:                                      ; preds = %if.then
  %bus2.i.i = getelementptr i8, ptr %dev, i32 -128
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then.i.i
  %bus1.0.in.i.i = phi ptr [ %bus2.i.i, %if.then.i.i ], [ %parent.i.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %9 = ptrtoint ptr %bus1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bus1.0.i.i = load ptr, ptr %bus1.0.in.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus1.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bridge.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus1.0.i.i, i32 0, i32 20
  %12 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge.i.i, align 8
  %parent3.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent3.i.i, align 8
  br label %dev_get_dev_node.exit.i

dev_get_dev_node.exit.i:                          ; preds = %while.end.i.i, %if.then.dev_get_dev_node.exit.i_crit_edge
  %dev.sink.i.i = phi ptr [ %15, %while.end.i.i ], [ %dev, %if.then.dev_get_dev_node.exit.i_crit_edge ]
  %of_node5.i.i = getelementptr inbounds %struct.device, ptr %dev.sink.i.i, i32 0, i32 27
  %16 = ptrtoint ptr %of_node5.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node5.i.i, align 8
  %call6.i.i = call ptr @of_node_get(ptr noundef %17) #12
  %tobool.not.i126 = icmp eq ptr %call6.i.i, null
  br i1 %tobool.not.i126, label %dev_get_dev_node.exit.i.if.then.i127_crit_edge, label %lor.lhs.false.i

dev_get_dev_node.exit.i.if.then.i127_crit_edge:   ; preds = %dev_get_dev_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i127

lor.lhs.false.i:                                  ; preds = %dev_get_dev_node.exit.i
  %call1.i = call ptr @of_find_property(ptr noundef nonnull %call6.i.i, ptr noundef nonnull @.str.30, ptr noundef null) #12
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i127_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i127_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i127

if.then.i127:                                     ; preds = %lor.lhs.false.i.if.then.i127_crit_edge, %dev_get_dev_node.exit.i.if.then.i127_crit_edge
  call void @of_node_put(ptr noundef %call6.i.i) #12
  br label %arm_smmu_register_legacy_master.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %node.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i, i32 0, i32 8
  %18 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6.i.i, ptr %node.i, align 4
  %call3.i = call i32 @driver_for_each_device(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @arm_smmu_driver, i32 0, i32 5), ptr noundef null, ptr noundef nonnull %data.i, ptr noundef nonnull @__find_legacy_master_phandle) #12
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  call void @of_node_put(ptr noundef nonnull %call6.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.i.arm_smmu_register_legacy_master.exit_crit_edge, label %if.end5.i

if.end.i.arm_smmu_register_legacy_master.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_register_legacy_master.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp6.i = icmp slt i32 %call3.i, 0
  br i1 %cmp6.i, label %if.end5.i.arm_smmu_register_legacy_master.exit_crit_edge, label %if.end8.i

if.end5.i.arm_smmu_register_legacy_master.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_register_legacy_master.exit

if.end8.i:                                        ; preds = %if.end5.i
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 8
  %cmp9.i = icmp eq ptr %22, @pci_bus_type
  br i1 %cmp9.i, label %if.then10.i, label %if.end8.i.if.end12.i_crit_edge

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -136
  %call11.i = call i32 @pci_for_each_dma_alias(ptr noundef %add.ptr.i, ptr noundef nonnull @__arm_smmu_get_pci_sid, ptr noundef nonnull %pci_sid.i) #12
  %cur.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i, i32 0, i32 5
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pci_sid.i, ptr %cur.i, align 4
  %cur_count.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i, i32 0, i32 6
  %24 = ptrtoint ptr %cur_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %cur_count.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end12.i_crit_edge
  %of_node.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 3
  %call13.i = call i32 @iommu_fwspec_init(ptr noundef %dev, ptr noundef %fwnode.i, ptr noundef nonnull @arm_smmu_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.arm_smmu_register_legacy_master.exit_crit_edge

if.end12.i.arm_smmu_register_legacy_master.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_register_legacy_master.exit

if.end16.i:                                       ; preds = %if.end12.i
  %cur_count17.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i, i32 0, i32 6
  %27 = ptrtoint ptr %cur_count17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_count17.i, align 4
  %29 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #12
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %if.end16.i.arm_smmu_register_legacy_master.exit_crit_edge, label %if.end7.i.i.i, !prof !308

if.end16.i.arm_smmu_register_legacy_master.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_register_legacy_master.exit

if.end7.i.i.i:                                    ; preds = %if.end16.i
  %31 = extractvalue { i32, i1 } %29, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #17
  %tobool19.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool19.not.i, label %if.end7.i.i.i.arm_smmu_register_legacy_master.exit_crit_edge, label %if.end21.i

if.end7.i.i.i.arm_smmu_register_legacy_master.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_register_legacy_master.exit

if.end21.i:                                       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i, align 4
  %34 = ptrtoint ptr %cur_count17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_count17.i, align 4
  %call24.i = call i32 @of_phandle_iterator_args(ptr noundef nonnull %it.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %35) #12
  %36 = ptrtoint ptr %cur_count17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_count17.i, align 4
  %call26.i = call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef nonnull %call8.i.i.i, i32 noundef %37) #12
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #12
  br label %arm_smmu_register_legacy_master.exit

arm_smmu_register_legacy_master.exit:             ; preds = %if.end21.i, %if.end7.i.i.i.arm_smmu_register_legacy_master.exit_crit_edge, %if.end16.i.arm_smmu_register_legacy_master.exit_crit_edge, %if.end12.i.arm_smmu_register_legacy_master.exit_crit_edge, %if.end5.i.arm_smmu_register_legacy_master.exit_crit_edge, %if.end.i.arm_smmu_register_legacy_master.exit_crit_edge, %if.then.i127
  %smmu.0 = phi ptr [ null, %if.then.i127 ], [ null, %if.end.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ null, %if.end5.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ null, %if.end16.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ null, %if.end7.i.i.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ %33, %if.end21.i ], [ null, %if.end12.i.arm_smmu_register_legacy_master.exit_crit_edge ]
  %retval.0.i128 = phi i32 [ -19, %if.then.i127 ], [ -19, %if.end.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ %call3.i, %if.end5.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ -12, %if.end16.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ -12, %if.end7.i.i.i.arm_smmu_register_legacy_master.exit_crit_edge ], [ %call26.i, %if.end21.i ], [ %call13.i, %if.end12.i.arm_smmu_register_legacy_master.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_sid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i) #12
  %38 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i130 = icmp eq ptr %39, null
  br i1 %tobool.not.i130, label %arm_smmu_register_legacy_master.exit.dev_iommu_fwspec_get.exit134_crit_edge, label %if.then.i132

arm_smmu_register_legacy_master.exit.dev_iommu_fwspec_get.exit134_crit_edge: ; preds = %arm_smmu_register_legacy_master.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_iommu_fwspec_get.exit134

if.then.i132:                                     ; preds = %arm_smmu_register_legacy_master.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fwspec.i131 = getelementptr inbounds %struct.dev_iommu, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %fwspec.i131 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fwspec.i131, align 4
  br label %dev_iommu_fwspec_get.exit134

dev_iommu_fwspec_get.exit134:                     ; preds = %if.then.i132, %arm_smmu_register_legacy_master.exit.dev_iommu_fwspec_get.exit134_crit_edge
  %retval.0.i133 = phi ptr [ %41, %if.then.i132 ], [ null, %arm_smmu_register_legacy_master.exit.dev_iommu_fwspec_get.exit134_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i128)
  %tobool3.not = icmp eq i32 %retval.0.i128, 0
  br i1 %tobool3.not, label %dev_iommu_fwspec_get.exit134.if.end11_crit_edge, label %dev_iommu_fwspec_get.exit134.out_free_crit_edge

dev_iommu_fwspec_get.exit134.out_free_crit_edge:  ; preds = %dev_iommu_fwspec_get.exit134
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

dev_iommu_fwspec_get.exit134.if.end11_crit_edge:  ; preds = %dev_iommu_fwspec_get.exit134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else:                                          ; preds = %dev_iommu_fwspec_get.exit
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.else.cleanup91_crit_edge, label %land.lhs.true

if.else.cleanup91_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

land.lhs.true:                                    ; preds = %if.else
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %cmp = icmp eq ptr %43, @arm_smmu_ops
  br i1 %cmp, label %if.then6, label %land.lhs.true.cleanup91_crit_edge

land.lhs.true.cleanup91_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup91

if.then6:                                         ; preds = %land.lhs.true
  %iommu_fwnode = getelementptr inbounds %struct.iommu_fwspec, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %iommu_fwnode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iommu_fwnode, align 4
  %call.i.i = tail call ptr @driver_find_device(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @arm_smmu_driver, i32 0, i32 5), ptr noundef null, ptr noundef %45, ptr noundef nonnull @device_match_fwnode) #12
  tail call void @put_device(ptr noundef %call.i.i) #12
  %tobool.not.i135 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i135, label %if.then6.if.end11_crit_edge, label %cond.true.i

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

cond.true.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i136 = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i136 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i136, align 4
  br label %if.end11

if.end11:                                         ; preds = %cond.true.i, %if.then6.if.end11_crit_edge, %dev_iommu_fwspec_get.exit134.if.end11_crit_edge
  %smmu.1 = phi ptr [ %smmu.0, %dev_iommu_fwspec_get.exit134.if.end11_crit_edge ], [ %47, %cond.true.i ], [ null, %if.then6.if.end11_crit_edge ]
  %fwspec.0 = phi ptr [ %retval.0.i133, %dev_iommu_fwspec_get.exit134.if.end11_crit_edge ], [ %3, %cond.true.i ], [ %3, %if.then6.if.end11_crit_edge ]
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %fwspec.0, i32 0, i32 3
  %48 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp12186.not = icmp eq i32 %49, 0
  br i1 %cmp12186.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %streamid_mask = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu.1, i32 0, i32 14
  %50 = ptrtoint ptr %streamid_mask to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %streamid_mask, align 4
  %conv47 = zext i16 %51 to i32
  %neg = xor i32 %conv47, -1
  %smr_mask_mask = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu.1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %fwspec.0, i32 0, i32 4, i32 %i.0187
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %conv46 = and i32 %53, 65535
  %and48 = and i32 %conv46, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end57, label %do.end53

do.end53:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv46, i32 noundef %conv47) #16
  br label %out_free

if.end57:                                         ; preds = %for.body
  %shr44 = lshr i32 %53, 16
  %54 = ptrtoint ptr %smr_mask_mask to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %smr_mask_mask, align 2
  %conv59 = zext i16 %55 to i32
  %neg60 = xor i32 %conv59, -1
  %and61 = and i32 %shr44, %neg60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %for.inc, label %do.end66

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %conv59.le = zext i16 %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %shr44, i32 noundef %conv59.le) #16
  br label %out_free

for.inc:                                          ; preds = %if.end57
  %inc = add nuw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %49
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %56 = shl i32 %49, 1
  %57 = add i32 %56, 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #17
  %tobool73.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool73.not, label %for.end.out_free_crit_edge, label %if.end75

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end75:                                         ; preds = %for.end
  %58 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %smmu.1, ptr %call9.i.i, align 128
  %59 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call9.i.i, ptr %priv1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool77.not188 = icmp eq i32 %49, 0
  br i1 %tobool77.not188, label %if.end75.while.end_crit_edge, label %while.body.preheader

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep = getelementptr i8, ptr %call9.i.i, i32 4
  %62 = call ptr @memset(ptr %uglygep, i32 255, i32 %56)
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %if.end75.while.end_crit_edge
  %63 = ptrtoint ptr %smmu.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %smmu.1, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 12, i32 15
  %65 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i144, label %while.end.if.end83_crit_edge

while.end.if.end83_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then.i144:                                     ; preds = %while.end
  %call.i.i142 = call i32 @__pm_runtime_resume(ptr noundef %64, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp.i.i143 = icmp slt i32 %call.i.i142, 0
  br i1 %cmp.i.i143, label %if.then.i.i145, label %if.then.i144.if.end83_crit_edge

if.then.i144.if.end83_crit_edge:                  ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then.i.i145:                                   ; preds = %if.then.i144
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i145.out_cfg_free_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i145.out_cfg_free_crit_edge:            ; preds = %if.then.i.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cfg_free

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i145
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %out_cfg_free

if.end83:                                         ; preds = %if.then.i144.if.end83_crit_edge, %while.end.if.end83_crit_edge
  %67 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i.i147 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i147, label %if.end83.dev_iommu_priv_get.exit.i_crit_edge, label %if.then.i148.i

if.end83.dev_iommu_priv_get.exit.i_crit_edge:     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_iommu_priv_get.exit.i

if.then.i148.i:                                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fwspec.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv.i.i, align 4
  br label %dev_iommu_priv_get.exit.i

dev_iommu_priv_get.exit.i:                        ; preds = %if.then.i148.i, %if.end83.dev_iommu_priv_get.exit.i_crit_edge
  %retval.0.i156.i = phi ptr [ %70, %if.then.i148.i ], [ null, %if.end83.dev_iommu_priv_get.exit.i_crit_edge ]
  %retval.0.i149.i = phi ptr [ %72, %if.then.i148.i ], [ null, %if.end83.dev_iommu_priv_get.exit.i_crit_edge ]
  %73 = ptrtoint ptr %retval.0.i149.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %retval.0.i149.i, align 4
  %smrs3.i = getelementptr inbounds %struct.arm_smmu_device, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %smrs3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %smrs3.i, align 4
  %stream_map_mutex.i = getelementptr inbounds %struct.arm_smmu_device, ptr %74, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %stream_map_mutex.i, i32 noundef 0) #12
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i156.i, i32 0, i32 3
  %77 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not176.not.i = icmp eq i32 %78, 0
  br i1 %cmp.not176.not.i, label %dev_iommu_priv_get.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge, label %for.body.lr.ph.i

dev_iommu_priv_get.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge: ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_alloc_smes.exit

for.body.lr.ph.i:                                 ; preds = %dev_iommu_priv_get.exit.i
  %num_mapping_groups.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %74, i32 0, i32 13
  %tobool.not.i148 = icmp eq ptr %76, null
  %s2crs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %74, i32 0, i32 17
  br label %for.body.i

for.cond66.preheader.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp68.not180.not.i = icmp eq i32 %108, 0
  br i1 %cmp68.not180.not.i, label %for.cond66.preheader.i.arm_smmu_master_alloc_smes.exit_crit_edge, label %for.cond66.preheader.i.for.body80.i_crit_edge

for.cond66.preheader.i.for.body80.i_crit_edge:    ; preds = %for.cond66.preheader.i
  br label %for.body80.i

for.cond66.preheader.i.arm_smmu_master_alloc_smes.exit_crit_edge: ; preds = %for.cond66.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_alloc_smes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0177.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc65.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.arm_smmu_master_cfg, ptr %retval.0.i149.i, i32 0, i32 1, i32 %i.0177.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.i, align 2
  %arrayidx19.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i156.i, i32 0, i32 4, i32 %i.0177.i
  %81 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx19.i, align 4
  %conv20.i = trunc i32 %82 to i16
  %shr40.i = lshr i32 %82, 16
  %conv41.i = trunc i32 %shr40.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %80)
  %cmp42.not.i = icmp eq i16 %80, -1
  br i1 %cmp42.not.i, label %if.end.i149, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i149:                                      ; preds = %for.body.i
  %83 = ptrtoint ptr %smrs3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %smrs3.i, align 4
  %tobool.not.i150.i = icmp eq ptr %84, null
  br i1 %tobool.not.i150.i, label %arm_smmu_find_sme.exit.thread162.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i149
  %85 = ptrtoint ptr %num_mapping_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_mapping_groups.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp69.not.i.i = icmp eq i32 %86, 0
  br i1 %cmp69.not.i.i, label %for.cond.preheader.i.i.cleanup.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cleanup.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

arm_smmu_find_sme.exit.thread162.i:               ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = and i32 %82, 65535
  br label %if.end48.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %free_idx.073.i.i = phi i32 [ %free_idx.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -28, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.070.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %valid.i.i = getelementptr %struct.arm_smmu_smr, ptr %84, i32 %i.070.i.i, i32 2
  %87 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %valid.i.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool3.not.i.i = icmp eq i8 %88, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end9.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_idx.073.i.i)
  %cmp5.i.i = icmp slt i32 %free_idx.073.i.i, 0
  %spec.select.i.i = select i1 %cmp5.i.i, i32 %i.070.i.i, i32 %free_idx.073.i.i
  br label %for.inc.i.i

if.end9.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.arm_smmu_smr, ptr %84, i32 %i.070.i.i
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.i.i, align 2
  %and65.i.i = and i16 %90, %conv41.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and65.i.i, i16 %conv41.i)
  %cmp15.i.i = icmp eq i16 %and65.i.i, %conv41.i
  br i1 %cmp15.i.i, label %land.lhs.true.i.i, label %if.end9.i.i.if.end27.i.i_crit_edge

if.end9.i.i.if.end27.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %conv13.i.i = zext i16 %90 to i32
  %id19.i.i = getelementptr %struct.arm_smmu_smr, ptr %84, i32 %i.070.i.i, i32 1
  %91 = ptrtoint ptr %id19.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %id19.i.i, align 2
  %xor68.i.i = xor i16 %92, %conv20.i
  %xor.i.i = zext i16 %xor68.i.i to i32
  %neg.i.i = xor i32 %conv13.i.i, -1
  %and24.i.i = and i32 %xor.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true.i.i.arm_smmu_find_sme.exit.i_crit_edge, label %land.lhs.true.i.i.if.end27.i.i_crit_edge

land.lhs.true.i.i.if.end27.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

land.lhs.true.i.i.arm_smmu_find_sme.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_find_sme.exit.i

if.end27.i.i:                                     ; preds = %land.lhs.true.i.i.if.end27.i.i_crit_edge, %if.end9.i.i.if.end27.i.i_crit_edge
  %id30.i.i = getelementptr %struct.arm_smmu_smr, ptr %84, i32 %i.070.i.i, i32 1
  %93 = ptrtoint ptr %id30.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %id30.i.i, align 2
  %xor3266.i.i = xor i16 %94, %conv20.i
  %xor32.i.i = zext i16 %xor3266.i.i to i32
  %or67.i.i = or i16 %90, %conv41.i
  %or.i.i = zext i16 %or67.i.i to i32
  %neg37.i.i = xor i32 %or.i.i, -1
  %and38.i.i = and i32 %xor32.i.i, %neg37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end27.i.i.cleanup.i_crit_edge, label %if.end27.i.i.for.inc.i.i_crit_edge

if.end27.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end27.i.i.cleanup.i_crit_edge:                 ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.inc.i.i:                                      ; preds = %if.end27.i.i.for.inc.i.i_crit_edge, %if.then4.i.i
  %free_idx.1.i.i = phi i32 [ %free_idx.073.i.i, %if.end27.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.then4.i.i ]
  %inc.i.i = add nuw i32 %i.070.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %86
  br i1 %exitcond.not.i.i, label %for.inc.i.i.arm_smmu_find_sme.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.arm_smmu_find_sme.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_find_sme.exit.i

arm_smmu_find_sme.exit.i:                         ; preds = %for.inc.i.i.arm_smmu_find_sme.exit.i_crit_edge, %land.lhs.true.i.i.arm_smmu_find_sme.exit.i_crit_edge
  %retval.0.i152.i = phi i32 [ %i.070.i.i, %land.lhs.true.i.i.arm_smmu_find_sme.exit.i_crit_edge ], [ %free_idx.1.i.i, %for.inc.i.i.arm_smmu_find_sme.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i152.i)
  %cmp45.i = icmp slt i32 %retval.0.i152.i, 0
  br i1 %cmp45.i, label %arm_smmu_find_sme.exit.i.cleanup.i_crit_edge, label %arm_smmu_find_sme.exit.i.if.end48.i_crit_edge

arm_smmu_find_sme.exit.i.if.end48.i_crit_edge:    ; preds = %arm_smmu_find_sme.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

arm_smmu_find_sme.exit.i.cleanup.i_crit_edge:     ; preds = %arm_smmu_find_sme.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end48.i:                                       ; preds = %arm_smmu_find_sme.exit.i.if.end48.i_crit_edge, %arm_smmu_find_sme.exit.thread162.i
  %retval.0.i152165.i = phi i32 [ %conv.i.i, %arm_smmu_find_sme.exit.thread162.i ], [ %retval.0.i152.i, %arm_smmu_find_sme.exit.i.if.end48.i_crit_edge ]
  br i1 %tobool.not.i148, label %if.end48.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end48.i.for.inc.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end48.i
  %95 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s2crs.i, align 4
  %count.i = getelementptr %struct.arm_smmu_s2cr, ptr %96, i32 %retval.0.i152165.i, i32 1
  %97 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp50.i = icmp eq i32 %98, 0
  br i1 %cmp50.i, label %if.then52.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx53.i = getelementptr %struct.arm_smmu_smr, ptr %76, i32 %retval.0.i152165.i
  %id.i = getelementptr %struct.arm_smmu_smr, ptr %76, i32 %retval.0.i152165.i, i32 1
  %99 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv20.i, ptr %id.i, align 2
  %100 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv41.i, ptr %arrayidx53.i, align 2
  %valid.i = getelementptr %struct.arm_smmu_smr, ptr %76, i32 %retval.0.i152165.i, i32 2
  %101 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %valid.i, align 2
  br label %for.inc.i

cleanup.i:                                        ; preds = %arm_smmu_find_sme.exit.i.cleanup.i_crit_edge, %if.end27.i.i.cleanup.i_crit_edge, %for.cond.preheader.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end27.i.i.cleanup.i_crit_edge ], [ -28, %for.cond.preheader.i.i.cleanup.i_crit_edge ], [ %retval.0.i152.i, %arm_smmu_find_sme.exit.i.cleanup.i_crit_edge ], [ -17, %for.body.i.cleanup.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0177.i)
  %tobool85.not182.i = icmp eq i32 %i.0177.i, 0
  br i1 %tobool85.not182.i, label %cleanup.i.arm_smmu_master_alloc_smes.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  br label %while.body.i

cleanup.i.arm_smmu_master_alloc_smes.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_alloc_smes.exit

for.inc.i:                                        ; preds = %if.then52.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end48.i.for.inc.i_crit_edge
  %102 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s2crs.i, align 4
  %count60.i = getelementptr %struct.arm_smmu_s2cr, ptr %103, i32 %retval.0.i152165.i, i32 1
  %104 = ptrtoint ptr %count60.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count60.i, align 4
  %inc.i = add i32 %105, 1
  store i32 %inc.i, ptr %count60.i, align 4
  %conv61.i = trunc i32 %retval.0.i152165.i to i16
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv61.i, ptr %arrayidx.i, align 2
  %inc65.i = add nuw i32 %i.0177.i, 1
  %107 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_ids.i, align 4
  %cmp.not.i = icmp ult i32 %inc65.i, %108
  br i1 %cmp.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.cond66.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body80.i:                                     ; preds = %for.body80.i.for.body80.i_crit_edge, %for.cond66.preheader.i.for.body80.i_crit_edge
  %i.1181.i = phi i32 [ %inc82.i, %for.body80.i.for.body80.i_crit_edge ], [ 0, %for.cond66.preheader.i.for.body80.i_crit_edge ]
  %arrayidx73.i = getelementptr %struct.arm_smmu_master_cfg, ptr %retval.0.i149.i, i32 0, i32 1, i32 %i.1181.i
  %109 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx73.i, align 2
  %conv74.i = sext i16 %110 to i32
  call fastcc void @arm_smmu_write_sme(ptr noundef %74, i32 noundef %conv74.i) #12
  %inc82.i = add nuw i32 %i.1181.i, 1
  %111 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_ids.i, align 4
  %cmp68.not.i = icmp ult i32 %inc82.i, %112
  br i1 %cmp68.not.i, label %for.body80.i.for.body80.i_crit_edge, label %for.body80.i.arm_smmu_master_alloc_smes.exit_crit_edge

for.body80.i.arm_smmu_master_alloc_smes.exit_crit_edge: ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_alloc_smes.exit

for.body80.i.for.body80.i_crit_edge:              ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body80.i

while.body.i:                                     ; preds = %arm_smmu_free_sme.exit.i.while.body.i_crit_edge, %cleanup.i.while.body.i_crit_edge
  %i.2183.i = phi i32 [ %dec.i, %arm_smmu_free_sme.exit.i.while.body.i_crit_edge ], [ %i.0177.i, %cleanup.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.2183.i, -1
  %arrayidx87.i = getelementptr %struct.arm_smmu_master_cfg, ptr %retval.0.i149.i, i32 0, i32 1, i32 %dec.i
  %113 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx87.i, align 2
  %conv88.i = sext i16 %114 to i32
  %115 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s2crs.i, align 4
  %count.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %116, i32 %conv88.i, i32 1
  %117 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %118, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i153.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i153.i, label %if.end.i.i150, label %while.body.i.arm_smmu_free_sme.exit.i_crit_edge

while.body.i.arm_smmu_free_sme.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_free_sme.exit.i

if.end.i.i150:                                    ; preds = %while.body.i
  %119 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s2crs.i, align 4
  %arrayidx2.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %120, i32 %conv88.i
  %121 = load i8, ptr @disable_bypass, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool4.not.i.i = icmp eq i8 %121, 0
  %cond.i.i = select i1 %tobool4.not.i.i, i32 1, i32 2
  %122 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 0, ptr %arrayidx2.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx2.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx2.i.i, i32 8
  %123 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx2.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %cond.i.i, ptr %.compoundliteral.sroa.2.0.arrayidx2.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx2.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx2.i.i, i32 12
  %124 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx2.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.3.0.arrayidx2.sroa_idx.i.i, align 4
  %125 = ptrtoint ptr %smrs3.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %smrs3.i, align 4
  %tobool5.not.i.i = icmp eq ptr %126, null
  br i1 %tobool5.not.i.i, label %if.end.i.i150.arm_smmu_free_sme.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i150.arm_smmu_free_sme.exit.i_crit_edge: ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_free_sme.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i150
  call void @__sanitizer_cov_trace_pc() #14
  %valid.i154.i = getelementptr %struct.arm_smmu_smr, ptr %126, i32 %conv88.i, i32 2
  %127 = ptrtoint ptr %valid.i154.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %valid.i154.i, align 2
  br label %arm_smmu_free_sme.exit.i

arm_smmu_free_sme.exit.i:                         ; preds = %if.then6.i.i, %if.end.i.i150.arm_smmu_free_sme.exit.i_crit_edge, %while.body.i.arm_smmu_free_sme.exit.i_crit_edge
  %128 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 -1, ptr %arrayidx87.i, align 2
  %tobool85.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool85.not.i, label %arm_smmu_free_sme.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge, label %arm_smmu_free_sme.exit.i.while.body.i_crit_edge

arm_smmu_free_sme.exit.i.while.body.i_crit_edge:  ; preds = %arm_smmu_free_sme.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

arm_smmu_free_sme.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge: ; preds = %arm_smmu_free_sme.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_alloc_smes.exit

arm_smmu_master_alloc_smes.exit:                  ; preds = %arm_smmu_free_sme.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge, %for.body80.i.arm_smmu_master_alloc_smes.exit_crit_edge, %cleanup.i.arm_smmu_master_alloc_smes.exit_crit_edge, %for.cond66.preheader.i.arm_smmu_master_alloc_smes.exit_crit_edge, %dev_iommu_priv_get.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge
  %retval.0.i151 = phi i32 [ 0, %dev_iommu_priv_get.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge ], [ 0, %for.cond66.preheader.i.arm_smmu_master_alloc_smes.exit_crit_edge ], [ %ret.0.i, %cleanup.i.arm_smmu_master_alloc_smes.exit_crit_edge ], [ 0, %for.body80.i.arm_smmu_master_alloc_smes.exit_crit_edge ], [ %ret.0.i, %arm_smmu_free_sme.exit.i.arm_smmu_master_alloc_smes.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %stream_map_mutex.i) #12
  %129 = ptrtoint ptr %smmu.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %smmu.1, align 4
  %disable_depth.i.i152 = getelementptr inbounds %struct.device, ptr %130, i32 0, i32 12, i32 15
  %131 = ptrtoint ptr %disable_depth.i.i152 to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load.i.i153 = load i16, ptr %disable_depth.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i153)
  %tobool.not.i.i154 = icmp ult i16 %bf.load.i.i153, 8192
  br i1 %tobool.not.i.i154, label %if.then.i156, label %arm_smmu_master_alloc_smes.exit.arm_smmu_rpm_put.exit_crit_edge

arm_smmu_master_alloc_smes.exit.arm_smmu_rpm_put.exit_crit_edge: ; preds = %arm_smmu_master_alloc_smes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_put.exit

if.then.i156:                                     ; preds = %arm_smmu_master_alloc_smes.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i155 = call i32 @__pm_runtime_suspend(ptr noundef %130, i32 noundef 13) #12
  br label %arm_smmu_rpm_put.exit

arm_smmu_rpm_put.exit:                            ; preds = %if.then.i156, %arm_smmu_master_alloc_smes.exit.arm_smmu_rpm_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i151)
  %tobool85.not = icmp eq i32 %retval.0.i151, 0
  br i1 %tobool85.not, label %if.end87, label %arm_smmu_rpm_put.exit.out_cfg_free_crit_edge

arm_smmu_rpm_put.exit.out_cfg_free_crit_edge:     ; preds = %arm_smmu_rpm_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cfg_free

if.end87:                                         ; preds = %arm_smmu_rpm_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %smmu.1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %smmu.1, align 4
  %call89 = call ptr @device_link_add(ptr noundef %dev, ptr noundef %133, i32 noundef 20) #12
  %iommu = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu.1, i32 0, i32 29
  br label %cleanup91

out_cfg_free:                                     ; preds = %arm_smmu_rpm_put.exit.out_cfg_free_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i145.out_cfg_free_crit_edge
  %ret.0 = phi i32 [ %retval.0.i151, %arm_smmu_rpm_put.exit.out_cfg_free_crit_edge ], [ %call.i.i142, %if.then.i.i145.out_cfg_free_crit_edge ], [ %call.i.i142, %do.end11.i.i.i.i.i.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %out_free

out_free:                                         ; preds = %out_cfg_free, %for.end.out_free_crit_edge, %do.end66, %do.end53, %dev_iommu_fwspec_get.exit134.out_free_crit_edge
  %ret.1 = phi i32 [ %retval.0.i128, %dev_iommu_fwspec_get.exit134.out_free_crit_edge ], [ %ret.0, %out_cfg_free ], [ -12, %for.end.out_free_crit_edge ], [ -22, %do.end53 ], [ -22, %do.end66 ]
  call void @iommu_fwspec_free(ptr noundef %dev) #12
  %134 = inttoptr i32 %ret.1 to ptr
  br label %cleanup91

cleanup91:                                        ; preds = %out_free, %if.end87, %land.lhs.true.cleanup91_crit_edge, %if.else.cleanup91_crit_edge, %dev_iommu_fwspec_get.exit.thread.cleanup91_crit_edge
  %retval.0 = phi ptr [ %134, %out_free ], [ %iommu, %if.end87 ], [ inttoptr (i32 -19 to ptr), %land.lhs.true.cleanup91_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else.cleanup91_crit_edge ], [ inttoptr (i32 -19 to ptr), %dev_iommu_fwspec_get.exit.thread.cleanup91_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @arm_smmu_ops
  br i1 %cmp.not, label %dev_iommu_priv_get.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %lor.lhs.false
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i22, label %dev_iommu_priv_get.exit.if.end6_crit_edge

dev_iommu_priv_get.exit.if.end6_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i22:                                      ; preds = %dev_iommu_priv_get.exit
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i22.if.end6_crit_edge

if.then.i22.if.end6_crit_edge:                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i.i:                                      ; preds = %if.then.i22
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %cleanup

if.end6:                                          ; preds = %if.then.i22.if.end6_crit_edge, %dev_iommu_priv_get.exit.if.end6_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %stream_map_mutex.i = getelementptr inbounds %struct.arm_smmu_device, ptr %15, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %stream_map_mutex.i, i32 noundef 0) #12
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not21.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not21.not.i, label %if.end6.arm_smmu_master_free_smes.exit_crit_edge, label %for.body.lr.ph.i

if.end6.arm_smmu_master_free_smes.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_free_smes.exit

for.body.lr.ph.i:                                 ; preds = %if.end6
  %s2crs.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %15, i32 0, i32 17
  %smrs.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %15, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.arm_smmu_master_cfg, ptr %7, i32 0, i32 1, i32 %i.022.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  %conv.i = sext i16 %19 to i32
  %20 = ptrtoint ptr %s2crs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s2crs.i.i, align 4
  %count.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %21, i32 %conv.i, i32 1
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i.i, align 4
  %dec.i.i = add i32 %23, -1
  store i32 %dec.i.i, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i24 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i24, label %if.end.i.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i
  %24 = ptrtoint ptr %s2crs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s2crs.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.arm_smmu_s2cr, ptr %25, i32 %conv.i
  %26 = load i8, ptr @disable_bypass, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool4.not.i.i = icmp eq i8 %26, 0
  %cond.i.i = select i1 %tobool4.not.i.i, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 0, ptr %arrayidx2.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx2.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx2.i.i, i32 8
  %28 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx2.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i.i, ptr %.compoundliteral.sroa.2.0.arrayidx2.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx2.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx2.i.i, i32 12
  %29 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx2.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.3.0.arrayidx2.sroa_idx.i.i, align 4
  %30 = ptrtoint ptr %smrs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smrs.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %31, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.then.i25_crit_edge, label %if.then6.i.i

if.end.i.i.if.then.i25_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i25

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %valid.i.i = getelementptr %struct.arm_smmu_smr, ptr %31, i32 %conv.i, i32 2
  %32 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %valid.i.i, align 2
  br label %if.then.i25

if.then.i25:                                      ; preds = %if.then6.i.i, %if.end.i.i.if.then.i25_crit_edge
  tail call fastcc void @arm_smmu_write_sme(ptr noundef %15, i32 noundef %conv.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i25, %for.body.i.if.end.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %arrayidx.i, align 2
  %inc.i = add nuw i32 %i.022.i, 1
  %34 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ids.i, align 4
  %cmp.not.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.not.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.arm_smmu_master_free_smes.exit_crit_edge

if.end.i.arm_smmu_master_free_smes.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_master_free_smes.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

arm_smmu_master_free_smes.exit:                   ; preds = %if.end.i.arm_smmu_master_free_smes.exit_crit_edge, %if.end6.arm_smmu_master_free_smes.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_map_mutex.i) #12
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 4
  %disable_depth.i.i26 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 12, i32 15
  %38 = ptrtoint ptr %disable_depth.i.i26 to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i.i27 = load i16, ptr %disable_depth.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i27)
  %tobool.not.i.i28 = icmp ult i16 %bf.load.i.i27, 8192
  br i1 %tobool.not.i.i28, label %if.then.i30, label %arm_smmu_master_free_smes.exit.arm_smmu_rpm_put.exit_crit_edge

arm_smmu_master_free_smes.exit.arm_smmu_rpm_put.exit_crit_edge: ; preds = %arm_smmu_master_free_smes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_put.exit

if.then.i30:                                      ; preds = %arm_smmu_master_free_smes.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i29 = tail call i32 @__pm_runtime_suspend(ptr noundef %37, i32 noundef 13) #12
  br label %arm_smmu_rpm_put.exit

arm_smmu_rpm_put.exit:                            ; preds = %if.then.i30, %arm_smmu_master_free_smes.exit.arm_smmu_rpm_put.exit_crit_edge
  %39 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %priv1.i, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @iommu_fwspec_free(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %arm_smmu_rpm_put.exit, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_probe_finalize(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %impl = getelementptr inbounds %struct.arm_smmu_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %impl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.if.end_crit_edge, label %land.lhs.true

dev_iommu_priv_get.exit.if.end_crit_edge:         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %dev_iommu_priv_get.exit
  %probe_finalize = getelementptr inbounds %struct.arm_smmu_impl, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %probe_finalize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %probe_finalize, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef %5, ptr noundef %dev) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %dev_iommu_priv_get.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_smmu_device_group(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_fwspec_get.exit_crit_edge, label %if.then.i105

entry.dev_iommu_fwspec_get.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_iommu_fwspec_get.exit

if.then.i105:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwspec.i, align 4
  br label %dev_iommu_fwspec_get.exit

dev_iommu_fwspec_get.exit:                        ; preds = %if.then.i105, %entry.dev_iommu_fwspec_get.exit_crit_edge
  %retval.0.i108 = phi ptr [ %3, %if.then.i105 ], [ null, %entry.dev_iommu_fwspec_get.exit_crit_edge ]
  %retval.0.i106 = phi ptr [ %5, %if.then.i105 ], [ null, %entry.dev_iommu_fwspec_get.exit_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i108 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i108, align 4
  %stream_map_mutex = getelementptr inbounds %struct.arm_smmu_device, ptr %7, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %stream_map_mutex, i32 noundef 0) #12
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i106, i32 0, i32 3
  %8 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not116.not = icmp eq i32 %9, 0
  br i1 %cmp.not116.not, label %dev_iommu_fwspec_get.exit.if.end24_crit_edge, label %for.body.lr.ph

dev_iommu_fwspec_get.exit.if.end24_crit_edge:     ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

for.body.lr.ph:                                   ; preds = %dev_iommu_fwspec_get.exit
  %s2crs = getelementptr inbounds %struct.arm_smmu_device, ptr %7, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %group.0117 = phi ptr [ null, %for.body.lr.ph ], [ %19, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.arm_smmu_master_cfg, ptr %retval.0.i108, i32 0, i32 1, i32 %i.0118
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %11 to i32
  %tobool.not = icmp eq ptr %group.0117, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %s2crs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s2crs, align 4
  %arrayidx6 = getelementptr %struct.arm_smmu_s2cr, ptr %13, i32 %conv
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %tobool8.not = icmp eq ptr %15, null
  %cmp13.not = icmp eq ptr %group.0117, %15
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp13.not
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %stream_map_mutex) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %16 = ptrtoint ptr %s2crs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s2crs, align 4
  %arrayidx18 = getelementptr %struct.arm_smmu_s2cr, ptr %17, i32 %conv
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %inc = add nuw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %for.end.if.end24_crit_edge, label %if.then21

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %stream_map_mutex) #12
  %call23 = tail call ptr @iommu_group_ref_get(ptr noundef nonnull %19) #12
  br label %cleanup

if.end24:                                         ; preds = %for.end.if.end24_crit_edge, %dev_iommu_fwspec_get.exit.if.end24_crit_edge
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 8
  %cmp25 = icmp eq ptr %21, @pci_bus_type
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call ptr @pci_device_group(ptr noundef %dev) #12
  br label %if.end37

if.else:                                          ; preds = %if.end24
  %cmp30 = icmp eq ptr %21, @fsl_mc_bus_type
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call ptr @fsl_mc_device_group(ptr noundef %dev) #12
  br label %if.end37

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call35 = tail call ptr @generic_device_group(ptr noundef %dev) #12
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then32, %if.then27
  %group.1 = phi ptr [ %call28, %if.then27 ], [ %call33, %if.then32 ], [ %call35, %if.else34 ]
  %cmp.i = icmp ugt ptr %group.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end37.if.end61_crit_edge, label %for.cond40.preheader

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

for.cond40.preheader:                             ; preds = %if.end37
  %22 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp42.not119.not = icmp eq i32 %23, 0
  br i1 %cmp42.not119.not, label %for.cond40.preheader.if.end61_crit_edge, label %for.body54.lr.ph

for.cond40.preheader.if.end61_crit_edge:          ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

for.body54.lr.ph:                                 ; preds = %for.cond40.preheader
  %s2crs55 = getelementptr inbounds %struct.arm_smmu_device, ptr %7, i32 0, i32 17
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.lr.ph
  %i.1120 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc59, %for.body54.for.body54_crit_edge ]
  %arrayidx47 = getelementptr %struct.arm_smmu_master_cfg, ptr %retval.0.i108, i32 0, i32 1, i32 %i.1120
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx47, align 2
  %conv48 = sext i16 %25 to i32
  %26 = ptrtoint ptr %s2crs55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s2crs55, align 4
  %arrayidx56 = getelementptr %struct.arm_smmu_s2cr, ptr %27, i32 %conv48
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %group.1, ptr %arrayidx56, align 4
  %inc59 = add nuw i32 %i.1120, 1
  %29 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_ids, align 4
  %cmp42.not = icmp ult i32 %inc59, %30
  br i1 %cmp42.not, label %for.body54.for.body54_crit_edge, label %for.body54.if.end61_crit_edge

for.body54.if.end61_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54

if.end61:                                         ; preds = %for.body54.if.end61_crit_edge, %for.cond40.preheader.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_map_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then21, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %call23, %if.then21 ], [ %group.1, %if.end61 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_enable_nesting(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %init_mutex = getelementptr i8, ptr %domain, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %init_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stage = getelementptr i8, ptr %domain, i32 -140
  %2 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %stage, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -1, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %init_mutex) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_set_pgtable_quirks(ptr noundef %domain, i32 noundef %quirks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -172
  %init_mutex = getelementptr i8, ptr %domain, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %init_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pgtbl_quirks = getelementptr i8, ptr %domain, i32 -164
  %2 = ptrtoint ptr %pgtbl_quirks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %quirks, ptr %pgtbl_quirks, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -1, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %init_mutex) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_get_resv_regions(ptr nocapture noundef readnone %dev, ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iommu_alloc_resv_region(i32 noundef 134217728, i32 noundef 1048576, i32 noundef 26, i32 noundef 4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %1, ptr noundef %head) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_iommu_put_resv_regions(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  %fwid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwid) #12
  %1 = ptrtoint ptr %fwid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fwid, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.end20, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end20:                                         ; preds = %entry
  %args5 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args5, align 4
  %and19 = and i32 %5, 65535
  %6 = ptrtoint ptr %fwid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and19, ptr %fwid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp22.not = icmp eq i32 %3, 1
  br i1 %cmp22.not, label %if.end20.if.else_crit_edge, label %do.end48

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.end48:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx32 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx32, align 4
  %shl52 = shl i32 %8, 16
  %9 = ptrtoint ptr %fwid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fwid, align 4
  %or54 = or i32 %10, %shl52
  store i32 %or54, ptr %fwid, align 4
  br label %if.end83

if.else:                                          ; preds = %if.end20.if.else_crit_edge, %entry.if.else_crit_edge
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.32, ptr noundef nonnull %mask, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool55.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool55.not, label %do.end77, label %if.else.if.end83_crit_edge

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

do.end77:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %shl79 = shl i32 %14, 16
  %15 = ptrtoint ptr %fwid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fwid, align 4
  %or81 = or i32 %16, %shl79
  store i32 %or81, ptr %fwid, align 4
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.else.if.end83_crit_edge, %do.end48
  %call84 = call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef nonnull %fwid, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwid) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  ret i32 %call84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_def_domain_type(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %impl1 = getelementptr inbounds %struct.arm_smmu_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %impl1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %land.lhs.true

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %dev_iommu_priv_get.exit
  %def_domain_type = getelementptr inbounds %struct.arm_smmu_impl, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %def_domain_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %def_domain_type, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 %9(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %dev_iommu_priv_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %dev_iommu_priv_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_context_fault(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -172
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %cfg = getelementptr i8, ptr %dev, i32 -156
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg, align 4
  %conv = zext i8 %3 to i32
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numpage, align 4
  %add = add i32 %5, %conv
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef %add, i32 noundef 88) #12
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %shl.i.i
  %add.ptr.i56 = getelementptr i8, ptr %add.ptr.i.i, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #12, !srcloc !304
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.end.i ]
  %and = and i32 %retval.0.i, -1073741314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %arm_smmu_readl.exit.cleanup_crit_edge, label %if.end

arm_smmu_readl.exit.cleanup_crit_edge:            ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %arm_smmu_readl.exit
  %16 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numpage, align 4
  %add4 = add i32 %17, %conv
  %18 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %impl.i, align 4
  %tobool.not.i58 = icmp eq ptr %19, null
  br i1 %tobool.not.i58, label %if.end.if.end.i68_crit_edge, label %land.lhs.true.i60

if.end.if.end.i68_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i68

land.lhs.true.i60:                                ; preds = %if.end
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool2.not.i59 = icmp eq ptr %21, null
  br i1 %tobool2.not.i59, label %land.lhs.true.i60.if.end.i68_crit_edge, label %if.then.i62, !prof !295

land.lhs.true.i60.if.end.i68_crit_edge:           ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i68

if.then.i62:                                      ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #14
  %call.i61 = tail call i32 %21(ptr noundef %1, i32 noundef %add4, i32 noundef 104) #12
  br label %arm_smmu_readl.exit70

if.end.i68:                                       ; preds = %land.lhs.true.i60.if.end.i68_crit_edge, %if.end.if.end.i68_crit_edge
  %base.i.i63 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base.i.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i63, align 4
  %pgshift.i.i64 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %pgshift.i.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pgshift.i.i64, align 4
  %shl.i.i65 = shl i32 %add4, %25
  %add.ptr.i.i66 = getelementptr i8, ptr %23, i32 %shl.i.i65
  %add.ptr.i67 = getelementptr i8, ptr %add.ptr.i.i66, i32 104
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #12, !srcloc !304
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  br label %arm_smmu_readl.exit70

arm_smmu_readl.exit70:                            ; preds = %if.end.i68, %if.then.i62
  %retval.0.i69 = phi i32 [ %call.i61, %if.then.i62 ], [ %27, %if.end.i68 ]
  %28 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %numpage, align 4
  %add7 = add i32 %29, %conv
  %30 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %impl.i, align 4
  %tobool.not.i72 = icmp eq ptr %31, null
  br i1 %tobool.not.i72, label %arm_smmu_readl.exit70.if.end.i82_crit_edge, label %land.lhs.true.i74

arm_smmu_readl.exit70.if.end.i82_crit_edge:       ; preds = %arm_smmu_readl.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i82

land.lhs.true.i74:                                ; preds = %arm_smmu_readl.exit70
  %read_reg64.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read_reg64.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_reg64.i, align 4
  %tobool2.not.i73 = icmp eq ptr %33, null
  br i1 %tobool2.not.i73, label %land.lhs.true.i74.if.end.i82_crit_edge, label %if.then.i76, !prof !295

land.lhs.true.i74.if.end.i82_crit_edge:           ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i82

if.then.i76:                                      ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #14
  %call.i75 = tail call i64 %33(ptr noundef %1, i32 noundef %add7, i32 noundef 96) #12
  %extract.t = trunc i64 %call.i75 to i32
  br label %arm_smmu_readq.exit

if.end.i82:                                       ; preds = %land.lhs.true.i74.if.end.i82_crit_edge, %arm_smmu_readl.exit70.if.end.i82_crit_edge
  %base.i.i77 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %base.i.i77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i77, align 4
  %pgshift.i.i78 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %pgshift.i.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pgshift.i.i78, align 4
  %shl.i.i79 = shl i32 %add7, %37
  %add.ptr.i.i80 = getelementptr i8, ptr %35, i32 %shl.i.i79
  %add.ptr.i81 = getelementptr i8, ptr %add.ptr.i.i80, i32 96
  %add.ptr.i16.i = getelementptr i32, ptr %add.ptr.i81, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #12, !srcloc !304
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #12, !srcloc !304
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  br label %arm_smmu_readq.exit

arm_smmu_readq.exit:                              ; preds = %if.end.i82, %if.then.i76
  %retval.0.i83.off0 = phi i32 [ %extract.t, %if.then.i76 ], [ %40, %if.end.i82 ]
  %shl = shl nuw nsw i32 %conv, 2
  %add10 = or i32 %shl, 1024
  %41 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %impl.i, align 4
  %tobool.not.i85 = icmp eq ptr %42, null
  br i1 %tobool.not.i85, label %arm_smmu_readq.exit.if.end.i95_crit_edge, label %land.lhs.true.i87

arm_smmu_readq.exit.if.end.i95_crit_edge:         ; preds = %arm_smmu_readq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i95

land.lhs.true.i87:                                ; preds = %arm_smmu_readq.exit
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool2.not.i86 = icmp eq ptr %44, null
  br i1 %tobool2.not.i86, label %land.lhs.true.i87.if.end.i95_crit_edge, label %if.then.i89, !prof !295

land.lhs.true.i87.if.end.i95_crit_edge:           ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i95

if.then.i89:                                      ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #14
  %call.i88 = tail call i32 %44(ptr noundef %1, i32 noundef 1, i32 noundef %add10) #12
  br label %arm_smmu_readl.exit97

if.end.i95:                                       ; preds = %land.lhs.true.i87.if.end.i95_crit_edge, %arm_smmu_readq.exit.if.end.i95_crit_edge
  %base.i.i90 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %base.i.i90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i90, align 4
  %pgshift.i.i91 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %pgshift.i.i91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pgshift.i.i91, align 4
  %shl.i.i92 = shl nuw i32 1, %48
  %add.ptr.i.i93 = getelementptr i8, ptr %46, i32 %shl.i.i92
  %add.ptr.i94 = getelementptr i8, ptr %add.ptr.i.i93, i32 %add10
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #12, !srcloc !304
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  br label %arm_smmu_readl.exit97

arm_smmu_readl.exit97:                            ; preds = %if.end.i95, %if.then.i89
  %retval.0.i96 = phi i32 [ %call.i88, %if.then.i89 ], [ %50, %if.end.i95 ]
  %and12 = lshr i32 %retval.0.i69, 4
  %and12.lobit = and i32 %and12, 1
  %call14 = tail call i32 @report_iommu_fault(ptr noundef %dev, ptr noundef null, i32 noundef %retval.0.i83.off0, i32 noundef %and12.lobit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call14)
  %cmp = icmp eq i32 %call14, -38
  br i1 %cmp, label %do.body, label %arm_smmu_readl.exit97.if.end25_crit_edge

arm_smmu_readl.exit97.if.end25_crit_edge:         ; preds = %arm_smmu_readl.exit97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.body:                                          ; preds = %arm_smmu_readl.exit97
  %call17 = tail call i32 @___ratelimit(ptr noundef nonnull @arm_smmu_context_fault._rs, ptr noundef nonnull @__func__.arm_smmu_context_fault) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body.if.end25_crit_edge, label %do.end

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i, i32 noundef %retval.0.i83.off0, i32 noundef %retval.0.i69, i32 noundef %retval.0.i96, i32 noundef %conv) #16
  br label %if.end25

if.end25:                                         ; preds = %do.end, %do.body.if.end25_crit_edge, %arm_smmu_readl.exit97.if.end25_crit_edge
  %53 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %numpage, align 4
  %add27 = add i32 %54, %conv
  %55 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %impl.i, align 4
  %tobool.not.i99 = icmp eq ptr %56, null
  br i1 %tobool.not.i99, label %if.end25.if.else.i_crit_edge, label %land.lhs.true.i101

if.end25.if.else.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i101:                               ; preds = %if.end25
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i100 = icmp eq ptr %58, null
  br i1 %tobool2.not.i100, label %land.lhs.true.i101.if.else.i_crit_edge, label %if.then.i102, !prof !295

land.lhs.true.i101.if.else.i_crit_edge:           ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i102:                                     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %58(ptr noundef %1, i32 noundef %add27, i32 noundef 88, i32 noundef %retval.0.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i101.if.else.i_crit_edge, %if.end25.if.else.i_crit_edge
  %59 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %base.i.i103 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %base.i.i103 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i103, align 4
  %pgshift.i.i104 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %pgshift.i.i104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pgshift.i.i104, align 4
  %shl.i.i105 = shl i32 %add27, %63
  %add.ptr.i.i106 = getelementptr i8, ptr %61, i32 %shl.i.i105
  %add.ptr.i107 = getelementptr i8, ptr %add.ptr.i.i106, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %59) #12, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i102, %arm_smmu_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %arm_smmu_readl.exit.cleanup_crit_edge ], [ 1, %if.then.i102 ], [ 1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_inv_context_s1(ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !309
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numpage, align 4
  %cfg = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg, align 4
  %conv = zext i8 %5 to i32
  %add = add i32 %3, %conv
  %6 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv3 = zext i16 %8 to i32
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %12(ptr noundef %1, i32 noundef %add, i32 noundef 1552, i32 noundef %conv3) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv3) #12
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %17
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %shl.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %18 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cookie, align 4
  %cb_lock.i = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #12
  %numpage.i = getelementptr inbounds %struct.arm_smmu_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %numpage.i, align 4
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cfg, align 4
  %conv6.i = zext i8 %23 to i32
  %add.i = add i32 %21, %conv6.i
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %19, i32 noundef %add.i, i32 noundef 2032, i32 noundef 2036) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call3.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_inv_walk_s1(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_walk_prefer_tlbiasid = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %flush_walk_prefer_tlbiasid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flush_walk_prefer_tlbiasid, align 4, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @arm_smmu_tlb_inv_context_s1(ptr noundef %cookie)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @arm_smmu_tlb_inv_range_s1(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef %cookie, i32 noundef 1536)
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cookie, align 4
  %cb_lock.i = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #12
  %numpage.i = getelementptr inbounds %struct.arm_smmu_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numpage.i, align 4
  %cfg.i = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cfg.i, align 4
  %conv6.i = zext i8 %7 to i32
  %add.i = add i32 %5, %conv6.i
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %3, i32 noundef %add.i, i32 noundef 2032, i32 noundef 2036) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call3.i) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_add_page_s1(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @arm_smmu_tlb_inv_range_s1(i32 noundef %iova, i32 noundef %granule, i32 noundef %granule, ptr noundef %cookie, i32 noundef 1568)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__arm_smmu_tlb_sync(ptr noundef %smmu, i32 noundef %page, i32 noundef %sync, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %impl = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %0 = ptrtoint ptr %impl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %impl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else.i_crit_edge, label %land.lhs.true

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true:                                    ; preds = %entry
  %tlb_sync = getelementptr inbounds %struct.arm_smmu_impl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tlb_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tlb_sync, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.i, label %if.then, !prof !295

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %smmu, i32 noundef %page, i32 noundef %sync, i32 noundef %status) #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %smmu, i32 noundef %page, i32 noundef %sync, i32 noundef -1) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %8 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %page, %9
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %shl.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sync
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %base.i.i60 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %pgshift.i.i61 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %cond.false21.for.cond7.preheader_crit_edge, %arm_smmu_writel.exit
  %delay.066 = phi i32 [ 1, %arm_smmu_writel.exit ], [ %mul24, %cond.false21.for.cond7.preheader_crit_edge ]
  br label %for.body9

for.body9:                                        ; preds = %do.end.for.body9_crit_edge, %for.cond7.preheader
  %spin_cnt.065 = phi i32 [ 10, %for.cond7.preheader ], [ %dec, %do.end.for.body9_crit_edge ]
  %10 = ptrtoint ptr %impl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %impl, align 4
  %tobool.not.i56 = icmp eq ptr %11, null
  br i1 %tobool.not.i56, label %for.body9.if.end.i_crit_edge, label %land.lhs.true.i58

for.body9.if.end.i_crit_edge:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i58:                                ; preds = %for.body9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool2.not.i57 = icmp eq ptr %13, null
  br i1 %tobool2.not.i57, label %land.lhs.true.i58.if.end.i_crit_edge, label %if.then.i59, !prof !295

land.lhs.true.i58.if.end.i_crit_edge:             ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i59:                                      ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %13(ptr noundef %smmu, i32 noundef %page, i32 noundef %status) #12
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i58.if.end.i_crit_edge, %for.body9.if.end.i_crit_edge
  %14 = ptrtoint ptr %base.i.i60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i60, align 4
  %16 = ptrtoint ptr %pgshift.i.i61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgshift.i.i61, align 4
  %shl.i.i62 = shl i32 %page, %17
  %add.ptr.i.i63 = getelementptr i8, ptr %15, i32 %status
  %add.ptr.i64 = getelementptr i8, ptr %add.ptr.i.i63, i32 %shl.i.i62
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #12, !srcloc !304
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i59
  %retval.0.i = phi i32 [ %call.i, %if.then.i59 ], [ %19, %if.end.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %arm_smmu_readl.exit.cleanup_crit_edge, label %do.end

arm_smmu_readl.exit.cleanup_crit_edge:            ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %arm_smmu_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !310
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !311
  %dec = add nsw i32 %spin_cnt.065, -1
  %cmp8.not = icmp eq i32 %dec, 0
  br i1 %cmp8.not, label %cond.false21, label %do.end.for.body9_crit_edge

do.end.for.body9_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

cond.false21:                                     ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %delay.066) #12
  %mul24 = shl i32 %delay.066, 1
  %cmp = icmp ult i32 %mul24, 1000000
  br i1 %cmp, label %cond.false21.for.cond7.preheader_crit_edge, label %do.body26

cond.false21.for.cond7.preheader_crit_edge:       ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond7.preheader

do.body26:                                        ; preds = %cond.false21
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @__arm_smmu_tlb_sync._rs, ptr noundef nonnull @__func__.__arm_smmu_tlb_sync) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.end32

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.body26.cleanup_crit_edge, %arm_smmu_readl.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_smmu_tlb_inv_range_s1(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readonly %cookie, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %cfg2 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %2 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg2, align 4
  %conv = zext i8 %3 to i32
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !312
  tail call void @arm_heavy_mb() #12
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %fmt = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %shr = and i32 %iova, -4096
  %8 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %conv5 = zext i16 %10 to i32
  %or = or i32 %shr, %conv5
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %pgshift.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  br label %do.body6

do.body6:                                         ; preds = %arm_smmu_writel.exit.do.body6_crit_edge, %if.then4
  %size.addr.0 = phi i32 [ %size, %if.then4 ], [ %sub, %arm_smmu_writel.exit.do.body6_crit_edge ]
  %iova.addr.0 = phi i32 [ %or, %if.then4 ], [ %add7, %arm_smmu_writel.exit.do.body6_crit_edge ]
  %11 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numpage, align 4
  %add = add i32 %12, %conv
  %13 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body6.if.else.i_crit_edge, label %land.lhs.true.i

do.body6.if.else.i_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body6
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %16(ptr noundef %1, i32 noundef %add, i32 noundef %reg, i32 noundef %iova.addr.0) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body6.if.else.i_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %iova.addr.0) #12
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %20 = ptrtoint ptr %pgshift.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pgshift.i.i, align 4
  %shl.i.i = shl i32 %add, %21
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %reg
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %add7 = add i32 %iova.addr.0, %granule
  %sub = sub i32 %size.addr.0, %granule
  %tobool9.not = icmp eq i32 %sub, 0
  br i1 %tobool9.not, label %arm_smmu_writel.exit.if.end27_crit_edge, label %arm_smmu_writel.exit.do.body6_crit_edge

arm_smmu_writel.exit.do.body6_crit_edge:          ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

arm_smmu_writel.exit.if.end27_crit_edge:          ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.else:                                          ; preds = %if.end
  %shr11 = lshr i32 %iova, 12
  %numpage18 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %impl.i49 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %base.i.i54 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %pgshift.i.i55 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %shr21 = lshr i32 %granule, 12
  br label %do.body17

do.body17:                                        ; preds = %arm_smmu_writeq.exit.do.body17_crit_edge, %if.else
  %size.addr.1 = phi i32 [ %size, %if.else ], [ %sub24, %arm_smmu_writeq.exit.do.body17_crit_edge ]
  %iova.addr.1 = phi i32 [ %shr11, %if.else ], [ %add22, %arm_smmu_writeq.exit.do.body17_crit_edge ]
  %22 = ptrtoint ptr %numpage18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numpage18, align 4
  %add19 = add i32 %23, %conv
  %conv20 = zext i32 %iova.addr.1 to i64
  %24 = ptrtoint ptr %impl.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %impl.i49, align 4
  %tobool.not.i50 = icmp eq ptr %25, null
  br i1 %tobool.not.i50, label %do.body17.if.else.i59_crit_edge, label %land.lhs.true.i52

do.body17.if.else.i59_crit_edge:                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i59

land.lhs.true.i52:                                ; preds = %do.body17
  %write_reg64.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_reg64.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg64.i, align 4
  %tobool2.not.i51 = icmp eq ptr %27, null
  br i1 %tobool2.not.i51, label %land.lhs.true.i52.if.else.i59_crit_edge, label %if.then.i53, !prof !295

land.lhs.true.i52.if.else.i59_crit_edge:          ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i59

if.then.i53:                                      ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %27(ptr noundef %1, i32 noundef %add19, i32 noundef %reg, i64 noundef %conv20) #12
  br label %arm_smmu_writeq.exit

if.else.i59:                                      ; preds = %land.lhs.true.i52.if.else.i59_crit_edge, %do.body17.if.else.i59_crit_edge
  %28 = ptrtoint ptr %base.i.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i54, align 4
  %30 = ptrtoint ptr %pgshift.i.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pgshift.i.i55, align 4
  %shl.i.i56 = shl i32 %add19, %31
  %add.ptr.i.i57 = getelementptr i8, ptr %29, i32 %reg
  %add.ptr.i58 = getelementptr i8, ptr %add.ptr.i.i57, i32 %shl.i.i56
  %add.ptr.i15.i = getelementptr i8, ptr %add.ptr.i58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #12, !srcloc !296
  %32 = tail call i32 @llvm.bswap.i32(i32 %iova.addr.1) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %32) #12, !srcloc !296
  br label %arm_smmu_writeq.exit

arm_smmu_writeq.exit:                             ; preds = %if.else.i59, %if.then.i53
  %add22 = add i32 %iova.addr.1, %shr21
  %sub24 = sub i32 %size.addr.1, %granule
  %tobool25.not = icmp eq i32 %sub24, 0
  br i1 %tobool25.not, label %arm_smmu_writeq.exit.if.end27_crit_edge, label %arm_smmu_writeq.exit.do.body17_crit_edge

arm_smmu_writeq.exit.do.body17_crit_edge:         ; preds = %arm_smmu_writeq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

arm_smmu_writeq.exit.if.end27_crit_edge:          ; preds = %arm_smmu_writeq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %arm_smmu_writeq.exit.if.end27_crit_edge, %arm_smmu_writel.exit.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_inv_context_s2(ptr nocapture noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !313
  tail call void @arm_heavy_mb() #12
  %2 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv = zext i16 %4 to i32
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %8(ptr noundef %1, i32 noundef 0, i32 noundef 100, i32 noundef %conv) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %global_sync_lock.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_sync_lock.i) #12
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %1, i32 noundef 0, i32 noundef 112, i32 noundef 116) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_sync_lock.i, i32 noundef %call2.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_inv_walk_s2(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @arm_smmu_tlb_inv_range_s2(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr noundef %cookie, i32 noundef 1584)
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %cb_lock.i = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #12
  %numpage.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %numpage.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numpage.i, align 4
  %cfg.i = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg.i, align 4
  %conv6.i = zext i8 %5 to i32
  %add.i = add i32 %3, %conv6.i
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %1, i32 noundef %add.i, i32 noundef 2032, i32 noundef 2036) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call3.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_add_page_s2(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @arm_smmu_tlb_inv_range_s2(i32 noundef %iova, i32 noundef %granule, i32 noundef %granule, ptr noundef %cookie, i32 noundef 1592)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_smmu_tlb_inv_range_s2(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readonly %cookie, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %cfg = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg, align 4
  %conv = zext i8 %3 to i32
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !314
  tail call void @arm_heavy_mb() #12
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %shr = lshr i32 %iova, 12
  %fmt = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 4
  %numpage7 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 2
  %impl.i27 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %base.i.i32 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %pgshift.i.i33 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 3
  %shr10 = lshr i32 %granule, 12
  br label %do.body2

do.body2:                                         ; preds = %if.end9.do.body2_crit_edge, %if.end
  %size.addr.0 = phi i32 [ %size, %if.end ], [ %sub, %if.end9.do.body2_crit_edge ]
  %iova.addr.0 = phi i32 [ %shr, %if.end ], [ %add11, %if.end9.do.body2_crit_edge ]
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %8 = ptrtoint ptr %numpage7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numpage7, align 4
  %add = add i32 %9, %conv
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.body2
  %conv6 = zext i32 %iova.addr.0 to i64
  %10 = ptrtoint ptr %impl.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %impl.i27, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then5.if.else.i_crit_edge, label %land.lhs.true.i

if.then5.if.else.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then5
  %write_reg64.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_reg64.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg64.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %13(ptr noundef %1, i32 noundef %add, i32 noundef %reg, i64 noundef %conv6) #12
  br label %if.end9

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then5.if.else.i_crit_edge
  %14 = ptrtoint ptr %base.i.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i32, align 4
  %16 = ptrtoint ptr %pgshift.i.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgshift.i.i33, align 4
  %shl.i.i = shl i32 %add, %17
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %reg
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  %add.ptr.i15.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #12, !srcloc !296
  %18 = tail call i32 @llvm.bswap.i32(i32 %iova.addr.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #12, !srcloc !296
  br label %if.end9

if.else:                                          ; preds = %do.body2
  %19 = ptrtoint ptr %impl.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %impl.i27, align 4
  %tobool.not.i28 = icmp eq ptr %20, null
  br i1 %tobool.not.i28, label %if.else.if.else.i37_crit_edge, label %land.lhs.true.i30

if.else.if.else.i37_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i37

land.lhs.true.i30:                                ; preds = %if.else
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i29 = icmp eq ptr %22, null
  br i1 %tobool2.not.i29, label %land.lhs.true.i30.if.else.i37_crit_edge, label %if.then.i31, !prof !295

land.lhs.true.i30.if.else.i37_crit_edge:          ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i37

if.then.i31:                                      ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %22(ptr noundef %1, i32 noundef %add, i32 noundef %reg, i32 noundef %iova.addr.0) #12
  br label %if.end9

if.else.i37:                                      ; preds = %land.lhs.true.i30.if.else.i37_crit_edge, %if.else.if.else.i37_crit_edge
  %23 = tail call i32 @llvm.bswap.i32(i32 %iova.addr.0) #12
  %24 = ptrtoint ptr %base.i.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i32, align 4
  %26 = ptrtoint ptr %pgshift.i.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pgshift.i.i33, align 4
  %shl.i.i34 = shl i32 %add, %27
  %add.ptr.i.i35 = getelementptr i8, ptr %25, i32 %reg
  %add.ptr.i36 = getelementptr i8, ptr %add.ptr.i.i35, i32 %shl.i.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %23) #12, !srcloc !296
  br label %if.end9

if.end9:                                          ; preds = %if.else.i37, %if.then.i31, %if.else.i, %if.then.i
  %add11 = add i32 %iova.addr.0, %shr10
  %sub = sub i32 %size.addr.0, %granule
  %tobool13.not = icmp eq i32 %sub, 0
  br i1 %tobool13.not, label %do.end14, label %if.end9.do.body2_crit_edge

if.end9.do.body2_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_inv_walk_s2_v1(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !313
  tail call void @arm_heavy_mb() #12
  %2 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv.i = zext i16 %4 to i32
  %impl.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %impl.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %impl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %entry.if.else.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %write_reg.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i, !prof !295

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %8(ptr noundef %1, i32 noundef 0, i32 noundef 100, i32 noundef %conv.i) #12
  br label %arm_smmu_tlb_inv_context_s2.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %entry.if.else.i.i_crit_edge
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #12
  %base.i.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #12, !srcloc !296
  br label %arm_smmu_tlb_inv_context_s2.exit

arm_smmu_tlb_inv_context_s2.exit:                 ; preds = %if.else.i.i, %if.then.i.i
  %global_sync_lock.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 28
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_sync_lock.i.i) #12
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %1, i32 noundef 0, i32 noundef 112, i32 noundef 116) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_sync_lock.i.i, i32 noundef %call2.i.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_tlb_add_page_s2_v1(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  tail call void @arm_heavy_mb() #12
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %4 = getelementptr inbounds %struct.arm_smmu_domain, ptr %cookie, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv = zext i16 %6 to i32
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %10(ptr noundef %1, i32 noundef 0, i32 noundef 100, i32 noundef %conv) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__find_legacy_master_phandle(ptr noundef %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %node = getelementptr inbounds %struct.of_phandle_iterator, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_phandle_iterator_init(ptr noundef %1, ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef -1) #12
  %call1 = tail call i32 @of_phandle_iterator_next(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp20 = icmp eq i32 %call1, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %cmp3 = icmp eq ptr %7, %3
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %data, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call4 = tail call i32 @of_phandle_iterator_next(ptr noundef %1) #12
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ %call1, %entry.for.end_crit_edge ], [ %call4, %for.inc.for.end_crit_edge ]
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.0.lcssa)
  %cmp6 = icmp eq i32 %err.0.lcssa, -2
  %spec.select = select i1 %cmp6, i32 0, i32 %err.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @__arm_smmu_get_pci_sid(ptr nocapture noundef readnone %pdev, i16 noundef zeroext %alias, ptr nocapture noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %alias to i32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_args(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_fwnode(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_smmu_write_sme(ptr noundef %smmu, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s2crs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 17
  %0 = ptrtoint ptr %s2crs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s2crs.i, align 4
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %2 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.do.body8.i_crit_edge, label %land.lhs.true.i

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8.i

land.lhs.true.i:                                  ; preds = %entry
  %write_s2cr.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %write_s2cr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_s2cr.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.body8.i_crit_edge, label %if.then.i

land.lhs.true.i.do.body8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %smmu, i32 noundef %idx) #12
  br label %arm_smmu_write_s2cr.exit

do.body8.i:                                       ; preds = %land.lhs.true.i.do.body8.i_crit_edge, %entry.do.body8.i_crit_edge
  %type.i = getelementptr %struct.arm_smmu_s2cr, ptr %1, i32 %idx, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  %privcfg.i = getelementptr %struct.arm_smmu_s2cr, ptr %1, i32 %idx, i32 3
  %8 = ptrtoint ptr %privcfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %privcfg.i, align 4
  %shl.i = shl i32 %7, 16
  %and22.i = and i32 %shl.i, 196608
  %cbndx.i = getelementptr %struct.arm_smmu_s2cr, ptr %1, i32 %idx, i32 4
  %10 = ptrtoint ptr %cbndx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cbndx.i, align 4
  %conv47.i = zext i8 %11 to i32
  %shl74.i = shl i32 %9, 24
  %and75.i = and i32 %shl74.i, 50331648
  %or.i = or i32 %and75.i, %and22.i
  %or76.i = or i32 %or.i, %conv47.i
  %features.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %12 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features.i, align 4
  %and77.i = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %do.body8.i.if.end87.i_crit_edge, label %land.lhs.true79.i

do.body8.i.if.end87.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

land.lhs.true79.i:                                ; preds = %do.body8.i
  %smrs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 16
  %14 = ptrtoint ptr %smrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smrs.i, align 4
  %tobool80.not.i = icmp eq ptr %15, null
  br i1 %tobool80.not.i, label %land.lhs.true79.i.if.end87.i_crit_edge, label %land.lhs.true81.i

land.lhs.true79.i.if.end87.i_crit_edge:           ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

land.lhs.true81.i:                                ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #14
  %valid.i = getelementptr %struct.arm_smmu_smr, ptr %15, i32 %idx, i32 2
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %valid.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool83.not.i = icmp eq i8 %17, 0
  %or86.i = or i32 %or76.i, 1024
  %spec.select.i = select i1 %tobool83.not.i, i32 %or76.i, i32 %or86.i
  br label %if.end87.i

if.end87.i:                                       ; preds = %land.lhs.true81.i, %land.lhs.true79.i.if.end87.i_crit_edge, %do.body8.i.if.end87.i_crit_edge
  %reg.0.i = phi i32 [ %or76.i, %land.lhs.true79.i.if.end87.i_crit_edge ], [ %or76.i, %do.body8.i.if.end87.i_crit_edge ], [ %spec.select.i, %land.lhs.true81.i ]
  %shl88.i = shl i32 %idx, 2
  %add.i = add i32 %shl88.i, 3072
  br i1 %tobool.not.i, label %if.end87.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end87.i.if.else.i.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end87.i
  %write_reg.i.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i, !prof !295

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %19(ptr noundef %smmu, i32 noundef 0, i32 noundef %add.i, i32 noundef %reg.0.i) #12
  br label %arm_smmu_write_s2cr.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end87.i.if.else.i.i_crit_edge
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #12
  %base.i.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #12, !srcloc !296
  br label %arm_smmu_write_s2cr.exit

arm_smmu_write_s2cr.exit:                         ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %smrs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 16
  %23 = ptrtoint ptr %smrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smrs, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %arm_smmu_write_s2cr.exit.if.end_crit_edge, label %if.then

arm_smmu_write_s2cr.exit.if.end_crit_edge:        ; preds = %arm_smmu_write_s2cr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %arm_smmu_write_s2cr.exit
  %add.ptr.i = getelementptr %struct.arm_smmu_smr, ptr %24, i32 %idx
  %id.i = getelementptr %struct.arm_smmu_smr, ptr %24, i32 %idx, i32 1
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id.i, align 2
  %conv15.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i, align 2
  %conv42.i = zext i16 %28 to i32
  %shl43.i = shl nuw i32 %conv42.i, 16
  %or.i5 = or i32 %shl43.i, %conv15.i
  %features.i6 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %29 = ptrtoint ptr %features.i6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %features.i6, align 4
  %and45.i = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true.i9, label %if.then.if.end51.i_crit_edge

if.then.if.end51.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

land.lhs.true.i9:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %valid.i7 = getelementptr %struct.arm_smmu_smr, ptr %24, i32 %idx, i32 2
  %31 = ptrtoint ptr %valid.i7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid.i7, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool47.not.i = icmp eq i8 %32, 0
  %or50.i = or i32 %or.i5, -2147483648
  %spec.select.i8 = select i1 %tobool47.not.i, i32 %or.i5, i32 %or50.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %land.lhs.true.i9, %if.then.if.end51.i_crit_edge
  %reg.0.i10 = phi i32 [ %or.i5, %if.then.if.end51.i_crit_edge ], [ %spec.select.i8, %land.lhs.true.i9 ]
  %shl52.i = shl i32 %idx, 2
  %add.i11 = add i32 %shl52.i, 2048
  %33 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %impl.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end51.i.if.else.i.i18_crit_edge, label %land.lhs.true.i.i14

if.end51.i.if.else.i.i18_crit_edge:               ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i18

land.lhs.true.i.i14:                              ; preds = %if.end51.i
  %write_reg.i.i12 = getelementptr inbounds %struct.arm_smmu_impl, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_reg.i.i12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg.i.i12, align 4
  %tobool2.not.i.i13 = icmp eq ptr %36, null
  br i1 %tobool2.not.i.i13, label %land.lhs.true.i.i14.if.else.i.i18_crit_edge, label %if.then.i.i15, !prof !295

land.lhs.true.i.i14.if.else.i.i18_crit_edge:      ; preds = %land.lhs.true.i.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i18

if.then.i.i15:                                    ; preds = %land.lhs.true.i.i14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %36(ptr noundef %smmu, i32 noundef 0, i32 noundef %add.i11, i32 noundef %reg.0.i10) #12
  br label %if.end

if.else.i.i18:                                    ; preds = %land.lhs.true.i.i14.if.else.i.i18_crit_edge, %if.end51.i.if.else.i.i18_crit_edge
  %37 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i10) #12
  %base.i.i.i16 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %38 = ptrtoint ptr %base.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i16, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %39, i32 %add.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 %37) #12, !srcloc !296
  br label %if.end

if.end:                                           ; preds = %if.else.i.i18, %if.then.i.i15, %arm_smmu_write_s2cr.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_device_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_mc_device_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_alloc_resv_region(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_device_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %ioaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioaddr) #12
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 272, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #16
  br label %cleanup141

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end.cleanup141_crit_edge, label %if.then4

if.end.cleanup141_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141

if.then4:                                         ; preds = %if.end
  %num_global_irqs.i = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 23
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.59, ptr noundef %num_global_irqs.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #16
  br label %cleanup141

if.end.i:                                         ; preds = %if.then4
  %call2.i = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #12
  %3 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call2.i, align 4
  %version3.i = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %version3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %version3.i, align 4
  %model.i = getelementptr inbounds %struct.arm_smmu_match_data, ptr %call2.i, i32 0, i32 1
  %6 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model.i, align 4
  %model4.i = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %model4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %model4.i, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call6.i = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.31, ptr noundef null) #12
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %land.lhs.true19.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %.b4547.i = load i1, ptr @using_generic_binding, align 1
  br i1 %.b4547.i, label %land.lhs.true.i.do.end25.i_crit_edge, label %if.then10.i

land.lhs.true.i.do.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %.b4448.i = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b4448.i, label %if.then10.i.if.end27.i_crit_edge, label %do.end15.i

if.then10.i.if.end27.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

do.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.65) #16
  br label %if.end27.i

land.lhs.true19.critedge.i:                       ; preds = %if.end.i
  %.b46.i = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b46.i, label %land.lhs.true19.critedge.i.do.end25.i_crit_edge, label %land.lhs.true19.critedge.i.if.end27.i_crit_edge

land.lhs.true19.critedge.i.if.end27.i_crit_edge:  ; preds = %land.lhs.true19.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

land.lhs.true19.critedge.i.do.end25.i_crit_edge:  ; preds = %land.lhs.true19.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

do.end25.i:                                       ; preds = %land.lhs.true19.critedge.i.do.end25.i_crit_edge, %land.lhs.true.i.do.end25.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67) #16
  br label %cleanup141

if.end27.i:                                       ; preds = %land.lhs.true19.critedge.i.if.end27.i_crit_edge, %do.end15.i, %if.then10.i.if.end27.i_crit_edge
  %using_generic_binding.sink.i = phi ptr [ @using_legacy_binding, %do.end15.i ], [ @using_legacy_binding, %if.then10.i.if.end27.i_crit_edge ], [ @using_generic_binding, %land.lhs.true19.critedge.i.if.end27.i_crit_edge ]
  %11 = ptrtoint ptr %using_generic_binding.sink.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i1 true, ptr %using_generic_binding.sink.i, align 1
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call29.i = tail call zeroext i1 @of_dma_is_coherent(ptr noundef %13) #12
  br i1 %call29.i, label %if.then30.i, label %if.end27.i.if.end10_crit_edge

if.end27.i.if.end10_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %features.i = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %features.i, align 4
  %or.i = or i32 %15, 1
  store i32 %or.i, ptr %features.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then30.i, %if.end27.i.if.end10_crit_edge
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call11, align 4
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ioaddr, align 4
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call11) #12
  %base = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call12, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call12 to i32
  br label %cleanup141

if.end18:                                         ; preds = %if.end10
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %23 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call11, align 4
  %sub.i = add i32 %22, 1
  %add.i = sub i32 %sub.i, %24
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %numpage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %numpage, align 4
  %call20 = tail call ptr @arm_smmu_impl_init(ptr noundef nonnull %call.i) #12
  %cmp.i254 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then22, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end18
  %call25269 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #12
  %tobool26.not270 = icmp eq ptr %call25269, null
  br i1 %tobool26.not270, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %num_global_irqs = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 23
  %num_context_irqs = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 24
  br label %while.body

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %call20 to i32
  br label %cleanup141

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %num_irqs.0271 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end29.while.body_crit_edge ]
  %inc = add i32 %num_irqs.0271, 1
  %27 = ptrtoint ptr %num_global_irqs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_global_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %28)
  %cmp = icmp ugt i32 %inc, %28
  br i1 %cmp, label %if.then27, label %while.body.if.end29_crit_edge

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %num_context_irqs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_context_irqs, align 4
  %inc28 = add i32 %30, 1
  store i32 %inc28, ptr %num_context_irqs, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %while.body.if.end29_crit_edge
  %call25 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %inc) #12
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end29.while.end_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %num_irqs.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %if.end29.while.end_crit_edge ]
  %num_context_irqs30 = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 24
  %31 = ptrtoint ptr %num_context_irqs30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_context_irqs30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool31.not = icmp eq i32 %32, 0
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %num_global_irqs36 = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 23
  %33 = ptrtoint ptr %num_global_irqs36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_global_irqs36, align 4
  %add = add i32 %34, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %num_irqs.0.lcssa, i32 noundef %add) #16
  br label %cleanup141

if.end37:                                         ; preds = %while.end
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_irqs.0.lcssa, i32 4) #12
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !308

devm_kcalloc.exit.thread:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %irqs264 = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 25
  %37 = ptrtoint ptr %irqs264 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %irqs264, align 4
  br label %do.end44

devm_kcalloc.exit:                                ; preds = %if.end37
  %38 = extractvalue { i32, i1 } %35, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %38, i32 noundef 3520) #12
  %irqs = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 25
  %39 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call5.i.i, ptr %irqs, align 4
  %tobool40.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool40.not, label %devm_kcalloc.exit.do.end44_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.do.end44_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_irqs.0.lcssa)
  %cmp46272.not = icmp eq i32 %num_irqs.0.lcssa, 0
  br i1 %cmp46272.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end44:                                         ; preds = %devm_kcalloc.exit.do.end44_crit_edge, %devm_kcalloc.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %num_irqs.0.lcssa) #16
  br label %cleanup141

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0273 = phi i32 [ %inc52, %if.end50.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call47 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0273) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %for.body.cleanup141_crit_edge, label %if.end50

for.body.cleanup141_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141

if.end50:                                         ; preds = %for.body
  %40 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irqs, align 4
  %arrayidx = getelementptr i32, ptr %41, i32 %i.0273
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call47, ptr %arrayidx, align 4
  %inc52 = add nuw nsw i32 %i.0273, 1
  %exitcond.not = icmp eq i32 %inc52, %num_irqs.0.lcssa
  br i1 %exitcond.not, label %if.end50.for.end_crit_edge, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %clks = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 26
  %call53 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %dev1, ptr noundef %clks) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end59

do.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %call53) #16
  br label %cleanup141

if.end59:                                         ; preds = %for.end
  %num_clks = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 27
  %43 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call53, ptr %num_clks, align 4
  %44 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clks, align 4
  %call.i255 = tail call i32 @clk_bulk_prepare(i32 noundef %call53, ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %if.end.i257, label %if.end59.cleanup141_crit_edge

if.end59.cleanup141_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141

if.end.i257:                                      ; preds = %if.end59
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %call53, ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end65, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_bulk_unprepare(i32 noundef %call53, ptr noundef %45) #12
  br label %cleanup141

if.end65:                                         ; preds = %if.end.i257
  %call66 = tail call fastcc i32 @arm_smmu_device_cfg_probe(ptr noundef %call20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup141_crit_edge

if.end65.cleanup141_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141

if.end69:                                         ; preds = %if.end65
  %version = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 5
  %46 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp70 = icmp eq i32 %47, 2
  br i1 %cmp70, label %if.then71, label %if.end69.if.end83_crit_edge

if.end69.if.end83_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then71:                                        ; preds = %if.end69
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 8
  %48 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_context_banks, align 4
  %50 = ptrtoint ptr %num_context_irqs30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_context_irqs30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp73 = icmp ugt i32 %49, %51
  br i1 %cmp73, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %51, i32 noundef %49) #16
  br label %cleanup141

if.end80:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %num_context_irqs30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %49, ptr %num_context_irqs30, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %if.end69.if.end83_crit_edge
  %impl = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 7
  %53 = ptrtoint ptr %impl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %impl, align 4
  %tobool84.not = icmp eq ptr %54, null
  br i1 %tobool84.not, label %if.end83.if.else91_crit_edge, label %land.lhs.true

if.end83.if.else91_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91

land.lhs.true:                                    ; preds = %if.end83
  %global_fault86 = getelementptr inbounds %struct.arm_smmu_impl, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %global_fault86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %global_fault86, align 4
  %tobool87.not = icmp eq ptr %56, null
  br i1 %tobool87.not, label %land.lhs.true.if.else91_crit_edge, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

land.lhs.true.if.else91_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else91

if.else91:                                        ; preds = %land.lhs.true.if.else91_crit_edge, %if.end83.if.else91_crit_edge
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %land.lhs.true.if.end92_crit_edge
  %global_fault.0 = phi ptr [ @arm_smmu_global_fault, %if.else91 ], [ %56, %land.lhs.true.if.end92_crit_edge ]
  %num_global_irqs94 = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 23
  %57 = ptrtoint ptr %num_global_irqs94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_global_irqs94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp95274.not = icmp eq i32 %58, 0
  br i1 %cmp95274.not, label %if.end92.for.end111_crit_edge, label %if.end92.for.body96_crit_edge

if.end92.for.body96_crit_edge:                    ; preds = %if.end92
  br label %for.body96

if.end92.for.end111_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end111

for.body96:                                       ; preds = %for.inc109.for.body96_crit_edge, %if.end92.for.body96_crit_edge
  %i.1275 = phi i32 [ %inc110, %for.inc109.for.body96_crit_edge ], [ 0, %if.end92.for.body96_crit_edge ]
  %59 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call20, align 4
  %61 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %irqs, align 4
  %arrayidx99 = getelementptr i32, ptr %62, i32 %i.1275
  %63 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx99, align 4
  %call.i259 = tail call i32 @devm_request_threaded_irq(ptr noundef %60, i32 noundef %64, ptr noundef %global_fault.0, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.48, ptr noundef %call20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool101.not = icmp eq i32 %call.i259, 0
  br i1 %tobool101.not, label %for.inc109, label %do.end105

do.end105:                                        ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %irqs, align 4
  %arrayidx107 = getelementptr i32, ptr %66, i32 %i.1275
  %67 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx107, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %i.1275, i32 noundef %68) #16
  br label %cleanup141

for.inc109:                                       ; preds = %for.body96
  %inc110 = add nuw i32 %i.1275, 1
  %69 = ptrtoint ptr %num_global_irqs94 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_global_irqs94, align 4
  %cmp95 = icmp ult i32 %inc110, %70
  br i1 %cmp95, label %for.inc109.for.body96_crit_edge, label %for.inc109.for.end111_crit_edge

for.inc109.for.end111_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end111

for.inc109.for.body96_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body96

for.end111:                                       ; preds = %for.inc109.for.end111_crit_edge, %if.end92.for.end111_crit_edge
  %iommu = getelementptr inbounds %struct.arm_smmu_device, ptr %call20, i32 0, i32 29
  %71 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call20, align 4
  %call113 = call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %72, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull %ioaddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end119, label %do.end118

do.end118:                                        ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #16
  br label %cleanup141

if.end119:                                        ; preds = %for.end111
  %call121 = call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @arm_smmu_ops, ptr noundef %dev1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end127, label %do.end126

do.end126:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57) #16
  br label %err_sysfs_remove

if.end127:                                        ; preds = %if.end119
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call20, ptr %driver_data.i.i, align 4
  call fastcc void @arm_smmu_device_reset(ptr noundef %call20)
  call fastcc void @arm_smmu_test_smr_masks(ptr noundef %call20)
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %74 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pm_domain, align 8
  %tobool128.not = icmp eq ptr %75, null
  br i1 %tobool128.not, label %if.end127.if.end131_crit_edge, label %if.then129

if.end127.if.end131_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %call.i260 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #12
  call void @pm_runtime_enable(ptr noundef %dev1) #12
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end127.if.end131_crit_edge
  %.b253 = load i1, ptr @using_legacy_binding, align 1
  br i1 %.b253, label %if.end131.cleanup141_crit_edge, label %if.then133

if.end131.cleanup141_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141

if.then133:                                       ; preds = %if.end131
  %call134 = call fastcc i32 @arm_smmu_bus_init(ptr noundef nonnull @arm_smmu_ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then133.cleanup141_crit_edge, label %err_unregister_device

if.then133.cleanup141_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141

err_unregister_device:                            ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #14
  call void @iommu_device_unregister(ptr noundef %iommu) #12
  br label %err_sysfs_remove

err_sysfs_remove:                                 ; preds = %err_unregister_device, %do.end126
  %err.1 = phi i32 [ %call121, %do.end126 ], [ %call134, %err_unregister_device ]
  call void @iommu_device_sysfs_remove(ptr noundef %iommu) #12
  br label %cleanup141

cleanup141:                                       ; preds = %err_sysfs_remove, %if.then133.cleanup141_crit_edge, %if.end131.cleanup141_crit_edge, %do.end118, %do.end105, %do.end77, %if.end65.cleanup141_crit_edge, %if.then3.i, %if.end59.cleanup141_crit_edge, %do.end58, %for.body.cleanup141_crit_edge, %do.end44, %do.end35, %if.then22, %if.then15, %do.end25.i, %do.end.i, %if.end.cleanup141_crit_edge, %do.end
  %retval.2 = phi i32 [ %20, %if.then15 ], [ %26, %if.then22 ], [ %call53, %do.end58 ], [ -19, %do.end77 ], [ %call.i259, %do.end105 ], [ %call113, %do.end118 ], [ %err.1, %err_sysfs_remove ], [ -12, %do.end44 ], [ -19, %do.end35 ], [ -12, %do.end ], [ %call66, %if.end65.cleanup141_crit_edge ], [ 0, %if.then133.cleanup141_crit_edge ], [ 0, %if.end131.cleanup141_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end25.i ], [ -19, %if.end.cleanup141_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i255, %if.end59.cleanup141_crit_edge ], [ -19, %for.body.cleanup141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioaddr) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_device_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %context_map = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 10
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %context_map, i32 noundef 128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 128
  br i1 %cmp4.i, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.137) #16
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %call4 = tail call fastcc i32 @arm_smmu_bus_init(ptr noundef null)
  %iommu = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 29
  tail call void @iommu_device_unregister(ptr noundef %iommu) #12
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end3.arm_smmu_rpm_get.exit_crit_edge

if.end3.arm_smmu_rpm_get.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i:                                        ; preds = %if.end3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.arm_smmu_rpm_get.exit_crit_edge

if.then.i.arm_smmu_rpm_get.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

if.then.i.i:                                      ; preds = %if.then.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !298
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.arm_smmu_rpm_get.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_get.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  br label %arm_smmu_rpm_get.exit

arm_smmu_rpm_get.exit:                            ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.arm_smmu_rpm_get.exit_crit_edge, %if.then.i.arm_smmu_rpm_get.exit_crit_edge, %if.end3.arm_smmu_rpm_get.exit_crit_edge
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %arm_smmu_rpm_get.exit.if.else.i_crit_edge, label %land.lhs.true.i

arm_smmu_rpm_get.exit.if.else.i_crit_edge:        ; preds = %arm_smmu_rpm_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %arm_smmu_rpm_get.exit
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i28, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i28:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 1) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %arm_smmu_rpm_get.exit.if.else.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16777216) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i28
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %disable_depth.i.i29 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 15
  %14 = ptrtoint ptr %disable_depth.i.i29 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i30 = load i16, ptr %disable_depth.i.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i30)
  %tobool.not.i.i31 = icmp ult i16 %bf.load.i.i30, 8192
  br i1 %tobool.not.i.i31, label %if.then.i33, label %arm_smmu_writel.exit.arm_smmu_rpm_put.exit_crit_edge

arm_smmu_writel.exit.arm_smmu_rpm_put.exit_crit_edge: ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_rpm_put.exit

if.then.i33:                                      ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i32 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #12
  br label %arm_smmu_rpm_put.exit

arm_smmu_rpm_put.exit:                            ; preds = %if.then.i33, %arm_smmu_writel.exit.arm_smmu_rpm_put.exit_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 15
  %17 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i34 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i34, label %if.then9, label %if.else

if.then9:                                         ; preds = %arm_smmu_rpm_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 @pm_runtime_force_suspend(ptr noundef %16) #12
  br label %if.end12

if.else:                                          ; preds = %arm_smmu_rpm_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %19, ptr noundef %21) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %num_clks13 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %num_clks13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clks13, align 4
  %clks14 = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %clks14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clks14, align 4
  tail call void @clk_bulk_unprepare(i32 noundef %23, ptr noundef %25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_smmu_device_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_smmu_device_remove(ptr noundef %pdev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arm_smmu_impl_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_smmu_device_cfg_probe(ptr noundef %smmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %3, ptr noundef nonnull @.str.69) #16
  %4 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smmu, align 4
  %version = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 5
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %cond = select i1 %cmp, i32 2, i32 1
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str.73, i32 noundef %cond) #16
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %11(ptr noundef %smmu, i32 noundef 0, i32 noundef 32) #12
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !304
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.end.i ]
  %16 = load i32, ptr @force_stage, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %16, label %arm_smmu_readl.exit.if.end10_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then8
  ]

arm_smmu_readl.exit.if.end10_crit_edge:           ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %retval.0.i, -805306369
  br label %if.end10

if.then8:                                         ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and9 = and i32 %retval.0.i, -1342177281
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then, %arm_smmu_readl.exit.if.end10_crit_edge
  %id.0 = phi i32 [ %and6, %if.then ], [ %and9, %if.then8 ], [ %retval.0.i, %arm_smmu_readl.exit.if.end10_crit_edge ]
  %and11 = and i32 %id.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %features, align 4
  %or = or i32 %19, 4
  store i32 %or, ptr %features, align 4
  %20 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str.76) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end10.if.end19_crit_edge
  %and20 = and i32 %id.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %features, align 4
  %or24 = or i32 %23, 8
  store i32 %or24, ptr %features, align 4
  %24 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %25, ptr noundef nonnull @.str.79) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end19.if.end29_crit_edge
  %and30 = and i32 %id.0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end39_crit_edge, label %if.then32

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %features, align 4
  %or34 = or i32 %27, 16
  store i32 %or34, ptr %features, align 4
  %28 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %29, ptr noundef nonnull @.str.82) #16
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end29.if.end39_crit_edge
  %30 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features, align 4
  %and41 = and i32 %31, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.85) #16
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  br i1 %tobool12.not, label %if.end48.if.end62_crit_edge, label %land.lhs.true

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end48
  %34 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp52 = icmp ult i32 %35, 2
  %and53 = and i32 %id.0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or.cond = select i1 %cmp52, i1 true, i1 %tobool54.not
  br i1 %or.cond, label %if.then55, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %or57 = or i32 %31, 32
  %36 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or57, ptr %features, align 4
  %37 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %38, ptr noundef nonnull @.str.88) #16
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %land.lhs.true.if.end62_crit_edge, %if.end48.if.end62_crit_edge
  %and63 = and i32 %id.0, 16384
  br i1 %tobool.not, label %lor.lhs.false68, label %if.end62.do.end73_crit_edge

if.end62.do.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

lor.lhs.false68:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %lor.lhs.false68.if.end77_crit_edge, label %lor.lhs.false68.do.end73_crit_edge

lor.lhs.false68.do.end73_crit_edge:               ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

lor.lhs.false68.if.end77_crit_edge:               ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.end73:                                         ; preds = %lor.lhs.false68.do.end73_crit_edge, %if.end62.do.end73_crit_edge
  %cond76 = phi ptr [ @.str.93, %if.end62.do.end73_crit_edge ], [ @.str.94, %lor.lhs.false68.do.end73_crit_edge ]
  %39 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %40, ptr noundef nonnull @.str.91, ptr noundef nonnull %cond76) #16
  br label %if.end77

if.end77:                                         ; preds = %do.end73, %lor.lhs.false68.if.end77_crit_edge
  %and63.lobit = lshr exact i32 %and63, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and63.lobit)
  %cmp81.not = icmp eq i32 %and, %and63.lobit
  br i1 %cmp81.not, label %if.end77.if.end88_crit_edge, label %do.end86

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %42, ptr noundef nonnull @.str.96) #16
  br label %if.end88

if.end88:                                         ; preds = %do.end86, %if.end77.if.end88_crit_edge
  %43 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp90 = icmp ne i32 %44, 2
  %and93 = and i32 %id.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  %or.cond625 = select i1 %cmp90, i1 true, i1 %tobool94.not
  br i1 %or.cond625, label %do.end113, label %if.then95

if.then95:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %features, align 4
  %or97 = or i32 %46, 4096
  store i32 %or97, ptr %features, align 4
  br label %if.end115

do.end113:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %and114 = lshr i32 %id.0, 9
  %shr = and i32 %and114, 15
  %shl = shl nuw nsw i32 1, %shr
  br label %if.end115

if.end115:                                        ; preds = %do.end113, %if.then95
  %size.0 = phi i32 [ 65536, %if.then95 ], [ %shl, %do.end113 ]
  %47 = trunc i32 %size.0 to i16
  %conv116 = add i16 %47, -1
  %streamid_mask = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 14
  %48 = ptrtoint ptr %streamid_mask to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv116, ptr %streamid_mask, align 4
  %and117 = and i32 %id.0, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.devm_kmalloc_array.exit_crit_edge, label %if.then119

if.end115.devm_kmalloc_array.exit_crit_edge:      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %devm_kmalloc_array.exit

if.then119:                                       ; preds = %if.end115
  %49 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %features, align 4
  %or121 = or i32 %50, 2
  store i32 %or121, ptr %features, align 4
  %and138 = and i32 %id.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %cmp140 = icmp eq i32 %and138, 0
  br i1 %cmp140, label %do.end145, label %devm_kcalloc.exit

do.end145:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.99) #16
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then119
  %53 = mul nuw nsw i32 %and138, 6
  %54 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %smmu, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef %53, i32 noundef 3520) #12
  %smrs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 16
  %56 = ptrtoint ptr %smrs to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %smrs, align 4
  %tobool151.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool151.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %do.end156

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end156:                                        ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %58, ptr noundef nonnull @.str.102, i32 noundef %and138) #16
  br label %devm_kmalloc_array.exit

devm_kmalloc_array.exit:                          ; preds = %do.end156, %if.end115.devm_kmalloc_array.exit_crit_edge
  %size.1 = phi i32 [ %and138, %do.end156 ], [ %size.0, %if.end115.devm_kmalloc_array.exit_crit_edge ]
  %59 = mul nuw nsw i32 %size.1, 20
  %60 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %smmu, align 4
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %61, i32 noundef %59, i32 noundef 3264) #12
  %s2crs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 17
  %62 = ptrtoint ptr %s2crs to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5.i, ptr %s2crs, align 4
  %tobool162.not = icmp eq ptr %call5.i, null
  br i1 %tobool162.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %63 = load i8, ptr @disable_bypass, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool168.not = icmp eq i8 %63, 0
  %cond170 = select i1 %tobool168.not, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0681 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %64 = ptrtoint ptr %s2crs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s2crs, align 4
  %arrayidx = getelementptr %struct.arm_smmu_s2cr, ptr %65, i32 %i.0681
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 0, ptr %arrayidx, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %67 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond170, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %68 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx, align 4
  %inc = add nuw nsw i32 %i.0681, 1
  %exitcond.not = icmp eq i32 %inc, %size.1
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %num_mapping_groups = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 13
  %69 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %size.1, ptr %num_mapping_groups, align 4
  %stream_map_mutex = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %stream_map_mutex, ptr noundef nonnull @.str.104, ptr noundef nonnull @arm_smmu_device_cfg_probe.__key) #12
  %global_sync_lock = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %global_sync_lock, ptr noundef nonnull @.str.106, ptr noundef nonnull @arm_smmu_device_cfg_probe.__key.105, i16 noundef signext 3) #12
  %70 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp179 = icmp ult i32 %71, 2
  %and182 = and i32 %id.0, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  %or.cond626 = select i1 %cmp179, i1 true, i1 %tobool183.not
  br i1 %or.cond626, label %if.then184, label %for.end.if.end193_crit_edge

for.end.if.end193_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then184:                                       ; preds = %for.end
  %72 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %features, align 4
  %or186 = or i32 %73, 1024
  store i32 %or186, ptr %features, align 4
  %and187 = and i32 %id.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.then189, label %if.then184.if.end193_crit_edge

if.then184.if.end193_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then189:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #14
  %or191 = or i32 %73, 3072
  %74 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or191, ptr %features, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then189, %if.then184.if.end193_crit_edge, %for.end.if.end193_crit_edge
  %75 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %impl.i, align 4
  %tobool.not.i630 = icmp eq ptr %76, null
  br i1 %tobool.not.i630, label %if.end193.if.end.i638_crit_edge, label %land.lhs.true.i632

if.end193.if.end.i638_crit_edge:                  ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i638

land.lhs.true.i632:                               ; preds = %if.end193
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %tobool2.not.i631 = icmp eq ptr %78, null
  br i1 %tobool2.not.i631, label %land.lhs.true.i632.if.end.i638_crit_edge, label %if.then.i634, !prof !295

land.lhs.true.i632.if.end.i638_crit_edge:         ; preds = %land.lhs.true.i632
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i638

if.then.i634:                                     ; preds = %land.lhs.true.i632
  call void @__sanitizer_cov_trace_pc() #14
  %call.i633 = tail call i32 %78(ptr noundef %smmu, i32 noundef 0, i32 noundef 36) #12
  br label %arm_smmu_readl.exit640

if.end.i638:                                      ; preds = %land.lhs.true.i632.if.end.i638_crit_edge, %if.end193.if.end.i638_crit_edge
  %base.i.i635 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %79 = ptrtoint ptr %base.i.i635 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i635, align 4
  %add.ptr.i637 = getelementptr i8, ptr %80, i32 36
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i637) #12, !srcloc !304
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  br label %arm_smmu_readl.exit640

arm_smmu_readl.exit640:                           ; preds = %if.end.i638, %if.then.i634
  %retval.0.i639 = phi i32 [ %call.i633, %if.then.i634 ], [ %82, %if.end.i638 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i639)
  %tobool196.not = icmp sgt i32 %retval.0.i639, -1
  %cond197 = select i1 %tobool196.not, i32 12, i32 16
  %pgshift = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  %83 = ptrtoint ptr %pgshift to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %cond197, ptr %pgshift, align 4
  %and214 = lshr i32 %retval.0.i639, 28
  %shr215 = and i32 %and214, 7
  %shl216 = shl nuw nsw i32 2, %shr215
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %84 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %numpage, align 4
  %mul = shl nuw nsw i32 %shl216, 1
  %shl218 = shl nuw nsw i32 %mul, %cond197
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %shl218)
  %cmp219.not = icmp eq i32 %85, %shl218
  br i1 %cmp219.not, label %arm_smmu_readl.exit640.if.end230_crit_edge, label %do.end224

arm_smmu_readl.exit640.if.end230_crit_edge:       ; preds = %arm_smmu_readl.exit640
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end230

do.end224:                                        ; preds = %arm_smmu_readl.exit640
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.108, i32 noundef %shl218, i32 noundef %85) #16
  br label %if.end230

if.end230:                                        ; preds = %do.end224, %arm_smmu_readl.exit640.if.end230_crit_edge
  %88 = ptrtoint ptr %numpage to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl216, ptr %numpage, align 4
  %and248 = lshr i32 %retval.0.i639, 16
  %shr249 = and i32 %and248, 255
  %num_s2_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 9
  %89 = ptrtoint ptr %num_s2_context_banks to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %shr249, ptr %num_s2_context_banks, align 4
  %and266 = and i32 %retval.0.i639, 255
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 8
  %90 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and266, ptr %num_context_banks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr249, i32 %and266)
  %cmp270 = icmp ugt i32 %shr249, %and266
  %91 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %smmu, align 4
  br i1 %cmp270, label %do.end275, label %do.end280

do.end275:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.112) #16
  br label %cleanup

do.end280:                                        ; preds = %if.end230
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %92, ptr noundef nonnull @.str.115, i32 noundef %and266, i32 noundef %shr249) #16
  %93 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_context_banks, align 4
  %95 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 40) #12
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %devm_kcalloc.exit644.thread, label %devm_kcalloc.exit644, !prof !308

devm_kcalloc.exit644.thread:                      ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #14
  %cbs679 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 11
  %97 = ptrtoint ptr %cbs679 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %cbs679, align 4
  br label %cleanup

devm_kcalloc.exit644:                             ; preds = %do.end280
  %98 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %smmu, align 4
  %100 = extractvalue { i32, i1 } %95, 0
  %call5.i.i641 = tail call noalias ptr @devm_kmalloc(ptr noundef %99, i32 noundef %100, i32 noundef 3520) #12
  %cbs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 11
  %101 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call5.i.i641, ptr %cbs, align 4
  %tobool288.not = icmp eq ptr %call5.i.i641, null
  br i1 %tobool288.not, label %devm_kcalloc.exit644.cleanup_crit_edge, label %if.end290

devm_kcalloc.exit644.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit644
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end290:                                        ; preds = %devm_kcalloc.exit644
  %102 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %impl.i, align 4
  %tobool.not.i646 = icmp eq ptr %103, null
  br i1 %tobool.not.i646, label %if.end290.if.end.i654_crit_edge, label %land.lhs.true.i648

if.end290.if.end.i654_crit_edge:                  ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i654

land.lhs.true.i648:                               ; preds = %if.end290
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %tobool2.not.i647 = icmp eq ptr %105, null
  br i1 %tobool2.not.i647, label %land.lhs.true.i648.if.end.i654_crit_edge, label %if.then.i650, !prof !295

land.lhs.true.i648.if.end.i654_crit_edge:         ; preds = %land.lhs.true.i648
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i654

if.then.i650:                                     ; preds = %land.lhs.true.i648
  call void @__sanitizer_cov_trace_pc() #14
  %call.i649 = tail call i32 %105(ptr noundef %smmu, i32 noundef 0, i32 noundef 40) #12
  br label %arm_smmu_readl.exit656

if.end.i654:                                      ; preds = %land.lhs.true.i648.if.end.i654_crit_edge, %if.end290.if.end.i654_crit_edge
  %base.i.i651 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %106 = ptrtoint ptr %base.i.i651 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i.i651, align 4
  %add.ptr.i653 = getelementptr i8, ptr %107, i32 40
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i653) #12, !srcloc !304
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #12
  br label %arm_smmu_readl.exit656

arm_smmu_readl.exit656:                           ; preds = %if.end.i654, %if.then.i650
  %retval.0.i655 = phi i32 [ %call.i649, %if.then.i650 ], [ %109, %if.end.i654 ]
  %and308 = and i32 %retval.0.i655, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and308)
  %110 = icmp ult i32 %and308, 5
  br i1 %110, label %switch.lookup, label %arm_smmu_readl.exit656.arm_smmu_id_size_to_bits.exit_crit_edge

arm_smmu_readl.exit656.arm_smmu_id_size_to_bits.exit_crit_edge: ; preds = %arm_smmu_readl.exit656
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_id_size_to_bits.exit

switch.lookup:                                    ; preds = %arm_smmu_readl.exit656
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.arm_smmu_device_cfg_probe, i32 0, i32 %and308
  %111 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %arm_smmu_id_size_to_bits.exit

arm_smmu_id_size_to_bits.exit:                    ; preds = %switch.lookup, %arm_smmu_readl.exit656.arm_smmu_id_size_to_bits.exit_crit_edge
  %retval.0.i657 = phi i32 [ %switch.load, %switch.lookup ], [ 48, %arm_smmu_readl.exit656.arm_smmu_id_size_to_bits.exit_crit_edge ]
  %ipa_size = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 20
  %112 = ptrtoint ptr %ipa_size to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %retval.0.i657, ptr %ipa_size, align 4
  %and327 = lshr i32 %retval.0.i655, 4
  %shr328 = and i32 %and327, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr328)
  %113 = icmp ult i32 %shr328, 5
  br i1 %113, label %switch.lookup682, label %arm_smmu_id_size_to_bits.exit.arm_smmu_id_size_to_bits.exit664_crit_edge

arm_smmu_id_size_to_bits.exit.arm_smmu_id_size_to_bits.exit664_crit_edge: ; preds = %arm_smmu_id_size_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_id_size_to_bits.exit664

switch.lookup682:                                 ; preds = %arm_smmu_id_size_to_bits.exit
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep683 = getelementptr inbounds [5 x i32], ptr @switch.table.arm_smmu_device_cfg_probe.139, i32 0, i32 %shr328
  %114 = ptrtoint ptr %switch.gep683 to i32
  call void @__asan_load4_noabort(i32 %114)
  %switch.load684 = load i32, ptr %switch.gep683, align 4
  br label %arm_smmu_id_size_to_bits.exit664

arm_smmu_id_size_to_bits.exit664:                 ; preds = %switch.lookup682, %arm_smmu_id_size_to_bits.exit.arm_smmu_id_size_to_bits.exit664_crit_edge
  %retval.0.i663 = phi i32 [ %switch.load684, %switch.lookup682 ], [ 48, %arm_smmu_id_size_to_bits.exit.arm_smmu_id_size_to_bits.exit664_crit_edge ]
  %pa_size = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 21
  %115 = ptrtoint ptr %pa_size to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %retval.0.i663, ptr %pa_size, align 4
  %and330 = and i32 %retval.0.i655, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %arm_smmu_id_size_to_bits.exit664.if.end335_crit_edge, label %if.then332

arm_smmu_id_size_to_bits.exit664.if.end335_crit_edge: ; preds = %arm_smmu_id_size_to_bits.exit664
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end335

if.then332:                                       ; preds = %arm_smmu_id_size_to_bits.exit664
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %features, align 4
  %or334 = or i32 %117, 64
  store i32 %or334, ptr %features, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %arm_smmu_id_size_to_bits.exit664.if.end335_crit_edge
  %118 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %smmu, align 4
  %sh_prom = zext i32 %retval.0.i663 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub340 = xor i64 %notmask, -1
  %call342 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %119, i64 noundef %sub340)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end335.if.end349_crit_edge, label %do.end347

if.end335.if.end349_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end349

do.end347:                                        ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.118) #16
  br label %if.end349

if.end349:                                        ; preds = %do.end347, %if.end335.if.end349_crit_edge
  %122 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp351 = icmp ult i32 %123, 2
  br i1 %cmp351, label %if.then353, label %do.end377

if.then353:                                       ; preds = %if.end349
  %124 = ptrtoint ptr %ipa_size to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ipa_size, align 4
  %va_size = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 19
  %126 = ptrtoint ptr %va_size to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %va_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp356 = icmp eq i32 %123, 1
  br i1 %cmp356, label %if.then353.if.end401.sink.split_crit_edge, label %if.then353.if.end401_crit_edge

if.then353.if.end401_crit_edge:                   ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

if.then353.if.end401.sink.split_crit_edge:        ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401.sink.split

do.end377:                                        ; preds = %if.end349
  %and379 = lshr i32 %retval.0.i655, 8
  %shr380 = and i32 %and379, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr380)
  %127 = icmp ult i32 %shr380, 5
  br i1 %127, label %switch.lookup685, label %do.end377.arm_smmu_id_size_to_bits.exit671_crit_edge

do.end377.arm_smmu_id_size_to_bits.exit671_crit_edge: ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #14
  br label %arm_smmu_id_size_to_bits.exit671

switch.lookup685:                                 ; preds = %do.end377
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep686 = getelementptr inbounds [5 x i32], ptr @switch.table.arm_smmu_device_cfg_probe.140, i32 0, i32 %shr380
  %128 = ptrtoint ptr %switch.gep686 to i32
  call void @__asan_load4_noabort(i32 %128)
  %switch.load687 = load i32, ptr %switch.gep686, align 4
  br label %arm_smmu_id_size_to_bits.exit671

arm_smmu_id_size_to_bits.exit671:                 ; preds = %switch.lookup685, %do.end377.arm_smmu_id_size_to_bits.exit671_crit_edge
  %retval.0.i670 = phi i32 [ %switch.load687, %switch.lookup685 ], [ 48, %do.end377.arm_smmu_id_size_to_bits.exit671_crit_edge ]
  %va_size382 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 19
  %129 = ptrtoint ptr %va_size382 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %retval.0.i670, ptr %va_size382, align 4
  %and383 = and i32 %retval.0.i655, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383)
  %tobool384.not = icmp eq i32 %and383, 0
  br i1 %tobool384.not, label %arm_smmu_id_size_to_bits.exit671.if.end388_crit_edge, label %if.then385

arm_smmu_id_size_to_bits.exit671.if.end388_crit_edge: ; preds = %arm_smmu_id_size_to_bits.exit671
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end388

if.then385:                                       ; preds = %arm_smmu_id_size_to_bits.exit671
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %features, align 4
  %or387 = or i32 %131, 128
  store i32 %or387, ptr %features, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.then385, %arm_smmu_id_size_to_bits.exit671.if.end388_crit_edge
  %and389 = and i32 %retval.0.i655, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389)
  %tobool390.not = icmp eq i32 %and389, 0
  br i1 %tobool390.not, label %if.end388.if.end394_crit_edge, label %if.then391

if.end388.if.end394_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end394

if.then391:                                       ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %features, align 4
  %or393 = or i32 %133, 256
  store i32 %or393, ptr %features, align 4
  br label %if.end394

if.end394:                                        ; preds = %if.then391, %if.end388.if.end394_crit_edge
  %and395 = and i32 %retval.0.i655, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and395)
  %tobool396.not = icmp eq i32 %and395, 0
  br i1 %tobool396.not, label %if.end394.if.end401_crit_edge, label %if.end394.if.end401.sink.split_crit_edge

if.end394.if.end401.sink.split_crit_edge:         ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401.sink.split

if.end394.if.end401_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

if.end401.sink.split:                             ; preds = %if.end394.if.end401.sink.split_crit_edge, %if.then353.if.end401.sink.split_crit_edge
  %134 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %features, align 4
  %or399 = or i32 %135, 512
  store i32 %or399, ptr %features, align 4
  br label %if.end401

if.end401:                                        ; preds = %if.end401.sink.split, %if.end394.if.end401_crit_edge, %if.then353.if.end401_crit_edge
  %136 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %impl.i, align 4
  %tobool402.not = icmp eq ptr %137, null
  br i1 %tobool402.not, label %if.end401.if.end413_crit_edge, label %land.lhs.true403

if.end401.if.end413_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end413

land.lhs.true403:                                 ; preds = %if.end401
  %cfg_probe = getelementptr inbounds %struct.arm_smmu_impl, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %cfg_probe to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfg_probe, align 4
  %tobool405.not = icmp eq ptr %139, null
  br i1 %tobool405.not, label %land.lhs.true403.if.end413_crit_edge, label %if.then406

land.lhs.true403.if.end413_crit_edge:             ; preds = %land.lhs.true403
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end413

if.then406:                                       ; preds = %land.lhs.true403
  %call409 = tail call i32 %139(ptr noundef %smmu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %if.then406.if.end413_crit_edge, label %if.then406.cleanup_crit_edge

if.then406.cleanup_crit_edge:                     ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then406.if.end413_crit_edge:                   ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end413

if.end413:                                        ; preds = %if.then406.if.end413_crit_edge, %land.lhs.true403.if.end413_crit_edge, %if.end401.if.end413_crit_edge
  %140 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %features, align 4
  %and415 = and i32 %141, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and415)
  %tobool416.not = icmp eq i32 %and415, 0
  br i1 %tobool416.not, label %if.end413.if.end419_crit_edge, label %if.then417

if.end413.if.end419_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

if.then417:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #14
  %pgsize_bitmap = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 22
  %142 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pgsize_bitmap, align 4
  %or418 = or i32 %143, 17895424
  store i32 %or418, ptr %pgsize_bitmap, align 4
  br label %if.end419

if.end419:                                        ; preds = %if.then417, %if.end413.if.end419_crit_edge
  %and421 = and i32 %141, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and421)
  %tobool422.not = icmp eq i32 %and421, 0
  br i1 %tobool422.not, label %if.end419.if.end426_crit_edge, label %if.then423

if.end419.if.end426_crit_edge:                    ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end426

if.then423:                                       ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #14
  %pgsize_bitmap424 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 22
  %144 = ptrtoint ptr %pgsize_bitmap424 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pgsize_bitmap424, align 4
  %or425 = or i32 %145, 1075843072
  store i32 %or425, ptr %pgsize_bitmap424, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.then423, %if.end419.if.end426_crit_edge
  %and428 = and i32 %141, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %tobool429.not = icmp eq i32 %and428, 0
  br i1 %tobool429.not, label %if.end426.if.end433_crit_edge, label %if.then430

if.end426.if.end433_crit_edge:                    ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end433

if.then430:                                       ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #14
  %pgsize_bitmap431 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 22
  %146 = ptrtoint ptr %pgsize_bitmap431 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pgsize_bitmap431, align 4
  %or432 = or i32 %147, 33570816
  store i32 %or432, ptr %pgsize_bitmap431, align 4
  br label %if.end433

if.end433:                                        ; preds = %if.then430, %if.end426.if.end433_crit_edge
  %and435 = and i32 %141, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and435)
  %tobool436.not = icmp eq i32 %and435, 0
  br i1 %tobool436.not, label %if.end433.if.end440_crit_edge, label %if.then437

if.end433.if.end440_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end440

if.then437:                                       ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #14
  %pgsize_bitmap438 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 22
  %148 = ptrtoint ptr %pgsize_bitmap438 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pgsize_bitmap438, align 4
  %or439 = or i32 %149, 536936448
  store i32 %or439, ptr %pgsize_bitmap438, align 4
  br label %if.end440

if.end440:                                        ; preds = %if.then437, %if.end433.if.end440_crit_edge
  %150 = load i32, ptr getelementptr inbounds (%struct.iommu_ops, ptr @arm_smmu_ops, i32 0, i32 39), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %cmp441 = icmp eq i32 %150, -1
  %pgsize_bitmap444 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 22
  %151 = ptrtoint ptr %pgsize_bitmap444 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pgsize_bitmap444, align 4
  %or447 = select i1 %cmp441, i32 0, i32 %150
  %storemerge = or i32 %152, %or447
  store i32 %storemerge, ptr getelementptr inbounds (%struct.iommu_ops, ptr @arm_smmu_ops, i32 0, i32 39), align 4
  %153 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %smmu, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %154, ptr noundef nonnull @.str.121, i32 noundef %152) #16
  %155 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %features, align 4
  %and455 = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool456.not = icmp eq i32 %and455, 0
  br i1 %tobool456.not, label %if.end440.if.end464_crit_edge, label %do.end460

if.end440.if.end464_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end464

do.end460:                                        ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %smmu, align 4
  %va_size462 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 19
  %159 = ptrtoint ptr %va_size462 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %va_size462, align 4
  %161 = ptrtoint ptr %ipa_size to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ipa_size, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %158, ptr noundef nonnull @.str.124, i32 noundef %160, i32 noundef %162) #16
  br label %if.end464

if.end464:                                        ; preds = %do.end460, %if.end440.if.end464_crit_edge
  %163 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %features, align 4
  %and466 = and i32 %164, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and466)
  %tobool467.not = icmp eq i32 %and466, 0
  br i1 %tobool467.not, label %if.end464.cleanup_crit_edge, label %do.end471

if.end464.cleanup_crit_edge:                      ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end471:                                        ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %smmu, align 4
  %167 = ptrtoint ptr %ipa_size to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ipa_size, align 4
  %169 = ptrtoint ptr %pa_size to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pa_size, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %166, ptr noundef nonnull @.str.127, i32 noundef %168, i32 noundef %170) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end471, %if.end464.cleanup_crit_edge, %if.then406.cleanup_crit_edge, %devm_kcalloc.exit644.cleanup_crit_edge, %devm_kcalloc.exit644.thread, %do.end275, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %do.end145, %do.end46
  %retval.0 = phi i32 [ -19, %do.end145 ], [ -19, %do.end275 ], [ -19, %do.end46 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit644.cleanup_crit_edge ], [ %call409, %if.then406.cleanup_crit_edge ], [ 0, %do.end471 ], [ 0, %if.end464.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit644.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_global_fault(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %3(ptr noundef %dev, i32 noundef 0, i32 noundef 72) #12
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !304
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.end.i ]
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %impl.i, align 4
  %tobool.not.i37 = icmp eq ptr %9, null
  br i1 %tobool.not.i37, label %arm_smmu_readl.exit.if.end.i45_crit_edge, label %land.lhs.true.i39

arm_smmu_readl.exit.if.end.i45_crit_edge:         ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i45

land.lhs.true.i39:                                ; preds = %arm_smmu_readl.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i38 = icmp eq ptr %11, null
  br i1 %tobool2.not.i38, label %land.lhs.true.i39.if.end.i45_crit_edge, label %if.then.i41, !prof !295

land.lhs.true.i39.if.end.i45_crit_edge:           ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i45

if.then.i41:                                      ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #14
  %call.i40 = tail call i32 %11(ptr noundef %dev, i32 noundef 0, i32 noundef 80) #12
  br label %arm_smmu_readl.exit47

if.end.i45:                                       ; preds = %land.lhs.true.i39.if.end.i45_crit_edge, %arm_smmu_readl.exit.if.end.i45_crit_edge
  %base.i.i42 = getelementptr inbounds %struct.arm_smmu_device, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i42, align 4
  %add.ptr.i44 = getelementptr i8, ptr %13, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #12, !srcloc !304
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  br label %arm_smmu_readl.exit47

arm_smmu_readl.exit47:                            ; preds = %if.end.i45, %if.then.i41
  %retval.0.i46 = phi i32 [ %call.i40, %if.then.i41 ], [ %15, %if.end.i45 ]
  %16 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %impl.i, align 4
  %tobool.not.i49 = icmp eq ptr %17, null
  br i1 %tobool.not.i49, label %arm_smmu_readl.exit47.if.end.i57_crit_edge, label %land.lhs.true.i51

arm_smmu_readl.exit47.if.end.i57_crit_edge:       ; preds = %arm_smmu_readl.exit47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i57

land.lhs.true.i51:                                ; preds = %arm_smmu_readl.exit47
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool2.not.i50 = icmp eq ptr %19, null
  br i1 %tobool2.not.i50, label %land.lhs.true.i51.if.end.i57_crit_edge, label %if.then.i53, !prof !295

land.lhs.true.i51.if.end.i57_crit_edge:           ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i57

if.then.i53:                                      ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  %call.i52 = tail call i32 %19(ptr noundef %dev, i32 noundef 0, i32 noundef 84) #12
  br label %arm_smmu_readl.exit59

if.end.i57:                                       ; preds = %land.lhs.true.i51.if.end.i57_crit_edge, %arm_smmu_readl.exit47.if.end.i57_crit_edge
  %base.i.i54 = getelementptr inbounds %struct.arm_smmu_device, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i54, align 4
  %add.ptr.i56 = getelementptr i8, ptr %21, i32 84
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #12, !srcloc !304
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  br label %arm_smmu_readl.exit59

arm_smmu_readl.exit59:                            ; preds = %if.end.i57, %if.then.i53
  %retval.0.i58 = phi i32 [ %call.i52, %if.then.i53 ], [ %23, %if.end.i57 ]
  %24 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %impl.i, align 4
  %tobool.not.i61 = icmp eq ptr %25, null
  br i1 %tobool.not.i61, label %arm_smmu_readl.exit59.if.end.i69_crit_edge, label %land.lhs.true.i63

arm_smmu_readl.exit59.if.end.i69_crit_edge:       ; preds = %arm_smmu_readl.exit59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i69

land.lhs.true.i63:                                ; preds = %arm_smmu_readl.exit59
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool2.not.i62 = icmp eq ptr %27, null
  br i1 %tobool2.not.i62, label %land.lhs.true.i63.if.end.i69_crit_edge, label %if.then.i65, !prof !295

land.lhs.true.i63.if.end.i69_crit_edge:           ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i69

if.then.i65:                                      ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #14
  %call.i64 = tail call i32 %27(ptr noundef %dev, i32 noundef 0, i32 noundef 88) #12
  br label %arm_smmu_readl.exit71

if.end.i69:                                       ; preds = %land.lhs.true.i63.if.end.i69_crit_edge, %arm_smmu_readl.exit59.if.end.i69_crit_edge
  %base.i.i66 = getelementptr inbounds %struct.arm_smmu_device, ptr %dev, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i66, align 4
  %add.ptr.i68 = getelementptr i8, ptr %29, i32 88
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #12, !srcloc !304
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  br label %arm_smmu_readl.exit71

arm_smmu_readl.exit71:                            ; preds = %if.end.i69, %if.then.i65
  %retval.0.i70 = phi i32 [ %call.i64, %if.then.i65 ], [ %31, %if.end.i69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %arm_smmu_readl.exit71.cleanup_crit_edge, label %if.end

arm_smmu_readl.exit71.cleanup_crit_edge:          ; preds = %arm_smmu_readl.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %arm_smmu_readl.exit71
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @arm_smmu_global_fault.rs, ptr noundef nonnull @__func__.arm_smmu_global_fault) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end20_crit_edge, label %if.then6

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then6:                                         ; preds = %if.end
  %and = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br i1 %tobool7.not, label %do.end13, label %do.end

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %conv10 = and i32 %retval.0.i58, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.130, i32 noundef %conv10) #16
  br label %do.end18

do.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.132) #16
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.end
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.135, i32 noundef %retval.0.i, i32 noundef %retval.0.i46, i32 noundef %retval.0.i58, i32 noundef %retval.0.i70) #16
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end.if.end20_crit_edge
  %36 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %impl.i, align 4
  %tobool.not.i73 = icmp eq ptr %37, null
  br i1 %tobool.not.i73, label %if.end20.if.else.i_crit_edge, label %land.lhs.true.i75

if.end20.if.else.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i75:                                ; preds = %if.end20
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i74 = icmp eq ptr %39, null
  br i1 %tobool2.not.i74, label %land.lhs.true.i75.if.else.i_crit_edge, label %if.then.i76, !prof !295

land.lhs.true.i75.if.else.i_crit_edge:            ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i76:                                      ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %39(ptr noundef %dev, i32 noundef 0, i32 noundef 72, i32 noundef %retval.0.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i75.if.else.i_crit_edge, %if.end20.if.else.i_crit_edge
  %40 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %base.i.i77 = getelementptr inbounds %struct.arm_smmu_device, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %base.i.i77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i77, align 4
  %add.ptr.i79 = getelementptr i8, ptr %42, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %40) #12, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i76, %arm_smmu_readl.exit71.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %arm_smmu_readl.exit71.cleanup_crit_edge ], [ 1, %if.then.i76 ], [ 1, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_smmu_device_reset(ptr noundef %smmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %0 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %3(ptr noundef %smmu, i32 noundef 0, i32 noundef 72) #12
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !304
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.end.i ]
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %impl.i, align 4
  %tobool.not.i68 = icmp eq ptr %9, null
  br i1 %tobool.not.i68, label %arm_smmu_readl.exit.if.else.i_crit_edge, label %land.lhs.true.i70

arm_smmu_readl.exit.if.else.i_crit_edge:          ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i70:                                ; preds = %arm_smmu_readl.exit
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i69 = icmp eq ptr %11, null
  br i1 %tobool2.not.i69, label %land.lhs.true.i70.if.else.i_crit_edge, label %if.then.i71, !prof !295

land.lhs.true.i70.if.else.i_crit_edge:            ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i71:                                      ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11(ptr noundef %smmu, i32 noundef 0, i32 noundef 72, i32 noundef %retval.0.i) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i70.if.else.i_crit_edge, %arm_smmu_readl.exit.if.else.i_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %base.i.i72 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %13 = ptrtoint ptr %base.i.i72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i72, align 4
  %add.ptr.i74 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %12) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i71
  %num_mapping_groups = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 13
  %15 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_mapping_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp134.not = icmp eq i32 %16, 0
  br i1 %cmp134.not, label %arm_smmu_writel.exit.for.cond1.preheader_crit_edge, label %arm_smmu_writel.exit.for.body_crit_edge

arm_smmu_writel.exit.for.body_crit_edge:          ; preds = %arm_smmu_writel.exit
  br label %for.body

arm_smmu_writel.exit.for.cond1.preheader_crit_edge: ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %arm_smmu_writel.exit.for.cond1.preheader_crit_edge
  %num_context_banks = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 8
  %17 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_context_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2136.not = icmp eq i32 %18, 0
  br i1 %cmp2136.not, label %for.cond1.preheader.for.end6_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.end6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end6

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %numpage = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 2
  %base.i.i82 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %pgshift.i.i83 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 3
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %arm_smmu_writel.exit.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %arm_smmu_writel.exit.for.body_crit_edge ]
  tail call fastcc void @arm_smmu_write_sme(ptr noundef %smmu, i32 noundef %i.0135)
  %inc = add nuw i32 %i.0135, 1
  %19 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_mapping_groups, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body3:                                        ; preds = %arm_smmu_writel.exit87.for.body3_crit_edge, %for.body3.lr.ph
  %i.1137 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc5, %arm_smmu_writel.exit87.for.body3_crit_edge ]
  tail call void @arm_smmu_write_context_bank(ptr noundef %smmu, i32 noundef %i.1137)
  %21 = ptrtoint ptr %numpage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %numpage, align 4
  %add = add i32 %22, %i.1137
  %23 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %impl.i, align 4
  %tobool.not.i77 = icmp eq ptr %24, null
  br i1 %tobool.not.i77, label %for.body3.if.else.i85_crit_edge, label %land.lhs.true.i80

for.body3.if.else.i85_crit_edge:                  ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i85

land.lhs.true.i80:                                ; preds = %for.body3
  %write_reg.i78 = getelementptr inbounds %struct.arm_smmu_impl, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_reg.i78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg.i78, align 4
  %tobool2.not.i79 = icmp eq ptr %26, null
  br i1 %tobool2.not.i79, label %land.lhs.true.i80.if.else.i85_crit_edge, label %if.then.i81, !prof !295

land.lhs.true.i80.if.else.i85_crit_edge:          ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i85

if.then.i81:                                      ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %26(ptr noundef %smmu, i32 noundef %add, i32 noundef 88, i32 noundef -1073741314) #12
  br label %arm_smmu_writel.exit87

if.else.i85:                                      ; preds = %land.lhs.true.i80.if.else.i85_crit_edge, %for.body3.if.else.i85_crit_edge
  %27 = ptrtoint ptr %base.i.i82 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i82, align 4
  %29 = ptrtoint ptr %pgshift.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pgshift.i.i83, align 4
  %shl.i.i = shl i32 %add, %30
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 88
  %add.ptr.i84 = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 -33488704) #12, !srcloc !296
  br label %arm_smmu_writel.exit87

arm_smmu_writel.exit87:                           ; preds = %if.else.i85, %if.then.i81
  %inc5 = add nuw i32 %i.1137, 1
  %31 = ptrtoint ptr %num_context_banks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_context_banks, align 4
  %cmp2 = icmp ult i32 %inc5, %32
  br i1 %cmp2, label %arm_smmu_writel.exit87.for.body3_crit_edge, label %arm_smmu_writel.exit87.for.end6_crit_edge

arm_smmu_writel.exit87.for.end6_crit_edge:        ; preds = %arm_smmu_writel.exit87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end6

arm_smmu_writel.exit87.for.body3_crit_edge:       ; preds = %arm_smmu_writel.exit87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.end6:                                         ; preds = %arm_smmu_writel.exit87.for.end6_crit_edge, %for.cond1.preheader.for.end6_crit_edge
  %33 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %impl.i, align 4
  %tobool.not.i89 = icmp eq ptr %34, null
  br i1 %tobool.not.i89, label %for.end6.if.else.i97_crit_edge, label %land.lhs.true.i92

for.end6.if.else.i97_crit_edge:                   ; preds = %for.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i97

land.lhs.true.i92:                                ; preds = %for.end6
  %write_reg.i90 = getelementptr inbounds %struct.arm_smmu_impl, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_reg.i90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg.i90, align 4
  %tobool2.not.i91 = icmp eq ptr %36, null
  br i1 %tobool2.not.i91, label %land.lhs.true.i92.if.else.i97_crit_edge, label %if.then.i93, !prof !295

land.lhs.true.i92.if.else.i97_crit_edge:          ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i97

if.then.i93:                                      ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %36(ptr noundef %smmu, i32 noundef 0, i32 noundef 108, i32 noundef -1) #12
  br label %arm_smmu_writel.exit99

if.else.i97:                                      ; preds = %land.lhs.true.i92.if.else.i97_crit_edge, %for.end6.if.else.i97_crit_edge
  %base.i.i94 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.i94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i94, align 4
  %add.ptr.i96 = getelementptr i8, ptr %38, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 -1) #12, !srcloc !296
  br label %arm_smmu_writel.exit99

arm_smmu_writel.exit99:                           ; preds = %if.else.i97, %if.then.i93
  %39 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %impl.i, align 4
  %tobool.not.i101 = icmp eq ptr %40, null
  br i1 %tobool.not.i101, label %arm_smmu_writel.exit99.if.else.i109_crit_edge, label %land.lhs.true.i104

arm_smmu_writel.exit99.if.else.i109_crit_edge:    ; preds = %arm_smmu_writel.exit99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i109

land.lhs.true.i104:                               ; preds = %arm_smmu_writel.exit99
  %write_reg.i102 = getelementptr inbounds %struct.arm_smmu_impl, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_reg.i102 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i102, align 4
  %tobool2.not.i103 = icmp eq ptr %42, null
  br i1 %tobool2.not.i103, label %land.lhs.true.i104.if.else.i109_crit_edge, label %if.then.i105, !prof !295

land.lhs.true.i104.if.else.i109_crit_edge:        ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i109

if.then.i105:                                     ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %42(ptr noundef %smmu, i32 noundef 0, i32 noundef 104, i32 noundef -1) #12
  br label %arm_smmu_writel.exit111

if.else.i109:                                     ; preds = %land.lhs.true.i104.if.else.i109_crit_edge, %arm_smmu_writel.exit99.if.else.i109_crit_edge
  %base.i.i106 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %43 = ptrtoint ptr %base.i.i106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i106, align 4
  %add.ptr.i108 = getelementptr i8, ptr %44, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 -1) #12, !srcloc !296
  br label %arm_smmu_writel.exit111

arm_smmu_writel.exit111:                          ; preds = %if.else.i109, %if.then.i105
  %45 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %impl.i, align 4
  %tobool.not.i113 = icmp eq ptr %46, null
  br i1 %tobool.not.i113, label %arm_smmu_writel.exit111.if.end.i120_crit_edge, label %land.lhs.true.i115

arm_smmu_writel.exit111.if.end.i120_crit_edge:    ; preds = %arm_smmu_writel.exit111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i120

land.lhs.true.i115:                               ; preds = %arm_smmu_writel.exit111
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool2.not.i114 = icmp eq ptr %48, null
  br i1 %tobool2.not.i114, label %land.lhs.true.i115.if.end.i120_crit_edge, label %if.then.i117, !prof !295

land.lhs.true.i115.if.end.i120_crit_edge:         ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i120

if.then.i117:                                     ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #14
  %call.i116 = tail call i32 %48(ptr noundef %smmu, i32 noundef 0, i32 noundef 0) #12
  br label %arm_smmu_readl.exit122

if.end.i120:                                      ; preds = %land.lhs.true.i115.if.end.i120_crit_edge, %arm_smmu_writel.exit111.if.end.i120_crit_edge
  %base.i.i118 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %49 = ptrtoint ptr %base.i.i118 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i118, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !304
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  br label %arm_smmu_readl.exit122

arm_smmu_readl.exit122:                           ; preds = %if.end.i120, %if.then.i117
  %retval.0.i121 = phi i32 [ %call.i116, %if.then.i117 ], [ %52, %if.end.i120 ]
  %53 = load i8, ptr @disable_bypass, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not = icmp eq i8 %53, 0
  %or8 = and i32 %retval.0.i121, -64568
  %reg.0.v = select i1 %tobool.not, i32 6198, i32 7222
  %reg.0 = or i32 %reg.0.v, %or8
  %features = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 4
  %54 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %features, align 4
  %and13 = shl i32 %55, 25
  %56 = and i32 %and13, -2147483648
  %57 = or i32 %reg.0, %56
  %and19 = lshr i32 %55, 9
  %58 = and i32 %and19, 8
  %59 = or i32 %57, %58
  %60 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %impl.i, align 4
  %tobool24.not = icmp eq ptr %61, null
  br i1 %tobool24.not, label %arm_smmu_readl.exit122.if.end31_crit_edge, label %land.lhs.true

arm_smmu_readl.exit122.if.end31_crit_edge:        ; preds = %arm_smmu_readl.exit122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true:                                    ; preds = %arm_smmu_readl.exit122
  %reset = getelementptr inbounds %struct.arm_smmu_impl, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reset, align 4
  %tobool26.not = icmp eq ptr %63, null
  br i1 %tobool26.not, label %land.lhs.true.if.end31_crit_edge, label %if.then27

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 %63(ptr noundef %smmu) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true.if.end31_crit_edge, %arm_smmu_readl.exit122.if.end31_crit_edge
  %global_sync_lock.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_sync_lock.i) #12
  tail call fastcc void @__arm_smmu_tlb_sync(ptr noundef %smmu, i32 noundef 0, i32 noundef 112, i32 noundef 116) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_sync_lock.i, i32 noundef %call2.i) #12
  %64 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %impl.i, align 4
  %tobool.not.i124 = icmp eq ptr %65, null
  br i1 %tobool.not.i124, label %if.end31.if.else.i131_crit_edge, label %land.lhs.true.i127

if.end31.if.else.i131_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i131

land.lhs.true.i127:                               ; preds = %if.end31
  %write_reg.i125 = getelementptr inbounds %struct.arm_smmu_impl, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_reg.i125 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_reg.i125, align 4
  %tobool2.not.i126 = icmp eq ptr %67, null
  br i1 %tobool2.not.i126, label %land.lhs.true.i127.if.else.i131_crit_edge, label %if.then.i128, !prof !295

land.lhs.true.i127.if.else.i131_crit_edge:        ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i131

if.then.i128:                                     ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %67(ptr noundef %smmu, i32 noundef 0, i32 noundef 0, i32 noundef %59) #12
  br label %arm_smmu_writel.exit133

if.else.i131:                                     ; preds = %land.lhs.true.i127.if.else.i131_crit_edge, %if.end31.if.else.i131_crit_edge
  %68 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  %base.i.i129 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %69 = ptrtoint ptr %base.i.i129 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i129, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #12, !srcloc !296
  br label %arm_smmu_writel.exit133

arm_smmu_writel.exit133:                          ; preds = %if.else.i131, %if.then.i128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arm_smmu_test_smr_masks(ptr noundef %smmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %smrs = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 16
  %0 = ptrtoint ptr %smrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smrs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_mapping_groups = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 13
  %2 = ptrtoint ptr %num_mapping_groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_mapping_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp156.not = icmp eq i32 %3, 0
  br i1 %cmp156.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %valid = getelementptr %struct.arm_smmu_smr, ptr %1, i32 %i.0157, i32 2
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %do.body8, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body8:                                         ; preds = %for.body
  %streamid_mask = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 14
  %6 = ptrtoint ptr %streamid_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %streamid_mask, align 4
  %conv22 = zext i16 %7 to i32
  %shl24 = shl i32 %i.0157, 2
  %add = add i32 %shl24, 2048
  %impl.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 7
  %8 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %impl.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body8.if.else.i_crit_edge, label %land.lhs.true.i

do.body8.if.else.i_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %do.body8
  %write_reg.i = getelementptr inbounds %struct.arm_smmu_impl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i, !prof !295

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11(ptr noundef %smmu, i32 noundef 0, i32 noundef %add, i32 noundef %conv22) #12
  br label %arm_smmu_writel.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %do.body8.if.else.i_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv22) #12
  %base.i.i = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #12, !srcloc !296
  br label %arm_smmu_writel.exit

arm_smmu_writel.exit:                             ; preds = %if.else.i, %if.then.i
  %15 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %impl.i, align 4
  %tobool.not.i124 = icmp eq ptr %16, null
  br i1 %tobool.not.i124, label %arm_smmu_writel.exit.if.end.i_crit_edge, label %land.lhs.true.i126

arm_smmu_writel.exit.if.end.i_crit_edge:          ; preds = %arm_smmu_writel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i126:                               ; preds = %arm_smmu_writel.exit
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool2.not.i125 = icmp eq ptr %18, null
  br i1 %tobool2.not.i125, label %land.lhs.true.i126.if.end.i_crit_edge, label %if.then.i127, !prof !295

land.lhs.true.i126.if.end.i_crit_edge:            ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i127:                                     ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %18(ptr noundef %smmu, i32 noundef 0, i32 noundef %add) #12
  br label %arm_smmu_readl.exit

if.end.i:                                         ; preds = %land.lhs.true.i126.if.end.i_crit_edge, %arm_smmu_writel.exit.if.end.i_crit_edge
  %base.i.i128 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %19 = ptrtoint ptr %base.i.i128 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i128, align 4
  %add.ptr.i130 = getelementptr i8, ptr %20, i32 %add
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #12, !srcloc !304
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  br label %arm_smmu_readl.exit

arm_smmu_readl.exit:                              ; preds = %if.end.i, %if.then.i127
  %retval.0.i = phi i32 [ %call.i, %if.then.i127 ], [ %22, %if.end.i ]
  %conv44 = trunc i32 %retval.0.i to i16
  %23 = ptrtoint ptr %streamid_mask to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv44, ptr %streamid_mask, align 4
  %conv72 = shl i32 %retval.0.i, 16
  %24 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %impl.i, align 4
  %tobool.not.i132 = icmp eq ptr %25, null
  br i1 %tobool.not.i132, label %arm_smmu_readl.exit.if.else.i140_crit_edge, label %land.lhs.true.i135

arm_smmu_readl.exit.if.else.i140_crit_edge:       ; preds = %arm_smmu_readl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i140

land.lhs.true.i135:                               ; preds = %arm_smmu_readl.exit
  %write_reg.i133 = getelementptr inbounds %struct.arm_smmu_impl, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_reg.i133 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg.i133, align 4
  %tobool2.not.i134 = icmp eq ptr %27, null
  br i1 %tobool2.not.i134, label %land.lhs.true.i135.if.else.i140_crit_edge, label %if.then.i136, !prof !295

land.lhs.true.i135.if.else.i140_crit_edge:        ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i140

if.then.i136:                                     ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %27(ptr noundef %smmu, i32 noundef 0, i32 noundef %add, i32 noundef %conv72) #12
  br label %arm_smmu_writel.exit142

if.else.i140:                                     ; preds = %land.lhs.true.i135.if.else.i140_crit_edge, %arm_smmu_readl.exit.if.else.i140_crit_edge
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv72) #12
  %base.i.i137 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %29 = ptrtoint ptr %base.i.i137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i137, align 4
  %add.ptr.i139 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %28) #12, !srcloc !296
  br label %arm_smmu_writel.exit142

arm_smmu_writel.exit142:                          ; preds = %if.else.i140, %if.then.i136
  %31 = ptrtoint ptr %impl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %impl.i, align 4
  %tobool.not.i144 = icmp eq ptr %32, null
  br i1 %tobool.not.i144, label %arm_smmu_writel.exit142.if.end.i152_crit_edge, label %land.lhs.true.i146

arm_smmu_writel.exit142.if.end.i152_crit_edge:    ; preds = %arm_smmu_writel.exit142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i152

land.lhs.true.i146:                               ; preds = %arm_smmu_writel.exit142
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool2.not.i145 = icmp eq ptr %34, null
  br i1 %tobool2.not.i145, label %land.lhs.true.i146.if.end.i152_crit_edge, label %if.then.i148, !prof !295

land.lhs.true.i146.if.end.i152_crit_edge:         ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i152

if.then.i148:                                     ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #14
  %call.i147 = tail call i32 %34(ptr noundef %smmu, i32 noundef 0, i32 noundef %add) #12
  br label %arm_smmu_readl.exit154

if.end.i152:                                      ; preds = %land.lhs.true.i146.if.end.i152_crit_edge, %arm_smmu_writel.exit142.if.end.i152_crit_edge
  %base.i.i149 = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 1
  %35 = ptrtoint ptr %base.i.i149 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i149, align 4
  %add.ptr.i151 = getelementptr i8, ptr %36, i32 %add
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #12, !srcloc !304
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  br label %arm_smmu_readl.exit154

arm_smmu_readl.exit154:                           ; preds = %if.end.i152, %if.then.i148
  %retval.0.i153 = phi i32 [ %call.i147, %if.then.i148 ], [ %38, %if.end.i152 ]
  %shr97 = lshr i32 %retval.0.i153, 16
  %conv98 = trunc i32 %shr97 to i16
  %smr_mask_mask = getelementptr inbounds %struct.arm_smmu_device, ptr %smmu, i32 0, i32 15
  %39 = ptrtoint ptr %smr_mask_mask to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv98, ptr %smr_mask_mask, align 2
  br label %cleanup

cleanup:                                          ; preds = %arm_smmu_readl.exit154, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.clk_unprepare_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pm_runtime_suspended.exit.clk_unprepare_crit_edge: ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_unprepare

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %num_clks.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %6, ptr noundef %8) #12
  br label %clk_unprepare

clk_unprepare:                                    ; preds = %if.end, %pm_runtime_suspended.exit.clk_unprepare_crit_edge
  %num_clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_unprepare(i32 noundef %10, ptr noundef %12) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call1 = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end4_crit_edge

pm_runtime_suspended.exit.if.end4_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %pm_runtime_suspended.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %num_clks.i = getelementptr inbounds %struct.arm_smmu_device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.arm_smmu_device, ptr %10, i32 0, i32 26
  %13 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clks.i, align 4
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %12, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i20 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i20, label %arm_smmu_runtime_resume.exit.thread, label %if.then7

arm_smmu_runtime_resume.exit.thread:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @arm_smmu_device_reset(ptr noundef %10) #12
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_clks, align 4
  %17 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_unprepare(i32 noundef %16, ptr noundef %18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %arm_smmu_runtime_resume.exit.thread, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ %call1.i, %if.then7 ], [ 0, %arm_smmu_runtime_resume.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_smmu_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.arm_smmu_device, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @arm_smmu_device_reset(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !39, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !167, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__param_force_stage, !1, !"__param_force_stage", i1 false, i1 false}
!1 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_stagetype363, !1, !"__UNIQUE_ID_force_stagetype363", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_stage364, !4, !"__UNIQUE_ID_force_stage364", i1 false, i1 false}
!4 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 59, i32 1}
!5 = !{ptr @__param_disable_bypass, !6, !"__param_disable_bypass", i1 false, i1 false}
!6 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 63, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_bypasstype365, !6, !"__UNIQUE_ID_disable_bypasstype365", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_bypass366, !9, !"__UNIQUE_ID_disable_bypass366", i1 false, i1 false}
!9 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 64, i32 1}
!10 = !{ptr @__initcall__kmod_arm_smmu__367_196_arm_smmu_legacy_bus_init6s, !11, !"__initcall__kmod_arm_smmu__367_196_arm_smmu_legacy_bus_init6s", i1 false, i1 false}
!11 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 196, i32 1}
!12 = !{ptr @__initcall__kmod_arm_smmu__540_2338_arm_smmu_driver_init6, !13, !"__initcall__kmod_arm_smmu__540_2338_arm_smmu_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2338, i32 1}
!14 = !{ptr @__exitcall_arm_smmu_driver_exit, !13, !"__exitcall_arm_smmu_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description541, !16, !"__UNIQUE_ID_description541", i1 false, i1 false}
!16 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2340, i32 1}
!17 = !{ptr @__UNIQUE_ID_author542, !18, !"__UNIQUE_ID_author542", i1 false, i1 false}
!18 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2341, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias543, !20, !"__UNIQUE_ID_alias543", i1 false, i1 false}
!20 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2342, i32 1}
!21 = !{ptr @__UNIQUE_ID_file544, !22, !"__UNIQUE_ID_file544", i1 false, i1 false}
!22 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2343, i32 1}
!23 = !{ptr @__UNIQUE_ID_license545, !22, !"__UNIQUE_ID_license545", i1 false, i1 false}
!24 = !{ptr @force_stage, !25, !"force_stage", i1 false, i1 false}
!25 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 57, i32 12}
!26 = !{ptr @__param_str_force_stage, !1, !"__param_str_force_stage", i1 false, i1 false}
!27 = !{ptr @__param_str_disable_bypass, !6, !"__param_str_disable_bypass", i1 false, i1 false}
!28 = !{ptr @disable_bypass, !29, !"disable_bypass", i1 false, i1 false}
!29 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 61, i32 13}
!30 = distinct !{null, !31, !"using_legacy_binding", i1 false, i1 false}
!31 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 71, i32 13}
!32 = !{ptr @arm_smmu_ops, !33, !"arm_smmu_ops", i1 false, i1 false}
!33 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1583, i32 25}
!34 = !{ptr @arm_smmu_domain_alloc.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 889, i32 2}
!36 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @arm_smmu_domain_alloc.__key.1, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 890, i32 2}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1139, i32 3}
!42 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @arm_smmu_attach_dev._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @arm_smmu_attach_dev._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1170, i32 3}
!50 = !{ptr @arm_smmu_attach_dev._entry.8, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @arm_smmu_attach_dev._entry_ptr.10, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 818, i32 24}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 820, i32 3}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @arm_smmu_init_domain_context._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @arm_smmu_init_domain_context._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @arm_smmu_s1_tlb_ops, !60, !"arm_smmu_s1_tlb_ops", i1 false, i1 false}
!60 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 391, i32 37}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 230, i32 2}
!63 = !{ptr @__arm_smmu_tlb_sync._rs, !62, !"_rs", i1 false, i1 false}
!64 = !{ptr @__func__.__arm_smmu_tlb_sync, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__arm_smmu_tlb_sync._entry, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @__arm_smmu_tlb_sync._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @arm_smmu_s2_tlb_ops_v2, !69, !"arm_smmu_s2_tlb_ops_v2", i1 false, i1 false}
!69 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 397, i32 37}
!70 = !{ptr @arm_smmu_s2_tlb_ops_v1, !71, !"arm_smmu_s2_tlb_ops_v1", i1 false, i1 false}
!71 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 403, i32 37}
!72 = !{ptr @arm_smmu_context_fault._rs, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 431, i32 3}
!74 = !{ptr @__func__.arm_smmu_context_fault, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @arm_smmu_context_fault._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @arm_smmu_context_fault._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1295, i32 3}
!80 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @arm_smmu_iova_to_phys_hard._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @arm_smmu_iova_to_phys_hard._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1305, i32 3}
!85 = !{ptr @arm_smmu_iova_to_phys_hard._entry.19, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @arm_smmu_iova_to_phys_hard._entry_ptr.21, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1306, i32 3}
!89 = !{ptr @arm_smmu_iova_to_phys_hard._entry.22, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @arm_smmu_iova_to_phys_hard._entry_ptr.24, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1388, i32 4}
!93 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @arm_smmu_probe_device._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @arm_smmu_probe_device._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1393, i32 4}
!98 = !{ptr @arm_smmu_probe_device._entry.27, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @arm_smmu_probe_device._entry_ptr.29, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 145, i32 35}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 123, i32 2}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1550, i32 43}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2329, i32 13}
!108 = !{ptr @arm_smmu_driver, !109, !"arm_smmu_driver", i1 false, i1 false}
!109 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2327, i32 31}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2080, i32 3}
!112 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @arm_smmu_device_probe._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @arm_smmu_device_probe._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2116, i32 3}
!117 = !{ptr @arm_smmu_device_probe._entry.36, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @arm_smmu_device_probe._entry_ptr.38, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2124, i32 3}
!121 = !{ptr @arm_smmu_device_probe._entry.39, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @arm_smmu_device_probe._entry_ptr.41, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2138, i32 3}
!125 = !{ptr @arm_smmu_device_probe._entry.42, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @arm_smmu_device_probe._entry_ptr.44, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2153, i32 4}
!129 = !{ptr @arm_smmu_device_probe._entry.45, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @arm_smmu_device_probe._entry_ptr.47, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2172, i32 12}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2175, i32 4}
!135 = !{ptr @arm_smmu_device_probe._entry.49, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @arm_smmu_device_probe._entry_ptr.51, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2182, i32 10}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2184, i32 3}
!141 = !{ptr @arm_smmu_device_probe._entry.53, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @arm_smmu_device_probe._entry_ptr.55, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2190, i32 3}
!145 = !{ptr @arm_smmu_device_probe._entry.56, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @arm_smmu_device_probe._entry_ptr.58, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1993, i32 41}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1995, i32 3}
!151 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @arm_smmu_device_dt_probe._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @arm_smmu_device_dt_probe._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2006, i32 4}
!156 = !{ptr @arm_smmu_device_dt_probe._entry.62, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @arm_smmu_device_dt_probe._entry_ptr.64, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2013, i32 3}
!161 = !{ptr @arm_smmu_device_dt_probe._entry.66, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @arm_smmu_device_dt_probe._entry_ptr.68, !160, !"_entry_ptr", i1 false, i1 false}
!163 = distinct !{null, !164, !"using_generic_binding", i1 false, i1 false}
!164 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 71, i32 35}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1695, i32 2}
!167 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @arm_smmu_device_cfg_probe._entry, !166, !"_entry", i1 false, i1 false}
!170 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1696, i32 2}
!173 = !{ptr @arm_smmu_device_cfg_probe._entry.72, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.74, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1710, i32 3}
!177 = !{ptr @arm_smmu_device_cfg_probe._entry.75, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.77, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1715, i32 3}
!181 = !{ptr @arm_smmu_device_cfg_probe._entry.78, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.80, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1720, i32 3}
!185 = !{ptr @arm_smmu_device_cfg_probe._entry.81, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.83, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1725, i32 3}
!189 = !{ptr @arm_smmu_device_cfg_probe._entry.84, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.86, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1732, i32 3}
!193 = !{ptr @arm_smmu_device_cfg_probe._entry.87, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.89, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1743, i32 3}
!197 = !{ptr @arm_smmu_device_cfg_probe._entry.90, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.92, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1746, i32 3}
!203 = !{ptr @arm_smmu_device_cfg_probe._entry.95, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.97, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1761, i32 4}
!207 = !{ptr @arm_smmu_device_cfg_probe._entry.98, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.100, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1772, i32 3}
!211 = !{ptr @arm_smmu_device_cfg_probe._entry.101, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.103, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @arm_smmu_device_cfg_probe.__key, !214, !"__key", i1 false, i1 false}
!214 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1784, i32 2}
!215 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @arm_smmu_device_cfg_probe.__key.105, !217, !"__key", i1 false, i1 false}
!217 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1785, i32 2}
!218 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1801, i32 3}
!221 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @arm_smmu_device_cfg_probe._entry.107, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.110, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1810, i32 3}
!226 = !{ptr @arm_smmu_device_cfg_probe._entry.111, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.113, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1813, i32 2}
!230 = !{ptr @arm_smmu_device_cfg_probe._entry.114, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.116, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.118, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1838, i32 3}
!234 = !{ptr @arm_smmu_device_cfg_probe._entry.117, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.119, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1877, i32 2}
!238 = !{ptr @arm_smmu_device_cfg_probe._entry.120, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.122, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1882, i32 3}
!242 = !{ptr @arm_smmu_device_cfg_probe._entry.123, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.125, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.127, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1886, i32 3}
!246 = !{ptr @arm_smmu_device_cfg_probe._entry.126, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @arm_smmu_device_cfg_probe._entry_ptr.128, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.129, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 443, i32 9}
!250 = !{ptr @arm_smmu_global_fault.rs, !249, !"rs", i1 false, i1 false}
!251 = !{ptr @__func__.arm_smmu_global_fault, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 454, i32 6}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 457, i32 4}
!255 = !{ptr @arm_smmu_global_fault._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @arm_smmu_global_fault._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 461, i32 4}
!259 = !{ptr @arm_smmu_global_fault._entry.131, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @arm_smmu_global_fault._entry_ptr.133, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.135, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 463, i32 3}
!263 = !{ptr @arm_smmu_global_fault._entry.134, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @arm_smmu_global_fault._entry_ptr.136, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2237, i32 3}
!267 = !{ptr @.str.138, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @arm_smmu_device_remove._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @arm_smmu_device_remove._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @arm_smmu_of_match, !271, !"arm_smmu_of_match", i1 false, i1 false}
!271 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1907, i32 34}
!272 = !{ptr @smmu_generic_v1, !273, !"smmu_generic_v1", i1 false, i1 false}
!273 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1900, i32 1}
!274 = !{ptr @smmu_generic_v2, !275, !"smmu_generic_v2", i1 false, i1 false}
!275 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1901, i32 1}
!276 = !{ptr @arm_mmu401, !277, !"arm_mmu401", i1 false, i1 false}
!277 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1902, i32 1}
!278 = !{ptr @arm_mmu500, !279, !"arm_mmu500", i1 false, i1 false}
!279 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1903, i32 1}
!280 = !{ptr @cavium_smmuv2, !281, !"cavium_smmuv2", i1 false, i1 false}
!281 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1904, i32 1}
!282 = !{ptr @qcom_smmuv2, !283, !"qcom_smmuv2", i1 false, i1 false}
!283 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 1905, i32 1}
!284 = !{ptr @arm_smmu_pm_ops, !285, !"arm_smmu_pm_ops", i1 false, i1 false}
!285 = !{!"../drivers/iommu/arm/arm-smmu/arm-smmu.c", i32 2321, i32 32}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{!"branch_weights", i32 2000, i32 1}
!296 = !{i64 6981094}
!297 = !{i64 2148366344}
!298 = !{i64 851167, i64 851192, i64 851214, i64 851230, i64 851242, i64 851262, i64 851286, i64 851302, i64 851314}
!299 = !{i64 2148366532}
!300 = !{i64 2148452348}
!301 = !{i64 2148367645, i64 2148367677, i64 2148367706, i64 2148367740, i64 2148367771, i64 2148367794}
!302 = !{i64 2148452577}
!303 = !{i8 0, i8 2}
!304 = !{i64 6981512}
!305 = !{i64 2157606021}
!306 = !{i64 2157606451}
!307 = !{!"auto-init"}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{i64 2156776263}
!310 = !{i64 2156771798}
!311 = !{i64 2156771640}
!312 = !{i64 2156776869}
!313 = !{i64 2156776628}
!314 = !{i64 2156777256}
!315 = !{i64 2156777667}
