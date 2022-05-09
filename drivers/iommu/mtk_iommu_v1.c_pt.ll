; ModuleID = '/llk/IR_all_yes/drivers/iommu/mtk_iommu_v1.c_pt.bc'
source_filename = "../drivers/iommu/mtk_iommu_v1.c"
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
%struct.component_master_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_iommu_data = type { ptr, i32, ptr, ptr, i32, %struct.mtk_iommu_suspend_reg, ptr, [8 x ptr], i8, %struct.spinlock, %struct.iommu_device, ptr, ptr, ptr, %struct.list_head, [32 x %struct.mtk_smi_larb_iommu] }
%struct.mtk_iommu_suspend_reg = type { %union.anon.74, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.74 = type { i32 }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.mtk_smi_larb_iommu = type { ptr, i32, [32 x i8] }
%struct.mtk_iommu_domain = type { %struct.spinlock, %struct.iommu_domain, ptr, i32, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_mtk_iommu_v1__235_700_mtk_iommu_driver_init6 = internal global ptr @mtk_iommu_driver_init, section ".initcall6.init", align 4
@mtk_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_iommu_probe, ptr @mtk_iommu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_iommu_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_iommu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_iommu_driver_exit = internal global ptr @mtk_iommu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description236 = internal constant [71 x i8] c"mtk_iommu_v1.description=IOMMU API for MediaTek M4U v1 implementations\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [45 x i8] c"mtk_iommu_v1.file=drivers/iommu/mtk_iommu_v1\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"mtk_iommu_v1.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk-iommu-v1\00", [19 x i8] zeroinitializer }, align 32
@mtk_iommu_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-m4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_iommu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_iommu_suspend, ptr @mtk_iommu_resume, ptr @mtk_iommu_suspend, ptr @mtk_iommu_resume, ptr @mtk_iommu_suspend, ptr @mtk_iommu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mediatek,larbs\00", [17 x i8] zeroinitializer }, align 32
@mtk_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @mtk_iommu_domain_alloc, ptr @mtk_iommu_domain_free, ptr @mtk_iommu_attach_device, ptr @mtk_iommu_detach_device, ptr @mtk_iommu_map, ptr null, ptr @mtk_iommu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @mtk_iommu_iova_to_phys, ptr @mtk_iommu_probe_device, ptr @mtk_iommu_release_device, ptr @mtk_iommu_probe_finalize, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_iommu_def_domain_type, i32 -4096, ptr null }, [60 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@mtk_iommu_com_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @mtk_iommu_bind, ptr @mtk_iommu_unbind }, [24 x i8] zeroinitializer }, align 32
@mtk_iommu_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 481, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable iommu bclk(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_iommu_hw_init\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iommu/mtk_iommu_v1.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_iommu_hw_init._entry_ptr = internal global ptr @mtk_iommu_hw_init._entry, section ".printk_index", align 4
@mtk_iommu_hw_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 508, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed @ IRQ-%d Request\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_iommu_hw_init._entry_ptr.10 = internal global ptr @mtk_iommu_hw_init._entry.8, section ".printk_index", align 4
@mtk_iommu_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mtk_iommu_isr = private unnamed_addr constant [14 x i8] c"mtk_iommu_isr\00", align 1
@mtk_iommu_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.mtk_iommu_isr, ptr @.str.5, i32 185, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mtk_iommu_isr._entry_ptr = internal global ptr @mtk_iommu_isr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_iommu_domain_finalise.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dom->pgtlock\00", [18 x i8] zeroinitializer }, align 32
@mtk_iommu_config.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk_iommu_v1\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_iommu_config\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s iommu port: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@mt2701_m4u_in_larb = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 11, i32 21, i32 44], [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtk_iommu_tlb_flush_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 152, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Partial TLB flush timed out, falling back to full flush\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_iommu_tlb_flush_range\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_iommu_tlb_flush_range._entry_ptr = internal global ptr @mtk_iommu_tlb_flush_range._entry, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#iommu-cells\00", [19 x i8] zeroinitializer }, align 32
@mtk_iommu_create_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid #iommu-cells(%d) property for IOMMU\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_iommu_create_mapping\00", [39 x i8] zeroinitializer }, align 32
@mtk_iommu_create_mapping._entry_ptr = internal global ptr @mtk_iommu_create_mapping._entry, section ".printk_index", align 4
@mtk_iommu_probe_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 461, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't create IOMMU mapping - DMA-OPS will not work\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_iommu_probe_finalize\00", [39 x i8] zeroinitializer }, align 32
@mtk_iommu_probe_finalize._entry_ptr = internal global ptr @mtk_iommu_probe_finalize._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"mtk_iommu_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 691, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 695, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"mtk_iommu_of_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 532, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"mtk_iommu_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 687, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 573, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 578, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"mtk_iommu_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 515, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"mtk_iommu_com_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 537, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 481, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 508, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 182, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 224, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 210, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"mt2701_m4u_in_larb\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 103, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 151, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 428, i32 51 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 429, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 374, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [32 x i8] c"../drivers/iommu/mtk_iommu_v1.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 461, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_mtk_iommu_driver_exit, ptr @__initcall__kmod_mtk_iommu_v1__235_700_mtk_iommu_driver_init6, ptr @mtk_iommu_create_mapping._entry, ptr @mtk_iommu_create_mapping._entry_ptr, ptr @mtk_iommu_driver_exit, ptr @mtk_iommu_hw_init._entry, ptr @mtk_iommu_hw_init._entry.8, ptr @mtk_iommu_hw_init._entry_ptr, ptr @mtk_iommu_hw_init._entry_ptr.10, ptr @mtk_iommu_isr._entry, ptr @mtk_iommu_isr._entry_ptr, ptr @mtk_iommu_probe_finalize._entry, ptr @mtk_iommu_probe_finalize._entry_ptr, ptr @mtk_iommu_tlb_flush_range._entry, ptr @mtk_iommu_tlb_flush_range._entry_ptr, ptr @mtk_iommu_driver, ptr @.str, ptr @mtk_iommu_of_ids, ptr @mtk_iommu_pm_ops, ptr @.str.1, ptr @.str.2, ptr @mtk_iommu_ops, ptr @mtk_iommu_com_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mtk_iommu_isr._rs, ptr @.str.11, ptr @.str.12, ptr @mtk_iommu_domain_finalise.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mt2701_m4u_in_larb, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_com_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_hw_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_domain_finalise.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_m4u_in_larb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_tlb_flush_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_create_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_iommu_probe_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_iommu_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_iommu_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1456, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup78_crit_edge, label %if.end

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 4
  %call.i138 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3521) #10
  %tobool4.not = icmp eq ptr %call.i138, null
  br i1 %tobool4.not, label %if.end.cleanup78_crit_edge, label %if.end6

