; ModuleID = '/llk/IR_all_yes/drivers/iommu/ipmmu-vmsa.c_pt.bc'
source_filename = "../drivers/iommu/ipmmu-vmsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.ipmmu_features = type { i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ipmmu_vmsa_device = type { ptr, ptr, %struct.iommu_device, ptr, ptr, i32, %struct.spinlock, [1 x i32], [16 x ptr], [64 x i8], ptr, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.ipmmu_vmsa_domain = type { ptr, %struct.iommu_domain, %struct.io_pgtable_cfg, ptr, i32, %struct.mutex }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.81 }
%struct.anon.81 = type { [4 x i64], i32 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_ipmmu_vmsa__236_1191_ipmmu_init4 = internal global ptr @ipmmu_init, section ".initcall4.init", align 4
@ipmmu_init.setup_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ipmmu_of_ids = internal constant { [15 x %struct.of_device_id], [708 x i8] } { [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-vmsa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_default }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a774a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a774b1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a774e1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,ipmmu-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipmmu_features_r8a779a0 }, %struct.of_device_id zeroinitializer], [708 x i8] zeroinitializer }, align 32
@ipmmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ipmmu_probe, ptr @ipmmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ipmmu_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipmmu_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@ipmmu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @ipmmu_domain_alloc, ptr @ipmmu_domain_free, ptr @ipmmu_attach_device, ptr @ipmmu_detach_device, ptr @ipmmu_map, ptr null, ptr @ipmmu_unmap, ptr null, ptr @ipmmu_flush_iotlb_all, ptr null, ptr @ipmmu_iotlb_sync, ptr @ipmmu_iova_to_phys, ptr @ipmmu_probe_device, ptr @ipmmu_release_device, ptr @ipmmu_probe_finalize, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipmmu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1075843072, ptr null }, [60 x i8] zeroinitializer }, align 32
@ipmmu_features_default = internal constant { %struct.ipmmu_features, [36 x i8] } { %struct.ipmmu_features { i8 1, i8 0, i32 1, i32 32, i8 1, i8 0, i8 0, i8 1, i32 0, i32 64, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ipmmu_features_rcar_gen3 = internal constant { %struct.ipmmu_features, [36 x i8] } { %struct.ipmmu_features { i8 0, i8 1, i32 8, i32 48, i8 0, i8 1, i8 1, i8 0, i32 0, i32 64, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ipmmu_features_r8a779a0 = internal constant { %struct.ipmmu_features, [36 x i8] } { %struct.ipmmu_features { i8 0, i8 1, i32 16, i32 64, i8 0, i8 1, i8 1, i8 0, i32 65536, i32 4160, i32 12288 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipmmu-vmsa\00", [21 x i8] zeroinitializer }, align 32
@ipmmu_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipmmu_resume_noirq, ptr null, ptr @ipmmu_resume_noirq, ptr null, ptr @ipmmu_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ipmmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1000, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot allocate device data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipmmu_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iommu/ipmmu-vmsa.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipmmu_probe._entry_ptr = internal global ptr @ipmmu_probe._entry, section ".printk_index", align 4
@ipmmu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mmu->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas,ipmmu-main\00", [45 x i8] zeroinitializer }, align 32
@ipmmu_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ipmmu_probe._entry_ptr.10 = internal global ptr @ipmmu_probe._entry.8, section ".printk_index", align 4
@ipmmu_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1066, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IPMMU context 0 is reserved\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ipmmu_probe._entry_ptr.14 = internal global ptr @ipmmu_probe._entry.11, section ".printk_index", align 4
@ipmmu_domain_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipmmu_domain_irq = private unnamed_addr constant [17 x i8] c"ipmmu_domain_irq\00", align 1
@ipmmu_domain_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.ipmmu_domain_irq, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Multiple TLB hits @0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@ipmmu_domain_irq._entry_ptr = internal global ptr @ipmmu_domain_irq._entry, section ".printk_index", align 4
@ipmmu_domain_irq._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipmmu_domain_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.ipmmu_domain_irq, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Page Table Walk Abort @0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@ipmmu_domain_irq._entry_ptr.20 = internal global ptr @ipmmu_domain_irq._entry.18, section ".printk_index", align 4
@ipmmu_domain_irq._rs.21 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipmmu_domain_irq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ipmmu_domain_irq, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unhandled fault: status 0x%08x iova 0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@ipmmu_domain_irq._entry_ptr.24 = internal global ptr @ipmmu_domain_irq._entry.22, section ".printk_index", align 4
@ipmmu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&domain->mutex\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipmmu_tlb_sync._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipmmu_tlb_sync = private unnamed_addr constant [15 x i8] c"ipmmu_tlb_sync\00", align 1
@ipmmu_tlb_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.ipmmu_tlb_sync, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TLB sync timed out -- MMU may be deadlocked\0A\00", [51 x i8] zeroinitializer }, align 32
@ipmmu_tlb_sync._entry_ptr = internal global ptr @ipmmu_tlb_sync._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ipmmu_attach_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot attach to IPMMU\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipmmu_attach_device\00", [44 x i8] zeroinitializer }, align 32
@ipmmu_attach_device._entry_ptr = internal global ptr @ipmmu_attach_device._entry, section ".printk_index", align 4
@ipmmu_attach_device._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to initialize IPMMU context\0A\00", [60 x i8] zeroinitializer }, align 32
@ipmmu_attach_device._entry_ptr.31 = internal global ptr @ipmmu_attach_device._entry.29, section ".printk_index", align 4
@ipmmu_attach_device._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 624, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Using IPMMU context %u\0A\00", [40 x i8] zeroinitializer }, align 32
@ipmmu_attach_device._entry_ptr.34 = internal global ptr @ipmmu_attach_device._entry.32, section ".printk_index", align 4
@ipmmu_attach_device._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't attach IPMMU %s to domain on IPMMU %s\0A\00", [51 x i8] zeroinitializer }, align 32
@ipmmu_attach_device._entry_ptr.37 = internal global ptr @ipmmu_attach_device._entry.35, section ".printk_index", align 4
@ipmmu_attach_device._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 635, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Reusing IPMMU context %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ipmmu_attach_device._entry_ptr.40 = internal global ptr @ipmmu_attach_device._entry.38, section ".printk_index", align 4
@ipmmu_flush_ops = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @ipmmu_tlb_flush_all, ptr @ipmmu_tlb_flush, ptr null }, [20 x i8] zeroinitializer }, align 32
@ipmmu_probe_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't create IOMMU mapping - DMA-OPS will not work\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipmmu_probe_finalize\00", [43 x i8] zeroinitializer }, align 32
@ipmmu_probe_finalize._entry_ptr = internal global ptr @ipmmu_probe_finalize._entry, section ".printk_index", align 4
@ipmmu_init_arm_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create ARM IOMMU mapping\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipmmu_init_arm_mapping\00", [41 x i8] zeroinitializer }, align 32
@ipmmu_init_arm_mapping._entry_ptr = internal global ptr @ipmmu_init_arm_mapping._entry, section ".printk_index", align 4
@ipmmu_init_arm_mapping._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 812, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to attach device to VA mapping\0A\00", [57 x i8] zeroinitializer }, align 32
@ipmmu_init_arm_mapping._entry_ptr.47 = internal global ptr @ipmmu_init_arm_mapping._entry.45, section ".printk_index", align 4
@soc_needs_opt_in = internal constant { [3 x %struct.soc_device_attribute], [44 x i8] } { [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.49, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@soc_denylist = internal constant { [5 x %struct.soc_device_attribute], [52 x i8] } { [5 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.50, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.51, ptr null, ptr @.str.52, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.53, ptr null, ptr @.str.52, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.54, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"R-Car Gen3\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RZ/G2\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r8a774a1\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES2.*\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7796\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ee100000.mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ee120000.mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ee140000.mmc\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ee160000.mmc\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"ipmmu_init.setup_done\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"ipmmu_of_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 943, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"ipmmu_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1154, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"ipmmu_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 869, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"ipmmu_features_default\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 901, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"ipmmu_features_rcar_gen3\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 915, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"ipmmu_features_r8a779a0\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 929, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1156, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"ipmmu_pm\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1146, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1000, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1005, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1039, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1059, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 1066, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 517, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 520, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 535, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 581, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 262, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 609, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 620, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 623, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 631, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 635, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"ipmmu_flush_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 327, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 846, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 801, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 812, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"soc_needs_opt_in\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 720, i32 42 }
@___asan_gen_.234 = private unnamed_addr constant [13 x i8] c"soc_denylist\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 726, i32 42 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 721, i32 14 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 722, i32 14 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 727, i32 14 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 728, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 728, i32 14 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 729, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 730, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 735, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 736, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 737, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [30 x i8] c"../drivers/iommu/ipmmu-vmsa.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 738, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__initcall__kmod_ipmmu_vmsa__236_1191_ipmmu_init4, ptr @ipmmu_attach_device._entry, ptr @ipmmu_attach_device._entry.29, ptr @ipmmu_attach_device._entry.32, ptr @ipmmu_attach_device._entry.35, ptr @ipmmu_attach_device._entry.38, ptr @ipmmu_attach_device._entry_ptr, ptr @ipmmu_attach_device._entry_ptr.31, ptr @ipmmu_attach_device._entry_ptr.34, ptr @ipmmu_attach_device._entry_ptr.37, ptr @ipmmu_attach_device._entry_ptr.40, ptr @ipmmu_domain_irq._entry, ptr @ipmmu_domain_irq._entry.18, ptr @ipmmu_domain_irq._entry.22, ptr @ipmmu_domain_irq._entry_ptr, ptr @ipmmu_domain_irq._entry_ptr.20, ptr @ipmmu_domain_irq._entry_ptr.24, ptr @ipmmu_init_arm_mapping._entry, ptr @ipmmu_init_arm_mapping._entry.45, ptr @ipmmu_init_arm_mapping._entry_ptr, ptr @ipmmu_init_arm_mapping._entry_ptr.47, ptr @ipmmu_probe._entry, ptr @ipmmu_probe._entry.11, ptr @ipmmu_probe._entry.8, ptr @ipmmu_probe._entry_ptr, ptr @ipmmu_probe._entry_ptr.10, ptr @ipmmu_probe._entry_ptr.14, ptr @ipmmu_probe_finalize._entry, ptr @ipmmu_probe_finalize._entry_ptr, ptr @ipmmu_tlb_sync._entry, ptr @ipmmu_tlb_sync._entry_ptr, ptr @ipmmu_init.setup_done, ptr @ipmmu_of_ids, ptr @ipmmu_driver, ptr @ipmmu_ops, ptr @ipmmu_features_default, ptr @ipmmu_features_rcar_gen3, ptr @ipmmu_features_r8a779a0, ptr @.str, ptr @ipmmu_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ipmmu_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @ipmmu_domain_irq._rs, ptr @.str.15, ptr @.str.16, ptr @ipmmu_domain_irq._rs.17, ptr @.str.19, ptr @ipmmu_domain_irq._rs.21, ptr @.str.23, ptr @ipmmu_domain_alloc.__key, ptr @.str.25, ptr @ipmmu_tlb_sync._rs, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @ipmmu_flush_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @soc_needs_opt_in, ptr @soc_denylist, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_init.setup_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_of_ids to i32), i32 2940, i32 3648, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_features_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_features_rcar_gen3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_features_r8a779a0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_irq._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_irq._rs.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_irq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_tlb_sync._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_tlb_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_attach_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_attach_device._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_attach_device._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_attach_device._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_attach_device._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_flush_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_probe_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_init_arm_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmmu_init_arm_mapping._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_needs_opt_in to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_denylist to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b14 = load i1, ptr @ipmmu_init.setup_done, align 1
  br i1 %.b14, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ipmmu_of_ids, ptr noundef null) #10
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @of_node_put(ptr noundef nonnull %call.i) #10
  %call4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ipmmu_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call7 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #10
  br i1 %call7, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @ipmmu_ops) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  store i1 true, ptr @ipmmu_init.setup_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %root.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ipmmu_probe.__key, i16 noundef signext 3) #10
  %ctx = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ctx, align 4
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %features = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %features, align 4
  %utlb_ctx = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 9
  %num_utlbs = getelementptr inbounds %struct.ipmmu_features, ptr %call9, i32 0, i32 3
  %3 = ptrtoint ptr %num_utlbs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_utlbs, align 4
  %5 = call ptr @memset(ptr %utlb_ctx, i32 255, i32 %4)
  %call.i147 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 1099511627775) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp.i = icmp eq i32 %call.i147, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.dma_set_mask_and_coherent.exit_crit_edge

if.end.dma_set_mask_and_coherent.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 1099511627775) #10
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %if.end.dma_set_mask_and_coherent.exit_crit_edge
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call14) #10
  %base = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %base, align 4
  %cmp.i148 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then19, label %if.end22

if.then19:                                        ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %dma_set_mask_and_coherent.exit
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %features, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool24.not = icmp eq i8 %11, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call16, i32 2048
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %base, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %features, align 4
  %number_of_contexts = getelementptr inbounds %struct.ipmmu_features, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %number_of_contexts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number_of_contexts, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 16)
  %num_ctx = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %num_ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_ctx, align 4
  %has_cache_leaf_nodes = getelementptr inbounds %struct.ipmmu_features, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %has_cache_leaf_nodes to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_cache_leaf_nodes, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool30.not = icmp eq i8 %20, 0
  br i1 %tobool30.not, label %if.end27.if.end37_crit_edge, label %lor.lhs.false

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

