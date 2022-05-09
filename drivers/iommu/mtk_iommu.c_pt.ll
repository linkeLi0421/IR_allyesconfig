; ModuleID = '/llk/IR_all_yes/drivers/iommu/mtk_iommu.c_pt.bc'
source_filename = "../drivers/iommu/mtk_iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.component_master_ops = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_iommu_plat_data = type { i32, i32, i32, i32, ptr, [8 x [4 x i8]] }
%struct.mtk_iommu_iova_region = type { i32, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_iommu_data = type { ptr, i32, ptr, ptr, i32, %struct.mtk_iommu_suspend_reg, ptr, [8 x ptr], i8, %struct.spinlock, %struct.iommu_device, ptr, ptr, ptr, %struct.list_head, [32 x %struct.mtk_smi_larb_iommu] }
%struct.mtk_iommu_suspend_reg = type { %union.anon.74, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.74 = type { i32 }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.mtk_smi_larb_iommu = type { ptr, i32, [32 x i8] }
%struct.mtk_iommu_domain = type { %struct.io_pgtable_cfg, ptr, ptr, %struct.iommu_domain }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.82 }
%struct.anon.82 = type { [4 x i64], i32 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.bus_dma_region = type { i32, i32, i64, i64 }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.iommu_iotlb_gather = type { i32, i32, i32, %struct.list_head, i8 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mtk_iommu__250_1068_mtk_iommu_driver_init6 = internal global ptr @mtk_iommu_driver_init, section ".initcall6.init", align 4
@mtk_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_iommu_probe, ptr @mtk_iommu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_iommu_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_iommu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_iommu_driver_exit = internal global ptr @mtk_iommu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [65 x i8] c"mtk_iommu.description=IOMMU API for MediaTek M4U implementations\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [39 x i8] c"mtk_iommu.file=drivers/iommu/mtk_iommu\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [25 x i8] c"mtk_iommu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk-iommu\00", [22 x i8] zeroinitializer }, align 32
@mtk_iommu_of_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6779_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8167_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@mtk_iommu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_iommu_runtime_suspend, ptr @mtk_iommu_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,mt2712-infracfg\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,mt8173-infracfg\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mediatek,larbs\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,larb-id\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,smi\00", [19 x i8] zeroinitializer }, align 32
@mtk_iommu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 873, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to link %s.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_iommu_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iommu/mtk_iommu.c\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_iommu_probe._entry_ptr = internal global ptr @mtk_iommu_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk-iommu.%pa\00", [18 x i8] zeroinitializer }, align 32
@mtk_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @mtk_iommu_domain_alloc, ptr @mtk_iommu_domain_free, ptr @mtk_iommu_attach_device, ptr @mtk_iommu_detach_device, ptr @mtk_iommu_map, ptr null, ptr @mtk_iommu_unmap, ptr null, ptr @mtk_iommu_flush_iotlb_all, ptr @mtk_iommu_sync_map, ptr @mtk_iommu_iotlb_sync, ptr @mtk_iommu_iova_to_phys, ptr @mtk_iommu_probe_device, ptr @mtk_iommu_release_device, ptr null, ptr @mtk_iommu_device_group, ptr null, ptr null, ptr @mtk_iommu_get_resv_regions, ptr @generic_iommu_put_resv_regions, ptr null, ptr @mtk_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17895424, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_iommu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->tlb_lock\00", [16 x i8] zeroinitializer }, align 32
@m4ulist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @m4ulist, ptr @m4ulist }, [24 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@mtk_iommu_com_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @mtk_iommu_bind, ptr @mtk_iommu_unbind }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_iommu_get_domain_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.9, i32 353, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can NOT find the iommu domain id(%pad 0x%llx).\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_iommu_get_domain_id\00", [40 x i8] zeroinitializer }, align 32
@mtk_iommu_get_domain_id._entry_ptr = internal global ptr @mtk_iommu_get_domain_id._entry, section ".printk_index", align 4
@mtk_iommu_domain_finalise._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 416, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to alloc io pgtable\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_iommu_domain_finalise\00", [38 x i8] zeroinitializer }, align 32
@mtk_iommu_domain_finalise._entry_ptr = internal global ptr @mtk_iommu_domain_finalise._entry, section ".printk_index", align 4
@mtk_iommu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 748, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed @ IRQ-%d Request\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_iommu_hw_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_iommu_hw_init._entry_ptr = internal global ptr @mtk_iommu_hw_init._entry, section ".printk_index", align 4
@mtk_iommu_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mtk_iommu_isr = private unnamed_addr constant [14 x i8] c"mtk_iommu_isr\00", align 1
@mtk_iommu_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.mtk_iommu_isr, ptr @.str.9, i32 314, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"fault type=0x%x iova=0x%llx pa=0x%llx larb=%d port=%d layer=%d %s\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_iommu_isr._entry_ptr = internal global ptr @mtk_iommu_isr._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@mtk_iommu_config.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.9, ptr @.str.26, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk_iommu\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_iommu_config\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s iommu for larb(%s) port %d dom %d bank %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtk_iommu_tlb_flush_range_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.9, i32 257, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Partial TLB flush timed out, falling back to full flush\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mtk_iommu_tlb_flush_range_sync\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_iommu_tlb_flush_range_sync._entry_ptr = internal global ptr @mtk_iommu_tlb_flush_range_sync._entry, section ".printk_index", align 4
@mtk_iommu_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.9, i32 614, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid #iommu-cells(%d) property for IOMMU\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_iommu_of_xlate\00", [45 x i8] zeroinitializer }, align 32
@mtk_iommu_of_xlate._entry_ptr = internal global ptr @mtk_iommu_of_xlate._entry, section ".printk_index", align 4
@mt2712_data = internal constant { %struct.mtk_iommu_plat_data, [44 x i8] } { %struct.mtk_iommu_plat_data { i32 1, i32 7, i32 56, i32 1, ptr @single_domain, [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] c"\03\00\00\00", [4 x i8] c"\04\00\00\00", [4 x i8] c"\05\00\00\00", [4 x i8] c"\06\00\00\00", [4 x i8] c"\07\00\00\00"] }, [44 x i8] zeroinitializer }, align 32
@mt6779_data = internal constant { %struct.mtk_iommu_plat_data, [44 x i8] } { %struct.mtk_iommu_plat_data { i32 2, i32 112, i32 44, i32 1, ptr @single_domain, [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] c"\03\00\00\00", [4 x i8] c"\05\00\00\00", [4 x i8] c"\07\08\00\00", [4 x i8] c"\0A\00\00\00", [4 x i8] c"\09\00\00\00"] }, [44 x i8] zeroinitializer }, align 32
@mt8167_data = internal constant { %struct.mtk_iommu_plat_data, [44 x i8] } { %struct.mtk_iommu_plat_data { i32 3, i32 136, i32 56, i32 1, ptr @single_domain, [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@mt8173_data = internal constant { %struct.mtk_iommu_plat_data, [44 x i8] } { %struct.mtk_iommu_plat_data { i32 4, i32 139, i32 56, i32 1, ptr @single_domain, [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] c"\03\00\00\00", [4 x i8] c"\04\00\00\00", [4 x i8] c"\05\00\00\00", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@mt8183_data = internal constant { %struct.mtk_iommu_plat_data, [44 x i8] } { %struct.mtk_iommu_plat_data { i32 5, i32 8, i32 56, i32 1, ptr @single_domain, [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\04\00\00\00", [4 x i8] c"\05\00\00\00", [4 x i8] c"\06\00\00\00", [4 x i8] c"\07\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] c"\03\00\00\00", [4 x i8] c"\01\00\00\00"] }, [44 x i8] zeroinitializer }, align 32
@mt8192_data = internal constant { %struct.mtk_iommu_plat_data, [44 x i8] } { %struct.mtk_iommu_plat_data { i32 6, i32 370, i32 44, i32 1, ptr @mt8192_multi_dom, [8 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\00\00\00", [4 x i8] c"\04\05\00\00", [4 x i8] c"\07\00\00\00", [4 x i8] c"\02\00\00\00", [4 x i8] c"\09\0B\13\14", [4 x i8] c"\00\0E\10\00", [4 x i8] c"\00\0D\12\11"] }, [44 x i8] zeroinitializer }, align 32
@single_domain = internal constant { [1 x %struct.mtk_iommu_iova_region], [16 x i8] } { [1 x %struct.mtk_iommu_iova_region] [%struct.mtk_iommu_iova_region { i32 0, i64 4294967296 }], [16 x i8] zeroinitializer }, align 32
@mt8192_multi_dom = internal constant { [1 x %struct.mtk_iommu_iova_region], [16 x i8] } { [1 x %struct.mtk_iommu_iova_region] [%struct.mtk_iommu_iova_region { i32 0, i64 4294967296 }], [16 x i8] zeroinitializer }, align 32
@mtk_iommu_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 963, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable clk(%d) in resume\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_iommu_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@mtk_iommu_runtime_resume._entry_ptr = internal global ptr @mtk_iommu_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"mtk_iommu_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1059, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1063, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"mtk_iommu_of_ids\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1049, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"mtk_iommu_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 986, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 791, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 794, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 822, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 828, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 844, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 860, i32 44 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 873, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 881, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"mtk_iommu_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 659, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 889, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"m4ulist\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 166, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"mtk_iommu_com_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 755, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 352, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 416, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 748, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 310, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 375, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 256, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 613, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"mt2712_data\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 992, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"mt6779_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1001, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"mt8167_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1010, i32 41 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"mt8173_data\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1019, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"mt8183_data\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1029, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"mt8192_data\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1038, i32 41 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"single_domain\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 175, i32 43 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"mt8192_multi_dom\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 179, i32 43 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [29 x i8] c"../drivers/iommu/mtk_iommu.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 963, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_mtk_iommu_driver_exit, ptr @__initcall__kmod_mtk_iommu__250_1068_mtk_iommu_driver_init6, ptr @mtk_iommu_domain_finalise._entry, ptr @mtk_iommu_domain_finalise._entry_ptr, ptr @mtk_iommu_driver_exit, ptr @mtk_iommu_get_domain_id._entry, ptr @mtk_iommu_get_domain_id._entry_ptr, ptr @mtk_iommu_hw_init._entry, ptr @mtk_iommu_hw_init._entry_ptr, ptr @mtk_iommu_isr._entry, ptr @mtk_iommu_isr._entry_ptr, ptr @mtk_iommu_of_xlate._entry, ptr @mtk_iommu_of_xlate._entry_ptr, ptr @mtk_iommu_probe._entry, ptr @mtk_iommu_probe._entry_ptr, ptr @mtk_iommu_runtime_resume._entry, ptr @mtk_iommu_runtime_resume._entry_ptr, ptr @mtk_iommu_tlb_flush_range_sync._entry, ptr @mtk_iommu_tlb_flush_range_sync._entry_ptr, ptr @mtk_iommu_driver, ptr @.str, ptr @mtk_iommu_of_ids, ptr @mtk_iommu_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mtk_iommu_ops, ptr @mtk_iommu_probe.__key, ptr @.str.13, ptr @m4ulist, ptr @mtk_iommu_com_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mtk_iommu_isr._rs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mt2712_data, ptr @mt6779_data, ptr @mt8167_data, ptr @mt8173_data, ptr @mt8183_data, ptr @mt8192_data, ptr @single_domain, ptr @mt8192_multi_dom, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_of_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m4ulist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_com_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_get_domain_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_domain_finalise._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_tlb_flush_range_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6779_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_domain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_multi_dom to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_iommu_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_iommu_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i218 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %ioaddr = alloca i32, align 4
  %match = alloca ptr, align 4
  %val = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ioaddr) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #11
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1456, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup119_crit_edge, label %if.end

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %plat_data = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %plat_data, align 4
  %call.i213 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 512, i32 noundef 3520) #11
  %tobool5.not = icmp eq ptr %call.i213, null
  br i1 %tobool5.not, label %if.end.cleanup119_crit_edge, label %if.end7

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i213 to i32
  %call.i214 = tail call i32 @__virt_to_phys(i32 noundef %4) #11
  %add = add i32 %call.i214, 255
  %and = and i32 %add, -256
  %protect_base = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %protect_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %protect_base, align 4
  %6 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_data, align 4
  %flags = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  br i1 %cmp.not, label %if.end7.if.end26_crit_edge, label %if.then11

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then11:                                        ; preds = %if.end7
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch.selectcmp = icmp eq i32 %11, 4
  %switch.select = select i1 %switch.selectcmp, ptr @.str.2, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %switch.selectcmp211 = icmp eq i32 %11, 1
  %switch.select212 = select i1 %switch.selectcmp211, ptr @.str.1, ptr %switch.select
  %call14 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %switch.select212) #11
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call14 to i32
  br label %cleanup119

if.end18:                                         ; preds = %if.then11
  %call19 = call i32 @regmap_read(ptr noundef %call14, i32 noundef 3840, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup119_crit_edge

if.end18.cleanup119_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %enable_4GB = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 8
  %and23 = lshr i32 %14, 13
  %15 = trunc i32 %and23 to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %enable_4GB to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %enable_4GB, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.end7.if.end26_crit_edge
  %call27 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call28 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call27) #11
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %call.i, align 4
  %cmp.i215 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call28 to i32
  br label %cleanup119

if.end34:                                         ; preds = %if.end26
  %20 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call27, align 4
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ioaddr, align 4
  %call35 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call35, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %if.end34.cleanup119_crit_edge, label %if.end40

if.end34.cleanup119_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

if.end40:                                         ; preds = %if.end34
  %24 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %plat_data, align 4
  %flags42 = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags42, align 4
  %and43 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44.not = icmp eq i32 %and43, 0
  br i1 %cmp44.not, label %if.end40.if.end53_crit_edge, label %if.then45

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then45:                                        ; preds = %if.end40
  %call46 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  %bclk = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call46, ptr %bclk, align 4
  %cmp.i216 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %if.then49, label %if.then45.if.end53_crit_edge

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call46 to i32
  br label %cleanup119

if.end53:                                         ; preds = %if.then45.if.end53_crit_edge, %if.end40.if.end53_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call54 = call i32 @of_count_phandle_with_args(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.cleanup119_crit_edge, label %for.cond.preheader

if.end53.cleanup119_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

for.cond.preheader:                               ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp58242.not = icmp eq i32 %call54, 0
  br i1 %cmp58242.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0243 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %id, align 4, !annotation !119
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %35 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i217 = call i32 @__of_parse_phandle_with_args(ptr noundef %34, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %i.0243, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %cleanup.thread

of_parse_phandle.exit:                            ; preds = %for.body
  %36 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %tobool61.not = icmp eq ptr %37, null
  br i1 %tobool61.not, label %of_parse_phandle.exit.cleanup.thread_crit_edge, label %if.end63

of_parse_phandle.exit.cleanup.thread_crit_edge:   ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end63:                                         ; preds = %of_parse_phandle.exit
  %call64 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %37) #11
  br i1 %call64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %37) #11
  br label %for.inc

if.end66:                                         ; preds = %if.end63
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.5, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool68.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool68.not, label %if.end66.if.end70_crit_edge, label %if.then69

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.0243, ptr %id, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  %call71 = call ptr @of_find_device_by_node(ptr noundef nonnull %37) #11
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %37) #11
  br label %cleanup.thread

if.end74:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %dev75 = getelementptr inbounds %struct.platform_device, ptr %call71, i32 0, i32 3
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 15, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev75, ptr %arrayidx, align 4
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @release_of, ptr noundef nonnull @compare_of, ptr noundef nonnull %37) #11
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then73, %of_parse_phandle.exit.cleanup.thread_crit_edge, %of_parse_phandle.exit.thread
  %retval.1.ph = phi i32 [ -22, %of_parse_phandle.exit.thread ], [ -517, %if.then73 ], [ -22, %of_parse_phandle.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  br label %cleanup119

for.inc:                                          ; preds = %if.end74, %if.then65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %inc, %call54
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %larbnode.0.lcssa = phi ptr [ inttoptr (i32 -1 to ptr), %for.cond.preheader.for.end_crit_edge ], [ %37, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i218) #11
  %42 = call ptr @memset(ptr %args.i218, i32 255, i32 72)
  %call.i219 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %larbnode.0.lcssa, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i218) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool.not.i220 = icmp eq i32 %call.i219, 0
  br i1 %tobool.not.i220, label %of_parse_phandle.exit223, label %of_parse_phandle.exit223.thread

of_parse_phandle.exit223.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i218) #11
  br label %cleanup119

of_parse_phandle.exit223:                         ; preds = %for.end
  %43 = ptrtoint ptr %args.i218 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args.i218, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i218) #11
  %tobool78.not = icmp eq ptr %44, null
  br i1 %tobool78.not, label %of_parse_phandle.exit223.cleanup119_crit_edge, label %if.end80