if.end.cleanup78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i138 to i32
  %call.i139 = tail call i32 @__virt_to_phys(i32 noundef %2) #10
  %add = add i32 %call.i139, 127
  %and = and i32 %add, -128
  %protect_base = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %protect_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %protect_base, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call8) #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call9 to i32
  br label %cleanup78

if.end15:                                         ; preds = %if.end6
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call16, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end15.cleanup78_crit_edge, label %if.end20

if.end15.cleanup78_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %bclk = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call21, ptr %bclk, align 4
  %cmp.i140 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call21 to i32
  br label %cleanup78

if.end27:                                         ; preds = %if.end20
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call28 = tail call i32 @of_count_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup78_crit_edge, label %for.cond.preheader

if.end27.cleanup78_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

for.cond.preheader:                               ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp32154.not = icmp eq i32 %call28, 0
  br i1 %cmp32154.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %13 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i141 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef %i.0155, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %cleanup78

of_parse_phandle.exit:                            ; preds = %for.body
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool35.not = icmp eq ptr %15, null
  br i1 %tobool35.not, label %of_parse_phandle.exit.cleanup78_crit_edge, label %if.end37

of_parse_phandle.exit.cleanup78_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end37:                                         ; preds = %of_parse_phandle.exit
  %call38 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %15) #10
  br i1 %call38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef nonnull %15) #10
  br label %for.inc

if.end40:                                         ; preds = %if.end37
  %call41 = call ptr @of_find_device_by_node(ptr noundef nonnull %15) #10
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_node_put(ptr noundef nonnull %15) #10
  br label %cleanup78

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %call41, i32 0, i32 3
  %arrayidx = getelementptr %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 15, i32 %i.0155
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev45, ptr %arrayidx, align 4
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @release_of, ptr noundef nonnull @compare_of, ptr noundef nonnull %15) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %if.then39
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, %call28
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bclk, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.do.end.i_crit_edge

for.end.do.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %for.end
  %call1.i.i = call i32 @clk_enable(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i142, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %19) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %for.end.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %for.end.do.end.i_crit_edge ]
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i.ph.i) #13
  br label %cleanup78

if.end.i142:                                      ; preds = %if.end.i.i
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073807360) #10, !srcloc !84
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %25, i32 544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -16777216) #10, !srcloc !84
  %26 = ptrtoint ptr %protect_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %protect_base, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %28) #10, !srcloc !84
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %32, i32 1520
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 33554432) #10, !srcloc !84
  %33 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev2, align 4
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i40.i = icmp eq ptr %38, null
  br i1 %tobool.not.i40.i, label %if.end.i41.i, label %if.end.i142.dev_name.exit.i_crit_edge

if.end.i142.dev_name.exit.i_crit_edge:            ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i41.i:                                     ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i41.i, %if.end.i142.dev_name.exit.i_crit_edge
  %retval.0.i42.i = phi ptr [ %40, %if.end.i41.i ], [ %38, %if.end.i142.dev_name.exit.i_crit_edge ]
  %call.i43.i = call i32 @devm_request_threaded_irq(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @mtk_iommu_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i42.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool11.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool11.not.i, label %if.end51, label %if.then12.i

if.then12.i:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #10, !srcloc !84
  %43 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bclk, align 4
  call void @clk_disable(ptr noundef %44) #10
  call void @clk_unprepare(ptr noundef %44) #10
  %45 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2, align 4
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.9, i32 noundef %48) #13
  br label %cleanup78

if.end51:                                         ; preds = %dev_name.exit.i
  %iommu = getelementptr inbounds %struct.mtk_iommu_data, ptr %call.i, i32 0, i32 10
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i144 = icmp eq ptr %50, null
  br i1 %tobool.not.i144, label %if.end.i145, label %if.end51.dev_name.exit_crit_edge

if.end51.dev_name.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i145:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i145, %if.end51.dev_name.exit_crit_edge
  %retval.0.i146 = phi ptr [ %52, %if.end.i145 ], [ %50, %if.end51.dev_name.exit_crit_edge ]
  %call55 = call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %dev1, ptr noundef null, ptr noundef %retval.0.i146) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %dev_name.exit.cleanup78_crit_edge

dev_name.exit.cleanup78_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end58:                                         ; preds = %dev_name.exit
  %call60 = call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @mtk_iommu_ops, ptr noundef %dev1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.out_sysfs_remove_crit_edge

if.end58.out_sysfs_remove_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_sysfs_remove

