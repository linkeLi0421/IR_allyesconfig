; ModuleID = '/llk/IR_all_yes/drivers/iommu/arm/arm-smmu/qcom_iommu.c_pt.bc'
source_filename = "../drivers/iommu/arm/arm-smmu/qcom_iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.qcom_iommu_ctx = type { ptr, ptr, i8, i8, ptr }
%struct.qcom_iommu_dev = type { %struct.iommu_device, ptr, [3 x %struct.clk_bulk_data], ptr, i32, i8, [0 x ptr] }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.qcom_iommu_domain = type { ptr, %struct.spinlock, %struct.mutex, %struct.iommu_domain, ptr, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.82 }
%struct.anon.82 = type { [4 x i64], i32 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_qcom_iommu__313_922_qcom_iommu_init6 = internal global ptr @qcom_iommu_init, section ".initcall6.init", align 4
@qcom_iommu_ctx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_iommu_ctx_probe, ptr @qcom_iommu_ctx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ctx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@qcom_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_iommu_device_probe, ptr @qcom_iommu_device_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_iommu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_iommu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-iommu-ctx\00", [17 x i8] zeroinitializer }, align 32
@ctx_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-iommu-v1-ns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-iommu-v1-sec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom-iommu-fault\00", [47 x i8] zeroinitializer }, align 32
@qcom_iommu_ctx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 701, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request IRQ %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_iommu_ctx_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/iommu/arm/arm-smmu/qcom_iommu.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_iommu_ctx_probe._entry_ptr = internal global ptr @qcom_iommu_ctx_probe._entry, section ".printk_index", align 4
@qcom_iommu_ctx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 707, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing reg property\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_iommu_ctx_probe._entry_ptr.9 = internal global ptr @qcom_iommu_ctx_probe._entry.7, section ".printk_index", align 4
@qcom_iommu_ctx_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_iommu\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found asid %u\0A\00", [17 x i8] zeroinitializer }, align 32
@qcom_iommu_fault._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.qcom_iommu_fault = private unnamed_addr constant [17 x i8] c"qcom_iommu_fault\00", align 1
@qcom_iommu_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.qcom_iommu_fault, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unhandled context fault: fsr=0x%x, iova=0x%016llx, fsynr=0x%x, cb=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_iommu_fault._entry_ptr = internal global ptr @qcom_iommu_fault._entry, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-iommu\00", [21 x i8] zeroinitializer }, align 32
@qcom_iommu_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-iommu-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_iommu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_iommu_suspend, ptr @qcom_iommu_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get iface clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_iommu_device_probe\00", [40 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr = internal global ptr @qcom_iommu_device_probe._entry, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 796, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.22 = internal global ptr @qcom_iommu_device_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbu\00", [28 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.4, i32 803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get tbu clock\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.26 = internal global ptr @qcom_iommu_device_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,iommu-secure-id\00", [43 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.4, i32 810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing qcom,iommu-secure-id property\0A\00", [57 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.30 = internal global ptr @qcom_iommu_device_probe._entry.28, section ".printk_index", align 4
@qcom_iommu_device_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.4, i32 817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot init secure pg table(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.33 = internal global ptr @qcom_iommu_device_probe._entry.31, section ".printk_index", align 4
@qcom_iommu_device_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to populate iommu contexts\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.36 = internal global ptr @qcom_iommu_device_probe._entry.34, section ".printk_index", align 4
@qcom_iommu_device_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register iommu in sysfs\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.39 = internal global ptr @qcom_iommu_device_probe._entry.37, section ".printk_index", align 4
@qcom_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr @qcom_iommu_capable, ptr @qcom_iommu_domain_alloc, ptr @qcom_iommu_domain_free, ptr @qcom_iommu_attach_dev, ptr @qcom_iommu_detach_dev, ptr @qcom_iommu_map, ptr null, ptr @qcom_iommu_unmap, ptr null, ptr @qcom_iommu_flush_iotlb_all, ptr null, ptr @qcom_iommu_iotlb_sync, ptr @qcom_iommu_iova_to_phys, ptr @qcom_iommu_probe_device, ptr @qcom_iommu_release_device, ptr null, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17895424, ptr null }, [60 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.4, i32 842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to register iommu\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_iommu_device_probe._entry_ptr.42 = internal global ptr @qcom_iommu_device_probe._entry.40, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,msm-iommu-v1-sec\00", [42 x i8] zeroinitializer }, align 32
@qcom_iommu_sec_ptbl_init.allocated = internal global { i1, [31 x i8] } zeroinitializer, align 32
@qcom_iommu_sec_ptbl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to get iommu secure pgtable size (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_iommu_sec_ptbl_init\00", [39 x i8] zeroinitializer }, align 32
@qcom_iommu_sec_ptbl_init._entry_ptr = internal global ptr @qcom_iommu_sec_ptbl_init._entry, section ".printk_index", align 4
@qcom_iommu_sec_ptbl_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 628, ptr @.str.48, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iommu sec: pgtable size: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_iommu_sec_ptbl_init._entry_ptr.49 = internal global ptr @qcom_iommu_sec_ptbl_init._entry.46, section ".printk_index", align 4
@qcom_iommu_sec_ptbl_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.4, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate %zu bytes for pgtable\0A\00", [54 x i8] zeroinitializer }, align 32
@qcom_iommu_sec_ptbl_init._entry_ptr.52 = internal global ptr @qcom_iommu_sec_ptbl_init._entry.50, section ".printk_index", align 4
@qcom_iommu_sec_ptbl_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to init iommu pgtable (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_iommu_sec_ptbl_init._entry_ptr.55 = internal global ptr @qcom_iommu_sec_ptbl_init._entry.53, section ".printk_index", align 4
@qcom_iommu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&qcom_domain->init_mutex\00", [39 x i8] zeroinitializer }, align 32
@qcom_iommu_domain_alloc.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&qcom_domain->pgtbl_lock\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qcom_iommu_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cannot attach to IOMMU, is it on the same bus?\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_iommu_attach_dev\00", [42 x i8] zeroinitializer }, align 32
@qcom_iommu_attach_dev._entry_ptr = internal global ptr @qcom_iommu_attach_dev._entry, section ".printk_index", align 4
@qcom_iommu_attach_dev._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"cannot attach to IOMMU %s while already attached to domain on IOMMU %s\0A\00", [56 x i8] zeroinitializer }, align 32
@qcom_iommu_attach_dev._entry_ptr.63 = internal global ptr @qcom_iommu_attach_dev._entry.61, section ".printk_index", align 4
@qcom_flush_ops = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @qcom_iommu_tlb_inv_context, ptr @qcom_iommu_tlb_flush_walk, ptr @qcom_iommu_tlb_add_page }, [20 x i8] zeroinitializer }, align 32
@qcom_iommu_init_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate pagetable ops\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_iommu_init_domain\00", [41 x i8] zeroinitializer }, align 32
@qcom_iommu_init_domain._entry_ptr = internal global ptr @qcom_iommu_init_domain._entry, section ".printk_index", align 4
@qcom_iommu_init_domain._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"secure init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_iommu_init_domain._entry_ptr.68 = internal global ptr @qcom_iommu_init_domain._entry.66, section ".printk_index", align 4
@qcom_iommu_tlb_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for TLB SYNC\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_iommu_tlb_sync\00", [44 x i8] zeroinitializer }, align 32
@qcom_iommu_tlb_sync._entry_ptr = internal global ptr @qcom_iommu_tlb_sync._entry, section ".printk_index", align 4
@qcom_iommu_probe_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to create device link between %s and %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_iommu_probe_device\00", [40 x i8] zeroinitializer }, align 32
@qcom_iommu_probe_device._entry_ptr = internal global ptr @qcom_iommu_probe_device._entry, section ".printk_index", align 4
@qcom_iommu_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"incorrect number of iommu params found for %s (found %d, expected 1)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_iommu_of_xlate\00", [44 x i8] zeroinitializer }, align 32
@qcom_iommu_of_xlate._entry_ptr = internal global ptr @qcom_iommu_of_xlate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"qcom_iommu_ctx_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 738, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"qcom_iommu_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 898, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 740, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"ctx_of_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 732, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 698, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 701, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 707, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 713, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 214, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 660, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 900, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"qcom_iommu_of_match\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 893, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"qcom_iommu_pm_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 887, i32 32 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 787, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 789, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 794, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 796, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 801, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 803, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 808, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 810, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 817, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 829, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 836, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"qcom_iommu_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 590, i32 31 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 842, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 752, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant [35 x i8] c"qcom_iommu_sec_ptbl_init.allocated\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 623, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 628, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 634, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 641, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 337, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 338, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 369, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 385, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"qcom_flush_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 193, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 254, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 270, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 139, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 527, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [43 x i8] c"../drivers/iommu/arm/arm-smmu/qcom_iommu.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 552, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__initcall__kmod_qcom_iommu__313_922_qcom_iommu_init6, ptr @qcom_iommu_attach_dev._entry, ptr @qcom_iommu_attach_dev._entry.61, ptr @qcom_iommu_attach_dev._entry_ptr, ptr @qcom_iommu_attach_dev._entry_ptr.63, ptr @qcom_iommu_ctx_probe._entry, ptr @qcom_iommu_ctx_probe._entry.7, ptr @qcom_iommu_ctx_probe._entry_ptr, ptr @qcom_iommu_ctx_probe._entry_ptr.9, ptr @qcom_iommu_device_probe._entry, ptr @qcom_iommu_device_probe._entry.20, ptr @qcom_iommu_device_probe._entry.24, ptr @qcom_iommu_device_probe._entry.28, ptr @qcom_iommu_device_probe._entry.31, ptr @qcom_iommu_device_probe._entry.34, ptr @qcom_iommu_device_probe._entry.37, ptr @qcom_iommu_device_probe._entry.40, ptr @qcom_iommu_device_probe._entry_ptr, ptr @qcom_iommu_device_probe._entry_ptr.22, ptr @qcom_iommu_device_probe._entry_ptr.26, ptr @qcom_iommu_device_probe._entry_ptr.30, ptr @qcom_iommu_device_probe._entry_ptr.33, ptr @qcom_iommu_device_probe._entry_ptr.36, ptr @qcom_iommu_device_probe._entry_ptr.39, ptr @qcom_iommu_device_probe._entry_ptr.42, ptr @qcom_iommu_fault._entry, ptr @qcom_iommu_fault._entry_ptr, ptr @qcom_iommu_init_domain._entry, ptr @qcom_iommu_init_domain._entry.66, ptr @qcom_iommu_init_domain._entry_ptr, ptr @qcom_iommu_init_domain._entry_ptr.68, ptr @qcom_iommu_of_xlate._entry, ptr @qcom_iommu_of_xlate._entry_ptr, ptr @qcom_iommu_probe_device._entry, ptr @qcom_iommu_probe_device._entry_ptr, ptr @qcom_iommu_sec_ptbl_init._entry, ptr @qcom_iommu_sec_ptbl_init._entry.46, ptr @qcom_iommu_sec_ptbl_init._entry.50, ptr @qcom_iommu_sec_ptbl_init._entry.53, ptr @qcom_iommu_sec_ptbl_init._entry_ptr, ptr @qcom_iommu_sec_ptbl_init._entry_ptr.49, ptr @qcom_iommu_sec_ptbl_init._entry_ptr.52, ptr @qcom_iommu_sec_ptbl_init._entry_ptr.55, ptr @qcom_iommu_tlb_sync._entry, ptr @qcom_iommu_tlb_sync._entry_ptr, ptr @qcom_iommu_ctx_driver, ptr @qcom_iommu_driver, ptr @.str, ptr @ctx_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @qcom_iommu_fault._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @qcom_iommu_of_match, ptr @qcom_iommu_pm_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @qcom_iommu_ops, ptr @.str.41, ptr @.str.43, ptr @qcom_iommu_sec_ptbl_init.allocated, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @qcom_iommu_domain_alloc.__key, ptr @.str.56, ptr @qcom_iommu_domain_alloc.__key.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @qcom_flush_ops, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_ctx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_ctx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_ctx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_fault._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_device_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_sec_ptbl_init.allocated to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_sec_ptbl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_sec_ptbl_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_sec_ptbl_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_sec_ptbl_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_domain_alloc.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_attach_dev._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_flush_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_init_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_init_domain._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_tlb_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_probe_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iommu_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_iommu_ctx_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_iommu_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_iommu_ctx_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_ctx_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call4) #9
  %base = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !158
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr.i75 = getelementptr i8, ptr %12, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %10) #9, !srcloc !159
  %call.i76 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @qcom_iommu_fault, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool17.not = icmp eq i32 %call.i76, 0
  br i1 %tobool17.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call12) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reg.i, align 4, !annotation !160
  %call.i77 = call i32 @of_property_read_u32_index(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i, label %get_asid.exit, label %get_asid.exit.thread

get_asid.exit.thread:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  br label %cleanup

get_asid.exit:                                    ; preds = %if.end19
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %div1.i = lshr i32 %17, 12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  %conv = trunc i32 %div1.i to i8
  %asid = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %asid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %asid, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_iommu_ctx_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_iommu_ctx_probe, %if.then32)) #9
          to label %do.end37 [label %if.then32], !srcloc !161