of_parse_phandle.exit223.cleanup119_crit_edge:    ; preds = %of_parse_phandle.exit223
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

if.end80:                                         ; preds = %of_parse_phandle.exit223
  %call81 = call ptr @of_find_device_by_node(ptr noundef nonnull %44) #11
  call void @of_node_put(ptr noundef nonnull %44) #11
  %dev82 = getelementptr inbounds %struct.platform_device, ptr %call81, i32 0, i32 3
  %smicomm_dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 12
  %45 = ptrtoint ptr %smicomm_dev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev82, ptr %smicomm_dev, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #11
  %call84 = call ptr @device_link_add(ptr noundef %dev82, ptr noundef %dev1, i32 noundef 5) #11
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %do.end, label %if.end89

do.end:                                           ; preds = %if.end80
  %46 = ptrtoint ptr %smicomm_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smicomm_dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i224 = icmp eq ptr %49, null
  br i1 %tobool.not.i224, label %if.end.i225, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i225:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i225, %do.end.dev_name.exit_crit_edge
  %retval.0.i226 = phi ptr [ %51, %if.end.i225 ], [ %49, %do.end.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i226) #14
  br label %out_runtime_disable

if.end89:                                         ; preds = %if.end80
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %iommu = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 10
  %call90 = call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %ioaddr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.out_link_remove_crit_edge

if.end89.out_link_remove_crit_edge:               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_link_remove

if.end93:                                         ; preds = %if.end89
  %call95 = call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @mtk_iommu_ops, ptr noundef %dev1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body99, label %if.end93.out_sysfs_remove_crit_edge

if.end93.out_sysfs_remove_crit_edge:              ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_sysfs_remove

do.body99:                                        ; preds = %if.end93
  %tlb_lock = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %tlb_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mtk_iommu_probe.__key, i16 noundef signext 3) #11
  %list = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 14
  %53 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @m4ulist, i32 0, i32 1), align 4
  %call.i.i227 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %53, ptr noundef nonnull @m4ulist) #11
  br i1 %call.i.i227, label %if.end.i.i, label %do.body99.list_add_tail.exit_crit_edge

do.body99.list_add_tail.exit_crit_edge:           ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @m4ulist, i32 0, i32 1), align 4
  %54 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @m4ulist, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body99.list_add_tail.exit_crit_edge
  %call103 = call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #11
  br i1 %call103, label %list_add_tail.exit.if.end109_crit_edge, label %if.then104

list_add_tail.exit.if.end109_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then104:                                       ; preds = %list_add_tail.exit
  %call105 = call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @mtk_iommu_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then104.if.end109_crit_edge, label %if.then104.out_list_del_crit_edge

if.then104.out_list_del_crit_edge:                ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_list_del

if.then104.if.end109_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.end109:                                        ; preds = %if.then104.if.end109_crit_edge, %list_add_tail.exit.if.end109_crit_edge
  %57 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %match, align 4
  %call110 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @mtk_iommu_com_ops, ptr noundef %58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end109.cleanup119_crit_edge, label %out_bus_set_null

if.end109.cleanup119_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

out_bus_set_null:                                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %call114 = call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #11
  br label %out_list_del

out_list_del:                                     ; preds = %out_bus_set_null, %if.then104.out_list_del_crit_edge
  %ret.0 = phi i32 [ %call110, %out_bus_set_null ], [ %call105, %if.then104.out_list_del_crit_edge ]
  %call.i.i228 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i228, label %if.end.i.i229, label %out_list_del.list_del.exit_crit_edge

out_list_del.list_del.exit_crit_edge:             ; preds = %out_list_del
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i229:                                    ; preds = %out_list_del
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 14, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i229, %out_list_del.list_del.exit_crit_edge
  %65 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @iommu_device_unregister(ptr noundef %iommu) #11
  br label %out_sysfs_remove

out_sysfs_remove:                                 ; preds = %list_del.exit, %if.end93.out_sysfs_remove_crit_edge
  %ret.1 = phi i32 [ %call95, %if.end93.out_sysfs_remove_crit_edge ], [ %ret.0, %list_del.exit ]
  call void @iommu_device_sysfs_remove(ptr noundef %iommu) #11
  br label %out_link_remove