if.end63:                                         ; preds = %if.end58
  %call64 = call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #10
  br i1 %call64, label %if.end63.if.end70_crit_edge, label %if.then65

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then65:                                        ; preds = %if.end63
  %call66 = call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @mtk_iommu_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end70_crit_edge, label %if.then65.out_dev_unreg_crit_edge

if.then65.out_dev_unreg_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dev_unreg

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %if.end63.if.end70_crit_edge
  %53 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %match, align 4
  %call71 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @mtk_iommu_com_ops, ptr noundef %54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.cleanup78_crit_edge, label %out_bus_set_null

if.end70.cleanup78_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

out_bus_set_null:                                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #10
  br label %out_dev_unreg

out_dev_unreg:                                    ; preds = %out_bus_set_null, %if.then65.out_dev_unreg_crit_edge
  %ret.0 = phi i32 [ %call71, %out_bus_set_null ], [ %call66, %if.then65.out_dev_unreg_crit_edge ]
  call void @iommu_device_unregister(ptr noundef %iommu) #10
  br label %out_sysfs_remove

out_sysfs_remove:                                 ; preds = %out_dev_unreg, %if.end58.out_sysfs_remove_crit_edge
  %ret.1 = phi i32 [ %call60, %if.end58.out_sysfs_remove_crit_edge ], [ %ret.0, %out_dev_unreg ]
  call void @iommu_device_sysfs_remove(ptr noundef %iommu) #10
  br label %cleanup78

cleanup78:                                        ; preds = %out_sysfs_remove, %if.end70.cleanup78_crit_edge, %dev_name.exit.cleanup78_crit_edge, %if.then12.i, %do.end.i, %if.then43, %of_parse_phandle.exit.cleanup78_crit_edge, %of_parse_phandle.exit.thread, %if.end27.cleanup78_crit_edge, %if.then24, %if.end15.cleanup78_crit_edge, %if.then12, %if.end.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.2 = phi i32 [ %5, %if.then12 ], [ %8, %if.then24 ], [ %ret.1, %out_sysfs_remove ], [ -12, %entry.cleanup78_crit_edge ], [ -12, %if.end.cleanup78_crit_edge ], [ %call16, %if.end15.cleanup78_crit_edge ], [ %call28, %if.end27.cleanup78_crit_edge ], [ %call55, %dev_name.exit.cleanup78_crit_edge ], [ 0, %if.end70.cleanup78_crit_edge ], [ -22, %of_parse_phandle.exit.thread ], [ -517, %if.then43 ], [ -19, %if.then12.i ], [ %retval.0.i.ph.i, %do.end.i ], [ -22, %of_parse_phandle.exit.cleanup78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iommu = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 10
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #10
  tail call void @iommu_device_unregister(ptr noundef %iommu) #10
  %call2 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #10
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bclk = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bclk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %irq = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %5, ptr noundef %1) #10
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @mtk_iommu_com_ops) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

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
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_node_put(ptr noundef %data) #10
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m4u_dom = getelementptr inbounds %struct.mtk_iommu_data, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m4u_dom, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 548
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !85
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 552
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !85
  %9 = and i32 %8, 15794175
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 556
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !85
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 904
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !85
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shr = lshr i32 %18, 13
  %and16 = and i32 %shr, 7
  %sub = sub nsw i32 6, %and16
  %shr17 = lshr i32 %18, 8
  %and18 = and i32 %shr17, 15
  %domain = getelementptr inbounds %struct.mtk_iommu_domain, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %dev_id, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call19 = tail call i32 @report_iommu_fault(ptr noundef %domain, ptr noundef %20, i32 noundef %10, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %do.body

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body:                                          ; preds = %entry
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @mtk_iommu_isr._rs, ptr noundef nonnull @__func__.mtk_iommu_isr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body.if.end27_crit_edge, label %do.end

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %10, i32 noundef %14, i32 noundef %sub, i32 noundef %and18) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end, %do.body.if.end27_crit_edge, %entry.if.end27_crit_edge
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr30 = getelementptr i8, ptr %24, i32 544
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !85
  %26 = or i32 %25, 1048576
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  %add.ptr34 = getelementptr i8, ptr %28, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %26) #10, !srcloc !84
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #10, !srcloc !84
  %31 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_id, align 4
  %add.ptr2.i = getelementptr i8, ptr %32, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 33554432) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @mtk_iommu_domain_alloc(i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  %domain = getelementptr inbounds %struct.mtk_iommu_domain, ptr %call7.i.i, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %domain
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_domain_free(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %data1 = getelementptr i8, ptr %domain, i32 44
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %4 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgt_va, align 4
  %pgt_pa = getelementptr i8, ptr %domain, i32 40
  %6 = ptrtoint ptr %pgt_pa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgt_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4194304, ptr noundef %5, i32 noundef %7, i32 noundef 0) #10
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_attach_device(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %mapping = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 13
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp.not = icmp eq ptr %7, %domain
  br i1 %cmp.not, label %if.end, label %dev_iommu_priv_get.exit.cleanup_crit_edge

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %dev_iommu_priv_get.exit
  %m4u_dom = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 6
  %8 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m4u_dom, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %10 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %m4u_dom, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @mtk_iommu_domain_finalise.__key, i16 noundef signext 3) #10
  %dev.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %pgt_pa.i = getelementptr i8, ptr %domain, i32 40
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef 4194304, ptr noundef %pgt_pa.i, i32 noundef 3264, i32 noundef 0) #10
  %pgt_va.i = getelementptr i8, ptr %domain, i32 36
  %13 = ptrtoint ptr %pgt_va.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %pgt_va.i, align 4
  %tobool.not.i22 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i22, label %if.then7, label %mtk_iommu_domain_finalise.exit.thread