if.then32:                                        ; preds = %get_asid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %asid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %asid, align 1
  %conv34 = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_iommu_ctx_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv34) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %get_asid.exit
  %21 = ptrtoint ptr %asid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %asid, align 1
  %conv39 = zext i8 %22 to i32
  %sub = add nsw i32 %conv39, -1
  %arrayidx = getelementptr %struct.qcom_iommu_dev, ptr %3, i32 0, i32 6, i32 %sub
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %get_asid.exit.thread, %do.end, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %call.i76, %do.end ], [ -19, %get_asid.exit.thread ], [ 0, %do.end37 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_iommu_ctx_remove(ptr nocapture noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %asid = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %asid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %asid, align 1
  %conv = zext i8 %7 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.qcom_iommu_dev, ptr %3, i32 0, i32 6, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_fault(i32 noundef %irq, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !158
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and = and i32 %3, -1073741314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %5, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #9, !srcloc !158
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 96
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !158
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #9, !srcloc !158
  %12 = zext i32 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #9
  %domain = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %conv = trunc i64 %16 to i32
  %call4 = tail call i32 @report_iommu_fault(ptr noundef %18, ptr noundef %20, i32 noundef %conv, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body:                                          ; preds = %if.end
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @qcom_iommu_fault._rs, ptr noundef nonnull @__func__.qcom_iommu_fault) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %asid = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %dev, i32 0, i32 3
  %23 = ptrtoint ptr %asid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %asid, align 1
  %conv12 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %3, i64 noundef %16, i32 noundef %7, i32 noundef %conv12) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %26, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %2) #9, !srcloc !159
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 16777216) #9, !srcloc !159
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_device_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %psize.i = alloca i32, align 4
  %paddr.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %cmp.not188 = icmp eq ptr %call, null
  br i1 %cmp.not188, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %get_asid.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %max_asid.0190 = phi i32 [ %5, %get_asid.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.0189 = phi ptr [ %call5, %get_asid.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !160
  %call.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0189, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.get_asid.exit_crit_edge

for.body.get_asid.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_asid.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %div1.i = lshr i32 %4, 12
  br label %get_asid.exit

get_asid.exit:                                    ; preds = %if.end.i, %for.body.get_asid.exit_crit_edge
  %retval.0.i = phi i32 [ %div1.i, %if.end.i ], [ -19, %for.body.get_asid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  %5 = call i32 @llvm.smax.i32(i32 %max_asid.0190, i32 %retval.0.i)
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call5 = call ptr @of_get_next_child(ptr noundef %7, ptr noundef nonnull %child.0189) #9
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %get_asid.exit.for.end_crit_edge, label %get_asid.exit.for.body_crit_edge

get_asid.exit.for.body_crit_edge:                 ; preds = %get_asid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

get_asid.exit.for.end_crit_edge:                  ; preds = %get_asid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %get_asid.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %max_asid.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %5, %get_asid.exit.for.end_crit_edge ]
  %8 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_asid.0.lcssa, i32 4) #9
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %10, i32 60) #9
  %retval.0.i167 = select i1 %9, i32 -1, i32 %spec.select.i
  %call.i168 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i167, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i168, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.end
  %conv = trunc i32 %max_asid.0.lcssa to i8
  %num_ctxs = getelementptr inbounds %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 5
  %11 = ptrtoint ptr %num_ctxs to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %num_ctxs, align 4
  %dev8 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 1
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.if.end19_crit_edge, label %if.then11

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then11:                                        ; preds = %if.end
  %call12 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call9) #9
  %local_base = getelementptr inbounds %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 3
  %13 = ptrtoint ptr %local_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %local_base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %call20 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  %cmp.i169 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  %15 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %clk25 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %clk25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %clk25, align 4
  %call26 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  %cmp.i170 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #12
  %17 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %clk36 = getelementptr %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %clk36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26, ptr %clk36, align 4
  %call37 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  %cmp.i171 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #12
  %19 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %clk47 = getelementptr %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 2, i32 2, i32 1
  %20 = ptrtoint ptr %clk47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call37, ptr %clk47, align 4
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %sec_id = getelementptr inbounds %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.27, ptr noundef %sec_id, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool50.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end55:                                         ; preds = %if.end44
  %23 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev8, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %call.i172 = call ptr @of_get_next_child(ptr noundef %26, ptr noundef null) #9
  %cmp.not8.i = icmp eq ptr %call.i172, null
  br i1 %cmp.not8.i, label %if.end55.if.end65_crit_edge, label %if.end55.for.body.i_crit_edge