lor.lhs.false:                                    ; preds = %if.end27
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call32 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %lor.lhs.false.if.end37_crit_edge, label %if.else

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root.i) #10
  %23 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %root.i, align 4
  %call.i149 = call i32 @driver_for_each_device(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @ipmmu_driver, i32 0, i32 5), ptr noundef null, ptr noundef nonnull %root.i, ptr noundef nonnull @__ipmmu_check_device) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp.i150 = icmp eq i32 %call.i149, 0
  br i1 %cmp.i150, label %cond.true.i, label %if.else.ipmmu_find_root.exit_crit_edge

if.else.ipmmu_find_root.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_find_root.exit

cond.true.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %root.i, align 4
  br label %ipmmu_find_root.exit

ipmmu_find_root.exit:                             ; preds = %cond.true.i, %if.else.ipmmu_find_root.exit_crit_edge
  %cond.i = phi ptr [ %25, %cond.true.i ], [ null, %if.else.ipmmu_find_root.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root.i) #10
  br label %if.end37

if.end37:                                         ; preds = %ipmmu_find_root.exit, %lor.lhs.false.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %cond.i.sink = phi ptr [ %cond.i, %ipmmu_find_root.exit ], [ %call.i, %lor.lhs.false.if.end37_crit_edge ], [ %call.i, %if.end27.if.end37_crit_edge ]
  %root36 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %root36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cond.i.sink, ptr %root36, align 4
  %root38 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 3
  %tobool39.not = icmp eq ptr %cond.i.sink, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %cmp.i152 = icmp eq ptr %cond.i.sink, %call.i
  br i1 %cmp.i152, label %if.then43, label %if.end41.if.end69_crit_edge

if.end41.if.end69_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then43:                                        ; preds = %if.end41
  %call44 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then43.cleanup_crit_edge, label %if.end47

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.then43
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.dev_name.exit_crit_edge

if.end47.dev_name.exit_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end47.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %if.end47.dev_name.exit_crit_edge ]
  %call.i153 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call44, ptr noundef nonnull @ipmmu_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp52 = icmp slt i32 %call.i153, 0
  br i1 %cmp52, label %do.end56, label %if.end58

do.end56:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call44) #13
  br label %cleanup

if.end58:                                         ; preds = %dev_name.exit
  %31 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4.not.i = icmp eq i32 %32, 0
  br i1 %cmp4.not.i, label %if.end58.ipmmu_device_reset.exit_crit_edge, label %if.end58.for.body.i_crit_edge

if.end58.for.body.i_crit_edge:                    ; preds = %if.end58
  br label %for.body.i

if.end58.ipmmu_device_reset.exit_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_device_reset.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end58.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end58.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %features, align 4
  %ctx_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %ctx_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctx_offset_base.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.05.i)
  %cmp.i.i.i = icmp ugt i32 %i.05.i, 7
  %add.i.i.i = add i32 %36, 1536
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i, i32 %36
  %ctx_offset_stride.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %34, i32 0, i32 9
  %37 = ptrtoint ptr %ctx_offset_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctx_offset_stride.i.i.i, align 4
  %mul.i.i.i = mul i32 %38, %i.05.i
  %add3.i.i.i = add i32 %mul.i.i.i, %spec.select.i.i.i
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 %add3.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !144
  %inc.i = add nuw i32 %i.05.i, 1
  %41 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_ctx, align 4
  %cmp.i154 = icmp ult i32 %inc.i, %42
  br i1 %cmp.i154, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ipmmu_device_reset.exit_crit_edge

for.body.i.ipmmu_device_reset.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_device_reset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ipmmu_device_reset.exit:                          ; preds = %for.body.i.ipmmu_device_reset.exit_crit_edge, %if.end58.ipmmu_device_reset.exit_crit_edge
  %43 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %features, align 4
  %reserved_context = getelementptr inbounds %struct.ipmmu_features, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %reserved_context to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reserved_context, align 2, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool60.not = icmp eq i8 %46, 0
  br i1 %tobool60.not, label %ipmmu_device_reset.exit.if.end69_crit_edge, label %do.end64

ipmmu_device_reset.exit.if.end69_crit_edge:       ; preds = %ipmmu_device_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.end64:                                         ; preds = %ipmmu_device_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  call void @_set_bit(i32 noundef 0, ptr noundef %ctx) #10
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %ipmmu_device_reset.exit.if.end69_crit_edge, %if.end41.if.end69_crit_edge
  %47 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %features, align 4
  %has_cache_leaf_nodes71 = getelementptr inbounds %struct.ipmmu_features, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %has_cache_leaf_nodes71 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %has_cache_leaf_nodes71, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool72.not = icmp eq i8 %50, 0
  br i1 %tobool72.not, label %if.end69.if.then75_crit_edge, label %lor.lhs.false73

if.end69.if.then75_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

lor.lhs.false73:                                  ; preds = %if.end69
  %51 = ptrtoint ptr %root38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %root38, align 4
  %cmp.i156 = icmp eq ptr %52, %call.i
  br i1 %cmp.i156, label %lor.lhs.false73.if.end89_crit_edge, label %lor.lhs.false73.if.then75_crit_edge

lor.lhs.false73.if.then75_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

lor.lhs.false73.if.end89_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then75:                                        ; preds = %lor.lhs.false73.if.then75_crit_edge, %if.end69.if.then75_crit_edge
  %iommu = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %call.i, i32 0, i32 2
  %init_name.i157 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %init_name.i157 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i157, align 8
  %tobool.not.i158 = icmp eq ptr %54, null
  br i1 %tobool.not.i158, label %if.end.i159, label %if.then75.dev_name.exit161_crit_edge

if.then75.dev_name.exit161_crit_edge:             ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit161

if.end.i159:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  br label %dev_name.exit161

dev_name.exit161:                                 ; preds = %if.end.i159, %if.then75.dev_name.exit161_crit_edge
  %retval.0.i160 = phi ptr [ %56, %if.end.i159 ], [ %54, %if.then75.dev_name.exit161_crit_edge ]
  %call79 = call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %dev, ptr noundef null, ptr noundef %retval.0.i160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %dev_name.exit161.cleanup_crit_edge

dev_name.exit161.cleanup_crit_edge:               ; preds = %dev_name.exit161
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end82:                                         ; preds = %dev_name.exit161
  %call85 = call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @ipmmu_ops, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end82.if.end89_crit_edge, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.end89:                                         ; preds = %if.end82.if.end89_crit_edge, %lor.lhs.false73.if.end89_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end82.cleanup_crit_edge, %dev_name.exit161.cleanup_crit_edge, %do.end56, %if.then43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then19, %do.end
  %retval.0 = phi i32 [ %7, %if.then19 ], [ %call.i153, %do.end56 ], [ 0, %if.end89 ], [ -12, %do.end ], [ -517, %if.end37.cleanup_crit_edge ], [ %call44, %if.then43.cleanup_crit_edge ], [ %call79, %dev_name.exit161.cleanup_crit_edge ], [ %call85, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iommu = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 2
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #10
  tail call void @iommu_device_unregister(ptr noundef %iommu) #10
  %mapping = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  tail call void @arm_iommu_release_mapping(ptr noundef %3) #10
  %num_ctx.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %entry.ipmmu_device_reset.exit_crit_edge, label %for.body.lr.ph.i

entry.ipmmu_device_reset.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_device_reset.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %features.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 4
  %base.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %features.i.i.i, align 4
  %ctx_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ctx_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx_offset_base.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.05.i)
  %cmp.i.i.i = icmp ugt i32 %i.05.i, 7
  %add.i.i.i = add i32 %9, 1536
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i, i32 %9
  %ctx_offset_stride.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %ctx_offset_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_offset_stride.i.i.i, align 4
  %mul.i.i.i = mul i32 %11, %i.05.i
  %add3.i.i.i = add i32 %mul.i.i.i, %spec.select.i.i.i
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %add3.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !144
  %inc.i = add nuw i32 %i.05.i, 1
  %14 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ctx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ipmmu_device_reset.exit_crit_edge