out_link_remove:                                  ; preds = %out_sysfs_remove, %if.end89.out_link_remove_crit_edge
  %ret.2 = phi i32 [ %call90, %if.end89.out_link_remove_crit_edge ], [ %ret.1, %out_sysfs_remove ]
  %67 = ptrtoint ptr %smicomm_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %smicomm_dev, align 4
  call void @device_link_remove(ptr noundef %68, ptr noundef %dev1) #11
  br label %out_runtime_disable

out_runtime_disable:                              ; preds = %out_link_remove, %dev_name.exit
  %ret.3 = phi i32 [ %ret.2, %out_link_remove ], [ -22, %dev_name.exit ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %cleanup119

cleanup119:                                       ; preds = %out_runtime_disable, %if.end109.cleanup119_crit_edge, %of_parse_phandle.exit223.cleanup119_crit_edge, %of_parse_phandle.exit223.thread, %cleanup.thread, %if.end53.cleanup119_crit_edge, %if.then49, %if.end34.cleanup119_crit_edge, %if.then31, %if.end18.cleanup119_crit_edge, %if.then16, %if.end.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.2 = phi i32 [ %12, %if.then16 ], [ %19, %if.then31 ], [ %29, %if.then49 ], [ %ret.3, %out_runtime_disable ], [ -12, %entry.cleanup119_crit_edge ], [ -12, %if.end.cleanup119_crit_edge ], [ %call19, %if.end18.cleanup119_crit_edge ], [ %call35, %if.end34.cleanup119_crit_edge ], [ %call54, %if.end53.cleanup119_crit_edge ], [ -22, %of_parse_phandle.exit223.cleanup119_crit_edge ], [ 0, %if.end109.cleanup119_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ -22, %of_parse_phandle.exit223.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ioaddr) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iommu = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 10
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #11
  tail call void @iommu_device_unregister(ptr noundef %iommu) #11
  %call2 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #11
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bclk = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bclk, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %smicomm_dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %smicomm_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smicomm_dev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_link_remove(ptr noundef %5, ptr noundef %dev) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %irq = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %7, ptr noundef %1) #11
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @mtk_iommu_com_ops) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_of(ptr nocapture noundef readnone %dev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_node_put(ptr noundef %data) #11
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @mtk_iommu_domain_alloc(i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp.not = icmp eq i32 %type, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  %domain = getelementptr inbounds %struct.mtk_iommu_domain, ptr %call7.i.i, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %domain
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_domain_free(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -80
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_attach_device(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -80
  %dev2 = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %plat_data = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 11
  %6 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_data, align 4
  %iova_region.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %iova_region.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iova_region.i, align 4
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %10 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_range_map.i, align 8
  %tobool.not.i52 = icmp eq ptr %11, null
  br i1 %tobool.not.i52, label %dev_iommu_priv_get.exit.if.end_crit_edge, label %lor.lhs.false.i

dev_iommu_priv_get.exit.if.end_crit_edge:         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %dev_iommu_priv_get.exit
  %iova_region_nr.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %iova_region_nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iova_region_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dma_start.i = getelementptr inbounds %struct.bus_dma_region, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_start.i, align 4
  %size.i = getelementptr inbounds %struct.bus_dma_region, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp366.not.i = icmp eq i32 %13, 0
  br i1 %cmp366.not.i, label %if.end.i.mtk_iommu_get_domain_id.exit.thread97_crit_edge, label %for.body.lr.ph.i

if.end.i.mtk_iommu_get_domain_id.exit.thread97_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_get_domain_id.exit.thread97

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %18 = add i32 %15, -1
  %19 = trunc i64 %17 to i32
  %conv1.i = add i32 %18, %19
  %conv8.i = zext i32 %conv1.i to i64
  %conv10.i = zext i32 %15 to i64
  %add12.i = add nsw i64 %conv10.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %candidate.071.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %candidate.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rgn.067.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %rgn.067.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rgn.067.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp6.i = icmp eq i32 %15, %21
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.if.end17.i_crit_edge

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %size11.i = getelementptr inbounds %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 0, i32 1
  %22 = ptrtoint ptr %size11.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size11.i, align 8
  %sub13.i = add i64 %add12.i, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %sub13.i, i64 %conv8.i)
  %cmp14.i = icmp eq i64 %sub13.i, %conv8.i
  br i1 %cmp14.i, label %mtk_iommu_get_domain_id.exit, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %for.body.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp20.not.i = icmp ult i32 %15, %21
  br i1 %cmp20.not.i, label %if.end17.i.for.inc.i_crit_edge, label %land.lhs.true22.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv25.i = zext i32 %21 to i64
  %size26.i = getelementptr inbounds %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 0, i32 1
  %24 = ptrtoint ptr %size26.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size26.i, align 8
  %add27.i = add i64 %25, %conv25.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add27.i, i64 %conv8.i)
  %cmp28.i = icmp ugt i64 %add27.i, %conv8.i
  %spec.select.i = select i1 %cmp28.i, i32 %i.068.i, i32 %candidate.071.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true22.i, %if.end17.i.for.inc.i_crit_edge
  %candidate.1.i = phi i32 [ %candidate.071.i, %if.end17.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true22.i ]
  %inc.i = add nuw i32 %i.068.i, 1
  %incdec.ptr.i = getelementptr %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %candidate.1.i)
  %cmp32.i = icmp sgt i32 %candidate.1.i, -1
  br i1 %cmp32.i, label %for.end.i.if.end_crit_edge, label %for.end.i.mtk_iommu_get_domain_id.exit.thread97_crit_edge

for.end.i.mtk_iommu_get_domain_id.exit.thread97_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_get_domain_id.exit.thread97

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mtk_iommu_get_domain_id.exit.thread97:            ; preds = %for.end.i.mtk_iommu_get_domain_id.exit.thread97_crit_edge, %if.end.i.mtk_iommu_get_domain_id.exit.thread97_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %dma_start.i, i64 noundef %17) #14
  br label %cleanup

mtk_iommu_get_domain_id.exit:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068.i)
  %cmp = icmp slt i32 %i.068.i, 0
  br i1 %cmp, label %mtk_iommu_get_domain_id.exit.cleanup_crit_edge, label %mtk_iommu_get_domain_id.exit.if.end_crit_edge

mtk_iommu_get_domain_id.exit.if.end_crit_edge:    ; preds = %mtk_iommu_get_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mtk_iommu_get_domain_id.exit.cleanup_crit_edge:   ; preds = %mtk_iommu_get_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_iommu_get_domain_id.exit.if.end_crit_edge, %for.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %dev_iommu_priv_get.exit.if.end_crit_edge
  %retval.0.i5394 = phi i32 [ %i.068.i, %mtk_iommu_get_domain_id.exit.if.end_crit_edge ], [ %candidate.1.i, %for.end.i.if.end_crit_edge ], [ 0, %dev_iommu_priv_get.exit.if.end_crit_edge ], [ 0, %lor.lhs.false.i.if.end_crit_edge ]
  %data4 = getelementptr i8, ptr %domain, i32 -4
  %26 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data4, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %m4u_dom.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 6
  %28 = ptrtoint ptr %m4u_dom.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m4u_dom.i, align 4
  %tobool.not.i54 = icmp eq ptr %29, null
  br i1 %tobool.not.i54, label %if.end.i56, label %if.then.i55

if.then.i55:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %iop.i = getelementptr inbounds %struct.mtk_iommu_domain, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %iop.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iop.i, align 8
  %iop2.i = getelementptr i8, ptr %domain, i32 -8
  %32 = ptrtoint ptr %iop2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %iop2.i, align 8
  %33 = ptrtoint ptr %m4u_dom.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m4u_dom.i, align 4
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %34, i32 72)
  %36 = load ptr, ptr %m4u_dom.i, align 4
  %pgsize_bitmap.i = getelementptr inbounds %struct.io_pgtable_cfg, ptr %36, i32 0, i32 1
  br label %if.end9

if.end.i56:                                       ; preds = %if.then5
  %37 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %plat_data, align 4
  %flags.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %cmp.not.i, i32 32, i32 34
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 11, ptr %add.ptr.i, align 8
  %.compoundliteral.sroa.3.0.cfg8.sroa_idx.i = getelementptr i8, ptr %domain, i32 -76
  %44 = ptrtoint ptr %.compoundliteral.sroa.3.0.cfg8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 17895424, ptr %.compoundliteral.sroa.3.0.cfg8.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.cfg8.sroa_idx.i = getelementptr i8, ptr %domain, i32 -72
  %45 = ptrtoint ptr %.compoundliteral.sroa.4.0.cfg8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond.i, ptr %.compoundliteral.sroa.4.0.cfg8.sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0.cfg8.sroa_idx.i = getelementptr i8, ptr %domain, i32 -68
  %46 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.cfg8.sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.540.0.cfg8.sroa_idx.i = getelementptr i8, ptr %domain, i32 -56
  %47 = ptrtoint ptr %.compoundliteral.sroa.540.0.cfg8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %42, ptr %.compoundliteral.sroa.540.0.cfg8.sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0.cfg8.sroa_idx.i = getelementptr i8, ptr %domain, i32 -52
  %48 = call ptr @memset(ptr %.compoundliteral.sroa.6.0.cfg8.sroa_idx.i, i32 0, i32 44)
  %49 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %plat_data, align 4
  %flags11.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags11.i, align 4
  %and12.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.not.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.not.i, label %if.end.i56.if.end20.i_crit_edge, label %if.then14.i

if.end.i56.if.end20.i_crit_edge:                  ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13
  %enable_4GB.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 8
  %53 = ptrtoint ptr %enable_4GB.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enable_4GB.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool15.not.i = icmp eq i8 %54, 0
  %cond16.i = select i1 %tobool15.not.i, i32 32, i32 33
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end.i56.if.end20.i_crit_edge
  %cond16.sink.i = phi i32 [ %cond16.i, %if.then14.i ], [ 35, %if.end.i56.if.end20.i_crit_edge ]
  %55 = ptrtoint ptr %.compoundliteral.sroa.5.0.cfg8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond16.sink.i, ptr %.compoundliteral.sroa.5.0.cfg8.sroa_idx.i, align 4
  %call.i = tail call ptr @alloc_io_pgtable_ops(i32 noundef 4, ptr noundef %add.ptr.i, ptr noundef %retval.0.i) #11
  %iop22.i = getelementptr i8, ptr %domain, i32 -8
  %56 = ptrtoint ptr %iop22.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %iop22.i, align 8
  %tobool24.not.i = icmp eq ptr %call.i, null
  br i1 %tobool24.not.i, label %mtk_iommu_domain_finalise.exit, label %if.end20.i.if.end9_crit_edge