if.end55.for.body.i_crit_edge:                    ; preds = %if.end55
  br label %for.body.i

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end55.for.body.i_crit_edge
  %child.09.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i172, %if.end55.for.body.i_crit_edge ]
  %call1.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.09.i, ptr noundef nonnull @.str.43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i173 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i173, label %for.inc.i, label %if.then57

for.inc.i:                                        ; preds = %for.body.i
  %27 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev8, align 4
  %of_node3.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node3.i, align 8
  %call4.i = call ptr @of_get_next_child(ptr noundef %30, ptr noundef nonnull %child.09.i) #9
  %cmp.not.i = icmp eq ptr %call4.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end65_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end65_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then57:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psize.i) #9
  %31 = ptrtoint ptr %psize.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %psize.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i) #9
  %32 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %paddr.i, align 4, !annotation !160
  %.b39.i = load i1, ptr @qcom_iommu_sec_ptbl_init.allocated, align 1
  br i1 %.b39.i, label %if.then57.qcom_iommu_sec_ptbl_init.exit_crit_edge, label %if.end.i175

if.then57.qcom_iommu_sec_ptbl_init.exit_crit_edge: ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_sec_ptbl_init.exit

if.end.i175:                                      ; preds = %if.then57
  %call.i174 = call i32 @qcom_scm_iommu_secure_ptbl_size(i32 noundef 0, ptr noundef nonnull %psize.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool1.not.i = icmp eq i32 %call.i174, 0
  br i1 %tobool1.not.i, label %do.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44, i32 noundef %call.i174) #12
  br label %do.end63

do.end6.i:                                        ; preds = %if.end.i175
  %33 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %psize.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %34) #12
  %35 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %psize.i, align 4
  %call7.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %36, ptr noundef nonnull %paddr.i, i32 noundef 3264, i32 noundef 16) #9
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end13.i

do.end12.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %psize.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %38) #12
  br label %do.end63

if.end13.i:                                       ; preds = %do.end6.i
  %39 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %paddr.i, align 4
  %conv.i = zext i32 %40 to i64
  %41 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %psize.i, align 4
  %call14.i = call i32 @qcom_scm_iommu_secure_ptbl_init(i64 noundef %conv.i, i32 noundef %42, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end20.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %call14.i) #12
  %43 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %psize.i, align 4
  %45 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %paddr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %44, ptr noundef nonnull %call7.i, i32 noundef %46, i32 noundef 16) #9
  br label %do.end63

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qcom_iommu_sec_ptbl_init.allocated, align 1
  br label %qcom_iommu_sec_ptbl_init.exit

qcom_iommu_sec_ptbl_init.exit:                    ; preds = %if.end20.i, %if.then57.qcom_iommu_sec_ptbl_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psize.i) #9
  br label %if.end65

do.end63:                                         ; preds = %do.end19.i, %do.end12.i, %do.end.i
  %retval.0.i176.ph = phi i32 [ -12, %do.end12.i ], [ %call14.i, %do.end19.i ], [ %call.i174, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psize.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i176.ph) #12
  br label %cleanup

if.end65:                                         ; preds = %qcom_iommu_sec_ptbl_init.exit, %for.inc.i.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i168, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call66 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i177 = icmp eq ptr %49, null
  br i1 %tobool.not.i177, label %if.end.i178, label %if.end72.dev_name.exit_crit_edge