for.body.i.ipmmu_device_reset.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_device_reset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ipmmu_device_reset.exit:                          ; preds = %for.body.i.ipmmu_device_reset.exit_crit_edge, %entry.ipmmu_device_reset.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_irq(i32 noundef %irq, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %dev, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %num_ctx = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp524.not = icmp eq i32 %1, 0
  br i1 %cmp524.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %status.025 = phi i32 [ %status.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipmmu_vmsa_device, ptr %dev, i32 0, i32 8, i32 %i.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %root.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i.i, align 4
  %context_id.i.i = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %features.i.i.i.i, align 4
  %ctx_offset_base.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %ctx_offset_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_offset_base.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp.i.i.i.i = icmp ugt i32 %9, 7
  %add.i.i.i.i = add i32 %13, 1536
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %add.i.i.i.i, i32 %13
  %ctx_offset_stride.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %ctx_offset_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx_offset_stride.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %15, %9
  %add2.i.i.i.i = add i32 %mul.i.i.i.i, 32
  %add3.i.i.i.i = add i32 %add2.i.i.i.i, %spec.select.i.i.i.i
  %base.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 %add3.i.i.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !145
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %and.i = and i32 %19, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.end.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %root.i66.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %root.i66.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root.i66.i, align 4
  %24 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i68.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %features.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %features.i.i.i68.i, align 4
  %ctx_offset_base.i.i.i69.i = getelementptr inbounds %struct.ipmmu_features, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %ctx_offset_base.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_offset_base.i.i.i69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp.i.i.i70.i = icmp ugt i32 %25, 7
  %add.i.i.i71.i = add i32 %29, 1536
  %spec.select.i.i.i72.i = select i1 %cmp.i.i.i70.i, i32 %add.i.i.i71.i, i32 %29
  %ctx_offset_stride.i.i.i73.i = getelementptr inbounds %struct.ipmmu_features, ptr %27, i32 0, i32 9
  %30 = ptrtoint ptr %ctx_offset_stride.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctx_offset_stride.i.i.i73.i, align 4
  %mul.i.i.i74.i = mul i32 %31, %25
  %add2.i.i.i75.i = add i32 %mul.i.i.i74.i, 48
  %add3.i.i.i76.i = add i32 %add2.i.i.i75.i, %spec.select.i.i.i72.i
  %base.i.i.i77.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %base.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i77.i, align 4
  %add.ptr.i.i.i78.i = getelementptr i8, ptr %33, i32 %add3.i.i.i76.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i78.i) #10, !srcloc !145
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %root.i79.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %root.i79.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %root.i79.i, align 4
  %40 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i81.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %39, i32 0, i32 4
  %42 = ptrtoint ptr %features.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %features.i.i.i81.i, align 4
  %ctx_offset_base.i.i.i82.i = getelementptr inbounds %struct.ipmmu_features, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %ctx_offset_base.i.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctx_offset_base.i.i.i82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp.i.i.i83.i = icmp ugt i32 %41, 7
  %add.i.i.i84.i = add i32 %45, 1536
  %spec.select.i.i.i85.i = select i1 %cmp.i.i.i83.i, i32 %add.i.i.i84.i, i32 %45
  %ctx_offset_stride.i.i.i86.i = getelementptr inbounds %struct.ipmmu_features, ptr %43, i32 0, i32 9
  %46 = ptrtoint ptr %ctx_offset_stride.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctx_offset_stride.i.i.i86.i, align 4
  %mul.i.i.i87.i = mul i32 %47, %41
  %add2.i.i.i88.i = add i32 %mul.i.i.i87.i, 32
  %add3.i.i.i89.i = add i32 %add2.i.i.i88.i, %spec.select.i.i.i85.i
  %base.i.i.i90.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %base.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i90.i, align 4
  %add.ptr.i.i.i91.i = getelementptr i8, ptr %49, i32 %add3.i.i.i89.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i91.i, i32 0) #10, !srcloc !144
  %and3.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end13.i_crit_edge, label %do.body.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipmmu_domain_irq._rs, ptr noundef nonnull @__func__.ipmmu_domain_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.if.end13.i_crit_edge, label %do.end.i

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.16, i32 noundef %35) #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i, %do.body.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %and14.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end28.i_crit_edge, label %do.body17.i

if.end13.i.if.end28.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.body17.i:                                      ; preds = %if.end13.i
  %call18.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipmmu_domain_irq._rs.17, ptr noundef nonnull @__func__.ipmmu_domain_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.if.end28.i_crit_edge, label %do.end23.i

do.body17.i.if.end28.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.end23.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef %35) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end23.i, %do.body17.i.if.end28.i_crit_edge, %if.end13.i.if.end28.i_crit_edge
  %and29.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.for.inc_crit_edge, label %if.end32.i

if.end28.i.for.inc_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end32.i:                                       ; preds = %if.end28.i
  %io_domain.i = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  %call34.i = tail call i32 @report_iommu_fault(ptr noundef %io_domain.i, ptr noundef %55, i32 noundef %35, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.for.inc_crit_edge, label %do.body38.i

if.end32.i.for.inc_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body38.i:                                      ; preds = %if.end32.i
  %call39.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipmmu_domain_irq._rs.21, ptr noundef nonnull @__func__.ipmmu_domain_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.for.inc_crit_edge, label %do.end44.i

do.body38.i.for.inc_crit_edge:                    ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end44.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.23, i32 noundef %19, i32 noundef %35) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end44.i, %do.body38.i.for.inc_crit_edge, %if.end32.i.for.inc_crit_edge, %if.end28.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %status.1 = phi i32 [ %status.025, %for.body.for.inc_crit_edge ], [ %status.025, %if.end.for.inc_crit_edge ], [ %status.025, %if.end28.i.for.inc_crit_edge ], [ 1, %if.end32.i.for.inc_crit_edge ], [ 1, %do.end44.i ], [ 1, %do.body38.i.for.inc_crit_edge ]
  %inc = add nuw i32 %i.026, 1
  %58 = ptrtoint ptr %num_ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_ctx, align 4
  %cmp5 = icmp ult i32 %inc, %59
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %status.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %status.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret i32 %status.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__ipmmu_check_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %root.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 4
  %cmp.i = icmp eq ptr %3, %1
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_resume_noirq(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %root.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 4
  %cmp.i = icmp eq ptr %3, %1
  br i1 %cmp.i, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %num_ctx.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %if.then.if.end5_crit_edge, label %for.body.lr.ph.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body.lr.ph.i:                                 ; preds = %if.then
  %features.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 4
  %base.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %features.i.i.i, align 4
  %ctx_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ctx_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx_offset_base.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.05.i)
  %cmp.i.i.i = icmp ugt i32 %i.05.i, 7
  %add.i.i.i = add i32 %9, 1536
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i, i32 %9
  %ctx_offset_stride.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %ctx_offset_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_offset_stride.i.i.i, align 4
  %mul.i.i.i = mul i32 %11, %i.05.i
  %add3.i.i.i = add i32 %mul.i.i.i, %spec.select.i.i.i
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %add3.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !144
  %inc.i = add nuw i32 %i.05.i, 1
  %14 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ctx.i, align 4
  %cmp.i37 = icmp ult i32 %inc.i, %15
  br i1 %cmp.i37, label %for.body.i.for.body.i_crit_edge, label %ipmmu_device_reset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ipmmu_device_reset.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp42.not = icmp eq i32 %15, 0
  br i1 %cmp42.not, label %ipmmu_device_reset.exit.if.end5_crit_edge, label %ipmmu_device_reset.exit.for.body_crit_edge

ipmmu_device_reset.exit.for.body_crit_edge:       ; preds = %ipmmu_device_reset.exit
  br label %for.body

ipmmu_device_reset.exit.if.end5_crit_edge:        ; preds = %ipmmu_device_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ipmmu_device_reset.exit.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %ipmmu_device_reset.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 8, i32 %i.043
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipmmu_domain_setup_context(ptr noundef nonnull %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %18 = ptrtoint ptr %num_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_ctx.i, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end5_crit_edge

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %ipmmu_device_reset.exit.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %features = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %features, align 4
  %num_utlbs44 = getelementptr inbounds %struct.ipmmu_features, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %num_utlbs44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_utlbs44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp745.not = icmp eq i32 %23, 0
  br i1 %cmp745.not, label %if.end5.for.end20_crit_edge, label %if.end5.for.body8_crit_edge

if.end5.for.body8_crit_edge:                      ; preds = %if.end5
  br label %for.body8

if.end5.for.end20_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.body8:                                        ; preds = %for.inc18.for.body8_crit_edge, %if.end5.for.body8_crit_edge
  %i.146 = phi i32 [ %inc19, %for.inc18.for.body8_crit_edge ], [ 0, %if.end5.for.body8_crit_edge ]
  %arrayidx9 = getelementptr %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 9, i32 %i.146
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp10 = icmp eq i8 %25, -1
  br i1 %cmp10, label %for.body8.for.inc18_crit_edge, label %if.end13

for.body8.for.inc18_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18

if.end13:                                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  %conv = sext i8 %25 to i32
  %26 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %root.i, align 4
  %arrayidx17 = getelementptr %struct.ipmmu_vmsa_device, ptr %27, i32 0, i32 8, i32 %conv
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx17, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.146)
  %cmp.i.i = icmp ult i32 %i.146, 32
  %mul.i.i = shl i32 %i.146, 4
  %cond.v.i.i = select i1 %cmp.i.i, i32 776, i32 1032
  %cond.i.i = add i32 %cond.v.i.i, %mul.i.i
  %features.i.i.i38 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %features.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %features.i.i.i38, align 4
  %utlb_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %utlb_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %utlb_offset_base.i.i.i, align 4
  %add.i.i.i39 = add i32 %cond.i.i, %35
  %base.i.i.i40 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %base.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i40, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %37, i32 %add.i.i.i39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i41, i32 0) #10, !srcloc !144
  %context_id.i = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %29, i32 0, i32 4
  %38 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %context_id.i, align 4
  %shl.i = shl i32 %39, 4
  %or2.i = or i32 %shl.i, 3
  %cond.v.i12.i = select i1 %cmp.i.i, i32 768, i32 1024
  %cond.i13.i = add i32 %cond.v.i12.i, %mul.i.i
  %40 = ptrtoint ptr %features.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %features.i.i.i38, align 4
  %utlb_offset_base.i.i15.i = getelementptr inbounds %struct.ipmmu_features, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %utlb_offset_base.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %utlb_offset_base.i.i15.i, align 4
  %add.i.i16.i = add i32 %cond.i13.i, %43
  %44 = ptrtoint ptr %base.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i40, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %45, i32 %add.i.i16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i, i32 %46) #10, !srcloc !144
  %47 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %context_id.i, align 4
  %conv.i = trunc i32 %48 to i8
  %arrayidx.i = getelementptr %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 9, i32 %i.146
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  br label %for.inc18