mtk_iommu_domain_finalise.exit.thread:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %pgt_pa.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pgt_pa.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #10, !srcloc !84
  %data7.i = getelementptr i8, ptr %domain, i32 44
  %19 = ptrtoint ptr %data7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %data7.i, align 4
  br label %if.end10

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %m4u_dom, align 4
  br label %cleanup

if.end10:                                         ; preds = %mtk_iommu_domain_finalise.exit.thread, %if.end.if.end10_crit_edge
  %21 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end10.dev_iommu_fwspec_get.exit.i_crit_edge, label %if.then.i.i

if.end10.dev_iommu_fwspec_get.exit.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_fwspec_get.exit.i

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fwspec.i.i, align 4
  br label %dev_iommu_fwspec_get.exit.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %if.then.i.i, %if.end10.dev_iommu_fwspec_get.exit.i_crit_edge
  %retval.0.i26.i = phi ptr [ %24, %if.then.i.i ], [ null, %if.end10.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i26.i, i32 0, i32 3
  %25 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp35.not.i = icmp eq i32 %26, 0
  br i1 %cmp35.not.i, label %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge

dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  br label %for.body.i

dev_iommu_fwspec_get.exit.i.cleanup_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i26.i, i32 0, i32 4, i32 %i.036.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %28)
  %cmp1.not.i.i = icmp slt i32 %28, 44
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.mt2701_m4u_to_port.exit.i_crit_edge

for.body.i.mt2701_m4u_to_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt2701_m4u_to_port.exit.i

for.inc.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %28)
  %cmp1.not.1.i.i = icmp slt i32 %28, 21
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge

for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt2701_m4u_to_port.exit.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %28)
  %cmp1.not.2.i.i = icmp sgt i32 %28, 10
  %spec.select.i.i = zext i1 %cmp1.not.2.i.i to i32
  br label %mt2701_m4u_to_port.exit.i

mt2701_m4u_to_port.exit.i:                        ; preds = %for.inc.1.i.i.i, %for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge, %for.body.i.mt2701_m4u_to_port.exit.i_crit_edge
  %retval.0.i2729.i = phi i32 [ %spec.select.i.i, %for.inc.1.i.i.i ], [ 3, %for.body.i.mt2701_m4u_to_port.exit.i_crit_edge ], [ 2, %for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @mt2701_m4u_in_larb, i32 0, i32 %retval.0.i2729.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %28, %30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_iommu_config.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_iommu_attach_device, %if.then.i24)) #10
          to label %do.end.i [label %if.then.i24], !srcloc !88

if.then.i24:                                      ; preds = %mt2701_m4u_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_iommu_config.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %sub.i.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i24, %mt2701_m4u_to_port.exit.i
  %shl.i = shl nuw i32 1, %sub.i.i
  %mmu.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 15, i32 %retval.0.i2729.i, i32 1
  %31 = ptrtoint ptr %mmu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mmu.i, align 4
  %or.i = or i32 %32, %shl.i
  store i32 %or.i, ptr %mmu.i, align 4
  %inc.i = add nuw i32 %i.036.i, 1
  %33 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %34
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %do.end.i.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge, %if.then7, %dev_iommu_priv_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7 ], [ 0, %dev_iommu_priv_get.exit.cleanup_crit_edge ], [ 0, %dev_iommu_fwspec_get.exit.i.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_detach_device(ptr nocapture noundef readnone %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_fwspec_get.exit.i_crit_edge, label %if.then.i.i

entry.dev_iommu_fwspec_get.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_fwspec_get.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %retval.0.i26.i = phi ptr [ %5, %if.then.i.i ], [ null, %entry.dev_iommu_fwspec_get.exit.i_crit_edge ]
  %num_ids.i = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i26.i, i32 0, i32 3
  %6 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp35.not.i = icmp eq i32 %7, 0
  br i1 %cmp35.not.i, label %dev_iommu_fwspec_get.exit.i.mtk_iommu_config.exit_crit_edge, label %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge

dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  br label %for.body.i

dev_iommu_fwspec_get.exit.i.mtk_iommu_config.exit_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtk_iommu_config.exit

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %dev_iommu_fwspec_get.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iommu_fwspec, ptr %retval.0.i26.i, i32 0, i32 4, i32 %i.036.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %9)
  %cmp1.not.i.i = icmp slt i32 %9, 44
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %for.body.i.mt2701_m4u_to_port.exit.i_crit_edge

for.body.i.mt2701_m4u_to_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt2701_m4u_to_port.exit.i

for.inc.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %9)
  %cmp1.not.1.i.i = icmp slt i32 %9, 21
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge

for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mt2701_m4u_to_port.exit.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp1.not.2.i.i = icmp sgt i32 %9, 10
  %spec.select.i.i = zext i1 %cmp1.not.2.i.i to i32
  br label %mt2701_m4u_to_port.exit.i

mt2701_m4u_to_port.exit.i:                        ; preds = %for.inc.1.i.i.i, %for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge, %for.body.i.mt2701_m4u_to_port.exit.i_crit_edge
  %retval.0.i2729.i = phi i32 [ %spec.select.i.i, %for.inc.1.i.i.i ], [ 3, %for.body.i.mt2701_m4u_to_port.exit.i_crit_edge ], [ 2, %for.inc.i.i.mt2701_m4u_to_port.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @mt2701_m4u_in_larb, i32 0, i32 %retval.0.i2729.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = sub i32 %9, %11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_iommu_config.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_iommu_detach_device, %if.then.i2)) #10
          to label %do.end.i [label %if.then.i2], !srcloc !88