if.end20.i.if.end9_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

mtk_iommu_domain_finalise.exit:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end20.i.if.end9_crit_edge, %if.then.i55
  %.compoundliteral.sroa.3.0.cfg8.sroa_idx.sink.i = phi ptr [ %pgsize_bitmap.i, %if.then.i55 ], [ %.compoundliteral.sroa.3.0.cfg8.sroa_idx.i, %if.end20.i.if.end9_crit_edge ]
  %59 = ptrtoint ptr %.compoundliteral.sroa.3.0.cfg8.sroa_idx.sink.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %.compoundliteral.sroa.3.0.cfg8.sroa_idx.sink.i, align 4
  %pgsize_bitmap31.i = getelementptr i8, ptr %domain, i32 8
  %61 = ptrtoint ptr %pgsize_bitmap31.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pgsize_bitmap31.i, align 8
  %62 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %plat_data, align 4
  %iova_region.i58 = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %iova_region.i58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iova_region.i58, align 4
  %add.ptr.i59 = getelementptr %struct.mtk_iommu_iova_region, ptr %65, i32 %retval.0.i5394
  %66 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i59, align 8
  %geometry.i = getelementptr i8, ptr %domain, i32 20
  %68 = ptrtoint ptr %geometry.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %geometry.i, align 4
  %69 = load i32, ptr %add.ptr.i59, align 8
  %size.i60 = getelementptr %struct.mtk_iommu_iova_region, ptr %65, i32 %retval.0.i5394, i32 1
  %70 = ptrtoint ptr %size.i60 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %size.i60, align 8
  %72 = trunc i64 %71 to i32
  %73 = add i32 %69, -1
  %conv35.i = add i32 %73, %72
  %aperture_end.i = getelementptr i8, ptr %domain, i32 24
  %74 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv35.i, ptr %aperture_end.i, align 4
  %force_aperture.i = getelementptr i8, ptr %domain, i32 28
  %75 = ptrtoint ptr %force_aperture.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %force_aperture.i, align 4
  %76 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i, ptr %data4, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end.if.end11_crit_edge
  %m4u_dom = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 6
  %77 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %m4u_dom, align 4
  %tobool12.not = icmp eq ptr %78, null
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then13:                                        ; preds = %if.end11
  %call.i62 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %if.then.i64, label %if.end17

if.then.i64:                                      ; preds = %if.then13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !122
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i64.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i64.cleanup_crit_edge:                    ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %80 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %plat_data, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp.i67 = icmp eq i32 %83, 4
  br i1 %cmp.i67, label %if.end17.if.end.i71_crit_edge, label %if.else.i

if.end17.if.end.i71_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i71

if.else.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %retval.0.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %85, i32 272
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #11, !srcloc !124
  %87 = or i32 %86, 536870912
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #11
  br label %if.end.i71

if.end.i71:                                       ; preds = %if.else.i, %if.end17.if.end.i71_crit_edge
  %regval.0.i = phi i32 [ %88, %if.else.i ], [ 80, %if.end17.if.end.i71_crit_edge ]
  %89 = tail call i32 @llvm.bswap.i32(i32 %regval.0.i) #11
  %90 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %retval.0.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %91, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %89) #11, !srcloc !125
  %92 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %retval.0.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %93, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1862270976) #11, !srcloc !125
  %94 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %retval.0.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %95, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -12648448) #11, !srcloc !125
  %96 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %plat_data, align 4
  %flags.i69 = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i69, align 4
  %and.i70 = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %cmp8.not.i = icmp eq i32 %and.i70, 0
  %protect_base12.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 4
  %100 = ptrtoint ptr %protect_base12.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %protect_base12.i, align 4
  br i1 %cmp8.not.i, label %if.end.i71.if.end18.i_crit_edge, label %if.then9.i

if.end.i71.if.end18.i_crit_edge:                  ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  %enable_4GB.i72 = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 8
  %102 = ptrtoint ptr %enable_4GB.i72 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %enable_4GB.i72, align 4, !range !120
  %104 = zext i8 %103 to i32
  %or10.i = tail call i32 @llvm.fshl.i32(i32 %104, i32 %101, i32 31) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then9.i, %if.end.i71.if.end18.i_crit_edge
  %regval.1.i = phi i32 [ %or10.i, %if.then9.i ], [ %101, %if.end.i71.if.end18.i_crit_edge ]
  %105 = tail call i32 @llvm.bswap.i32(i32 %regval.1.i) #11
  %106 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %retval.0.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %107, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %105) #11, !srcloc !125
  %enable_4GB21.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 8
  %108 = ptrtoint ptr %enable_4GB21.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %enable_4GB21.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool22.not.i = icmp eq i8 %109, 0
  br i1 %tobool22.not.i, label %if.end18.i.if.end32.i_crit_edge, label %land.lhs.true.i73

if.end18.i.if.end32.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.lhs.true.i73:                                ; preds = %if.end18.i
  %110 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %plat_data, align 4
  %flags25.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags25.i, align 4
  %and26.i = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %cmp27.not.i = icmp eq i32 %and26.i, 0
  br i1 %cmp27.not.i, label %land.lhs.true.i73.if.end32.i_crit_edge, label %if.then29.i

land.lhs.true.i73.if.end32.i_crit_edge:           ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then29.i:                                      ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %retval.0.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %115, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 67567616) #11, !srcloc !125
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %land.lhs.true.i73.if.end32.i_crit_edge, %if.end18.i.if.end32.i_crit_edge
  %116 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %retval.0.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %117, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 0) #11, !srcloc !125
  %118 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %plat_data, align 4
  %flags36.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %flags36.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags36.i, align 4
  %and37.i = and i32 %121, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp38.not.i = icmp eq i32 %and37.i, 0
  br i1 %cmp38.not.i, label %if.end32.i.if.end49.i_crit_edge, label %if.then40.i

if.end32.i.if.end49.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %retval.0.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %123, i32 84
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #11, !srcloc !124
  %125 = and i32 %124, -536879105
  %126 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %retval.0.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %127, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %125) #11, !srcloc !125
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then40.i, %if.end32.i.if.end49.i_crit_edge
  %128 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %plat_data, align 4
  %flags51.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %flags51.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %flags51.i, align 4
  %and52.i = and i32 %131, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %cmp53.not.i = icmp eq i32 %and52.i, 0
  br i1 %cmp53.not.i, label %if.else56.i, label %if.end49.i.if.end71.i_crit_edge

if.end49.i.if.end71.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

if.else56.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %retval.0.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %133, i32 72
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #11, !srcloc !124
  %135 = and i32 %134, -134219777
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #11
  %137 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %plat_data, align 4
  %flags64.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %flags64.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags64.i, align 4
  %and65.i = and i32 %140, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %cmp66.not.i = icmp eq i32 %and65.i, 0
  %and69.i = and i32 %136, -655371
  %spec.select.i74 = select i1 %cmp66.not.i, i32 %136, i32 %and69.i
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else56.i, %if.end49.i.if.end71.i_crit_edge
  %regval.2.i = phi i32 [ 0, %if.end49.i.if.end71.i_crit_edge ], [ %spec.select.i74, %if.else56.i ]
  %141 = tail call i32 @llvm.bswap.i32(i32 %regval.2.i) #11
  %142 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %retval.0.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %143, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %141) #11, !srcloc !125
  %144 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev2, align 4
  %irq.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 1
  %146 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %irq.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %145, i32 0, i32 3
  %148 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %149, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end71.i.dev_name.exit.i_crit_edge

if.end71.i.dev_name.exit.i_crit_edge:             ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %145, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end71.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %151, %if.end.i.i ], [ %149, %if.end71.i.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %145, i32 noundef %147, ptr noundef nonnull @mtk_iommu_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool77.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool77.not.i, label %if.end22, label %if.then20

if.then20:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %retval.0.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 0) #11, !srcloc !125
  %154 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev2, align 4
  %156 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.18, i32 noundef %157) #14
  %call.i77 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #11
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %add.ptr.i, ptr %m4u_dom, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @arm_heavy_mb() #11
  %159 = getelementptr i8, ptr %domain, i32 -48
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 8
  %and = and i32 %161, -128
  %162 = tail call i32 @llvm.bswap.i32(i32 %and)
  %163 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %retval.0.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #11, !srcloc !125
  %call.i78 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #11
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.end11.if.end25_crit_edge
  %165 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i.i79 = icmp eq ptr %166, null
  br i1 %tobool.not.i.i79, label %if.end25.dev_iommu_fwspec_get.exit.i_crit_edge, label %if.then.i.i

if.end25.dev_iommu_fwspec_get.exit.i_crit_edge:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_iommu_fwspec_get.exit.i

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fwspec.i.i, align 4
  br label %dev_iommu_fwspec_get.exit.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.then.i.i, %if.end25.dev_iommu_fwspec_get.exit.i_crit_edge
  %retval.0.i42.i = phi ptr [ %168, %if.then.i.i ], [ null, %if.end25.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i42.i, i32 0, i32 3
  %169 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp46.not.i = icmp eq i32 %170, 0
  br i1 %cmp46.not.i, label %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit.i.for.body.i82_crit_edge

dev_iommu_fwspec_get.exit.i.for.body.i82_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  br label %for.body.i82

dev_iommu_fwspec_get.exit.i.cleanup_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i82:                                     ; preds = %do.end.i87.for.body.i82_crit_edge, %dev_iommu_fwspec_get.exit.i.for.body.i82_crit_edge
  %i.047.i = phi i32 [ %inc.i88, %do.end.i87.for.body.i82_crit_edge ], [ 0, %dev_iommu_fwspec_get.exit.i.for.body.i82_crit_edge ]
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i42.i, i32 0, i32 4, i32 %i.047.i
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %172, 5
  %and.i81 = and i32 %shr.i, 31
  %and3.i = and i32 %172, 31
  %arrayidx7.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 15, i32 %and.i81, i32 2, i32 %and3.i
  %173 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %arrayidx7.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_iommu_config.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_iommu_attach_device, %if.then.i84)) #11
          to label %do.end.i87 [label %if.then.i84], !srcloc !127

if.then.i84:                                      ; preds = %for.body.i82
  %arrayidx4.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 15, i32 %and.i81
  %174 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx4.i, align 4
  %init_name.i.i83 = getelementptr inbounds %struct.device, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %init_name.i.i83 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %init_name.i.i83, align 8
  %tobool.not.i43.i = icmp eq ptr %177, null
  br i1 %tobool.not.i43.i, label %if.end.i.i85, label %if.then.i84.dev_name.exit.i86_crit_edge