for.inc18:                                        ; preds = %if.end13, %for.body8.for.inc18_crit_edge
  %inc19 = add nuw i32 %i.146, 1
  %50 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %features, align 4
  %num_utlbs = getelementptr inbounds %struct.ipmmu_features, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %num_utlbs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_utlbs, align 4
  %cmp7 = icmp ult i32 %inc19, %53
  br i1 %cmp7, label %for.inc18.for.body8_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.inc18.for.body8_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %if.end5.for.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmmu_domain_setup_context(ptr noundef readonly %domain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %domain, i32 0, i32 2, i32 7
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %0, align 8
  %conv = trunc i64 %2 to i32
  %3 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain, align 8
  %root.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root.i, align 4
  %context_id.i = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %domain, i32 0, i32 4
  %7 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %context_id.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %features.i.i.i, align 4
  %ctx_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %ctx_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctx_offset_base.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.i.i.i = icmp ugt i32 %8, 7
  %add.i.i.i = add i32 %12, 1536
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %add.i.i.i, i32 %12
  %ctx_offset_stride.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %ctx_offset_stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx_offset_stride.i.i.i, align 4
  %mul.i.i.i = mul i32 %14, %8
  %add2.i.i.i = add i32 %mul.i.i.i, 16
  %add3.i.i.i = add i32 %add2.i.i.i, %spec.select.i.i.i
  %base.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %add3.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %17) #10, !srcloc !144
  %shr = lshr i64 %2, 32
  %conv2 = trunc i64 %shr to i32
  %18 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domain, align 8
  %root.i32 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %root.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root.i32, align 4
  %22 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %context_id.i, align 4
  %features.i.i.i34 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %features.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %features.i.i.i34, align 4
  %ctx_offset_base.i.i.i35 = getelementptr inbounds %struct.ipmmu_features, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %ctx_offset_base.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctx_offset_base.i.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp.i.i.i36 = icmp ugt i32 %23, 7
  %add.i.i.i37 = add i32 %27, 1536
  %spec.select.i.i.i38 = select i1 %cmp.i.i.i36, i32 %add.i.i.i37, i32 %27
  %ctx_offset_stride.i.i.i39 = getelementptr inbounds %struct.ipmmu_features, ptr %25, i32 0, i32 9
  %28 = ptrtoint ptr %ctx_offset_stride.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_offset_stride.i.i.i39, align 4
  %mul.i.i.i40 = mul i32 %29, %23
  %add2.i.i.i41 = add i32 %mul.i.i.i40, 20
  %add3.i.i.i42 = add i32 %add2.i.i.i41, %spec.select.i.i.i38
  %base.i.i.i43 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %base.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i43, align 4
  %add.ptr.i.i.i44 = getelementptr i8, ptr %31, i32 %add3.i.i.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv2) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i44, i32 %32) #10, !srcloc !144
  %33 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domain, align 8
  %features = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %features, align 4
  %twobit_imttbcr_sl0 = getelementptr inbounds %struct.ipmmu_features, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %twobit_imttbcr_sl0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %twobit_imttbcr_sl0, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  %. = select i1 %tobool.not, i32 16, i32 128
  %cache_snoop = getelementptr inbounds %struct.ipmmu_features, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %cache_snoop to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cache_snoop, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not = icmp eq i8 %40, 0
  %or = or i32 %., 13568
  %tmp.1 = select i1 %tobool5.not, i32 %., i32 %or
  %or8 = or i32 %tmp.1, -2147483648
  %root.i45 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %34, i32 0, i32 3
  %41 = ptrtoint ptr %root.i45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %root.i45, align 4
  %43 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %context_id.i, align 4
  %features.i.i.i47 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %features.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %features.i.i.i47, align 4
  %ctx_offset_base.i.i.i48 = getelementptr inbounds %struct.ipmmu_features, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %ctx_offset_base.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctx_offset_base.i.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %44)
  %cmp.i.i.i49 = icmp ugt i32 %44, 7
  %add.i.i.i50 = add i32 %48, 1536
  %spec.select.i.i.i51 = select i1 %cmp.i.i.i49, i32 %add.i.i.i50, i32 %48
  %ctx_offset_stride.i.i.i52 = getelementptr inbounds %struct.ipmmu_features, ptr %46, i32 0, i32 9
  %49 = ptrtoint ptr %ctx_offset_stride.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctx_offset_stride.i.i.i52, align 4
  %mul.i.i.i53 = mul i32 %50, %44
  %add2.i.i.i54 = add i32 %mul.i.i.i53, 8
  %add3.i.i.i55 = add i32 %add2.i.i.i54, %spec.select.i.i.i51
  %base.i.i.i56 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %42, i32 0, i32 1
  %51 = ptrtoint ptr %base.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i56, align 4
  %add.ptr.i.i.i57 = getelementptr i8, ptr %52, i32 %add3.i.i.i55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %or8) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i57, i32 %53) #10, !srcloc !144
  %mair = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %domain, i32 0, i32 2, i32 7, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %mair to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %mair, align 8
  %conv10 = trunc i64 %55 to i32
  %56 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %domain, align 8
  %root.i58 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %root.i58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %root.i58, align 4
  %60 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %context_id.i, align 4
  %features.i.i.i60 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %59, i32 0, i32 4
  %62 = ptrtoint ptr %features.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %features.i.i.i60, align 4
  %ctx_offset_base.i.i.i61 = getelementptr inbounds %struct.ipmmu_features, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %ctx_offset_base.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctx_offset_base.i.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %61)
  %cmp.i.i.i62 = icmp ugt i32 %61, 7
  %add.i.i.i63 = add i32 %65, 1536
  %spec.select.i.i.i64 = select i1 %cmp.i.i.i62, i32 %add.i.i.i63, i32 %65
  %ctx_offset_stride.i.i.i65 = getelementptr inbounds %struct.ipmmu_features, ptr %63, i32 0, i32 9
  %66 = ptrtoint ptr %ctx_offset_stride.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctx_offset_stride.i.i.i65, align 4
  %mul.i.i.i66 = mul i32 %67, %61
  %add2.i.i.i67 = add i32 %mul.i.i.i66, 40
  %add3.i.i.i68 = add i32 %add2.i.i.i67, %spec.select.i.i.i64
  %base.i.i.i69 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %59, i32 0, i32 1
  %68 = ptrtoint ptr %base.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i.i69, align 4
  %add.ptr.i.i.i70 = getelementptr i8, ptr %69, i32 %add3.i.i.i68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %70 = tail call i32 @llvm.bswap.i32(i32 %conv10) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i70, i32 %70) #10, !srcloc !144
  %71 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %domain, align 8
  %features12 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %features12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %features12, align 4
  %setup_imbuscr = getelementptr inbounds %struct.ipmmu_features, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %setup_imbuscr to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %setup_imbuscr, align 4, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool13.not = icmp eq i8 %76, 0
  br i1 %tobool13.not, label %entry.if.end15_crit_edge, label %if.then14

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %root.i71 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %72, i32 0, i32 3
  %77 = ptrtoint ptr %root.i71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %root.i71, align 4
  %79 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %context_id.i, align 4
  %features.i.i.i73 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %78, i32 0, i32 4
  %81 = ptrtoint ptr %features.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %features.i.i.i73, align 4
  %ctx_offset_base.i.i.i74 = getelementptr inbounds %struct.ipmmu_features, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %ctx_offset_base.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ctx_offset_base.i.i.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %80)
  %cmp.i.i.i75 = icmp ugt i32 %80, 7
  %add.i.i.i76 = add i32 %84, 1536
  %spec.select.i.i.i77 = select i1 %cmp.i.i.i75, i32 %add.i.i.i76, i32 %84
  %ctx_offset_stride.i.i.i78 = getelementptr inbounds %struct.ipmmu_features, ptr %82, i32 0, i32 9
  %85 = ptrtoint ptr %ctx_offset_stride.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ctx_offset_stride.i.i.i78, align 4
  %mul.i.i.i79 = mul i32 %86, %80
  %add2.i.i.i80 = add i32 %mul.i.i.i79, 12
  %add3.i.i.i81 = add i32 %add2.i.i.i80, %spec.select.i.i.i77
  %base.i.i.i82 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %78, i32 0, i32 1
  %87 = ptrtoint ptr %base.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i.i82, align 4
  %add.ptr.i.i.i83 = getelementptr i8, ptr %88, i32 %add3.i.i.i81
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i83) #10, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %90 = and i32 %89, -117440513
  %91 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %domain, align 8
  %root.i84 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %root.i84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %root.i84, align 4
  %95 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %context_id.i, align 4
  %features.i.i.i86 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %94, i32 0, i32 4
  %97 = ptrtoint ptr %features.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %features.i.i.i86, align 4
  %ctx_offset_base.i.i.i87 = getelementptr inbounds %struct.ipmmu_features, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %ctx_offset_base.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ctx_offset_base.i.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %96)
  %cmp.i.i.i88 = icmp ugt i32 %96, 7
  %add.i.i.i89 = add i32 %100, 1536
  %spec.select.i.i.i90 = select i1 %cmp.i.i.i88, i32 %add.i.i.i89, i32 %100
  %ctx_offset_stride.i.i.i91 = getelementptr inbounds %struct.ipmmu_features, ptr %98, i32 0, i32 9
  %101 = ptrtoint ptr %ctx_offset_stride.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ctx_offset_stride.i.i.i91, align 4
  %mul.i.i.i92 = mul i32 %102, %96
  %add2.i.i.i93 = add i32 %mul.i.i.i92, 12
  %add3.i.i.i94 = add i32 %add2.i.i.i93, %spec.select.i.i.i90
  %base.i.i.i95 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %94, i32 0, i32 1
  %103 = ptrtoint ptr %base.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i.i95, align 4
  %add.ptr.i.i.i96 = getelementptr i8, ptr %104, i32 %add3.i.i.i94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i96, i32 %90) #10, !srcloc !144
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %entry.if.end15_crit_edge
  %105 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %domain, align 8
  %root.i97 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %root.i97 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %root.i97, align 4
  %109 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %context_id.i, align 4
  %features.i.i.i99 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %108, i32 0, i32 4
  %111 = ptrtoint ptr %features.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %features.i.i.i99, align 4
  %ctx_offset_base.i.i.i100 = getelementptr inbounds %struct.ipmmu_features, ptr %112, i32 0, i32 8
  %113 = ptrtoint ptr %ctx_offset_base.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ctx_offset_base.i.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %110)
  %cmp.i.i.i101 = icmp ugt i32 %110, 7
  %add.i.i.i102 = add i32 %114, 1536
  %spec.select.i.i.i103 = select i1 %cmp.i.i.i101, i32 %add.i.i.i102, i32 %114
  %ctx_offset_stride.i.i.i104 = getelementptr inbounds %struct.ipmmu_features, ptr %112, i32 0, i32 9
  %115 = ptrtoint ptr %ctx_offset_stride.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ctx_offset_stride.i.i.i104, align 4
  %mul.i.i.i105 = mul i32 %116, %110
  %add2.i.i.i106 = add i32 %mul.i.i.i105, 32
  %add3.i.i.i107 = add i32 %add2.i.i.i106, %spec.select.i.i.i103
  %base.i.i.i108 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %108, i32 0, i32 1
  %117 = ptrtoint ptr %base.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i.i108, align 4
  %add.ptr.i.i.i109 = getelementptr i8, ptr %118, i32 %add3.i.i.i107
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i109) #10, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %120 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %domain, align 8
  %root.i110 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %root.i110 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %root.i110, align 4
  %124 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %context_id.i, align 4
  %features.i.i.i112 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %123, i32 0, i32 4
  %126 = ptrtoint ptr %features.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %features.i.i.i112, align 4
  %ctx_offset_base.i.i.i113 = getelementptr inbounds %struct.ipmmu_features, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %ctx_offset_base.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ctx_offset_base.i.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %125)
  %cmp.i.i.i114 = icmp ugt i32 %125, 7
  %add.i.i.i115 = add i32 %129, 1536
  %spec.select.i.i.i116 = select i1 %cmp.i.i.i114, i32 %add.i.i.i115, i32 %129
  %ctx_offset_stride.i.i.i117 = getelementptr inbounds %struct.ipmmu_features, ptr %127, i32 0, i32 9
  %130 = ptrtoint ptr %ctx_offset_stride.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ctx_offset_stride.i.i.i117, align 4
  %mul.i.i.i118 = mul i32 %131, %125
  %add2.i.i.i119 = add i32 %mul.i.i.i118, 32
  %add3.i.i.i120 = add i32 %add2.i.i.i119, %spec.select.i.i.i116
  %base.i.i.i121 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %123, i32 0, i32 1
  %132 = ptrtoint ptr %base.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i.i121, align 4
  %add.ptr.i.i.i122 = getelementptr i8, ptr %133, i32 %add3.i.i.i120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i122, i32 %119) #10, !srcloc !144
  %134 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %domain, align 8
  %root.i123 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %root.i123 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %root.i123, align 4
  %cmp.not.i = icmp eq ptr %135, %137
  br i1 %cmp.not.i, label %if.end15.ipmmu_ctx_write_all.exit_crit_edge, label %if.then.i