if.then.i2:                                       ; preds = %mt2701_m4u_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_iommu_config.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef %sub.i.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i2, %mt2701_m4u_to_port.exit.i
  %shl.i = shl nuw i32 1, %sub.i.i
  %neg.i = xor i32 %shl.i, -1
  %mmu14.i = getelementptr %struct.mtk_iommu_data, ptr %retval.0.i4, i32 0, i32 15, i32 %retval.0.i2729.i, i32 1
  %12 = ptrtoint ptr %mmu14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmu14.i, align 4
  %and.i = and i32 %13, %neg.i
  store i32 %and.i, ptr %mmu14.i, align 4
  %inc.i = add nuw i32 %i.036.i, 1
  %14 = ptrtoint ptr %num_ids.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ids.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.mtk_iommu_config.exit_crit_edge

do.end.i.mtk_iommu_config.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtk_iommu_config.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mtk_iommu_config.exit:                            ; preds = %do.end.i.mtk_iommu_config.exit_crit_edge, %dev_iommu_fwspec_get.exit.i.mtk_iommu_config.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_map(ptr noundef %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %0 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgt_va, align 4
  %shr1 = lshr i32 %iova, 12
  %add.ptr = getelementptr i32, ptr %1, i32 %shr1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp732.not = icmp ult i32 %size, 4096
  br i1 %cmp732.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %shr = lshr i32 %size, 12
  %2 = and i32 %size, -4096
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %map_size.035 = phi i32 [ %add11, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pabase.034 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ %paddr, %for.body.preheader ]
  %i.033 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %i.033
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %i.033, 2
  %5 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul)
  br label %for.end

if.end:                                           ; preds = %for.body
  %or9 = or i32 %pabase.034, 10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or9, ptr %arrayidx, align 4
  %add = add i32 %pabase.034, 4096
  %add11 = add nuw i32 %map_size.035, 4096
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %map_size.030 = phi i32 [ %map_size.035, %if.then ], [ 0, %entry.for.end_crit_edge ], [ %2, %if.end.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4) #10
  %data = getelementptr i8, ptr %domain, i32 44
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call fastcc void @mtk_iommu_tlb_flush_range(ptr noundef %8, i32 noundef %iova, i32 noundef %size)
  call void @__sanitizer_cov_trace_cmp4(i32 %map_size.030, i32 %size)
  %cmp13 = icmp eq i32 %map_size.030, %size
  %cond = select i1 %cmp13, i32 0, i32 -17
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_unmap(ptr noundef %domain, i32 noundef %iova, i32 noundef returned %size, ptr nocapture noundef readnone %gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %0 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgt_va, align 4
  %shr = lshr i32 %iova, 12
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %2 = lshr i32 %size, 10
  %mul = and i32 %2, 4194300
  %3 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call4) #10
  %data = getelementptr i8, ptr %domain, i32 44
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call fastcc void @mtk_iommu_tlb_flush_range(ptr noundef %5, i32 noundef %iova, i32 noundef %size)
  ret i32 %size
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_iova_to_phys(ptr noundef %domain, i32 noundef %iova) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #10
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %0 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgt_va, align 4
  %shr = lshr i32 %iova, 12
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, -4096
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call3) #10
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_iommu_probe_device(ptr noundef %dev) #2 align 64 {
entry:
  %iommu_spec = alloca %struct.of_phandle_args, align 4
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
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %iommu_spec) #10
  %4 = call ptr @memset(ptr %iommu_spec, i32 255, i32 72)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i48 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %iommu_spec) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not49, label %while.body.lr.ph, label %dev_iommu_fwspec_get.exit.while.end_crit_edge

dev_iommu_fwspec_get.exit.while.end_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %dev_iommu_fwspec_get.exit
  %args_count113.i = getelementptr inbounds %struct.of_phandle_args, ptr %iommu_spec, i32 0, i32 1
  %args49.i = getelementptr inbounds %struct.of_phandle_args, ptr %iommu_spec, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %dev_iommu_fwspec_get.exit29.while.body_crit_edge, %while.body.lr.ph
  %idx.050 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %dev_iommu_fwspec_get.exit29.while.body_crit_edge ]
  %7 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  %9 = ptrtoint ptr %args_count113.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args_count113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not114.i = icmp eq i32 %10, 1
  br i1 %tobool.not.i.i, label %dev_iommu_fwspec_get.exit.thread.i, label %dev_iommu_fwspec_get.exit.i

dev_iommu_fwspec_get.exit.i:                      ; preds = %while.body
  br i1 %cmp.not114.i, label %if.end.i, label %dev_iommu_fwspec_get.exit.i.do.end.i_crit_edge

dev_iommu_fwspec_get.exit.i.do.end.i_crit_edge:   ; preds = %dev_iommu_fwspec_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dev_iommu_fwspec_get.exit.thread.i:               ; preds = %while.body
  br i1 %cmp.not114.i, label %dev_iommu_fwspec_get.exit.thread.i.if.then2.i_crit_edge, label %dev_iommu_fwspec_get.exit.thread.i.do.end.i_crit_edge

dev_iommu_fwspec_get.exit.thread.i.do.end.i_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

dev_iommu_fwspec_get.exit.thread.i.if.then2.i_crit_edge: ; preds = %dev_iommu_fwspec_get.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

do.end.i:                                         ; preds = %dev_iommu_fwspec_get.exit.thread.i.do.end.i_crit_edge, %dev_iommu_fwspec_get.exit.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %10) #13
  br label %if.then