if.end72.dev_name.exit_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i178:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i178, %if.end72.dev_name.exit_crit_edge
  %retval.0.i179 = phi ptr [ %51, %if.end.i178 ], [ %49, %if.end72.dev_name.exit_crit_edge ]
  %call74 = call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef nonnull %call.i168, ptr noundef %dev1, ptr noundef null, ptr noundef %retval.0.i179) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end80:                                         ; preds = %dev_name.exit
  %call82 = call i32 @iommu_device_register(ptr noundef nonnull %call.i168, ptr noundef nonnull @qcom_iommu_ops, ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end88, label %do.end87

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end88:                                         ; preds = %if.end80
  %call89 = call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @qcom_iommu_ops) #9
  %local_base90 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %call.i168, i32 0, i32 3
  %52 = ptrtoint ptr %local_base90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %local_base90, align 4
  %tobool91.not = icmp eq ptr %53, null
  br i1 %tobool91.not, label %if.end88.cleanup_crit_edge, label %if.then92

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %call.i180 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  %54 = ptrtoint ptr %local_base90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %local_base90, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 8192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #9, !srcloc !159
  %call.i181 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end88.cleanup_crit_edge, %do.end87, %do.end79, %do.end71, %do.end63, %do.end54, %do.end42, %do.end31, %do.end, %if.then15, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then15 ], [ %15, %do.end ], [ %17, %do.end31 ], [ %19, %do.end42 ], [ -19, %do.end54 ], [ %retval.0.i176.ph, %do.end63 ], [ %call66, %do.end71 ], [ %call74, %do.end79 ], [ %call82, %do.end87 ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.then92 ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_device_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @iommu_device_sysfs_remove(ptr noundef %1) #9
  tail call void @iommu_device_unregister(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_iommu_secure_ptbl_size(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_iommu_secure_ptbl_init(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qcom_iommu_capable(i32 noundef %cap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.and = and i32 %cap, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_iommu_domain_alloc(i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 3, label %entry.if.end_crit_edge12
  ]

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 184) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %init_mutex = getelementptr inbounds %struct.qcom_iommu_domain, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %init_mutex, ptr noundef nonnull @.str.56, ptr noundef nonnull @qcom_iommu_domain_alloc.__key) #9
  %pgtbl_lock = getelementptr inbounds %struct.qcom_iommu_domain, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %pgtbl_lock, ptr noundef nonnull @.str.58, ptr noundef nonnull @qcom_iommu_domain_alloc.__key.57, i16 noundef signext 3) #9
  %domain = getelementptr inbounds %struct.qcom_iommu_domain, ptr %call7.i.i, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %domain, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_domain_free(ptr noundef %domain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -140
  %iommu = getelementptr i8, ptr %domain, i32 36
  %0 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.qcom_iommu_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void @free_io_pgtable_ops(ptr noundef %5) #9
  %6 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu, align 4
  %dev4 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call.i10 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_attach_dev(ptr noundef %domain, ptr noundef %dev) #3 align 64 {
entry:
  %pgtbl_cfg.i = alloca %struct.io_pgtable_cfg, align 8
  %.compoundliteral.sroa.8.i = alloca [44 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %dev_iommu_fwspec_get.exit.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dev_iommu_fwspec_get.exit.i:                      ; preds = %entry
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_iommu_fwspec_get.exit.i.do.end_crit_edge, label %lor.lhs.false.i

dev_iommu_fwspec_get.exit.i.do.end_crit_edge:     ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i:                                  ; preds = %dev_iommu_fwspec_get.exit.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not.i = icmp eq ptr %5, @qcom_iommu_ops
  br i1 %cmp.not.i, label %to_iommu.exit, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

to_iommu.exit:                                    ; preds = %lor.lhs.false.i
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -140
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %to_iommu.exit.do.end_crit_edge, label %if.end

to_iommu.exit.do.end_crit_edge:                   ; preds = %to_iommu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %to_iommu.exit.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %dev_iommu_fwspec_get.exit.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end:                                           ; preds = %to_iommu.exit
  %dev2 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  %10 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i34 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i34, label %if.end.dev_iommu_fwspec_get.exit.i37_crit_edge, label %if.then.i.i

if.end.dev_iommu_fwspec_get.exit.i37_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_iommu_fwspec_get.exit.i37

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %fwspec.i.i35 = getelementptr inbounds %struct.dev_iommu, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %fwspec.i.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwspec.i.i35, align 4
  br label %dev_iommu_fwspec_get.exit.i37

dev_iommu_fwspec_get.exit.i37:                    ; preds = %if.then.i.i, %if.end.dev_iommu_fwspec_get.exit.i37_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.then.i.i ], [ null, %if.end.dev_iommu_fwspec_get.exit.i37_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #9
  %14 = call ptr @memset(ptr %pgtbl_cfg.i, i32 255, i32 72)
  %init_mutex.i = getelementptr i8, ptr %domain, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %init_mutex.i, i32 noundef 0) #9
  %iommu.i = getelementptr i8, ptr %domain, i32 36
  %15 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i36 = icmp eq ptr %16, null
  br i1 %tobool.not.i36, label %if.end.i, label %dev_iommu_fwspec_get.exit.i37.qcom_iommu_init_domain.exit_crit_edge

dev_iommu_fwspec_get.exit.i37.qcom_iommu_init_domain.exit_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_init_domain.exit

if.end.i:                                         ; preds = %dev_iommu_fwspec_get.exit.i37
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  %.compoundliteral.sroa.8.i.4.i.4..sroa_idx = getelementptr inbounds i8, ptr %.compoundliteral.sroa.8.i, i32 4
  %19 = call ptr @memset(ptr %.compoundliteral.sroa.8.i.4.i.4..sroa_idx, i32 0, i32 40)
  %20 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %pgtbl_cfg.i, align 8
  %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 4
  %21 = ptrtoint ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 17895424, ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 8
  %22 = ptrtoint ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 12
  %23 = ptrtoint ptr %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 40, ptr %.compoundliteral.sroa.4.0.pgtbl_cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 16
  %24 = ptrtoint ptr %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %.compoundliteral.sroa.5.0.pgtbl_cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.686.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 20
  %25 = ptrtoint ptr %.compoundliteral.sroa.686.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @qcom_flush_ops, ptr %.compoundliteral.sroa.686.0.pgtbl_cfg.sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 24
  %26 = ptrtoint ptr %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %18, ptr %.compoundliteral.sroa.7.0.pgtbl_cfg.sroa_idx.i, align 8
  %.compoundliteral.sroa.8.0.pgtbl_cfg.sroa_idx.i = getelementptr inbounds i8, ptr %pgtbl_cfg.i, i32 28
  %27 = call ptr @memcpy(ptr %.compoundliteral.sroa.8.0.pgtbl_cfg.sroa_idx.i, ptr %.compoundliteral.sroa.8.i, i32 44)
  %28 = ptrtoint ptr %iommu.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %7, ptr %iommu.i, align 4
  %fwspec4.i = getelementptr i8, ptr %domain, i32 40
  %29 = ptrtoint ptr %fwspec4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i.i, ptr %fwspec4.i, align 4
  %call5.i = call ptr @alloc_io_pgtable_ops(i32 noundef 0, ptr noundef nonnull %pgtbl_cfg.i, ptr noundef %add.ptr.i) #9
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.64) #12
  br label %out_clear_iommu.i

if.end9.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %.compoundliteral.sroa.2.0.pgtbl_cfg.sroa_idx.i, align 4
  %pgsize_bitmap11.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 2
  %34 = ptrtoint ptr %pgsize_bitmap11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pgsize_bitmap11.i, align 4
  %35 = ptrtoint ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %.compoundliteral.sroa.3.0.pgtbl_cfg.sroa_idx.i, align 8
  %sh_prom.i = zext i32 %36 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %37 = trunc i64 %notmask.i to i32
  %conv.i = xor i32 %37, -1
  %aperture_end.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i, ptr %aperture_end.i, align 4
  %force_aperture.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %force_aperture.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %force_aperture.i, align 4
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp133.not.i = icmp eq i32 %41, 0
  br i1 %cmp133.not.i, label %if.end9.i.qcom_iommu_init_domain.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end9.i.qcom_iommu_init_domain.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_init_domain.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %sec_id.i = getelementptr inbounds %struct.qcom_iommu_dev, ptr %7, i32 0, i32 4
  %42 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7
  %tcr.i.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %mair.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %pgtbl_cfg.i, i32 0, i32 7, i32 0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0134.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i113.i = icmp eq ptr %44, null
  br i1 %tobool.not.i113.i, label %for.body.i.to_ctx.exit.i_crit_edge, label %if.end.i.i

for.body.i.to_ctx.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_ctx.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i.i, i32 0, i32 4, i32 %i.0134.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %sub.i.i = add i32 %46, -1
  %arrayidx.i.i = getelementptr %struct.qcom_iommu_dev, ptr %44, i32 0, i32 6, i32 %sub.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  br label %to_ctx.exit.i

to_ctx.exit.i:                                    ; preds = %if.end.i.i, %for.body.i.to_ctx.exit.i_crit_edge
  %retval.0.i114.i = phi ptr [ %48, %if.end.i.i ], [ null, %for.body.i.to_ctx.exit.i_crit_edge ]
  %secure_init.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i114.i, i32 0, i32 2
  %49 = ptrtoint ptr %secure_init.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %secure_init.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool16.not.i = icmp eq i8 %50, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %to_ctx.exit.i.for.inc.i_crit_edge

to_ctx.exit.i.for.inc.i_crit_edge:                ; preds = %to_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then17.i:                                      ; preds = %to_ctx.exit.i
  %51 = ptrtoint ptr %sec_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sec_id.i, align 4
  %asid.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i114.i, i32 0, i32 3
  %53 = ptrtoint ptr %asid.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %asid.i, align 1
  %conv18.i = zext i8 %54 to i32
  %call19.i = call i32 @qcom_scm_restore_sec_cfg(i32 noundef %52, i32 noundef %conv18.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end26.i, label %cleanup.i

if.end26.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %secure_init.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %secure_init.i, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.67, i32 noundef %call19.i) #12
  br label %out_clear_iommu.i

for.inc.i:                                        ; preds = %if.end26.i, %to_ctx.exit.i.for.inc.i_crit_edge
  %58 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %42, align 8
  %asid36.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i114.i, i32 0, i32 3
  %60 = ptrtoint ptr %asid36.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %asid36.i, align 1
  %conv51.i = zext i8 %61 to i64
  %shl52.i = shl nuw nsw i64 %conv51.i, 48
  %or.i = or i64 %shl52.i, %59
  %base.i.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i114.i, i32 0, i32 1
  %62 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %63, i32 32
  %shr.i.i.i = lshr i64 %or.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %64 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %64) #9, !srcloc !159
  %conv1.i.i.i = trunc i64 %59 to i32
  %65 = call i32 @llvm.bswap.i32(i32 %conv1.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %65) #9, !srcloc !159
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %67, i32 40
  %add.ptr.i.i118.i = getelementptr i8, ptr %67, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118.i, i32 0) #9, !srcloc !159
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 0) #9, !srcloc !159
  %68 = ptrtoint ptr %tcr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.i.i = load i32, ptr %tcr.i.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 29
  %or.i.i = or i32 %bf.lshr.i.i, 229376
  %69 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %70 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %71, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120.i, i32 %69) #9, !srcloc !159
  %72 = ptrtoint ptr %tcr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load.i121.i = load i32, ptr %tcr.i.i, align 8
  %73 = lshr i32 %bf.load.i121.i, 13
  %or132.i.i = and i32 %73, 65280
  %bf.lshr142.i.i = lshr i32 %bf.load.i121.i, 15
  %bf.clear143.i.i = and i32 %bf.lshr142.i.i, 63
  %or169.i.i = or i32 %or132.i.i, %bf.clear143.i.i
  %74 = ptrtoint ptr %pgtbl_cfg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pgtbl_cfg.i, align 8
  %and170.i.i = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i.i)
  %tobool171.not.i.i = icmp eq i32 %and170.i.i, 0
  %shl173.i.i = shl nuw i32 %or169.i.i, 16
  %or175.i.i = or i32 %shl173.i.i, 128
  %or176.i.i = or i32 %or169.i.i, 8388608
  %tcr.0.i.i = select i1 %tobool171.not.i.i, i32 %or176.i.i, i32 %or175.i.i
  %or56.i = or i32 %tcr.0.i.i, -2147483648
  %76 = call i32 @llvm.bswap.i32(i32 %or56.i) #9
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %78, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %76) #9, !srcloc !159
  %79 = ptrtoint ptr %mair.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %mair.i, align 8
  %conv57.i = trunc i64 %80 to i32
  %81 = call i32 @llvm.bswap.i32(i32 %conv57.i) #9
  %82 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %83, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %81) #9, !srcloc !159
  %84 = ptrtoint ptr %mair.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %mair.i, align 8
  %shr.i = lshr i64 %85, 32
  %conv59.i = trunc i64 %shr.i to i32
  %86 = call i32 @llvm.bswap.i32(i32 %conv59.i) #9
  %87 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %88, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %86) #9, !srcloc !159
  %89 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 -149946368) #9, !srcloc !159
  %domain61.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i114.i, i32 0, i32 4
  %91 = ptrtoint ptr %domain61.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %domain, ptr %domain61.i, align 4
  %inc.i = add nuw i32 %i.0134.i, 1
  %92 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %93
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.qcom_iommu_init_domain.exit.thread_crit_edge