if.then.i84.dev_name.exit.i86_crit_edge:          ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i86

if.end.i.i85:                                     ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #13
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %175, align 4
  br label %dev_name.exit.i86

dev_name.exit.i86:                                ; preds = %if.end.i.i85, %if.then.i84.dev_name.exit.i86_crit_edge
  %retval.0.i44.i = phi ptr [ %179, %if.end.i.i85 ], [ %177, %if.then.i84.dev_name.exit.i86_crit_edge ]
  %180 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx7.i, align 1
  %conv18.i = zext i8 %181 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_iommu_config.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i44.i, i32 noundef %and3.i, i32 noundef %retval.0.i5394, i32 noundef %conv18.i) #11
  br label %do.end.i87

do.end.i87:                                       ; preds = %dev_name.exit.i86, %for.body.i82
  %shl.i = shl nuw i32 1, %and3.i
  %mmu.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 15, i32 %and.i81, i32 1
  %182 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mmu.i, align 4
  %or.i = or i32 %183, %shl.i
  store i32 %or.i, ptr %mmu.i, align 4
  %inc.i88 = add nuw i32 %i.047.i, 1
  %184 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_ids.i, align 4
  %cmp.i89 = icmp ult i32 %inc.i88, %185
  br i1 %cmp.i89, label %do.end.i87.for.body.i82_crit_edge, label %do.end.i87.cleanup_crit_edge

do.end.i87.cleanup_crit_edge:                     ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i87.for.body.i82_crit_edge:                ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i82