if.end.i:                                         ; preds = %dev_iommu_fwspec_get.exit.i
  %fwspec.i.i = getelementptr inbounds %struct.dev_iommu, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %fwspec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwspec.i.i, align 4
  %tobool.not.i22 = icmp eq ptr %12, null
  br i1 %tobool.not.i22, label %if.end.i.if.then2.i_crit_edge, label %dev_iommu_fwspec_get.exit100.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %dev_iommu_fwspec_get.exit.thread.i.if.then2.i_crit_edge
  %13 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iommu_spec, align 4
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %call3.i = call i32 @iommu_fwspec_init(ptr noundef %dev, ptr noundef %fwnode.i, ptr noundef nonnull @mtk_iommu_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then2.i.if.then_crit_edge

if.then2.i.if.then_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end6.i:                                        ; preds = %if.then2.i
  %15 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i90.i = icmp eq ptr %16, null
  br i1 %tobool.not.i90.i, label %if.end6.i.if.then15.i_crit_edge, label %if.end6.i.dev_iommu_priv_get.exit.i_crit_edge

if.end6.i.dev_iommu_priv_get.exit.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_priv_get.exit.i

if.end6.i.if.then15.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

dev_iommu_fwspec_get.exit100.i:                   ; preds = %if.end.i
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %cmp9.not.i = icmp eq ptr %18, @mtk_iommu_ops
  br i1 %cmp9.not.i, label %dev_iommu_fwspec_get.exit100.i.dev_iommu_priv_get.exit.i_crit_edge, label %dev_iommu_fwspec_get.exit100.i.if.then_crit_edge

dev_iommu_fwspec_get.exit100.i.if.then_crit_edge: ; preds = %dev_iommu_fwspec_get.exit100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

dev_iommu_fwspec_get.exit100.i.dev_iommu_priv_get.exit.i_crit_edge: ; preds = %dev_iommu_fwspec_get.exit100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_priv_get.exit.i

dev_iommu_priv_get.exit.i:                        ; preds = %dev_iommu_fwspec_get.exit100.i.dev_iommu_priv_get.exit.i_crit_edge, %if.end6.i.dev_iommu_priv_get.exit.i_crit_edge
  %19 = phi ptr [ %16, %if.end6.i.dev_iommu_priv_get.exit.i_crit_edge ], [ %8, %dev_iommu_fwspec_get.exit100.i.dev_iommu_priv_get.exit.i_crit_edge ]
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i.i, align 4
  %tobool14.not.i = icmp eq ptr %21, null
  br i1 %tobool14.not.i, label %dev_iommu_priv_get.exit.i.if.then15.i_crit_edge, label %dev_iommu_priv_get.exit.i.if.end48.i_crit_edge

dev_iommu_priv_get.exit.i.if.end48.i_crit_edge:   ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

dev_iommu_priv_get.exit.i.if.then15.i_crit_edge:  ; preds = %dev_iommu_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.then15.i:                                      ; preds = %dev_iommu_priv_get.exit.i.if.then15.i_crit_edge, %if.end6.i.if.then15.i_crit_edge
  %22 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iommu_spec, align 4
  %call17.i = call ptr @of_find_device_by_node(ptr noundef %23) #10
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %do.end31.i, label %if.end46.i, !prof !89

do.end31.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 391, i32 noundef 9, ptr noundef null) #10
  br label %if.then

if.end46.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call17.i, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %26 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iommu.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.dev_iommu, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %priv1.i.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end46.i, %dev_iommu_priv_get.exit.i.if.end48.i_crit_edge
  %call50.i = call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef %args49.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.end48.i.if.then_crit_edge

if.end48.i.if.then_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end53.i:                                       ; preds = %if.end48.i
  %29 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i107.i = icmp eq ptr %30, null
  br i1 %tobool.not.i107.i, label %if.end53.i.dev_iommu_priv_get.exit111.i_crit_edge, label %if.then.i109.i

if.end53.i.dev_iommu_priv_get.exit111.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_priv_get.exit111.i

if.then.i109.i:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i108.i = getelementptr inbounds %struct.dev_iommu, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %priv.i108.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i108.i, align 4
  br label %dev_iommu_priv_get.exit111.i

dev_iommu_priv_get.exit111.i:                     ; preds = %if.then.i109.i, %if.end53.i.dev_iommu_priv_get.exit111.i_crit_edge
  %retval.0.i110.i = phi ptr [ %32, %if.then.i109.i ], [ null, %if.end53.i.dev_iommu_priv_get.exit111.i_crit_edge ]
  %mapping.i = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i110.i, i32 0, i32 13
  %33 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mapping.i, align 4
  %tobool55.not.i = icmp eq ptr %34, null
  br i1 %tobool55.not.i, label %if.then56.i, label %dev_iommu_priv_get.exit111.i.mtk_iommu_create_mapping.exit.thread38_crit_edge

dev_iommu_priv_get.exit111.i.mtk_iommu_create_mapping.exit.thread38_crit_edge: ; preds = %dev_iommu_priv_get.exit111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtk_iommu_create_mapping.exit.thread38

if.then56.i:                                      ; preds = %dev_iommu_priv_get.exit111.i
  %call57.i = call ptr @arm_iommu_create_mapping(ptr noundef nonnull @platform_bus_type, i32 noundef 0, i64 noundef 4294967296) #10
  %cmp.i.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_iommu_create_mapping.exit, label %if.end61.i

if.end61.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call57.i, ptr %mapping.i, align 4
  br label %mtk_iommu_create_mapping.exit.thread38