if.end15.ipmmu_ctx_write_all.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_ctx_write_all.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %context_id.i, align 4
  %features.i.i.i125 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %135, i32 0, i32 4
  %140 = ptrtoint ptr %features.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %features.i.i.i125, align 4
  %ctx_offset_base.i.i.i126 = getelementptr inbounds %struct.ipmmu_features, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %ctx_offset_base.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ctx_offset_base.i.i.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %139)
  %cmp.i.i.i127 = icmp ugt i32 %139, 7
  %add.i.i.i128 = add i32 %143, 1536
  %spec.select.i.i.i129 = select i1 %cmp.i.i.i127, i32 %add.i.i.i128, i32 %143
  %ctx_offset_stride.i.i.i130 = getelementptr inbounds %struct.ipmmu_features, ptr %141, i32 0, i32 9
  %144 = ptrtoint ptr %ctx_offset_stride.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ctx_offset_stride.i.i.i130, align 4
  %mul.i.i.i131 = mul i32 %145, %139
  %add3.i.i.i132 = add i32 %mul.i.i.i131, %spec.select.i.i.i129
  %base.i.i.i133 = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %135, i32 0, i32 1
  %146 = ptrtoint ptr %base.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i.i133, align 4
  %add.ptr.i.i.i134 = getelementptr i8, ptr %147, i32 %add3.i.i.i132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i134, i32 117440512) #10, !srcloc !144
  br label %ipmmu_ctx_write_all.exit

ipmmu_ctx_write_all.exit:                         ; preds = %if.then.i, %if.end15.ipmmu_ctx_write_all.exit_crit_edge
  %148 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %domain, align 8
  %root4.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %root4.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %root4.i, align 4
  %152 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %context_id.i, align 4
  %features.i.i1.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %151, i32 0, i32 4
  %154 = ptrtoint ptr %features.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %features.i.i1.i, align 4
  %ctx_offset_base.i.i2.i = getelementptr inbounds %struct.ipmmu_features, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %ctx_offset_base.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ctx_offset_base.i.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %153)
  %cmp.i.i3.i = icmp ugt i32 %153, 7
  %add.i.i4.i = add i32 %157, 1536
  %spec.select.i.i5.i = select i1 %cmp.i.i3.i, i32 %add.i.i4.i, i32 %157
  %ctx_offset_stride.i.i6.i = getelementptr inbounds %struct.ipmmu_features, ptr %155, i32 0, i32 9
  %158 = ptrtoint ptr %ctx_offset_stride.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ctx_offset_stride.i.i6.i, align 4
  %mul.i.i7.i = mul i32 %159, %153
  %add3.i.i8.i = add i32 %mul.i.i7.i, %spec.select.i.i5.i
  %base.i.i9.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %151, i32 0, i32 1
  %160 = ptrtoint ptr %base.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %161, i32 %add3.i.i8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 117440512) #10, !srcloc !144
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipmmu_domain_alloc(i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 3, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 216) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @ipmmu_domain_alloc.__key) #10
  %io_domain = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %call7.i.i, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %io_domain, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_domain_free(ptr noundef %io_domain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %io_domain, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ipmmu_domain_destroy_context.exit_crit_edge, label %if.end.i

entry.ipmmu_domain_destroy_context.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_domain_destroy_context.exit

if.end.i:                                         ; preds = %entry
  %root.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, %3
  br i1 %cmp.not.i.i, label %if.end.i.ipmmu_ctx_write_all.exit.i_crit_edge, label %if.then.i.i

if.end.i.ipmmu_ctx_write_all.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_ctx_write_all.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %context_id.i.i = getelementptr i8, ptr %io_domain, i32 112
  %4 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %features.i.i.i.i, align 4
  %ctx_offset_base.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ctx_offset_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx_offset_base.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i.i.i.i = icmp ugt i32 %5, 7
  %add.i.i.i.i = add i32 %9, 1536
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %add.i.i.i.i, i32 %9
  %ctx_offset_stride.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %ctx_offset_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_offset_stride.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %11, %5
  %add3.i.i.i.i = add i32 %mul.i.i.i.i, %spec.select.i.i.i.i
  %base.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 %add3.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 33554432) #10, !srcloc !144
  br label %ipmmu_ctx_write_all.exit.i

ipmmu_ctx_write_all.exit.i:                       ; preds = %if.then.i.i, %if.end.i.ipmmu_ctx_write_all.exit.i_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %root4.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %root4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root4.i.i, align 4
  %context_id5.i.i = getelementptr i8, ptr %io_domain, i32 112
  %18 = ptrtoint ptr %context_id5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %context_id5.i.i, align 4
  %features.i.i1.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %features.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %features.i.i1.i.i, align 4
  %ctx_offset_base.i.i2.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %ctx_offset_base.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctx_offset_base.i.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp.i.i3.i.i = icmp ugt i32 %19, 7
  %add.i.i4.i.i = add i32 %23, 1536
  %spec.select.i.i5.i.i = select i1 %cmp.i.i3.i.i, i32 %add.i.i4.i.i, i32 %23
  %ctx_offset_stride.i.i6.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %21, i32 0, i32 9
  %24 = ptrtoint ptr %ctx_offset_stride.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctx_offset_stride.i.i6.i.i, align 4
  %mul.i.i7.i.i = mul i32 %25, %19
  %add3.i.i8.i.i = add i32 %mul.i.i7.i.i, %spec.select.i.i5.i.i
  %base.i.i9.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %base.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i9.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %27, i32 %add3.i.i8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i, i32 33554432) #10, !srcloc !144
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end16.i.i, %ipmmu_ctx_write_all.exit.i
  %count.0.i.i = phi i32 [ 0, %ipmmu_ctx_write_all.exit.i ], [ %inc.i.i, %if.end16.i.i ]
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %root.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %root.i.i.i, align 4
  %32 = ptrtoint ptr %context_id5.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %context_id5.i.i, align 4
  %features.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %features.i.i.i.i.i, align 4
  %ctx_offset_base.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %ctx_offset_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctx_offset_base.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp.i.i.i.i.i = icmp ugt i32 %33, 7
  %add.i.i.i.i.i = add i32 %37, 1536
  %spec.select.i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 %add.i.i.i.i.i, i32 %37
  %ctx_offset_stride.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %35, i32 0, i32 9
  %38 = ptrtoint ptr %ctx_offset_stride.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctx_offset_stride.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %39, %33
  %add3.i.i.i.i.i = add i32 %mul.i.i.i.i.i, %spec.select.i.i.i.i.i
  %base.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 1
  %40 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %41, i32 %add3.i.i.i.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #10, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %43 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.ipmmu_tlb_sync.exit.i_crit_edge, label %do.end.i.i

while.cond.i.i.ipmmu_tlb_sync.exit.i_crit_edge:   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_tlb_sync.exit.i

do.end.i.i:                                       ; preds = %while.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !148
  %inc.i.i = add nuw nsw i32 %count.0.i.i, 1
  %cmp.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %cmp.i.i, label %do.body7.i.i, label %if.end16.i.i

do.body7.i.i:                                     ; preds = %do.end.i.i
  %call8.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipmmu_tlb_sync._rs, ptr noundef nonnull @__func__.ipmmu_tlb_sync) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body7.i.i.ipmmu_tlb_sync.exit.i_crit_edge, label %do.end13.i.i

do.body7.i.i.ipmmu_tlb_sync.exit.i_crit_edge:     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_tlb_sync.exit.i

do.end13.i.i:                                     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.26) #13
  br label %ipmmu_tlb_sync.exit.i

if.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  br label %while.cond.i.i