cleanup:                                          ; preds = %do.end.i87.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, %if.then20, %do.end11.i.i.i.i.i, %if.then.i64.cleanup_crit_edge, %mtk_iommu_domain_finalise.exit, %mtk_iommu_get_domain_id.exit.cleanup_crit_edge, %mtk_iommu_get_domain_id.exit.thread97
  %retval.0 = phi i32 [ -19, %if.then20 ], [ %i.068.i, %mtk_iommu_get_domain_id.exit.cleanup_crit_edge ], [ -19, %mtk_iommu_domain_finalise.exit ], [ -22, %mtk_iommu_get_domain_id.exit.thread97 ], [ 0, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge ], [ %call.i62, %if.then.i64.cleanup_crit_edge ], [ %call.i62, %do.end11.i.i.i.i.i ], [ 0, %do.end.i87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_detach_device(ptr nocapture noundef readnone %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_fwspec_get.exit.i_crit_edge, label %if.then.i.i

entry.dev_iommu_fwspec_get.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_iommu_fwspec_get.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwspec.i.i, align 4
  br label %dev_iommu_fwspec_get.exit.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.then.i.i, %entry.dev_iommu_fwspec_get.exit.i_crit_edge
  %retval.0.i4 = phi ptr [ %3, %if.then.i.i ], [ null, %entry.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %retval.0.i42.i = phi ptr [ %5, %if.then.i.i ], [ null, %entry.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i42.i, i32 0, i32 3
  %6 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp46.not.i = icmp eq i32 %7, 0
  br i1 %cmp46.not.i, label %dev_iommu_fwspec_get.exit.i.mtk_iommu_config.exit_crit_edge, label %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge

dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  br label %for.body.i

dev_iommu_fwspec_get.exit.i.mtk_iommu_config.exit_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_config.exit

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i42.i, i32 0, i32 4, i32 %i.047.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %9, 5
  %and.i = and i32 %shr.i, 31
  %and3.i = and i32 %9, 31
  %arrayidx7.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i4, i32 0, i32 15, i32 %and.i, i32 2, i32 %and3.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx7.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_iommu_config.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_iommu_detach_device, %if.then.i2)) #11
          to label %do.end.i [label %if.then.i2], !srcloc !127

if.then.i2:                                       ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i4, i32 0, i32 15, i32 %and.i
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i43.i = icmp eq ptr %14, null
  br i1 %tobool.not.i43.i, label %if.end.i.i, label %if.then.i2.dev_name.exit.i_crit_edge

if.then.i2.dev_name.exit.i_crit_edge:             ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i2.dev_name.exit.i_crit_edge
  %retval.0.i44.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i2.dev_name.exit.i_crit_edge ]
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.i, align 1
  %conv18.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_iommu_config.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i44.i, i32 noundef %and3.i, i32 noundef 0, i32 noundef %conv18.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %dev_name.exit.i, %for.body.i
  %shl.i = shl nuw i32 1, %and3.i
  %neg.i = xor i32 %shl.i, -1
  %mmu22.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i4, i32 0, i32 15, i32 %and.i, i32 1
  %19 = ptrtoint ptr %mmu22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mmu22.i, align 4
  %and23.i = and i32 %20, %neg.i
  store i32 %and23.i, ptr %mmu22.i, align 4
  %inc.i = add nuw i32 %i.047.i, 1
  %21 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.mtk_iommu_config.exit_crit_edge

do.end.i.mtk_iommu_config.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_config.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mtk_iommu_config.exit:                            ; preds = %do.end.i.mtk_iommu_config.exit_crit_edge, %dev_iommu_fwspec_get.exit.i.mtk_iommu_config.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_map(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iop = getelementptr i8, ptr %domain, i32 -8
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call3 = tail call i32 %3(ptr noundef %1, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_unmap(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %iova, -1
  %sub.i = add i32 %add.i, %size
  %0 = ptrtoint ptr %gather to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gather, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %iova)
  %cmp.i = icmp ugt i32 %1, %iova
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %gather to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %iova, ptr %gather, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %end2.i = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %gather, i32 0, i32 1
  %3 = ptrtoint ptr %end2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub.i)
  %cmp3.i = icmp ult i32 %4, %sub.i
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.iommu_iotlb_gather_add_range.exit_crit_edge

if.end.i.iommu_iotlb_gather_add_range.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iommu_iotlb_gather_add_range.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %end2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %end2.i, align 4
  br label %iommu_iotlb_gather_add_range.exit

iommu_iotlb_gather_add_range.exit:                ; preds = %if.then4.i, %if.end.i.iommu_iotlb_gather_add_range.exit_crit_edge
  %iop = getelementptr i8, ptr %domain, i32 -8
  %6 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iop, align 8
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unmap, align 4
  %call2 = tail call i32 %9(ptr noundef %7, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_flush_iotlb_all(ptr nocapture noundef readnone %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn2.i = load ptr, ptr @m4ulist, align 4
  %cmp.not4.i = icmp eq ptr %.pn2.i, @m4ulist
  br i1 %cmp.not4.i, label %entry.mtk_iommu_tlb_flush_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mtk_iommu_tlb_flush_all.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_tlb_flush_all.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %entry.for.body.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %.pn5.i, i32 -160
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %1, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.addr.06.i = getelementptr i8, ptr %.pn5.i, i32 -168
  %2 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.addr.06.i, align 4
  %plat_data.i = getelementptr i8, ptr %.pn5.i, i32 -12
  %4 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data.i, align 4
  %inv_sel_reg.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %inv_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inv_sel_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 50331648) #11, !srcloc !125
  %8 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.addr.06.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 33554432) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @m4ulist
  br i1 %cmp.not.i, label %for.inc.i.mtk_iommu_tlb_flush_all.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.mtk_iommu_tlb_flush_all.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_tlb_flush_all.exit

mtk_iommu_tlb_flush_all.exit:                     ; preds = %for.inc.i.mtk_iommu_tlb_flush_all.exit_crit_edge, %entry.mtk_iommu_tlb_flush_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_sync_map(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %domain, i32 -4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @mtk_iommu_tlb_flush_range_sync(i32 noundef %iova, i32 noundef %size, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_iotlb_sync(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %gather, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  %2 = ptrtoint ptr %gather to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gather, align 4
  %sub = add i32 %1, 1
  %add = sub i32 %sub, %3
  %data = getelementptr i8, ptr %domain, i32 -4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call fastcc void @mtk_iommu_tlb_flush_range_sync(i32 noundef %3, i32 noundef %add, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_iova_to_phys(ptr nocapture noundef readonly %domain, i32 noundef %iova) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iop = getelementptr i8, ptr %domain, i32 -8
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iova_to_phys, align 4
  %call2 = tail call i32 %3(ptr noundef %1, i32 noundef %iova) #11
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mtk_iommu_probe_device(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @mtk_iommu_ops
  br i1 %cmp.not, label %dev_iommu_priv_get.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %iommu = getelementptr inbounds %struct.mtk_iommu_data, ptr %7, i32 0, i32 10
  br label %cleanup

cleanup:                                          ; preds = %dev_iommu_priv_get.exit, %lor.lhs.false.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %iommu, %dev_iommu_priv_get.exit ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %dev_iommu_fwspec_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_release_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @mtk_iommu_ops
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iommu_fwspec_free(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_iommu_device_group(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m4ulist, align 4
  %cmp.not.i = icmp eq ptr %0, @m4ulist
  %add.ptr.i = getelementptr i8, ptr %0, i32 -168
  %tobool.not37 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not37
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %plat_data = getelementptr i8, ptr %0, i32 -12
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plat_data, align 4
  %iova_region.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %iova_region.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iova_region.i, align 4
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_range_map.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %lor.lhs.false.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %if.end
  %iova_region_nr.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %iova_region_nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iova_region_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.end5_crit_edge, label %if.end.i

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dma_start.i = getelementptr inbounds %struct.bus_dma_region, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_start.i, align 4
  %size.i = getelementptr inbounds %struct.bus_dma_region, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp366.not.i = icmp eq i32 %8, 0
  br i1 %cmp366.not.i, label %if.end.i.mtk_iommu_get_domain_id.exit.thread33_crit_edge, label %for.body.lr.ph.i

if.end.i.mtk_iommu_get_domain_id.exit.thread33_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_get_domain_id.exit.thread33

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %13 = add i32 %10, -1
  %14 = trunc i64 %12 to i32
  %conv1.i = add i32 %13, %14
  %conv8.i = zext i32 %conv1.i to i64
  %conv10.i = zext i32 %10 to i64
  %add12.i = add nsw i64 %conv10.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %candidate.071.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %candidate.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rgn.067.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %rgn.067.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rgn.067.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp6.i = icmp eq i32 %10, %16
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.if.end17.i_crit_edge

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %size11.i = getelementptr inbounds %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 0, i32 1
  %17 = ptrtoint ptr %size11.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size11.i, align 8
  %sub13.i = add i64 %add12.i, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %sub13.i, i64 %conv8.i)
  %cmp14.i = icmp eq i64 %sub13.i, %conv8.i
  br i1 %cmp14.i, label %mtk_iommu_get_domain_id.exit, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %for.body.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp20.not.i = icmp ult i32 %10, %16
  br i1 %cmp20.not.i, label %if.end17.i.for.inc.i_crit_edge, label %land.lhs.true22.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv25.i = zext i32 %16 to i64
  %size26.i = getelementptr inbounds %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 0, i32 1
  %19 = ptrtoint ptr %size26.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size26.i, align 8
  %add27.i = add i64 %20, %conv25.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add27.i, i64 %conv8.i)
  %cmp28.i = icmp ugt i64 %add27.i, %conv8.i
  %spec.select.i = select i1 %cmp28.i, i32 %i.068.i, i32 %candidate.071.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true22.i, %if.end17.i.for.inc.i_crit_edge
  %candidate.1.i = phi i32 [ %candidate.071.i, %if.end17.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true22.i ]
  %inc.i = add nuw i32 %i.068.i, 1
  %incdec.ptr.i = getelementptr %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %candidate.1.i)
  %cmp32.i = icmp sgt i32 %candidate.1.i, -1
  br i1 %cmp32.i, label %for.end.i.if.end5_crit_edge, label %for.end.i.mtk_iommu_get_domain_id.exit.thread33_crit_edge

for.end.i.mtk_iommu_get_domain_id.exit.thread33_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_get_domain_id.exit.thread33

for.end.i.if.end5_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

mtk_iommu_get_domain_id.exit.thread33:            ; preds = %for.end.i.mtk_iommu_get_domain_id.exit.thread33_crit_edge, %if.end.i.mtk_iommu_get_domain_id.exit.thread33_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %dma_start.i, i64 noundef %12) #14
  br label %if.then3

mtk_iommu_get_domain_id.exit:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068.i)
  %cmp = icmp slt i32 %i.068.i, 0
  br i1 %cmp, label %mtk_iommu_get_domain_id.exit.if.then3_crit_edge, label %mtk_iommu_get_domain_id.exit.if.end5_crit_edge

mtk_iommu_get_domain_id.exit.if.end5_crit_edge:   ; preds = %mtk_iommu_get_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

mtk_iommu_get_domain_id.exit.if.then3_crit_edge:  ; preds = %mtk_iommu_get_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %mtk_iommu_get_domain_id.exit.if.then3_crit_edge, %mtk_iommu_get_domain_id.exit.thread33
  %retval.0.i2836 = phi i32 [ -22, %mtk_iommu_get_domain_id.exit.thread33 ], [ %i.068.i, %mtk_iommu_get_domain_id.exit.if.then3_crit_edge ]
  %21 = inttoptr i32 %retval.0.i2836 to ptr
  br label %cleanup

if.end5:                                          ; preds = %mtk_iommu_get_domain_id.exit.if.end5_crit_edge, %for.end.i.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %retval.0.i2832 = phi i32 [ %i.068.i, %mtk_iommu_get_domain_id.exit.if.end5_crit_edge ], [ %candidate.1.i, %for.end.i.if.end5_crit_edge ], [ 0, %if.end.if.end5_crit_edge ], [ 0, %lor.lhs.false.i.if.end5_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_iommu_data, ptr %add.ptr.i, i32 0, i32 7, i32 %retval.0.i2832
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %23, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call8 = tail call ptr @iommu_group_alloc() #11
  %cmp.i29 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.then7.cleanup_crit_edge, label %if.then10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call ptr @iommu_group_ref_get(ptr noundef nonnull %23) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %if.then7.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.then3 ], [ %23, %if.else ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call8, %if.then10 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_get_resv_regions(ptr noundef %dev, ptr noundef %head) #2 align 64 {
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
  %plat_data = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 11
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %iova_region.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %iova_region.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iova_region.i, align 4
  %dma_range_map.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %dma_range_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_range_map.i, align 8
  %tobool.not.i46 = icmp eq ptr %9, null
  br i1 %tobool.not.i46, label %dev_iommu_priv_get.exit.if.end_crit_edge, label %lor.lhs.false.i

dev_iommu_priv_get.exit.if.end_crit_edge:         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %dev_iommu_priv_get.exit
  %iova_region_nr.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %iova_region_nr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iova_region_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dma_start.i = getelementptr inbounds %struct.bus_dma_region, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_start.i, align 4
  %size.i = getelementptr inbounds %struct.bus_dma_region, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp366.not.i = icmp eq i32 %11, 0
  br i1 %cmp366.not.i, label %if.end.i.mtk_iommu_get_domain_id.exit.thread51_crit_edge, label %for.body.lr.ph.i

if.end.i.mtk_iommu_get_domain_id.exit.thread51_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_get_domain_id.exit.thread51

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %16 = add i32 %13, -1
  %17 = trunc i64 %15 to i32
  %conv1.i = add i32 %16, %17
  %conv8.i = zext i32 %conv1.i to i64
  %conv10.i = zext i32 %13 to i64
  %add12.i = add nsw i64 %conv10.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %candidate.071.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %candidate.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rgn.067.i = phi ptr [ %7, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %rgn.067.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rgn.067.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp6.i = icmp eq i32 %13, %19
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.if.end17.i_crit_edge

for.body.i.if.end17.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %size11.i = getelementptr inbounds %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 0, i32 1
  %20 = ptrtoint ptr %size11.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size11.i, align 8
  %sub13.i = add i64 %add12.i, %21
  call void @__sanitizer_cov_trace_cmp8(i64 %sub13.i, i64 %conv8.i)
  %cmp14.i = icmp eq i64 %sub13.i, %conv8.i
  br i1 %cmp14.i, label %mtk_iommu_get_domain_id.exit, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true.i.if.end17.i_crit_edge, %for.body.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp20.not.i = icmp ult i32 %13, %19
  br i1 %cmp20.not.i, label %if.end17.i.for.inc.i_crit_edge, label %land.lhs.true22.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv25.i = zext i32 %19 to i64
  %size26.i = getelementptr inbounds %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 0, i32 1
  %22 = ptrtoint ptr %size26.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size26.i, align 8
  %add27.i = add i64 %23, %conv25.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add27.i, i64 %conv8.i)
  %cmp28.i = icmp ugt i64 %add27.i, %conv8.i
  %spec.select.i = select i1 %cmp28.i, i32 %i.068.i, i32 %candidate.071.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true22.i, %if.end17.i.for.inc.i_crit_edge
  %candidate.1.i = phi i32 [ %candidate.071.i, %if.end17.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true22.i ]
  %inc.i = add nuw i32 %i.068.i, 1
  %incdec.ptr.i = getelementptr %struct.mtk_iommu_iova_region, ptr %rgn.067.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %candidate.1.i)
  %cmp32.i = icmp sgt i32 %candidate.1.i, -1
  br i1 %cmp32.i, label %for.end.i.if.end_crit_edge, label %for.end.i.mtk_iommu_get_domain_id.exit.thread51_crit_edge

for.end.i.mtk_iommu_get_domain_id.exit.thread51_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_get_domain_id.exit.thread51

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mtk_iommu_get_domain_id.exit.thread51:            ; preds = %for.end.i.mtk_iommu_get_domain_id.exit.thread51_crit_edge, %if.end.i.mtk_iommu_get_domain_id.exit.thread51_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %dma_start.i, i64 noundef %15) #14
  br label %cleanup

mtk_iommu_get_domain_id.exit:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068.i)
  %cmp = icmp slt i32 %i.068.i, 0
  br i1 %cmp, label %mtk_iommu_get_domain_id.exit.cleanup_crit_edge, label %mtk_iommu_get_domain_id.exit.if.end_crit_edge

mtk_iommu_get_domain_id.exit.if.end_crit_edge:    ; preds = %mtk_iommu_get_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mtk_iommu_get_domain_id.exit.cleanup_crit_edge:   ; preds = %mtk_iommu_get_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mtk_iommu_get_domain_id.exit.if.end_crit_edge, %for.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %dev_iommu_priv_get.exit.if.end_crit_edge
  %retval.0.i4750 = phi i32 [ %i.068.i, %mtk_iommu_get_domain_id.exit.if.end_crit_edge ], [ %candidate.1.i, %for.end.i.if.end_crit_edge ], [ 0, %dev_iommu_priv_get.exit.if.end_crit_edge ], [ 0, %lor.lhs.false.i.if.end_crit_edge ]
  %24 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %plat_data, align 4
  %iova_region = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %iova_region to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iova_region, align 4
  %add.ptr = getelementptr %struct.mtk_iommu_iova_region, ptr %27, i32 %retval.0.i4750
  %iova_region_nr55 = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %iova_region_nr55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iova_region_nr55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp456.not = icmp eq i32 %29, 0
  br i1 %cmp456.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %size13 = getelementptr %struct.mtk_iommu_iova_region, ptr %27, i32 %retval.0.i4750, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %30 = phi ptr [ %25, %for.body.lr.ph ], [ %48, %for.inc.for.body_crit_edge ]
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %iova_region6 = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %iova_region6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iova_region6, align 4
  %add.ptr7 = getelementptr %struct.mtk_iommu_iova_region, ptr %32, i32 %i.057
  %33 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr7, align 8
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp9.not = icmp ugt i32 %34, %36
  br i1 %cmp9.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %conv = zext i32 %34 to i64
  %size = getelementptr %struct.mtk_iommu_iova_region, ptr %32, i32 %i.057, i32 1
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size, align 8
  %add = add i64 %38, %conv
  %conv12 = zext i32 %36 to i64
  %39 = ptrtoint ptr %size13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %size13, align 8
  %add14 = add i64 %40, %conv12
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add14)
  %cmp15.not = icmp ult i64 %add, %add14
  br i1 %cmp15.not, label %if.end18, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false
  %conv21 = trunc i64 %38 to i32
  %call22 = tail call ptr @iommu_alloc_resv_region(i32 noundef %34, i32 noundef %conv21, i32 noundef 3, i32 noundef 2) #11
  %tobool.not = icmp eq ptr %call22, null
  br i1 %tobool.not, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call22, ptr noundef %42, ptr noundef %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call22, ptr %prev.i, align 4
  %44 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %call22, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call22, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call22, ptr %42, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end24.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.057, 1
  %47 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %plat_data, align 4
  %iova_region_nr = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %iova_region_nr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iova_region_nr, align 4
  %cmp4 = icmp ult i32 %inc, %50
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mtk_iommu_get_domain_id.exit.cleanup_crit_edge, %mtk_iommu_get_domain_id.exit.thread51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_iommu_put_resv_regions(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_of_xlate(ptr noundef %dev, ptr noundef %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %2 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %dev_iommu_priv_get.exit

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

dev_iommu_priv_get.exit:                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.if.then2_crit_edge, label %dev_iommu_priv_get.exit.if.end34_crit_edge

dev_iommu_priv_get.exit.if.end34_crit_edge:       ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

dev_iommu_priv_get.exit.if.then2_crit_edge:       ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then2:                                         ; preds = %dev_iommu_priv_get.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 4
  %call3 = tail call ptr @of_find_device_by_node(ptr noundef %7) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end17, label %if.end32, !prof !129

do.end17:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 621, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end32:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call3, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %priv1.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %dev_iommu_priv_get.exit.if.end34_crit_edge
  %args35 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %call36 = tail call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef %args35, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call36, %if.end34 ], [ -22, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m4u_dom = getelementptr inbounds %struct.mtk_iommu_data, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m4u_dom, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 308
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !124
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3 = getelementptr i8, ptr %7, i32 336
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #11, !srcloc !124
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 316
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !124
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 320
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !124
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr19 = getelementptr i8, ptr %7, i32 340
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #11, !srcloc !124
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 324
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !124
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr30 = getelementptr i8, ptr %24, i32 328
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #11, !srcloc !124
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %25, %if.else ], [ %16, %if.then ]
  %fault_iova.0.in = phi i32 [ %22, %if.else ], [ %13, %if.then ]
  %regval.0 = phi i32 [ %18, %if.else ], [ %9, %if.then ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %fault_iova.0 = zext i32 %fault_iova.0.in to i64
  %fault_pa.0 = zext i32 %26 to i64
  %and34 = and i32 %fault_iova.0.in, 1
  %and36 = and i64 %fault_iova.0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  %plat_data = getelementptr inbounds %struct.mtk_iommu_data, ptr %dev_id, i32 0, i32 11
  %27 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %plat_data, align 4
  %flags = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and39 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp.not = icmp eq i32 %and39, 0
  br i1 %cmp.not, label %if.end.if.end81_crit_edge, label %do.end53

if.end.if.end81_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and55 = lshr i32 %fault_iova.0.in, 9
  %shr = and i32 %and55, 7
  %and73 = lshr i32 %fault_iova.0.in, 6
  %shr74 = and i32 %and73, 7
  %and76 = and i64 %fault_iova.0, 4294963200
  %conv77 = zext i32 %shr to i64
  %shl = shl nuw nsw i64 %conv77, 32
  %or = or i64 %shl, %and76
  %conv78 = zext i32 %shr74 to i64
  %shl79 = shl nuw nsw i64 %conv78, 32
  %or80 = or i64 %shl79, %fault_pa.0
  br label %if.end81

if.end81:                                         ; preds = %do.end53, %if.end.if.end81_crit_edge
  %fault_pa.1 = phi i64 [ %or80, %do.end53 ], [ %fault_pa.0, %if.end.if.end81_crit_edge ]
  %fault_iova.1 = phi i64 [ %or, %do.end53 ], [ %fault_iova.0, %if.end.if.end81_crit_edge ]
  %shr82 = lshr i32 %regval.0, 2
  %and83 = and i32 %shr82, 31
  %and86 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %cmp87.not = icmp eq i32 %and86, 0
  %shr90 = lshr i32 %regval.0, 9
  %shr92 = lshr i32 %regval.0, 7
  %and93 = and i32 %shr92, 3
  %sub_comm.0 = select i1 %cmp87.not, i32 0, i32 %and93
  %fault_larb.0.in = select i1 %cmp87.not, i32 %shr92, i32 %shr90
  %fault_larb.0 = and i32 %fault_larb.0.in, 7
  %arrayidx99 = getelementptr %struct.mtk_iommu_plat_data, ptr %28, i32 0, i32 5, i32 %fault_larb.0, i32 %sub_comm.0
  %31 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %32 to i32
  %domain = getelementptr inbounds %struct.mtk_iommu_domain, ptr %1, i32 0, i32 3
  %dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %dev_id, i32 0, i32 2
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %conv101 = trunc i64 %fault_iova.1 to i32
  %not.tobool37.not = xor i1 %tobool37.not, true
  %cond = zext i1 %not.tobool37.not to i32
  %call104 = tail call i32 @report_iommu_fault(ptr noundef %domain, ptr noundef %34, i32 noundef %conv101, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end81.if.end123_crit_edge, label %do.body107

if.end81.if.end123_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

do.body107:                                       ; preds = %if.end81
  %call108 = tail call i32 @___ratelimit(ptr noundef nonnull @mtk_iommu_isr._rs, ptr noundef nonnull @__func__.mtk_iommu_isr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %do.body107.if.end123_crit_edge, label %do.end113

do.body107.if.end123_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

do.end113:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %cond119 = select i1 %tobool37.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.21, i32 noundef %5, i64 noundef %fault_iova.1, i64 noundef %fault_pa.1, i32 noundef %conv100, i32 noundef %and83, i32 noundef %and34, ptr noundef nonnull %cond119) #14
  br label %if.end123

if.end123:                                        ; preds = %do.end113, %do.body107.if.end123_crit_edge, %if.end81.if.end123_crit_edge
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %add.ptr126 = getelementptr i8, ptr %38, i32 288
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #11, !srcloc !124
  %40 = or i32 %39, 1048576
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 4
  %add.ptr131 = getelementptr i8, ptr %42, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %40) #11, !srcloc !125
  %.pn2.i = load ptr, ptr @m4ulist, align 4
  %cmp.not4.i = icmp eq ptr %.pn2.i, @m4ulist
  br i1 %cmp.not4.i, label %if.end123.mtk_iommu_tlb_flush_all.exit_crit_edge, label %if.end123.for.body.i_crit_edge

if.end123.for.body.i_crit_edge:                   ; preds = %if.end123
  br label %for.body.i

if.end123.mtk_iommu_tlb_flush_all.exit_crit_edge: ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_tlb_flush_all.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end123.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %if.end123.for.body.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %.pn5.i, i32 -160
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %44, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.addr.06.i = getelementptr i8, ptr %.pn5.i, i32 -168
  %45 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.addr.06.i, align 4
  %plat_data.i = getelementptr i8, ptr %.pn5.i, i32 -12
  %47 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %plat_data.i, align 4
  %inv_sel_reg.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %inv_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %inv_sel_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 50331648) #11, !srcloc !125
  %51 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.addr.06.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 33554432) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 5) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %55 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @m4ulist
  br i1 %cmp.not.i, label %for.inc.i.mtk_iommu_tlb_flush_all.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.mtk_iommu_tlb_flush_all.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtk_iommu_tlb_flush_all.exit