for.inc.i.qcom_iommu_init_domain.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_init_domain.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qcom_iommu_init_domain.exit.thread:               ; preds = %for.inc.i.qcom_iommu_init_domain.exit.thread_crit_edge, %if.end9.i.qcom_iommu_init_domain.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %init_mutex.i) #9
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call5.i, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  %95 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev2, align 4
  %call.i3952 = call i32 @__pm_runtime_idle(ptr noundef %96, i32 noundef 4) #9
  br label %if.end8

out_clear_iommu.i:                                ; preds = %cleanup.i, %do.end.i
  %ret.3.i = phi i32 [ %call19.i, %cleanup.i ], [ -12, %do.end.i ]
  %97 = ptrtoint ptr %iommu.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %iommu.i, align 4
  br label %qcom_iommu_init_domain.exit

qcom_iommu_init_domain.exit:                      ; preds = %out_clear_iommu.i, %dev_iommu_fwspec_get.exit.i37.qcom_iommu_init_domain.exit_crit_edge
  %ret.4.i = phi i32 [ 0, %dev_iommu_fwspec_get.exit.i37.qcom_iommu_init_domain.exit_crit_edge ], [ %ret.3.i, %out_clear_iommu.i ]
  call void @mutex_unlock(ptr noundef %init_mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pgtbl_cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %.compoundliteral.sroa.8.i)
  %98 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev2, align 4
  %call.i39 = call i32 @__pm_runtime_idle(ptr noundef %99, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i)
  %cmp = icmp slt i32 %ret.4.i, 0
  br i1 %cmp, label %qcom_iommu_init_domain.exit.cleanup_crit_edge, label %qcom_iommu_init_domain.exit.if.end8_crit_edge

qcom_iommu_init_domain.exit.if.end8_crit_edge:    ; preds = %qcom_iommu_init_domain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

qcom_iommu_init_domain.exit.cleanup_crit_edge:    ; preds = %qcom_iommu_init_domain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %qcom_iommu_init_domain.exit.if.end8_crit_edge, %qcom_iommu_init_domain.exit.thread
  %100 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %iommu.i, align 4
  %cmp9.not = icmp eq ptr %101, %7
  br i1 %cmp9.not, label %if.end8.cleanup_crit_edge, label %do.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %if.end8
  %dev15 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev15, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i40 = icmp eq ptr %105, null
  br i1 %tobool.not.i40, label %if.end.i41, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i41:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %103, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i41, %do.end13.dev_name.exit_crit_edge
  %retval.0.i42 = phi ptr [ %107, %if.end.i41 ], [ %105, %do.end13.dev_name.exit_crit_edge ]
  %108 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev2, align 4
  %init_name.i43 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %init_name.i43 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i43, align 8
  %tobool.not.i44 = icmp eq ptr %111, null
  br i1 %tobool.not.i44, label %if.end.i45, label %dev_name.exit.dev_name.exit47_crit_edge

dev_name.exit.dev_name.exit47_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit47

if.end.i45:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %109, align 4
  br label %dev_name.exit47