mtk_iommu_create_mapping.exit.thread38:           ; preds = %if.end61.i, %dev_iommu_priv_get.exit111.i.mtk_iommu_create_mapping.exit.thread38_crit_edge
  %36 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iommu_spec, align 4
  call void @of_node_put(ptr noundef %37) #10
  %38 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i25 = icmp eq ptr %39, null
  br i1 %tobool.not.i25, label %mtk_iommu_create_mapping.exit.thread38.dev_iommu_fwspec_get.exit29_crit_edge, label %if.then.i27

mtk_iommu_create_mapping.exit.thread38.dev_iommu_fwspec_get.exit29_crit_edge: ; preds = %mtk_iommu_create_mapping.exit.thread38
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_fwspec_get.exit29

mtk_iommu_create_mapping.exit:                    ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %call57.i to i32
  br label %if.then

if.then:                                          ; preds = %mtk_iommu_create_mapping.exit, %if.end48.i.if.then_crit_edge, %do.end31.i, %dev_iommu_fwspec_get.exit100.i.if.then_crit_edge, %if.then2.i.if.then_crit_edge, %do.end.i
  %retval.0.i2336 = phi i32 [ %40, %mtk_iommu_create_mapping.exit ], [ -22, %do.end31.i ], [ -22, %do.end.i ], [ %call3.i, %if.then2.i.if.then_crit_edge ], [ -22, %dev_iommu_fwspec_get.exit100.i.if.then_crit_edge ], [ %call50.i, %if.end48.i.if.then_crit_edge ]
  %41 = ptrtoint ptr %iommu_spec to i32
  call void @__asan_load4_noabort(i32 %41)
  %.sink = load ptr, ptr %iommu_spec, align 4
  call void @of_node_put(ptr noundef %.sink) #10
  %42 = inttoptr i32 %retval.0.i2336 to ptr
  br label %cleanup

if.then.i27:                                      ; preds = %mtk_iommu_create_mapping.exit.thread38
  call void @__sanitizer_cov_trace_pc() #12
  %fwspec.i26 = getelementptr inbounds %struct.dev_iommu, ptr %39, i32 0, i32 3
  %43 = ptrtoint ptr %fwspec.i26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fwspec.i26, align 4
  br label %dev_iommu_fwspec_get.exit29

dev_iommu_fwspec_get.exit29:                      ; preds = %if.then.i27, %mtk_iommu_create_mapping.exit.thread38.dev_iommu_fwspec_get.exit29_crit_edge
  %retval.0.i28 = phi ptr [ %44, %if.then.i27 ], [ null, %mtk_iommu_create_mapping.exit.thread38.dev_iommu_fwspec_get.exit29_crit_edge ]
  %inc = add i32 %idx.050, 1
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %46, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef -1, i32 noundef %inc, ptr noundef nonnull %iommu_spec) #10
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit29.while.body_crit_edge, label %dev_iommu_fwspec_get.exit29.while.end_crit_edge

dev_iommu_fwspec_get.exit29.while.end_crit_edge:  ; preds = %dev_iommu_fwspec_get.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

dev_iommu_fwspec_get.exit29.while.body_crit_edge: ; preds = %dev_iommu_fwspec_get.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %dev_iommu_fwspec_get.exit29.while.end_crit_edge, %dev_iommu_fwspec_get.exit.while.end_crit_edge
  %fwspec.0.lcssa = phi ptr [ %retval.0.i, %dev_iommu_fwspec_get.exit.while.end_crit_edge ], [ %retval.0.i28, %dev_iommu_fwspec_get.exit29.while.end_crit_edge ]
  %tobool6.not = icmp eq ptr %fwspec.0.lcssa, null
  br i1 %tobool6.not, label %while.end.cleanup_crit_edge, label %lor.lhs.false

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.end
  %47 = ptrtoint ptr %fwspec.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fwspec.0.lcssa, align 4
  %cmp.not = icmp eq ptr %48, @mtk_iommu_ops
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %49 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i31 = icmp eq ptr %50, null
  br i1 %tobool.not.i31, label %if.end9.dev_iommu_priv_get.exit_crit_edge, label %if.then.i32

if.end9.dev_iommu_priv_get.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_priv_get.exit

if.then.i32:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i32, %if.end9.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i33 = phi ptr [ %52, %if.then.i32 ], [ null, %if.end9.dev_iommu_priv_get.exit_crit_edge ]
  %iommu = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i33, i32 0, i32 10
  br label %cleanup