mtk_iommu_tlb_flush_all.exit:                     ; preds = %for.inc.i.mtk_iommu_tlb_flush_all.exit_crit_edge, %if.end123.mtk_iommu_tlb_flush_all.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_iommu_tlb_flush_range_sync(i32 noundef %iova, i32 noundef %size, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pm_domain = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain, align 8
  %tobool.not = icmp eq ptr %3, null
  %.pn6 = load ptr, ptr @m4ulist, align 4
  %cmp.not8 = icmp eq ptr %.pn6, @m4ulist
  br i1 %cmp.not8, label %entry.for.end89_crit_edge, label %for.body.lr.ph

entry.for.end89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end89

for.body.lr.ph:                                   ; preds = %entry
  %and18 = and i32 %iova, -4096
  %4 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %add = add i32 %iova, -1
  %sub = add i32 %add, %size
  %and25 = and i32 %sub, -4096
  %5 = tail call i32 @llvm.bswap.i32(i32 %and25)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn9 = phi ptr [ %.pn6, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %data.addr.010 = getelementptr i8, ptr %.pn9, i32 -168
  br i1 %tobool.not, label %for.body.do.body9_crit_edge, label %if.then

for.body.do.body9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

if.then:                                          ; preds = %for.body
  %dev5 = getelementptr i8, ptr %.pn9, i32 -160
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %7, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 1
  br i1 %cmp6, label %if.then.for.inc_crit_edge, label %if.then.do.body9_crit_edge

if.then.do.body9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body9:                                         ; preds = %if.then.do.body9_crit_edge, %for.body.do.body9_crit_edge
  %tlb_lock = getelementptr i8, ptr %.pn9, i32 -76
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tlb_lock) #11
  %8 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.addr.010, align 4
  %plat_data = getelementptr i8, ptr %.pn9, i32 -12
  %10 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat_data, align 4
  %inv_sel_reg = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %inv_sel_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inv_sel_reg, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 50331648) #11, !srcloc !125
  %14 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.addr.010, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %4) #11, !srcloc !125
  %16 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.addr.010, align 4
  %add.ptr30 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %5) #11, !srcloc !125
  %18 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.addr.010, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 16777216) #11, !srcloc !125
  %call33 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call33, 1000000
  %20 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.addr.010, align 4
  %add.ptr374 = getelementptr i8, ptr %21, i32 300
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr374) #11, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp41.not5 = icmp eq i32 %22, 0
  br i1 %cmp41.not5, label %do.body9.land.lhs.true_crit_edge, label %do.body9.for.end.loopexit_crit_edge

do.body9.for.end.loopexit_crit_edge:              ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.loopexit

do.body9.land.lhs.true_crit_edge:                 ; preds = %do.body9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.body9.land.lhs.true_crit_edge
  %call46 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call46, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call46, %add.i
  br i1 %cmp3.i, label %if.then50, label %cond.false

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.addr.010, align 4
  %add.ptr54 = getelementptr i8, ptr %24, i32 300
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #11, !srcloc !124
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !131
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #11
  %28 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.addr.010, align 4
  %add.ptr37 = getelementptr i8, ptr %29, i32 300
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #11, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  %cmp41.not = icmp eq i32 %30, 0
  br i1 %cmp41.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end.loopexit_crit_edge

cond.false.for.end.loopexit_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.loopexit

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end.loopexit:                                 ; preds = %cond.false.for.end.loopexit_crit_edge, %do.body9.for.end.loopexit_crit_edge
  %.lcssa3 = phi i32 [ %22, %do.body9.for.end.loopexit_crit_edge ], [ %30, %cond.false.for.end.loopexit_crit_edge ]
  %31 = tail call i32 @llvm.bswap.i32(i32 %.lcssa3)
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then50
  %tmp.0 = phi i32 [ %26, %if.then50 ], [ %31, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0)
  %cmp68.not = icmp eq i32 %tmp.0, 0
  br i1 %cmp68.not, label %do.end74, label %for.end.if.end76_crit_edge

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.end74:                                         ; preds = %for.end
  %dev75 = getelementptr i8, ptr %.pn9, i32 -160
  %32 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.29) #14
  %.pn2.i = load ptr, ptr @m4ulist, align 4
  %cmp.not4.i = icmp eq ptr %.pn2.i, @m4ulist
  br i1 %cmp.not4.i, label %do.end74.if.end76_crit_edge, label %do.end74.for.body.i_crit_edge