dev_name.exit47:                                  ; preds = %if.end.i45, %dev_name.exit.dev_name.exit47_crit_edge
  %retval.0.i46 = phi ptr [ %113, %if.end.i45 ], [ %111, %dev_name.exit.dev_name.exit47_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %retval.0.i42, ptr noundef %retval.0.i46) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit47, %if.end8.cleanup_crit_edge, %qcom_iommu_init_domain.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %dev_name.exit47 ], [ -6, %do.end ], [ %ret.4.i, %qcom_iommu_init_domain.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_detach_dev(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.to_iommu.exit_crit_edge, label %dev_iommu_fwspec_get.exit.i

entry.to_iommu.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_iommu.exit

dev_iommu_fwspec_get.exit.i:                      ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not.i43 = icmp eq ptr %3, null
  br i1 %tobool.not.i43, label %dev_iommu_fwspec_get.exit.i.to_iommu.exit_crit_edge, label %lor.lhs.false.i

dev_iommu_fwspec_get.exit.i.to_iommu.exit_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_iommu.exit

lor.lhs.false.i:                                  ; preds = %dev_iommu_fwspec_get.exit.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not.i = icmp eq ptr %5, @qcom_iommu_ops
  br i1 %cmp.not.i, label %dev_iommu_priv_get.exit.i, label %lor.lhs.false.i.to_iommu.exit_crit_edge

lor.lhs.false.i.to_iommu.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_iommu.exit

dev_iommu_priv_get.exit.i:                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  br label %to_iommu.exit

to_iommu.exit:                                    ; preds = %dev_iommu_priv_get.exit.i, %lor.lhs.false.i.to_iommu.exit_crit_edge, %dev_iommu_fwspec_get.exit.i.to_iommu.exit_crit_edge, %entry.to_iommu.exit_crit_edge
  %retval.0.i50 = phi ptr [ %3, %dev_iommu_priv_get.exit.i ], [ %3, %lor.lhs.false.i.to_iommu.exit_crit_edge ], [ null, %dev_iommu_fwspec_get.exit.i.to_iommu.exit_crit_edge ], [ null, %entry.to_iommu.exit_crit_edge ]
  %retval.0.i44 = phi ptr [ %7, %dev_iommu_priv_get.exit.i ], [ null, %lor.lhs.false.i.to_iommu.exit_crit_edge ], [ null, %dev_iommu_fwspec_get.exit.i.to_iommu.exit_crit_edge ], [ null, %entry.to_iommu.exit_crit_edge ]
  %iommu = getelementptr i8, ptr %domain, i32 36
  %8 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !163

do.end:                                           ; preds = %to_iommu.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 402, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25:                                         ; preds = %to_iommu.exit
  %dev26 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %retval.0.i44, i32 0, i32 1
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #9
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i50, i32 0, i32 3
  %12 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp51.not = icmp eq i32 %13, 0
  br i1 %cmp51.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %to_ctx.exit.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %to_ctx.exit.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %14 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iommu, align 4
  %tobool.not.i46 = icmp eq ptr %15, null
  br i1 %tobool.not.i46, label %for.body.to_ctx.exit_crit_edge, label %if.end.i

for.body.to_ctx.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_ctx.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %retval.0.i50, i32 0, i32 4, i32 %i.052
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %17, -1
  %arrayidx.i = getelementptr %struct.qcom_iommu_dev, ptr %15, i32 0, i32 6, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %to_ctx.exit

to_ctx.exit:                                      ; preds = %if.end.i, %for.body.to_ctx.exit_crit_edge
  %retval.0.i47 = phi ptr [ %19, %if.end.i ], [ null, %for.body.to_ctx.exit_crit_edge ]
  %base.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i47, i32 0, i32 1
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !159
  %domain29 = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i47, i32 0, i32 4
  %22 = ptrtoint ptr %domain29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %domain29, align 4
  %inc = add nuw i32 %i.052, 1
  %23 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ids, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %to_ctx.exit.for.body_crit_edge, label %to_ctx.exit.for.end_crit_edge

to_ctx.exit.for.end_crit_edge:                    ; preds = %to_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

to_ctx.exit.for.body_crit_edge:                   ; preds = %to_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %to_ctx.exit.for.end_crit_edge, %if.end25.for.end_crit_edge
  %25 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev26, align 4
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_map(ptr noundef %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -140
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pgtbl_lock = getelementptr i8, ptr %domain, i32 -136
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pgtbl_lock) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call6 = tail call i32 %3(ptr noundef nonnull %1, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pgtbl_lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body1 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_unmap(ptr noundef %domain, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -140
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iommu = getelementptr i8, ptr %domain, i32 36
  %2 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu, align 4
  %dev = getelementptr inbounds %struct.qcom_iommu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  %pgtbl_lock = getelementptr i8, ptr %domain, i32 -136
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pgtbl_lock) #9
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unmap, align 4
  %call7 = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pgtbl_lock, i32 noundef %call4) #9
  %8 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu, align 4
  %dev10 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_flush_iotlb_all(ptr nocapture noundef readonly %domain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -140
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iommu = getelementptr i8, ptr %domain, i32 36
  %2 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu, align 4
  %dev = getelementptr inbounds %struct.qcom_iommu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  %cookie = getelementptr i8, ptr %1, i32 -76
  %6 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cookie, align 4
  tail call fastcc void @qcom_iommu_tlb_sync(ptr noundef %7)
  %8 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu, align 4
  %dev4 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %call.i10 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_iotlb_sync(ptr nocapture noundef readonly %domain, ptr nocapture noundef readnone %gather) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %domain, i32 -140
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.qcom_iommu_flush_iotlb_all.exit_crit_edge, label %if.end.i

entry.qcom_iommu_flush_iotlb_all.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_flush_iotlb_all.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iommu.i = getelementptr i8, ptr %domain, i32 36
  %2 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu.i, align 4
  %dev.i = getelementptr inbounds %struct.qcom_iommu_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  %cookie.i = getelementptr i8, ptr %1, i32 -76
  %6 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cookie.i, align 4
  tail call fastcc void @qcom_iommu_tlb_sync(ptr noundef %7) #9
  %8 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu.i, align 4
  %dev4.i = getelementptr inbounds %struct.qcom_iommu_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4.i, align 4
  %call.i10.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #9
  br label %qcom_iommu_flush_iotlb_all.exit

qcom_iommu_flush_iotlb_all.exit:                  ; preds = %if.end.i, %entry.qcom_iommu_flush_iotlb_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_iova_to_phys(ptr noundef %domain, i32 noundef %iova) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -140
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pgtbl_lock = getelementptr i8, ptr %domain, i32 -136
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pgtbl_lock) #9
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iova_to_phys, align 4
  %call6 = tail call i32 %3(ptr noundef nonnull %1, i32 noundef %iova) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pgtbl_lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body1 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_iommu_probe_device(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dev_iommu_fwspec_get.exit.i:                      ; preds = %entry
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

dev_iommu_fwspec_get.exit.i.cleanup_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %dev_iommu_fwspec_get.exit.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not.i = icmp eq ptr %5, @qcom_iommu_ops
  br i1 %cmp.not.i, label %to_iommu.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

to_iommu.exit:                                    ; preds = %lor.lhs.false.i
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %to_iommu.exit.cleanup_crit_edge, label %if.end

to_iommu.exit.cleanup_crit_edge:                  ; preds = %to_iommu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %to_iommu.exit
  %dev2 = getelementptr inbounds %struct.qcom_iommu_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call3 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %9, i32 noundef 4) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i19 = icmp eq ptr %13, null
  br i1 %tobool.not.i19, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i20 = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  %init_name.i21 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i21, align 8
  %tobool.not.i22 = icmp eq ptr %17, null
  br i1 %tobool.not.i22, label %if.end.i23, label %dev_name.exit.dev_name.exit25_crit_edge

dev_name.exit.dev_name.exit25_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit25

if.end.i23:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit25

dev_name.exit25:                                  ; preds = %if.end.i23, %dev_name.exit.dev_name.exit25_crit_edge
  %retval.0.i24 = phi ptr [ %19, %if.end.i23 ], [ %17, %dev_name.exit.dev_name.exit25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.71, ptr noundef %retval.0.i20, ptr noundef %retval.0.i24) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit25, %if.end.cleanup_crit_edge, %to_iommu.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %dev_name.exit25 ], [ %7, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %to_iommu.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.i.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_release_device(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dev_iommu_fwspec_get.exit.i:                      ; preds = %entry
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

dev_iommu_fwspec_get.exit.i.cleanup_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %dev_iommu_fwspec_get.exit.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not.i = icmp eq ptr %5, @qcom_iommu_ops
  br i1 %cmp.not.i, label %to_iommu.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

to_iommu.exit:                                    ; preds = %lor.lhs.false.i
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %to_iommu.exit.cleanup_crit_edge, label %if.end

to_iommu.exit.cleanup_crit_edge:                  ; preds = %to_iommu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %to_iommu.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iommu_fwspec_free(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_iommu.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #3 align 64 {
entry:
  %asid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asid) #9
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  %2 = ptrtoint ptr %asid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %asid, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %full_name = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %8, i32 noundef %4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_find_device_by_node(ptr noundef %6) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end16, label %if.end31, !prof !163

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 559, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %asid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp34 = icmp eq i32 %12, 0
  br i1 %cmp34, label %if.end31.if.then98_crit_edge, label %lor.lhs.false.critedge, !prof !163

if.end31.if.then98_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false.critedge:                           ; preds = %if.end31
  %num_ctxs = getelementptr inbounds %struct.qcom_iommu_dev, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %num_ctxs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_ctxs, align 4
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp66 = icmp ugt i32 %12, %conv
  br i1 %cmp66, label %lor.lhs.false.critedge.if.then98_crit_edge, label %if.end100, !prof !163

lor.lhs.false.critedge.if.then98_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false.critedge.if.then98_crit_edge, %if.end31.if.then98_crit_edge
  %.sink = phi i32 [ 568, %if.end31.if.then98_crit_edge ], [ 569, %lor.lhs.false.critedge.if.then98_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  %dev99 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev99) #9
  br label %cleanup

if.end100:                                        ; preds = %lor.lhs.false.critedge
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %15 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end100.if.then103_crit_edge, label %dev_iommu_priv_get.exit

if.end100.if.then103_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

dev_iommu_priv_get.exit:                          ; preds = %if.end100
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %tobool102.not = icmp eq ptr %18, null
  br i1 %tobool102.not, label %dev_iommu_priv_get.exit.if.then103_crit_edge, label %dev_iommu_priv_get.exit169

dev_iommu_priv_get.exit.if.then103_crit_edge:     ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then103

if.then103:                                       ; preds = %dev_iommu_priv_get.exit.if.then103_crit_edge, %if.end100.if.then103_crit_edge
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %priv1.i, align 4
  br label %if.end141

dev_iommu_priv_get.exit169:                       ; preds = %dev_iommu_priv_get.exit
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 4
  %cmp106.not = icmp eq ptr %10, %21
  br i1 %cmp106.not, label %dev_iommu_priv_get.exit169.if.end141_crit_edge, label %do.end123, !prof !164

dev_iommu_priv_get.exit169.if.end141_crit_edge:   ; preds = %dev_iommu_priv_get.exit169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

do.end123:                                        ; preds = %dev_iommu_priv_get.exit169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 581, i32 noundef 9, ptr noundef null) #9
  %dev139 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev139) #9
  br label %cleanup

if.end141:                                        ; preds = %dev_iommu_priv_get.exit169.if.end141_crit_edge, %if.then103
  %call142 = call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef nonnull %asid, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %do.end123, %if.then98, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %if.then98 ], [ -22, %do.end123 ], [ %call142, %if.end141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_restore_sec_cfg(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_tlb_inv_context(ptr nocapture noundef readonly %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fwspec1 = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %fwspec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec1, align 4
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iommu.i = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %to_ctx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %to_ctx.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.to_ctx.exit_crit_edge, label %if.end.i

for.body.to_ctx.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_ctx.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %1, i32 0, i32 4, i32 %i.09
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.qcom_iommu_dev, ptr %5, i32 0, i32 6, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  br label %to_ctx.exit

to_ctx.exit:                                      ; preds = %if.end.i, %for.body.to_ctx.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ null, %for.body.to_ctx.exit_crit_edge ]
  %asid = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i, i32 0, i32 3
  %10 = ptrtoint ptr %asid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %asid, align 1
  %conv = zext i8 %11 to i32
  %12 = shl nuw i32 %conv, 24
  %base.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !159
  %inc = add nuw i32 %i.09, 1
  %15 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ids, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %to_ctx.exit.for.body_crit_edge, label %to_ctx.exit.for.end_crit_edge

to_ctx.exit.for.end_crit_edge:                    ; preds = %to_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

to_ctx.exit.for.body_crit_edge:                   ; preds = %to_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %to_ctx.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @qcom_iommu_tlb_sync(ptr noundef %cookie)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_tlb_flush_walk(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fwspec1.i = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %fwspec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec1.i, align 4
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not.i = icmp eq i32 %3, 0
  br i1 %cmp12.not.i, label %entry.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge, label %for.body.lr.ph.i

entry.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_tlb_inv_range_nosync.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %iommu.i.i = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %iova.addr.013.i = phi i32 [ %iova, %for.body.lr.ph.i ], [ %add.i, %do.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body.i.to_ctx.exit.i_crit_edge, label %if.end.i.i

for.body.i.to_ctx.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_ctx.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %1, i32 0, i32 4, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %sub.i.i = add i32 %7, -1
  %arrayidx.i.i = getelementptr %struct.qcom_iommu_dev, ptr %5, i32 0, i32 6, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  br label %to_ctx.exit.i

to_ctx.exit.i:                                    ; preds = %if.end.i.i, %for.body.i.to_ctx.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ null, %for.body.i.to_ctx.exit.i_crit_edge ]
  %shr.i = and i32 %iova.addr.013.i, -4096
  %asid.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %asid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %asid.i, align 1
  %conv.i = zext i8 %11 to i32
  %or.i = or i32 %shr.i, %conv.i
  %base.i.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %to_ctx.exit.i
  %iova.addr.1.i = phi i32 [ %or.i, %to_ctx.exit.i ], [ %add.i, %do.body.i.do.body.i_crit_edge ]
  %s.0.i = phi i32 [ %size, %to_ctx.exit.i ], [ %sub.i, %do.body.i.do.body.i_crit_edge ]
  %12 = tail call i32 @llvm.bswap.i32(i32 %iova.addr.1.i) #9
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #9, !srcloc !159
  %add.i = add i32 %iova.addr.1.i, %granule
  %sub.i = sub i32 %s.0.i, %granule
  %tobool2.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %15 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge

do.end.i.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_tlb_inv_range_nosync.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qcom_iommu_tlb_inv_range_nosync.exit:             ; preds = %do.end.i.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge, %entry.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge
  tail call fastcc void @qcom_iommu_tlb_sync(ptr noundef %cookie)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iommu_tlb_add_page(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fwspec1.i = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %fwspec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec1.i, align 4
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.not.i = icmp eq i32 %3, 0
  br i1 %cmp12.not.i, label %entry.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge, label %for.body.lr.ph.i

entry.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_tlb_inv_range_nosync.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %iommu.i.i = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %to_ctx.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %to_ctx.exit.i.for.body.i_crit_edge ]
  %iova.addr.013.i = phi i32 [ %iova, %for.body.lr.ph.i ], [ %add.i, %to_ctx.exit.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body.i.to_ctx.exit.i_crit_edge, label %if.end.i.i

for.body.i.to_ctx.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_ctx.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %1, i32 0, i32 4, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %sub.i.i = add i32 %7, -1
  %arrayidx.i.i = getelementptr %struct.qcom_iommu_dev, ptr %5, i32 0, i32 6, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  br label %to_ctx.exit.i

to_ctx.exit.i:                                    ; preds = %if.end.i.i, %for.body.i.to_ctx.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ null, %for.body.i.to_ctx.exit.i_crit_edge ]
  %shr.i = and i32 %iova.addr.013.i, -4096
  %asid.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %asid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %asid.i, align 1
  %conv.i = zext i8 %11 to i32
  %or.i = or i32 %shr.i, %conv.i
  %base.i.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i.i, i32 0, i32 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #9, !srcloc !159
  %add.i = add i32 %or.i, %granule
  %inc.i = add nuw i32 %i.014.i, 1
  %15 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %to_ctx.exit.i.for.body.i_crit_edge, label %to_ctx.exit.i.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge

to_ctx.exit.i.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge: ; preds = %to_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qcom_iommu_tlb_inv_range_nosync.exit

to_ctx.exit.i.for.body.i_crit_edge:               ; preds = %to_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

qcom_iommu_tlb_inv_range_nosync.exit:             ; preds = %to_ctx.exit.i.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge, %entry.qcom_iommu_tlb_inv_range_nosync.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_iommu_tlb_sync(ptr nocapture noundef readonly %cookie) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fwspec1 = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 5
  %0 = ptrtoint ptr %fwspec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec1, align 4
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp56.not = icmp eq i32 %3, 0
  br i1 %cmp56.not, label %entry.for.end41_crit_edge, label %for.body.lr.ph

entry.for.end41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41

for.body.lr.ph:                                   ; preds = %entry
  %iommu.i = getelementptr inbounds %struct.qcom_iommu_domain, ptr %cookie, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end40.for.body_crit_edge ]
  %4 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.to_ctx.exit_crit_edge, label %if.end.i

for.body.to_ctx.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %to_ctx.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %1, i32 0, i32 4, i32 %i.057
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %7, -1
  %arrayidx.i = getelementptr %struct.qcom_iommu_dev, ptr %5, i32 0, i32 6, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  br label %to_ctx.exit

to_ctx.exit:                                      ; preds = %if.end.i, %for.body.to_ctx.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ null, %for.body.to_ctx.exit_crit_edge ]
  %base.i = getelementptr inbounds %struct.qcom_iommu_ctx, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !159
  %call2 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call2, 5000000000
  br label %for.cond11

for.cond11:                                       ; preds = %land.lhs.true.for.cond11_crit_edge, %to_ctx.exit
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 2036
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %for.cond11.if.end40_crit_edge, label %land.lhs.true

for.cond11.if.end40_crit_edge:                    ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %for.cond11
  %call17 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond11_crit_edge

land.lhs.true.for.cond11_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11

for.end:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 2036
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp34 = icmp eq i32 %19, 0
  br i1 %cmp34, label %for.end.if.end40_crit_edge, label %do.end39

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.69) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %for.end.if.end40_crit_edge, %for.cond11.if.end40_crit_edge
  %inc = add nuw i32 %i.057, 1
  %22 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ids, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %if.end40.for.body_crit_edge, label %if.end40.for.end41_crit_edge