ipmmu_tlb_sync.exit.i:                            ; preds = %do.end13.i.i, %do.body7.i.i.ipmmu_tlb_sync.exit.i_crit_edge, %while.cond.i.i.ipmmu_tlb_sync.exit.i_crit_edge
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %root.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %root.i, align 4
  %53 = ptrtoint ptr %context_id5.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %context_id5.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %52, i32 0, i32 6
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %ctx.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %52, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %54, ptr noundef %ctx.i.i) #10
  %arrayidx.i.i = getelementptr %struct.ipmmu_vmsa_device, ptr %52, i32 0, i32 8, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  br label %ipmmu_domain_destroy_context.exit

ipmmu_domain_destroy_context.exit:                ; preds = %ipmmu_tlb_sync.exit.i, %entry.ipmmu_domain_destroy_context.exit_crit_edge
  %iop = getelementptr i8, ptr %io_domain, i32 108
  %56 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iop, align 8
  tail call void @free_io_pgtable_ops(ptr noundef %57) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_attach_device(ptr noundef %io_domain, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %to_ipmmu.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

to_ipmmu.exit:                                    ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %io_domain, i32 -4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %to_ipmmu.exit.do.end_crit_edge, label %if.end

to_ipmmu.exit.do.end_crit_edge:                   ; preds = %to_ipmmu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %to_ipmmu.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end:                                           ; preds = %to_ipmmu.exit
  %mutex = getelementptr i8, ptr %io_domain, i32 116
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then5, label %if.else17

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %add.ptr.i, align 8
  %cfg.i = getelementptr i8, ptr %io_domain, i32 36
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %cfg.i, align 8
  %pgsize_bitmap.i = getelementptr i8, ptr %io_domain, i32 40
  %10 = ptrtoint ptr %pgsize_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1075843072, ptr %pgsize_bitmap.i, align 4
  %ias.i = getelementptr i8, ptr %io_domain, i32 44
  %11 = ptrtoint ptr %ias.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %ias.i, align 8
  %oas.i = getelementptr i8, ptr %io_domain, i32 48
  %12 = ptrtoint ptr %oas.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 40, ptr %oas.i, align 4
  %tlb.i = getelementptr i8, ptr %io_domain, i32 56
  %13 = ptrtoint ptr %tlb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ipmmu_flush_ops, ptr %tlb.i, align 4
  %aperture_end.i = getelementptr i8, ptr %io_domain, i32 24
  %14 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %aperture_end.i, align 4
  %force_aperture.i = getelementptr i8, ptr %io_domain, i32 28
  %15 = ptrtoint ptr %force_aperture.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %force_aperture.i, align 4
  %coherent_walk.i = getelementptr i8, ptr %io_domain, i32 52
  %16 = ptrtoint ptr %coherent_walk.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %coherent_walk.i, align 8
  %root.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %root.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %iommu_dev.i = getelementptr i8, ptr %io_domain, i32 60
  %21 = ptrtoint ptr %iommu_dev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %iommu_dev.i, align 8
  %22 = load ptr, ptr %root.i, align 4
  %lock.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %22, i32 0, i32 6
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %ctx.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %22, i32 0, i32 7
  %num_ctx.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %num_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ctx.i.i, align 4
  %call5.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %ctx.i.i, i32 noundef %24) #10
  %25 = ptrtoint ptr %num_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ctx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %26)
  %cmp7.not.i.i = icmp eq i32 %call5.i.i, %26
  br i1 %cmp7.not.i.i, label %ipmmu_domain_allocate_context.exit.thread.i, label %ipmmu_domain_allocate_context.exit.i

ipmmu_domain_allocate_context.exit.thread.i:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  br label %do.end11