do.end74.for.body.i_crit_edge:                    ; preds = %do.end74
  br label %for.body.i

do.end74.if.end76_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end74.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %do.end74.for.body.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %.pn5.i, i32 -160
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %35, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.addr.06.i = getelementptr i8, ptr %.pn5.i, i32 -168
  %36 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.addr.06.i, align 4
  %plat_data.i = getelementptr i8, ptr %.pn5.i, i32 -12
  %38 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %plat_data.i, align 4
  %inv_sel_reg.i = getelementptr inbounds %struct.mtk_iommu_plat_data, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %inv_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inv_sel_reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 50331648) #11, !srcloc !125
  %42 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.addr.06.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 33554432) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %call.i1.i = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 5) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %46 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @m4ulist
  br i1 %cmp.not.i, label %for.inc.i.if.end76_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end76_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.end76:                                         ; preds = %for.inc.i.if.end76_crit_edge, %do.end74.if.end76_crit_edge, %for.end.if.end76_crit_edge
  %47 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.addr.010, align 4
  %add.ptr78 = getelementptr i8, ptr %48, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 0) #11, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tlb_lock, i32 noundef %call13) #11
  br i1 %tobool.not, label %if.end76.for.inc_crit_edge, label %if.then81

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %dev82 = getelementptr i8, ptr %.pn9, i32 -160
  %49 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev82, align 4
  %call.i1 = tail call i32 @__pm_runtime_idle(ptr noundef %50, i32 noundef 5) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.end76.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %51 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @m4ulist
  br i1 %cmp.not, label %for.inc.for.end89_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end89_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end89

for.end89:                                        ; preds = %for.inc.for.end89_crit_edge, %entry.for.end89_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_alloc_resv_region(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_bind(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_imu = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 15
  %call1 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %larb_imu) #11
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_unbind(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_imu = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 15
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %larb_imu) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg1 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !124
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %wr_len_ctrl = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %wr_len_ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wr_len_ctrl, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !124
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reg1, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !124
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %dcm_dis = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %dcm_dis to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dcm_dis, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 272
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !124
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %ctrl_reg = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ctrl_reg, align 4
  %add.ptr17 = getelementptr i8, ptr %3, i32 288
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #11, !srcloc !124
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %int_control0 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %int_control0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %int_control0, align 4
  %add.ptr21 = getelementptr i8, ptr %3, i32 292
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #11, !srcloc !124
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %int_main_control = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 4
  %21 = ptrtoint ptr %int_main_control to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %int_main_control, align 4
  %add.ptr25 = getelementptr i8, ptr %3, i32 276
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #11, !srcloc !124
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %ivrp_paddr = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %ivrp_paddr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ivrp_paddr, align 4
  %add.ptr29 = getelementptr i8, ptr %3, i32 280
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #11, !srcloc !124
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %vld_pa_rng = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 6
  %27 = ptrtoint ptr %vld_pa_rng to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %vld_pa_rng, align 4
  %bclk = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bclk, align 4
  tail call void @clk_disable(ptr noundef %29) #11
  tail call void @clk_unprepare(ptr noundef %29) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg1 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5
  %m4u_dom2 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %m4u_dom2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m4u_dom2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bclk = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev5 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i.ph) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %wr_len_ctrl = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 7
  %10 = ptrtoint ptr %wr_len_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr_len_ctrl, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #11, !srcloc !125
  %13 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg1, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr9 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %15) #11, !srcloc !125
  %dcm_dis = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %dcm_dis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dcm_dis, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr10 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %18) #11, !srcloc !125
  %ctrl_reg = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl_reg, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr11 = getelementptr i8, ptr %5, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %21) #11, !srcloc !125
  %int_control0 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %int_control0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %int_control0, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr12 = getelementptr i8, ptr %5, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %24) #11, !srcloc !125
  %int_main_control = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %int_main_control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %int_main_control, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr13 = getelementptr i8, ptr %5, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %27) #11, !srcloc !125
  %ivrp_paddr = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %ivrp_paddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ivrp_paddr, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr14 = getelementptr i8, ptr %5, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %30) #11, !srcloc !125
  %vld_pa_rng = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 6
  %31 = ptrtoint ptr %vld_pa_rng to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vld_pa_rng, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %add.ptr15 = getelementptr i8, ptr %5, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %33) #11, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %and = and i32 %36, -128
  %37 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %37) #11, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_mtk_iommu__250_1068_mtk_iommu_driver_init6, !1, !"__initcall__kmod_mtk_iommu__250_1068_mtk_iommu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iommu/mtk_iommu.c", i32 1068, i32 1}
!2 = !{ptr @__exitcall_mtk_iommu_driver_exit, !1, !"__exitcall_mtk_iommu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../drivers/iommu/mtk_iommu.c", i32 1070, i32 1}
!5 = !{ptr @__UNIQUE_ID_file252, !6, !"__UNIQUE_ID_file252", i1 false, i1 false}
!6 = !{!"../drivers/iommu/mtk_iommu.c", i32 1071, i32 1}
!7 = !{ptr @__UNIQUE_ID_license253, !6, !"__UNIQUE_ID_license253", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/mtk_iommu.c", i32 1063, i32 11}
!10 = !{ptr @mtk_iommu_driver, !11, !"mtk_iommu_driver", i1 false, i1 false}
!11 = !{!"../drivers/iommu/mtk_iommu.c", i32 1059, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iommu/mtk_iommu.c", i32 791, i32 8}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/mtk_iommu.c", i32 794, i32 8}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iommu/mtk_iommu.c", i32 822, i32 34}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iommu/mtk_iommu.c", i32 828, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iommu/mtk_iommu.c", i32 844, i32 40}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iommu/mtk_iommu.c", i32 860, i32 44}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iommu/mtk_iommu.c", i32 873, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtk_iommu_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_iommu_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iommu/mtk_iommu.c", i32 881, i32 10}
!34 = !{ptr @mtk_iommu_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/iommu/mtk_iommu.c", i32 889, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mtk_iommu_ops, !38, !"mtk_iommu_ops", i1 false, i1 false}
!38 = !{!"../drivers/iommu/mtk_iommu.c", i32 659, i32 31}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iommu/mtk_iommu.c", i32 352, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mtk_iommu_get_domain_id._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_iommu_get_domain_id._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iommu/mtk_iommu.c", i32 416, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mtk_iommu_domain_finalise._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_iommu_domain_finalise._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iommu/mtk_iommu.c", i32 748, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mtk_iommu_hw_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtk_iommu_hw_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iommu/mtk_iommu.c", i32 310, i32 3}
!56 = !{ptr @mtk_iommu_isr._rs, !55, !"_rs", i1 false, i1 false}
!57 = !{ptr @__func__.mtk_iommu_isr, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mtk_iommu_isr._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @mtk_iommu_isr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iommu/mtk_iommu.c", i32 375, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mtk_iommu_config.__UNIQUE_ID_ddebug249, !64, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!68 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iommu/mtk_iommu.c", i32 256, i32 4}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mtk_iommu_tlb_flush_range_sync._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_iommu_tlb_flush_range_sync._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iommu/mtk_iommu.c", i32 613, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mtk_iommu_of_xlate._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mtk_iommu_of_xlate._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @m4ulist, !82, !"m4ulist", i1 false, i1 false}
!82 = !{!"../drivers/iommu/mtk_iommu.c", i32 166, i32 8}
!83 = !{ptr @mtk_iommu_com_ops, !84, !"mtk_iommu_com_ops", i1 false, i1 false}
!84 = !{!"../drivers/iommu/mtk_iommu.c", i32 755, i32 42}
!85 = !{ptr @mtk_iommu_of_ids, !86, !"mtk_iommu_of_ids", i1 false, i1 false}
!86 = !{!"../drivers/iommu/mtk_iommu.c", i32 1049, i32 34}
!87 = !{ptr @mt2712_data, !88, !"mt2712_data", i1 false, i1 false}
!88 = !{!"../drivers/iommu/mtk_iommu.c", i32 992, i32 41}
!89 = !{ptr @single_domain, !90, !"single_domain", i1 false, i1 false}
!90 = !{!"../drivers/iommu/mtk_iommu.c", i32 175, i32 43}
!91 = !{ptr @mt6779_data, !92, !"mt6779_data", i1 false, i1 false}
!92 = !{!"../drivers/iommu/mtk_iommu.c", i32 1001, i32 41}
!93 = !{ptr @mt8167_data, !94, !"mt8167_data", i1 false, i1 false}
!94 = !{!"../drivers/iommu/mtk_iommu.c", i32 1010, i32 41}
!95 = !{ptr @mt8173_data, !96, !"mt8173_data", i1 false, i1 false}
!96 = !{!"../drivers/iommu/mtk_iommu.c", i32 1019, i32 41}
!97 = !{ptr @mt8183_data, !98, !"mt8183_data", i1 false, i1 false}
!98 = !{!"../drivers/iommu/mtk_iommu.c", i32 1029, i32 41}
!99 = !{ptr @mt8192_data, !100, !"mt8192_data", i1 false, i1 false}
!100 = !{!"../drivers/iommu/mtk_iommu.c", i32 1038, i32 41}
!101 = !{ptr @mt8192_multi_dom, !102, !"mt8192_multi_dom", i1 false, i1 false}
!102 = !{!"../drivers/iommu/mtk_iommu.c", i32 179, i32 43}
!103 = !{ptr @mtk_iommu_pm_ops, !104, !"mtk_iommu_pm_ops", i1 false, i1 false}
!104 = !{!"../drivers/iommu/mtk_iommu.c", i32 986, i32 32}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iommu/mtk_iommu.c", i32 963, i32 3}
!107 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mtk_iommu_runtime_resume._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @mtk_iommu_runtime_resume._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{i8 0, i8 2}
!121 = !{i64 2148431158}
!122 = !{i64 917758, i64 917783, i64 917805, i64 917821, i64 917833, i64 917853, i64 917877, i64 917893, i64 917905}
!123 = !{i64 2148431346}
!124 = !{i64 6313785}
!125 = !{i64 6313367}
!126 = !{i64 2154762432}
!127 = !{i64 2148221064, i64 2148221069, i64 2148221082, i64 2148221126, i64 2148221160, i64 2148221181}
!128 = !{i64 2154647708}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2154658469}
!131 = !{i64 2154658959}
!132 = !{i64 2154785052}