if.end40.for.end41_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end41

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end41:                                        ; preds = %if.end40.for.end41_crit_edge, %entry.for.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr inbounds %struct.qcom_iommu_dev, ptr %1, i32 0, i32 2
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_iommu_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr inbounds %struct.qcom_iommu_dev, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_bulk_prepare_enable.exit_crit_edge

entry.clk_bulk_prepare_enable.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_bulk_prepare_enable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_bulk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #9
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge, %entry.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_bulk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_qcom_iommu__313_922_qcom_iommu_init6, !1, !"__initcall__kmod_qcom_iommu__313_922_qcom_iommu_init6", i1 false, i1 false}
!1 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 922, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 740, i32 12}
!4 = !{ptr @qcom_iommu_ctx_driver, !5, !"qcom_iommu_ctx_driver", i1 false, i1 false}
!5 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 738, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 698, i32 11}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 701, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qcom_iommu_ctx_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @qcom_iommu_ctx_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 707, i32 3}
!18 = !{ptr @qcom_iommu_ctx_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qcom_iommu_ctx_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 713, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qcom_iommu_ctx_probe.__UNIQUE_ID_ddebug310, !21, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 214, i32 3}
!26 = !{ptr @qcom_iommu_fault._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.qcom_iommu_fault, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @qcom_iommu_fault._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_iommu_fault._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 660, i32 37}
!33 = !{ptr @ctx_of_match, !34, !"ctx_of_match", i1 false, i1 false}
!34 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 732, i32 34}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 900, i32 12}
!37 = !{ptr @qcom_iommu_driver, !38, !"qcom_iommu_driver", i1 false, i1 false}
!38 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 898, i32 31}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 787, i32 26}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 789, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qcom_iommu_device_probe._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @qcom_iommu_device_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 794, i32 26}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 796, i32 3}
!50 = !{ptr @qcom_iommu_device_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qcom_iommu_device_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 801, i32 35}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 803, i32 3}
!56 = !{ptr @qcom_iommu_device_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qcom_iommu_device_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 808, i32 41}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 810, i32 3}
!62 = !{ptr @qcom_iommu_device_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qcom_iommu_device_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 817, i32 4}
!66 = !{ptr @qcom_iommu_device_probe._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @qcom_iommu_device_probe._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 829, i32 3}
!70 = !{ptr @qcom_iommu_device_probe._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qcom_iommu_device_probe._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 836, i32 3}
!74 = !{ptr @qcom_iommu_device_probe._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qcom_iommu_device_probe._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 842, i32 3}
!78 = !{ptr @qcom_iommu_device_probe._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qcom_iommu_device_probe._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 752, i32 38}
!82 = distinct !{null, !83, !"allocated", i1 false, i1 false}
!83 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 615, i32 14}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 623, i32 3}
!86 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @qcom_iommu_sec_ptbl_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @qcom_iommu_sec_ptbl_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 628, i32 2}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qcom_iommu_sec_ptbl_init._entry.46, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qcom_iommu_sec_ptbl_init._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 634, i32 3}
!96 = !{ptr @qcom_iommu_sec_ptbl_init._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qcom_iommu_sec_ptbl_init._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 641, i32 3}
!100 = !{ptr @qcom_iommu_sec_ptbl_init._entry.53, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qcom_iommu_sec_ptbl_init._entry_ptr.55, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @qcom_iommu_ops, !103, !"qcom_iommu_ops", i1 false, i1 false}
!103 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 590, i32 31}
!104 = !{ptr @qcom_iommu_domain_alloc.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 337, i32 2}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @qcom_iommu_domain_alloc.__key.57, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 338, i32 2}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 369, i32 3}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qcom_iommu_attach_dev._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @qcom_iommu_attach_dev._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 385, i32 3}
!117 = !{ptr @qcom_iommu_attach_dev._entry.61, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qcom_iommu_attach_dev._entry_ptr.63, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 254, i32 3}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @qcom_iommu_init_domain._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @qcom_iommu_init_domain._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 270, i32 5}
!126 = !{ptr @qcom_iommu_init_domain._entry.66, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @qcom_iommu_init_domain._entry_ptr.68, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @qcom_flush_ops, !129, !"qcom_flush_ops", i1 false, i1 false}
!129 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 193, i32 37}
!130 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 139, i32 4}
!132 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @qcom_iommu_tlb_sync._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @qcom_iommu_tlb_sync._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 527, i32 3}
!137 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @qcom_iommu_probe_device._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @qcom_iommu_probe_device._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 552, i32 3}
!142 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @qcom_iommu_of_xlate._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @qcom_iommu_of_xlate._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @qcom_iommu_of_match, !146, !"qcom_iommu_of_match", i1 false, i1 false}
!146 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 893, i32 34}
!147 = !{ptr @qcom_iommu_pm_ops, !148, !"qcom_iommu_pm_ops", i1 false, i1 false}
!148 = !{!"../drivers/iommu/arm/arm-smmu/qcom_iommu.c", i32 887, i32 32}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i64 6305365}
!159 = !{i64 6304947}
!160 = !{!"auto-init"}
!161 = !{i64 2148774860, i64 2148774865, i64 2148774878, i64 2148774922, i64 2148774956, i64 2148774977}
!162 = !{i8 0, i8 2}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{!"branch_weights", i32 2000, i32 1}
!165 = !{i64 2155049120}
!166 = !{i64 2155049606}