ipmmu_domain_allocate_context.exit.i:             ; preds = %if.then5
  %arrayidx.i.i = getelementptr %struct.ipmmu_vmsa_device, ptr %22, i32 0, i32 8, i32 %call5.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %arrayidx.i.i, align 4
  tail call void @_set_bit(i32 noundef %call5.i.i, ptr noundef %ctx.i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i, label %ipmmu_domain_allocate_context.exit.i.do.end11_crit_edge, label %if.end.i

ipmmu_domain_allocate_context.exit.i.do.end11_crit_edge: ; preds = %ipmmu_domain_allocate_context.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.end.i:                                         ; preds = %ipmmu_domain_allocate_context.exit.i
  %context_id.i = getelementptr i8, ptr %io_domain, i32 112
  %28 = ptrtoint ptr %context_id.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call5.i.i, ptr %context_id.i, align 4
  %call12.i = tail call ptr @alloc_io_pgtable_ops(i32 noundef 0, ptr noundef %cfg.i, ptr noundef %add.ptr.i) #10
  %iop.i = getelementptr i8, ptr %io_domain, i32 108
  %29 = ptrtoint ptr %iop.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call12.i, ptr %iop.i, align 8
  %tobool.not.i69 = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i69, label %if.then14.i, label %do.end15

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %root16.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %root16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %root16.i, align 4
  %34 = ptrtoint ptr %context_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %context_id.i, align 4
  %lock.i40.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %33, i32 0, i32 6
  %call2.i41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i40.i) #10
  %ctx.i42.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %33, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %35, ptr noundef %ctx.i42.i) #10
  %arrayidx.i43.i = getelementptr %struct.ipmmu_vmsa_device, ptr %33, i32 0, i32 8, i32 %35
  %36 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.i43.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i40.i, i32 noundef %call2.i41.i) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then14.i, %ipmmu_domain_allocate_context.exit.i.do.end11_crit_edge, %ipmmu_domain_allocate_context.exit.thread.i
  %retval.0.i70.ph = phi i32 [ -16, %ipmmu_domain_allocate_context.exit.thread.i ], [ %call5.i.i, %ipmmu_domain_allocate_context.exit.i.do.end11_crit_edge ], [ -22, %if.then14.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %add.ptr.i, align 8
  br label %if.end35.thread

do.end15:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipmmu_domain_setup_context(ptr noundef %add.ptr.i) #10
  br label %if.end35

if.else17:                                        ; preds = %if.end
  %cmp19.not = icmp eq ptr %7, %5
  br i1 %cmp19.not, label %do.end32, label %do.end23

do.end23:                                         ; preds = %if.else17
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i71 = icmp eq ptr %41, null
  br i1 %tobool.not.i71, label %if.end.i72, label %do.end23.dev_name.exit_crit_edge

do.end23.dev_name.exit_crit_edge:                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i72:                                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i72, %do.end23.dev_name.exit_crit_edge
  %retval.0.i73 = phi ptr [ %43, %if.end.i72 ], [ %41, %do.end23.dev_name.exit_crit_edge ]
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  %init_name.i74 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i74, align 8
  %tobool.not.i75 = icmp eq ptr %47, null
  br i1 %tobool.not.i75, label %if.end.i76, label %dev_name.exit.dev_name.exit78_crit_edge

dev_name.exit.dev_name.exit78_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit78

if.end.i76:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  br label %dev_name.exit78

dev_name.exit78:                                  ; preds = %if.end.i76, %dev_name.exit.dev_name.exit78_crit_edge
  %retval.0.i77 = phi ptr [ %49, %if.end.i76 ], [ %47, %dev_name.exit.dev_name.exit78_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i73, ptr noundef %retval.0.i77) #13
  br label %if.end35.thread

do.end32:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  %context_id33 = getelementptr i8, ptr %io_domain, i32 112
  br label %if.end35

if.end35.thread:                                  ; preds = %dev_name.exit78, %do.end11
  %ret.0.ph = phi i32 [ %retval.0.i70.ph, %do.end11 ], [ -22, %dev_name.exit78 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end35:                                         ; preds = %do.end32, %do.end15
  %context_id33.sink = phi ptr [ %context_id33, %do.end32 ], [ %context_id.i, %do.end15 ]
  %.str.39.sink = phi ptr [ @.str.39, %do.end32 ], [ @.str.33, %do.end15 ]
  %50 = ptrtoint ptr %context_id33.sink to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %context_id33.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.39.sink, i32 noundef %51) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %3, i32 0, i32 3
  %52 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp4093.not = icmp eq i32 %53, 0
  br i1 %cmp4093.not, label %if.end35.cleanup_crit_edge, label %for.body.lr.ph

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end35
  %context_id.i79 = getelementptr i8, ptr %io_domain, i32 112
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %3, i32 0, i32 4, i32 %i.094
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %55)
  %cmp.i.i = icmp ult i32 %55, 32
  %mul.i.i = shl i32 %55, 4
  %cond.v.i.i = select i1 %cmp.i.i, i32 776, i32 1032
  %cond.i.i = add i32 %cond.v.i.i, %mul.i.i
  %features.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %features.i.i.i, align 4
  %utlb_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %utlb_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %utlb_offset_base.i.i.i, align 4
  %add.i.i.i = add i32 %cond.i.i, %61
  %base.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !144
  %64 = ptrtoint ptr %context_id.i79 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %context_id.i79, align 4
  %shl.i = shl i32 %65, 4
  %or2.i = or i32 %shl.i, 3
  %cond.v.i12.i = select i1 %cmp.i.i, i32 768, i32 1024
  %cond.i13.i = add i32 %cond.v.i12.i, %mul.i.i
  %66 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %features.i.i.i, align 4
  %utlb_offset_base.i.i15.i = getelementptr inbounds %struct.ipmmu_features, ptr %67, i32 0, i32 10
  %68 = ptrtoint ptr %utlb_offset_base.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %utlb_offset_base.i.i15.i, align 4
  %add.i.i16.i = add i32 %cond.i13.i, %69
  %70 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %71, i32 %add.i.i16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %72 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i, i32 %72) #10, !srcloc !144
  %73 = ptrtoint ptr %context_id.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %context_id.i79, align 4
  %conv.i = trunc i32 %74 to i8
  %arrayidx.i = getelementptr %struct.ipmmu_vmsa_device, ptr %57, i32 0, i32 9, i32 %55
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc = add nuw i32 %i.094, 1
  %76 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_ids, align 4
  %cmp40 = icmp ult i32 %inc, %77
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end35.thread, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %ret.0.ph, %if.end35.thread ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_detach_device(ptr nocapture noundef readonly %io_domain, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_fwspec_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_fwspec_get.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_fwspec_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  br label %dev_iommu_fwspec_get.exit

dev_iommu_fwspec_get.exit:                        ; preds = %if.then.i, %entry.dev_iommu_fwspec_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_fwspec_get.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %io_domain, i32 -4
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %dev_iommu_fwspec_get.exit.for.end_crit_edge, label %dev_iommu_fwspec_get.exit.for.body_crit_edge

dev_iommu_fwspec_get.exit.for.body_crit_edge:     ; preds = %dev_iommu_fwspec_get.exit
  br label %for.body

dev_iommu_fwspec_get.exit.for.end_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dev_iommu_fwspec_get.exit.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %dev_iommu_fwspec_get.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %retval.0.i, i32 0, i32 4, i32 %i.06
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 32
  %mul.i.i = shl i32 %7, 4
  %cond.v.i.i = select i1 %cmp.i.i, i32 768, i32 1024
  %cond.i.i = add i32 %cond.v.i.i, %mul.i.i
  %features.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %features.i.i.i, align 4
  %utlb_offset_base.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %utlb_offset_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %utlb_offset_base.i.i.i, align 4
  %add.i.i.i = add i32 %cond.i.i, %13
  %base.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #10, !srcloc !144
  %arrayidx.i = getelementptr %struct.ipmmu_vmsa_device, ptr %9, i32 0, i32 9, i32 %7
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx.i, align 1
  %inc = add nuw i32 %i.06, 1
  %17 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ids, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dev_iommu_fwspec_get.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_map(ptr noundef readonly %io_domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %io_domain, i32 -4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iop = getelementptr i8, ptr %io_domain, i32 108
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 %3(ptr noundef %1, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_unmap(ptr nocapture noundef readonly %io_domain, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iop = getelementptr i8, ptr %io_domain, i32 108
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap, align 4
  %call2 = tail call i32 %3(ptr noundef %1, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_flush_iotlb_all(ptr nocapture noundef readonly %io_domain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %io_domain, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ipmmu_tlb_flush_all(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_iotlb_sync(ptr nocapture noundef readonly %io_domain, ptr nocapture noundef readnone %gather) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %io_domain, i32 -4
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ipmmu_flush_iotlb_all.exit_crit_edge, label %if.then.i

entry.ipmmu_flush_iotlb_all.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_flush_iotlb_all.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ipmmu_tlb_flush_all(ptr noundef %add.ptr.i.i) #10
  br label %ipmmu_flush_iotlb_all.exit

ipmmu_flush_iotlb_all.exit:                       ; preds = %if.then.i, %entry.ipmmu_flush_iotlb_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_iova_to_phys(ptr nocapture noundef readonly %io_domain, i32 noundef %iova) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iop = getelementptr i8, ptr %io_domain, i32 108
  %0 = ptrtoint ptr %iop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iop, align 8
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iova_to_phys, align 4
  %call2 = tail call i32 %3(ptr noundef %1, i32 noundef %iova) #10
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ipmmu_probe_device(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %to_ipmmu.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

to_ipmmu.exit:                                    ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_ipmmu.exit.cleanup_crit_edge, label %if.end

to_ipmmu.exit.cleanup_crit_edge:                  ; preds = %to_ipmmu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %to_ipmmu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %iommu = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %3, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_ipmmu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %iommu, %if.end ], [ inttoptr (i32 -19 to ptr), %to_ipmmu.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_release_device(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arm_iommu_detach_device(ptr noundef %dev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_probe_finalize(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.to_ipmmu.exit.i_crit_edge, label %if.then.i.i.i

entry.to_ipmmu.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_ipmmu.exit.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i.i, align 4
  br label %to_ipmmu.exit.i

to_ipmmu.exit.i:                                  ; preds = %if.then.i.i.i, %entry.to_ipmmu.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %3, %if.then.i.i.i ], [ null, %entry.to_ipmmu.exit.i_crit_edge ]
  %mapping.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %retval.0.i.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %to_ipmmu.exit.i.if.end8.i_crit_edge

to_ipmmu.exit.i.if.end8.i_crit_edge:              ; preds = %to_ipmmu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i:                                        ; preds = %to_ipmmu.exit.i
  %call2.i = tail call ptr @arm_iommu_create_mapping(ptr noundef nonnull @platform_bus_type, i32 noundef 1073741824, i64 noundef 2147483648) #10
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %mapping.i, align 4
  br label %if.end8.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %retval.0.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.43) #13
  br label %error.i

if.end8.i:                                        ; preds = %cleanup.thread.i, %to_ipmmu.exit.i.if.end8.i_crit_edge
  %9 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapping.i, align 4
  %call10.i = tail call i32 @arm_iommu_attach_device(ptr noundef %dev, ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %do.end14.i, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #13
  br label %error.i

error.i:                                          ; preds = %do.end14.i, %cleanup.i
  %11 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping.i, align 4
  %tobool17.not.i = icmp eq ptr %12, null
  br i1 %tobool17.not.i, label %error.i.do.end_crit_edge, label %if.then18.i

error.i.do.end_crit_edge:                         ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then18.i:                                      ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %12) #10
  br label %do.end

do.end:                                           ; preds = %if.then18.i, %error.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end8.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmmu_of_xlate(ptr noundef %dev, ptr noundef %spec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @soc_device_match(ptr noundef nonnull @soc_needs_opt_in) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @soc_device_match(ptr noundef nonnull @soc_denylist) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.cond.preheader.i:                             ; preds = %if.end.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %dev_name.exit.thread.i

dev_name.exit.1.i:                                ; preds = %dev_name.exit.thread.i
  %call6.1.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(13) @.str.56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %tobool7.not.1.i = icmp eq i32 %call6.1.i, 0
  br i1 %tobool7.not.1.i, label %dev_name.exit.1.i.if.end_crit_edge, label %dev_name.exit.2.thread.i

dev_name.exit.1.i.if.end_crit_edge:               ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dev_name.exit.1.thread.i:                         ; preds = %dev_name.exit.i
  %call6.117.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.117.i)
  %tobool7.not.118.i = icmp eq i32 %call6.117.i, 0
  br i1 %tobool7.not.118.i, label %dev_name.exit.1.thread.i.if.end_crit_edge, label %dev_name.exit.2.i

dev_name.exit.1.thread.i.if.end_crit_edge:        ; preds = %dev_name.exit.1.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dev_name.exit.2.i:                                ; preds = %dev_name.exit.1.thread.i
  %call6.2.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.57) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %tobool7.not.2.i = icmp eq i32 %call6.2.i, 0
  br i1 %tobool7.not.2.i, label %dev_name.exit.2.i.if.end_crit_edge, label %dev_name.exit.2.i.ipmmu_device_is_allowed.exit_crit_edge

dev_name.exit.2.i.ipmmu_device_is_allowed.exit_crit_edge: ; preds = %dev_name.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_device_is_allowed.exit

dev_name.exit.2.i.if.end_crit_edge:               ; preds = %dev_name.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dev_name.exit.2.thread.i:                         ; preds = %dev_name.exit.1.i
  %call6.220.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(13) @.str.57) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.220.i)
  %tobool7.not.221.i = icmp eq i32 %call6.220.i, 0
  br i1 %tobool7.not.221.i, label %dev_name.exit.2.thread.i.if.end_crit_edge, label %dev_name.exit.2.thread.i.ipmmu_device_is_allowed.exit_crit_edge

dev_name.exit.2.thread.i.ipmmu_device_is_allowed.exit_crit_edge: ; preds = %dev_name.exit.2.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_device_is_allowed.exit

dev_name.exit.2.thread.i.if.end_crit_edge:        ; preds = %dev_name.exit.2.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dev_name.exit.i:                                  ; preds = %for.cond.preheader.i
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call6.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %dev_name.exit.i.if.end_crit_edge, label %dev_name.exit.1.thread.i

dev_name.exit.i.if.end_crit_edge:                 ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

dev_name.exit.thread.i:                           ; preds = %for.cond.preheader.i
  %call614.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(13) @.str.55) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call614.i)
  %tobool7.not15.i = icmp eq i32 %call614.i, 0
  br i1 %tobool7.not15.i, label %dev_name.exit.thread.i.if.end_crit_edge, label %dev_name.exit.1.i

dev_name.exit.thread.i.if.end_crit_edge:          ; preds = %dev_name.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ipmmu_device_is_allowed.exit:                     ; preds = %dev_name.exit.2.thread.i.ipmmu_device_is_allowed.exit_crit_edge, %dev_name.exit.2.i.ipmmu_device_is_allowed.exit_crit_edge
  %retval.0.i.3.i = phi ptr [ %1, %dev_name.exit.2.thread.i.ipmmu_device_is_allowed.exit_crit_edge ], [ %3, %dev_name.exit.2.i.ipmmu_device_is_allowed.exit_crit_edge ]
  %call6.3.i = tail call i32 @strcmp(ptr noundef %retval.0.i.3.i, ptr noundef nonnull dereferenceable(13) @.str.58) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3.i)
  %tobool7.not.3.i = icmp eq i32 %call6.3.i, 0
  br i1 %tobool7.not.3.i, label %ipmmu_device_is_allowed.exit.if.end_crit_edge, label %ipmmu_device_is_allowed.exit.return_crit_edge

ipmmu_device_is_allowed.exit.return_crit_edge:    ; preds = %ipmmu_device_is_allowed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

ipmmu_device_is_allowed.exit.if.end_crit_edge:    ; preds = %ipmmu_device_is_allowed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %ipmmu_device_is_allowed.exit.if.end_crit_edge, %dev_name.exit.thread.i.if.end_crit_edge, %dev_name.exit.i.if.end_crit_edge, %dev_name.exit.2.thread.i.if.end_crit_edge, %dev_name.exit.2.i.if.end_crit_edge, %dev_name.exit.1.thread.i.if.end_crit_edge, %dev_name.exit.1.i.if.end_crit_edge, %entry.if.end_crit_edge
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %call1 = tail call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef %args, i32 noundef 1) #10
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %4 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i10 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i10, label %if.end.if.end4_crit_edge, label %to_ipmmu.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

to_ipmmu.exit:                                    ; preds = %if.end
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %to_ipmmu.exit.if.end4_crit_edge, label %to_ipmmu.exit.return_crit_edge

to_ipmmu.exit.return_crit_edge:                   ; preds = %to_ipmmu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

to_ipmmu.exit.if.end4_crit_edge:                  ; preds = %to_ipmmu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %to_ipmmu.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %8 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec, align 4
  %call.i11 = tail call ptr @of_find_device_by_node(ptr noundef %9) #10
  %tobool.not.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i12, label %if.end4.return_crit_edge, label %if.end.i14

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i14:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i11, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %12 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iommu.i.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.dev_iommu, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %priv1.i.i, align 4
  br label %return

return:                                           ; preds = %if.end.i14, %if.end4.return_crit_edge, %to_ipmmu.exit.return_crit_edge, %ipmmu_device_is_allowed.exit.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ -19, %ipmmu_device_is_allowed.exit.return_crit_edge ], [ 0, %to_ipmmu.exit.return_crit_edge ], [ 0, %if.end.i14 ], [ -19, %if.end4.return_crit_edge ], [ -19, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_tlb_flush_all(ptr nocapture noundef readonly %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 8
  %root.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i.i, align 4
  %context_id.i.i = getelementptr inbounds %struct.ipmmu_vmsa_domain, ptr %cookie, i32 0, i32 4
  %4 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %features.i.i.i.i, align 4
  %ctx_offset_base.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ctx_offset_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx_offset_base.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i.i.i.i = icmp ugt i32 %5, 7
  %add.i.i.i.i = add i32 %9, 1536
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %add.i.i.i.i, i32 %9
  %ctx_offset_stride.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %ctx_offset_stride.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_offset_stride.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %11, %5
  %add3.i.i.i.i = add i32 %mul.i.i.i.i, %spec.select.i.i.i.i
  %base.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 %add3.i.i.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %15 = or i32 %14, 33554432
  %16 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cookie, align 8
  %root.i4.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %root.i4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root.i4.i, align 4
  %cmp.not.i.i = icmp eq ptr %17, %19
  br i1 %cmp.not.i.i, label %entry.ipmmu_ctx_write_all.exit.i_crit_edge, label %if.then.i.i

entry.ipmmu_ctx_write_all.exit.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_ctx_write_all.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i6.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %features.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %features.i.i.i6.i, align 4
  %ctx_offset_base.i.i.i7.i = getelementptr inbounds %struct.ipmmu_features, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %ctx_offset_base.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctx_offset_base.i.i.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp.i.i.i8.i = icmp ugt i32 %21, 7
  %add.i.i.i9.i = add i32 %25, 1536
  %spec.select.i.i.i10.i = select i1 %cmp.i.i.i8.i, i32 %add.i.i.i9.i, i32 %25
  %ctx_offset_stride.i.i.i11.i = getelementptr inbounds %struct.ipmmu_features, ptr %23, i32 0, i32 9
  %26 = ptrtoint ptr %ctx_offset_stride.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctx_offset_stride.i.i.i11.i, align 4
  %mul.i.i.i12.i = mul i32 %27, %21
  %add3.i.i.i13.i = add i32 %mul.i.i.i12.i, %spec.select.i.i.i10.i
  %base.i.i.i14.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %base.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i14.i, align 4
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %29, i32 %add3.i.i.i13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i15.i, i32 %15) #10, !srcloc !144
  br label %ipmmu_ctx_write_all.exit.i

ipmmu_ctx_write_all.exit.i:                       ; preds = %if.then.i.i, %entry.ipmmu_ctx_write_all.exit.i_crit_edge
  %30 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cookie, align 8
  %root4.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %root4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %root4.i.i, align 4
  %34 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %context_id.i.i, align 4
  %features.i.i1.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %features.i.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %features.i.i1.i.i, align 4
  %ctx_offset_base.i.i2.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %ctx_offset_base.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctx_offset_base.i.i2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp.i.i3.i.i = icmp ugt i32 %35, 7
  %add.i.i4.i.i = add i32 %39, 1536
  %spec.select.i.i5.i.i = select i1 %cmp.i.i3.i.i, i32 %add.i.i4.i.i, i32 %39
  %ctx_offset_stride.i.i6.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %37, i32 0, i32 9
  %40 = ptrtoint ptr %ctx_offset_stride.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctx_offset_stride.i.i6.i.i, align 4
  %mul.i.i7.i.i = mul i32 %41, %35
  %add3.i.i8.i.i = add i32 %mul.i.i7.i.i, %spec.select.i.i5.i.i
  %base.i.i9.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %33, i32 0, i32 1
  %42 = ptrtoint ptr %base.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i9.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %43, i32 %add3.i.i8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i, i32 %15) #10, !srcloc !144
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end16.i.i, %ipmmu_ctx_write_all.exit.i
  %count.0.i.i = phi i32 [ 0, %ipmmu_ctx_write_all.exit.i ], [ %inc.i.i, %if.end16.i.i ]
  %44 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cookie, align 8
  %root.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %root.i.i.i, align 4
  %48 = ptrtoint ptr %context_id.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %context_id.i.i, align 4
  %features.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %features.i.i.i.i.i, align 4
  %ctx_offset_base.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %ctx_offset_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ctx_offset_base.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %49)
  %cmp.i.i.i.i.i = icmp ugt i32 %49, 7
  %add.i.i.i.i.i = add i32 %53, 1536
  %spec.select.i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 %add.i.i.i.i.i, i32 %53
  %ctx_offset_stride.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_features, ptr %51, i32 0, i32 9
  %54 = ptrtoint ptr %ctx_offset_stride.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctx_offset_stride.i.i.i.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %55, %49
  %add3.i.i.i.i.i = add i32 %mul.i.i.i.i.i, %spec.select.i.i.i.i.i
  %base.i.i.i.i.i = getelementptr inbounds %struct.ipmmu_vmsa_device, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %57, i32 %add3.i.i.i.i.i
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #10, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  %59 = and i32 %58, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.ipmmu_tlb_invalidate.exit_crit_edge, label %do.end.i.i