cleanup:                                          ; preds = %dev_iommu_priv_get.exit, %lor.lhs.false.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %42, %if.then ], [ %iommu, %dev_iommu_priv_get.exit ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %iommu_spec) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_release_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @mtk_iommu_ops
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iommu_fwspec_free(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_probe_finalize(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %mapping = getelementptr inbounds %struct.mtk_iommu_data, ptr %retval.0.i, i32 0, i32 13
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping, align 4
  %call1 = tail call i32 @arm_iommu_attach_device(ptr noundef %dev, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.if.end_crit_edge, label %do.end

dev_iommu_priv_get.exit.if.end_crit_edge:         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %dev_iommu_priv_get.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_iommu_def_domain_type(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_iommu_tlb_flush_range(ptr nocapture noundef readonly %data, i32 noundef %iova, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #10, !srcloc !84
  %and = and i32 %iova, -4096
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #10, !srcloc !84
  %add = add i32 %iova, -1
  %sub = add i32 %add, %size
  %and3 = and i32 %sub, -4096
  %5 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 1480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #10, !srcloc !84
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #10, !srcloc !84
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 100000000
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr1057 = getelementptr i8, ptr %11, i32 1548
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1057) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not58 = icmp eq i32 %12, 0
  br i1 %cmp.not58, label %entry.land.lhs.true_crit_edge, label %entry.for.end.loopexit_crit_edge

entry.for.end.loopexit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.loopexit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %cond.false

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %add.ptr21 = getelementptr i8, ptr %14, i32 1548
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !85
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr10 = getelementptr i8, ptr %19, i32 1548
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end.loopexit_crit_edge

cond.false.for.end.loopexit_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.loopexit

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.end.loopexit:                                 ; preds = %cond.false.for.end.loopexit_crit_edge, %entry.for.end.loopexit_crit_edge
  %.lcssa56 = phi i32 [ %12, %entry.for.end.loopexit_crit_edge ], [ %20, %cond.false.for.end.loopexit_crit_edge ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %.lcssa56)
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then17
  %tmp.0 = phi i32 [ %16, %if.then17 ], [ %21, %for.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0)
  %cmp34.not = icmp eq i32 %tmp.0, 0
  br i1 %cmp34.not, label %do.end, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.mtk_iommu_data, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.19) #13
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #10, !srcloc !84
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %add.ptr2.i = getelementptr i8, ptr %27, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 33554432) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  br label %if.end37

if.end37:                                         ; preds = %do.end, %for.end.if.end37_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %add.ptr39 = getelementptr i8, ptr %29, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #10, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arm_iommu_create_mapping(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_bind(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_imu = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 15
  %call1 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %larb_imu) #10
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_iommu_unbind(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %larb_imu = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 15
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %larb_imu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg1 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !85
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %reg1, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 1520
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !85
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %dcm_dis = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %dcm_dis to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dcm_dis, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 528
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !85
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %ctrl_reg = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ctrl_reg, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 544
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !85
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %int_control0 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %int_control0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %int_control0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_iommu_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg1 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %m4u_dom = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %m4u_dom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m4u_dom, align 4
  %pgt_pa = getelementptr inbounds %struct.mtk_iommu_domain, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pgt_pa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgt_pa, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #10, !srcloc !84
  %9 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg1, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr3 = getelementptr i8, ptr %3, i32 1512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #10, !srcloc !84
  %dcm_dis = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %dcm_dis to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dcm_dis, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add.ptr4 = getelementptr i8, ptr %3, i32 1520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %14) #10, !srcloc !84
  %ctrl_reg = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_reg, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add.ptr5 = getelementptr i8, ptr %3, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %17) #10, !srcloc !84
  %int_control0 = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %int_control0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_control0, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr6 = getelementptr i8, ptr %3, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %20) #10, !srcloc !84
  %protect_base = getelementptr inbounds %struct.mtk_iommu_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %protect_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %protect_base, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %add.ptr7 = getelementptr i8, ptr %3, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %23) #10, !srcloc !84
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !39, !40, !42, !43, !44, !45, !46, !47, !49, !51, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_mtk_iommu_v1__235_700_mtk_iommu_driver_init6, !1, !"__initcall__kmod_mtk_iommu_v1__235_700_mtk_iommu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 700, i32 1}
!2 = !{ptr @__exitcall_mtk_iommu_driver_exit, !1, !"__exitcall_mtk_iommu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description236, !4, !"__UNIQUE_ID_description236", i1 false, i1 false}
!4 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 702, i32 1}
!5 = !{ptr @__UNIQUE_ID_file237, !6, !"__UNIQUE_ID_file237", i1 false, i1 false}
!6 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 703, i32 1}
!7 = !{ptr @__UNIQUE_ID_license238, !6, !"__UNIQUE_ID_license238", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 695, i32 11}
!10 = !{ptr @mtk_iommu_driver, !11, !"mtk_iommu_driver", i1 false, i1 false}
!11 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 691, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 573, i32 33}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 578, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 481, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_iommu_hw_init._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_iommu_hw_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 508, i32 3}
!26 = !{ptr @mtk_iommu_hw_init._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_iommu_hw_init._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 182, i32 3}
!30 = !{ptr @mtk_iommu_isr._rs, !29, !"_rs", i1 false, i1 false}
!31 = !{ptr @__func__.mtk_iommu_isr, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mtk_iommu_isr._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @mtk_iommu_isr._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mtk_iommu_ops, !36, !"mtk_iommu_ops", i1 false, i1 false}
!36 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 515, i32 31}
!37 = !{ptr @mtk_iommu_domain_finalise.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 224, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 210, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mtk_iommu_config.__UNIQUE_ID_ddebug234, !41, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!45 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mt2701_m4u_in_larb, !48, !"mt2701_m4u_in_larb", i1 false, i1 false}
!48 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 103, i32 18}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 151, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mtk_iommu_tlb_flush_range._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_iommu_tlb_flush_range._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 428, i32 51}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 429, i32 9}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 374, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mtk_iommu_create_mapping._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_iommu_create_mapping._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 461, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mtk_iommu_probe_finalize._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mtk_iommu_probe_finalize._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @mtk_iommu_com_ops, !70, !"mtk_iommu_com_ops", i1 false, i1 false}
!70 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 537, i32 42}
!71 = !{ptr @mtk_iommu_of_ids, !72, !"mtk_iommu_of_ids", i1 false, i1 false}
!72 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 532, i32 34}
!73 = !{ptr @mtk_iommu_pm_ops, !74, !"mtk_iommu_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/iommu/mtk_iommu_v1.c", i32 687, i32 32}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 6298418}
!85 = !{i64 6298836}
!86 = !{i64 2154449262}
!87 = !{i64 2154463891}
!88 = !{i64 2148303866, i64 2148303871, i64 2148303884, i64 2148303928, i64 2148303962, i64 2148303983}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2154452354}
!91 = !{i64 2154452844}