while.cond.i.i.ipmmu_tlb_invalidate.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_tlb_invalidate.exit

do.end.i.i:                                       ; preds = %while.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !148
  %inc.i.i = add nuw nsw i32 %count.0.i.i, 1
  %cmp.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %cmp.i.i, label %do.body7.i.i, label %if.end16.i.i

do.body7.i.i:                                     ; preds = %do.end.i.i
  %call8.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipmmu_tlb_sync._rs, ptr noundef nonnull @__func__.ipmmu_tlb_sync) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body7.i.i.ipmmu_tlb_invalidate.exit_crit_edge, label %do.end13.i.i

do.body7.i.i.ipmmu_tlb_invalidate.exit_crit_edge: ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmmu_tlb_invalidate.exit

do.end13.i.i:                                     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cookie, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.26) #13
  br label %ipmmu_tlb_invalidate.exit

if.end16.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #10
  br label %while.cond.i.i

ipmmu_tlb_invalidate.exit:                        ; preds = %do.end13.i.i, %do.body7.i.i.ipmmu_tlb_invalidate.exit_crit_edge, %while.cond.i.i.ipmmu_tlb_invalidate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmmu_tlb_flush(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readonly %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipmmu_tlb_flush_all(ptr noundef %cookie)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arm_iommu_create_mapping(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__initcall__kmod_ipmmu_vmsa__236_1191_ipmmu_init4, !1, !"__initcall__kmod_ipmmu_vmsa__236_1191_ipmmu_init4", i1 false, i1 false}
!1 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1191, i32 1}
!2 = distinct !{null, !3, !"setup_done", i1 false, i1 false}
!3 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1167, i32 14}
!4 = !{ptr @ipmmu_of_ids, !5, !"ipmmu_of_ids", i1 false, i1 false}
!5 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 943, i32 34}
!6 = !{ptr @ipmmu_features_default, !7, !"ipmmu_features_default", i1 false, i1 false}
!7 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 901, i32 36}
!8 = !{ptr @ipmmu_features_rcar_gen3, !9, !"ipmmu_features_rcar_gen3", i1 false, i1 false}
!9 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 915, i32 36}
!10 = !{ptr @ipmmu_features_r8a779a0, !11, !"ipmmu_features_r8a779a0", i1 false, i1 false}
!11 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 929, i32 36}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1156, i32 11}
!14 = !{ptr @ipmmu_driver, !15, !"ipmmu_driver", i1 false, i1 false}
!15 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1154, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1000, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ipmmu_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipmmu_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ipmmu_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1005, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1039, i32 43}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1059, i32 4}
!31 = !{ptr @ipmmu_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ipmmu_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1066, i32 4}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ipmmu_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ipmmu_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 517, i32 3}
!40 = !{ptr @ipmmu_domain_irq._rs, !39, !"_rs", i1 false, i1 false}
!41 = !{ptr @__func__.ipmmu_domain_irq, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ipmmu_domain_irq._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @ipmmu_domain_irq._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ipmmu_domain_irq._rs.17, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 520, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ipmmu_domain_irq._entry.18, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ipmmu_domain_irq._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ipmmu_domain_irq._rs.21, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 535, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ipmmu_domain_irq._entry.22, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ipmmu_domain_irq._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ipmmu_pm, !56, !"ipmmu_pm", i1 false, i1 false}
!56 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 1146, i32 32}
!57 = !{ptr @ipmmu_ops, !58, !"ipmmu_ops", i1 false, i1 false}
!58 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 869, i32 31}
!59 = !{ptr @ipmmu_domain_alloc.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 581, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ipmmu_tlb_sync._rs, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 262, i32 4}
!64 = !{ptr @__func__.ipmmu_tlb_sync, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ipmmu_tlb_sync._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @ipmmu_tlb_sync._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 609, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ipmmu_attach_device._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ipmmu_attach_device._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 620, i32 4}
!75 = !{ptr @ipmmu_attach_device._entry.29, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ipmmu_attach_device._entry_ptr.31, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 623, i32 4}
!79 = !{ptr @ipmmu_attach_device._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ipmmu_attach_device._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 631, i32 3}
!83 = !{ptr @ipmmu_attach_device._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ipmmu_attach_device._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 635, i32 3}
!87 = !{ptr @ipmmu_attach_device._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ipmmu_attach_device._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @ipmmu_flush_ops, !90, !"ipmmu_flush_ops", i1 false, i1 false}
!90 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 327, i32 37}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 846, i32 3}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ipmmu_probe_finalize._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @ipmmu_probe_finalize._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 801, i32 4}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ipmmu_init_arm_mapping._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ipmmu_init_arm_mapping._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 812, i32 3}
!103 = !{ptr @ipmmu_init_arm_mapping._entry.45, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ipmmu_init_arm_mapping._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 721, i32 14}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 722, i32 14}
!109 = !{ptr @soc_needs_opt_in, !110, !"soc_needs_opt_in", i1 false, i1 false}
!110 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 720, i32 42}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 727, i32 14}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 728, i32 37}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 728, i32 14}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 729, i32 37}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 730, i32 14}
!121 = !{ptr @soc_denylist, !122, !"soc_denylist", i1 false, i1 false}
!122 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 726, i32 42}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 735, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 736, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 737, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 738, i32 2}
!131 = distinct !{null, !132, !"devices_allowlist", i1 false, i1 false}
!132 = !{!"../drivers/iommu/ipmmu-vmsa.c", i32 734, i32 27}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i8 0, i8 2}
!143 = !{i64 2153795532}
!144 = !{i64 6253410}
!145 = !{i64 6253828}
!146 = !{i64 2153794177}
!147 = !{i64 2154344006}
!148 = !{i64 2154343848}
