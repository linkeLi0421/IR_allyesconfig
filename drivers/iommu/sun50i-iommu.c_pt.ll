; ModuleID = '/llk/IR_all_yes/drivers/iommu/sun50i-iommu.c_pt.bc'
source_filename = "../drivers/iommu/sun50i-iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sun50i_iommu = type { %struct.iommu_device, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.sun50i_iommu_domain = type { %struct.iommu_domain, %struct.refcount_struct, ptr, i32, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_sun50i_iommu__262_1001_sun50i_iommu_driver_init6 = internal global ptr @sun50i_iommu_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description263 = internal constant [51 x i8] c"sun50i_iommu.description=Allwinner H6 IOMMU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [54 x i8] c"sun50i_iommu.author=Maxime Ripard <maxime@cerno.tech>\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [62 x i8] c"sun50i_iommu.author=zhuxianbin <zhuxianbin@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [45 x i8] c"sun50i_iommu.file=drivers/iommu/sun50i-iommu\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [34 x i8] c"sun50i_iommu.license=Dual BSD/GPL\00", section ".modinfo", align 1
@sun50i_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sun50i_iommu_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun50i-iommu\00", [19 x i8] zeroinitializer }, align 32
@sun50i_iommu_dt = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun50i_iommu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&iommu->iommu_lock\00", [45 x i8] zeroinitializer }, align 32
@sun50i_iommu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 943, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't get our clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun50i_iommu_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iommu/sun50i-iommu.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun50i_iommu_probe._entry_ptr = internal global ptr @sun50i_iommu_probe._entry, section ".printk_index", align 4
@sun50i_iommu_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 950, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't get our reset line.\0A\00", [34 x i8] zeroinitializer }, align 32
@sun50i_iommu_probe._entry_ptr.9 = internal global ptr @sun50i_iommu_probe._entry.7, section ".printk_index", align 4
@sun50i_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @sun50i_iommu_domain_alloc, ptr @sun50i_iommu_domain_free, ptr @sun50i_iommu_attach_device, ptr @sun50i_iommu_detach_device, ptr @sun50i_iommu_map, ptr null, ptr @sun50i_iommu_unmap, ptr null, ptr @sun50i_iommu_flush_iotlb_all, ptr null, ptr @sun50i_iommu_iotlb_sync, ptr @sun50i_iommu_iova_to_phys, ptr @sun50i_iommu_probe_device, ptr @sun50i_iommu_release_device, ptr null, ptr @sun50i_iommu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun50i_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4096, ptr null }, [60 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sun50i_iommu_attach_device.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun50i_iommu\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun50i_iommu_attach_device\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Attaching to IOMMU domain\0A\00", [37 x i8] zeroinitializer }, align 32
@sun50i_iommu_attach_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't map L1 Page Table\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun50i_iommu_attach_domain\00", [37 x i8] zeroinitializer }, align 32
@sun50i_iommu_attach_domain._entry_ptr = internal global ptr @sun50i_iommu_attach_domain._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun50i_iommu_flush_all_tlb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 319, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TLB Flush timed out!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun50i_iommu_flush_all_tlb\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun50i_iommu_flush_all_tlb._entry_ptr = internal global ptr @sun50i_iommu_flush_all_tlb._entry, section ".printk_index", align 4
@sun50i_iommu_detach_device.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun50i_iommu_detach_device\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Detaching from IOMMU domain\0A\00", [35 x i8] zeroinitializer }, align 32
@sun50i_iommu_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 541, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun50i_iommu_map\00", [47 x i8] zeroinitializer }, align 32
@sun50i_iommu_map._entry_ptr = internal global ptr @sun50i_iommu_map._entry, section ".printk_index", align 4
@sun50i_iommu_alloc_page_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't map L2 Page Table\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sun50i_iommu_alloc_page_table\00", [34 x i8] zeroinitializer }, align 32
@sun50i_iommu_alloc_page_table._entry_ptr = internal global ptr @sun50i_iommu_alloc_page_table._entry, section ".printk_index", align 4
@sun50i_iommu_report_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Page fault for %pad (master %d, dir %s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sun50i_iommu_report_fault\00", [38 x i8] zeroinitializer }, align 32
@sun50i_iommu_report_fault._entry_ptr = internal global ptr @sun50i_iommu_report_fault._entry, section ".printk_index", align 4
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wr\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@sun50i_iommu_report_fault._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.4, i32 788, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Page fault while iommu not attached to any domain?\0A\00", [44 x i8] zeroinitializer }, align 32
@sun50i_iommu_report_fault._entry_ptr.32 = internal global ptr @sun50i_iommu_report_fault._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"sun50i_iommu_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 994, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 996, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"sun50i_iommu_dt\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 988, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 912, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 943, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 950, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"sun50i_iommu_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 761, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 715, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 650, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 326, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 319, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 696, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 539, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 461, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 782, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [32 x i8] c"../drivers/iommu/sun50i-iommu.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 788, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__initcall__kmod_sun50i_iommu__262_1001_sun50i_iommu_driver_init6, ptr @sun50i_iommu_alloc_page_table._entry, ptr @sun50i_iommu_alloc_page_table._entry_ptr, ptr @sun50i_iommu_attach_domain._entry, ptr @sun50i_iommu_attach_domain._entry_ptr, ptr @sun50i_iommu_flush_all_tlb._entry, ptr @sun50i_iommu_flush_all_tlb._entry_ptr, ptr @sun50i_iommu_map._entry, ptr @sun50i_iommu_map._entry_ptr, ptr @sun50i_iommu_probe._entry, ptr @sun50i_iommu_probe._entry.7, ptr @sun50i_iommu_probe._entry_ptr, ptr @sun50i_iommu_probe._entry_ptr.9, ptr @sun50i_iommu_report_fault._entry, ptr @sun50i_iommu_report_fault._entry.30, ptr @sun50i_iommu_report_fault._entry_ptr, ptr @sun50i_iommu_report_fault._entry_ptr.32, ptr @sun50i_iommu_driver, ptr @.str, ptr @sun50i_iommu_dt, ptr @sun50i_iommu_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @sun50i_iommu_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_dt to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_attach_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_flush_all_tlb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_alloc_page_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_report_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_iommu_report_fault._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @sun50i_iommu_driver, ptr noundef nonnull @sun50i_iommu_probe, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %iommu_lock = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %iommu_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sun50i_iommu_probe.__key, i16 noundef signext 3) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev3 = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev3, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %do.body.dev_name.exit_crit_edge ]
  %call6 = tail call ptr @kmem_cache_create(ptr noundef %retval.0.i, i32 noundef 1024, i32 noundef 1024, i32 noundef 8192, ptr noundef null) #11
  %pt_pool = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %pt_pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %pt_pool, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %dev_name.exit.cleanup_crit_edge, label %if.end10

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %dev_name.exit
  %call11 = tail call ptr @iommu_group_alloc() #11
  %group = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %group, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call11 to i32
  br label %err_free_cache

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %base = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call18, ptr %base, align 4
  %cmp.i123 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call18 to i32
  br label %err_free_group

if.end24:                                         ; preds = %if.end17
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end24.err_free_group_crit_edge, label %if.end27

if.end24.err_free_group_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_group

if.end27:                                         ; preds = %if.end24
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %clk, align 4
  %cmp.i124 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %err_free_group

if.end39:                                         ; preds = %if.end27
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %reset = getelementptr inbounds %struct.sun50i_iommu, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i125 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %do.end47, label %if.end51

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %err_free_group

if.end51:                                         ; preds = %if.end39
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i127 = icmp eq ptr %20, null
  br i1 %tobool.not.i127, label %if.end.i128, label %if.end51.dev_name.exit130_crit_edge

if.end51.dev_name.exit130_crit_edge:              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit130

if.end.i128:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit130

dev_name.exit130:                                 ; preds = %if.end.i128, %if.end51.dev_name.exit130_crit_edge
  %retval.0.i129 = phi ptr [ %22, %if.end.i128 ], [ %20, %if.end51.dev_name.exit130_crit_edge ]
  %call56 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef null, ptr noundef %retval.0.i129) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %dev_name.exit130.err_free_group_crit_edge

dev_name.exit130.err_free_group_crit_edge:        ; preds = %dev_name.exit130
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_group

if.end59:                                         ; preds = %dev_name.exit130
  %call62 = tail call i32 @iommu_device_register(ptr noundef nonnull %call.i, ptr noundef nonnull @sun50i_iommu_ops, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.err_remove_sysfs_crit_edge

if.end59.err_remove_sysfs_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_remove_sysfs

if.end65:                                         ; preds = %if.end59
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i132 = icmp eq ptr %24, null
  br i1 %tobool.not.i132, label %if.end.i133, label %if.end65.dev_name.exit135_crit_edge

if.end65.dev_name.exit135_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit135

if.end.i133:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit135

dev_name.exit135:                                 ; preds = %if.end.i133, %if.end65.dev_name.exit135_crit_edge
  %retval.0.i134 = phi ptr [ %26, %if.end.i133 ], [ %24, %if.end65.dev_name.exit135_crit_edge ]
  %call.i136 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call25, ptr noundef nonnull @sun50i_iommu_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i134, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp70 = icmp slt i32 %call.i136, 0
  br i1 %cmp70, label %err_unregister, label %if.end72

if.end72:                                         ; preds = %dev_name.exit135
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sun50i_iommu_ops) #11
  br label %cleanup

err_unregister:                                   ; preds = %dev_name.exit135
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iommu_device_unregister(ptr noundef nonnull %call.i) #11
  br label %err_remove_sysfs

err_remove_sysfs:                                 ; preds = %err_unregister, %if.end59.err_remove_sysfs_crit_edge
  %ret.0 = phi i32 [ %call62, %if.end59.err_remove_sysfs_crit_edge ], [ %call.i136, %err_unregister ]
  tail call void @iommu_device_sysfs_remove(ptr noundef nonnull %call.i) #11
  br label %err_free_group

err_free_group:                                   ; preds = %err_remove_sysfs, %dev_name.exit130.err_free_group_crit_edge, %do.end47, %do.end35, %if.end24.err_free_group_crit_edge, %if.then21
  %ret.1 = phi i32 [ %10, %if.then21 ], [ %14, %do.end35 ], [ %18, %do.end47 ], [ %call56, %dev_name.exit130.err_free_group_crit_edge ], [ %ret.0, %err_remove_sysfs ], [ %call25, %if.end24.err_free_group_crit_edge ]
  %27 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %28) #11
  br label %err_free_cache

err_free_cache:                                   ; preds = %err_free_group, %if.then14
  %ret.2 = phi i32 [ %8, %if.then14 ], [ %ret.1, %err_free_group ]
  %29 = ptrtoint ptr %pt_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pt_pool, align 4
  tail call void @kmem_cache_destroy(ptr noundef %30) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_cache, %if.end72, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free_cache ], [ 0, %if.end72 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %iova.addr.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.sun50i_iommu, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #11
  %base.i = getelementptr inbounds %struct.sun50i_iommu, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 264
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  %and = and i32 %3, 196671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sun50i_iommu_handle_pt_irq(ptr noundef %dev_id, i32 noundef 308, i32 noundef 388)
  br label %if.end13

if.else:                                          ; preds = %if.end
  %and6 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sun50i_iommu_handle_pt_irq(ptr noundef %dev_id, i32 noundef 304, i32 noundef 384)
  br label %if.end13

if.else10:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %4 = ptrtoint ptr %iommu_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %iommu_lock, align 4
  %5 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !90

do.body4.i:                                       ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/sun50i-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 823, 0\0A.popsection", ""() #11, !srcloc !91
  unreachable

do.end9.i:                                        ; preds = %if.else10
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  %9 = lshr i32 %8, 24
  %and.i = and i32 %9, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %and.i, i1 true) #11, !range !92
  %sub.i.op.i.i = xor i32 %10, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %mul.i = shl nsw i32 %sub.i.i, 2
  %add.i = add nsw i32 %mul.i, 272
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %12, i32 %add.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #11, !srcloc !88
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  %add21.i = add nsw i32 %mul.i, 336
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 %add21.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #11, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  %.mask.i = and i32 %17, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %.mask.i)
  %cond.i = icmp eq i32 %.mask.i, 536870912
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.addr.i.i) #11
  %18 = ptrtoint ptr %iova.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %iova.addr.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %dev_id, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %cond.i.i = select i1 %cond.i, ptr @.str.28, ptr @.str.29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.26, ptr noundef nonnull %iova.addr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull %cond.i.i) #14
  %domain.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %dev_id, i32 0, i32 6
  %21 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  br i1 %tobool.not.i.i, label %do.end4.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %..i = zext i1 %cond.i to i32
  %25 = ptrtoint ptr %iova.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iova.addr.i.i, align 4
  %call.i.i = call i32 @report_iommu_fault(ptr noundef nonnull %22, ptr noundef %24, i32 noundef %26, i32 noundef %..i) #11
  br label %sun50i_iommu_handle_perm_irq.exit

do.end4.i.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.31) #14
  br label %sun50i_iommu_handle_perm_irq.exit

sun50i_iommu_handle_perm_irq.exit:                ; preds = %do.end4.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.addr.i.i) #11
  br label %if.end13

if.end13:                                         ; preds = %sun50i_iommu_handle_perm_irq.exit, %if.then8, %if.then4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %28, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %2) #11, !srcloc !94
  %neg = xor i32 %3, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @arm_heavy_mb() #11
  %29 = call i32 @llvm.bswap.i32(i32 %neg) #11
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %31, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %29) #11, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %33, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %2) #11, !srcloc !94
  call void @_raw_spin_unlock(ptr noundef %iommu_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun50i_iommu_domain_alloc(i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge27
    i32 1, label %entry.if.end_crit_edge28
  ]

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge27, %entry.if.end_crit_edge28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 52) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 2) #11
  %2 = inttoptr i32 %call7 to ptr
  %dt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %err_free_domain, label %if.end11

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcnt, align 4
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %aperture_end, align 8
  %force_aperture = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %force_aperture to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %force_aperture, align 4
  br label %cleanup

err_free_domain:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_domain, %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end11 ], [ null, %err_free_domain ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_iommu_domain_free(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 2
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dt, align 4
  %2 = ptrtoint ptr %1 to i32
  tail call void @free_pages(i32 noundef %2, i32 noundef 2) #11
  %3 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dt, align 4
  tail call void @kfree(ptr noundef %domain) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_attach_device(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %sun50i_iommu_from_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sun50i_iommu_from_dev.exit:                       ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sun50i_iommu_from_dev.exit.cleanup_crit_edge, label %do.body

sun50i_iommu_from_dev.exit.cleanup_crit_edge:     ; preds = %sun50i_iommu_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %sun50i_iommu_from_dev.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun50i_iommu_attach_device.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun50i_iommu_attach_device, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !95

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun50i_iommu_attach_device.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %refcnt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !97

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %domain8 = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %domain8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain8, align 4
  %cmp = icmp eq ptr %7, %domain
  br i1 %cmp, label %refcount_inc.exit.cleanup_crit_edge, label %if.end10

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %refcount_inc.exit
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sun50i_iommu_detach_device(ptr noundef nonnull %7, ptr noundef %dev)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %8 = ptrtoint ptr %domain8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %domain, ptr %domain8, align 4
  %iommu2.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 4
  %9 = ptrtoint ptr %iommu2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %iommu2.i, align 4
  %dev.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %dt.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 2
  %12 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dt.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end15
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i26, !prof !97

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i26:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %11) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i26.dev_name.exit.i.i_crit_edge

if.then.i.i26.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i26.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then.i.i26.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %11, ptr noundef %13, i32 noundef 16384) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %13 to i32
  %sub.i.i = add i32 %19, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i
  %and.i.i = and i32 %19, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 16384, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i27 = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %dt_dma.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 3
  %20 = ptrtoint ptr %dt_dma.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.i27, ptr %dt_dma.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %retval.0.i.i27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i27)
  %cmp.i.i = icmp eq i32 %retval.0.i.i27, -1
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13) #14
  br label %cleanup

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %25 = ptrtoint ptr %domain8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain8, align 4
  %tobool.not.i.i28 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i28, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %reset.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset.i.i, align 4
  %call2.i.i = tail call i32 @reset_control_deassert(ptr noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i.i:                                      ; preds = %if.end.i.i
  %clk.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i.i, align 4
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i1.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i1.i, label %if.end.i.i2.i, label %if.end5.i.i.err_reset_assert.i.i_crit_edge

if.end5.i.i.err_reset_assert.i.i_crit_edge:       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_reset_assert.i.i

if.end.i.i2.i:                                    ; preds = %if.end5.i.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %do.body10.i.i, label %if.end.i.i2.i.err_reset_assert.sink.split.i.i_crit_edge

if.end.i.i2.i.err_reset_assert.sink.split.i.i_crit_edge: ; preds = %if.end.i.i2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_reset_assert.sink.split.i.i

do.body10.i.i:                                    ; preds = %if.end.i.i2.i
  %iommu_lock.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 1
  %call12.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommu_lock.i.i) #11
  %dt_dma.i.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %dt_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dt_dma.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %base.i.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %33) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %37, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 1056964608) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %39, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i.i, i32 1056965376) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i53.i.i = getelementptr i8, ptr %41, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 65295) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %43, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 -1442185216) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %45, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 21765) #11, !srcloc !94
  %call15.i.i = tail call fastcc i32 @sun50i_iommu_flush_all_tlb(ptr noundef nonnull %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end19.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommu_lock.i.i, i32 noundef %call12.i.i) #11
  %46 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %47) #11
  br label %err_reset_assert.sink.split.i.i

if.end19.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %48 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %49, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 16777216) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %51, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 16777216) #11, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommu_lock.i.i, i32 noundef %call12.i.i) #11
  br label %cleanup

err_reset_assert.sink.split.i.i:                  ; preds = %if.then17.i.i, %if.end.i.i2.i.err_reset_assert.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %47, %if.then17.i.i ], [ %30, %if.end.i.i2.i.err_reset_assert.sink.split.i.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i.i) #11
  br label %err_reset_assert.i.i

err_reset_assert.i.i:                             ; preds = %err_reset_assert.sink.split.i.i, %if.end5.i.i.err_reset_assert.i.i_crit_edge
  %52 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reset.i.i, align 4
  %call23.i.i = tail call i32 @reset_control_assert(ptr noundef %53) #11
  br label %cleanup

cleanup:                                          ; preds = %err_reset_assert.i.i, %if.end19.i.i, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i, %refcount_inc.exit.cleanup_crit_edge, %sun50i_iommu_from_dev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %sun50i_iommu_from_dev.exit.cleanup_crit_edge ], [ 0, %refcount_inc.exit.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end19.i.i ], [ 0, %err_reset_assert.i.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_iommu_detach_device(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
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
  %retval.0.i16 = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun50i_iommu_detach_device.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun50i_iommu_detach_device, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun50i_iommu_detach_device.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %dev_iommu_priv_get.exit
  %domain5 = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 6
  %4 = ptrtoint ptr %domain5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain5, align 4
  %cmp.not = icmp eq ptr %5, %domain
  br i1 %cmp.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %refcnt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then9, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !97

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  %dt.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 2
  %iommu1.i.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 4
  %dev.i20.i = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 2
  %pt_pool.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then9
  %i.021.i = phi i32 [ 0, %if.then9 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dt.i, align 4
  %arrayidx.i = getelementptr i32, ptr %8, i32 %i.021.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %iommu1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iommu1.i.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %14) #11
  %dev.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %call.i.i.i, i32 noundef 4, i32 noundef 1) #11
  %and.i18.i = and i32 %10, -1024
  %17 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and.i18.i, i32 -2130706432, i32 8454144) #16, !srcloc !101
  %18 = inttoptr i32 %17 to ptr
  %call.i.i19.i = tail call i32 @__virt_to_phys(i32 noundef %17) #11
  %19 = ptrtoint ptr %dev.i20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i20.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %call.i.i19.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %21 = ptrtoint ptr %pt_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pt_pool.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef %18) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %sun50i_iommu_detach_domain.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sun50i_iommu_detach_domain.exit:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  %iommu_lock.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommu_lock.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %base.i.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 3
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #11, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 0) #11, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommu_lock.i.i, i32 noundef %call2.i.i) #11
  %clk.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 5
  %27 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %28) #11
  tail call void @clk_unprepare(ptr noundef %28) #11
  %reset.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i16, i32 0, i32 4
  %29 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset.i.i, align 4
  %call6.i.i = tail call i32 @reset_control_assert(ptr noundef %30) #11
  %31 = ptrtoint ptr %dev.i20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i20.i, align 4
  %33 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dt.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %35) #11
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %call.i.i, i32 noundef 16384, i32 noundef 1, i32 noundef 0) #11
  %36 = ptrtoint ptr %domain5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %domain5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sun50i_iommu_detach_domain.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_map(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #2 align 64 {
entry:
  %iova.addr = alloca i32, align 4
  %paddr.addr = alloca i32, align 4
  %page_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iova.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %iova, ptr %iova.addr, align 4
  %1 = ptrtoint ptr %paddr.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %paddr, ptr %paddr.addr, align 4
  %iommu1 = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 4
  %2 = ptrtoint ptr %iommu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu1, align 4
  %dt.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 2
  %4 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dt.i, align 4
  %shr.i.i = lshr i32 %iova, 20
  %arrayidx.i = getelementptr i32, ptr %5, i32 %shr.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i50.i = and i32 %7, -1024
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and.i50.i, i32 -2130706432, i32 8454144) #16, !srcloc !101
  %9 = inttoptr i32 %8 to ptr
  br label %sun50i_dte_get_page_table.exit

if.end.i:                                         ; preds = %entry
  %pt_pool.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %pt_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pt_pool.i.i, align 4
  %or.i.i.i = or i32 %gfp, 256
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef %or.i.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then_crit_edge, label %if.end.i.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i.i:                                       ; preds = %if.end.i
  %dev.i.i = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %call.i47.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i.i.i) #11
  br i1 %call.i47.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !97

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #11
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %17, %if.end.i.i.i.i ], [ %15, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #11
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef -1) #11
  br label %do.end.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end.i.i
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef nonnull %call.i.i.i, i32 noundef 1024) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %call.i.i.i to i32
  %sub.i.i.i = add i32 %21, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i.i.i
  %and.i.i.i = and i32 %21, 4088
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.do.end.i.i_crit_edge, label %if.end10.i.i

dma_map_single_attrs.exit.i.i.do.end.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dma_map_single_attrs.exit.i.i.do.end.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24) #14
  %26 = ptrtoint ptr %pt_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pt_pool.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %call.i.i.i) #11
  br label %if.then

if.end10.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %call.i48.i.i = tail call i32 @__virt_to_phys(i32 noundef %21) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i.i.i, i32 %call.i48.i.i)
  %cmp.not.i.i = icmp eq i32 %call41.i.i.i, %call.i48.i.i
  br i1 %cmp.not.i.i, label %if.end10.i.i.sun50i_iommu_alloc_page_table.exit.i_crit_edge, label %do.end23.i.i, !prof !97

if.end10.i.i.sun50i_iommu_alloc_page_table.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun50i_iommu_alloc_page_table.exit.i

do.end23.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 467, i32 noundef 9, ptr noundef null) #11
  br label %sun50i_iommu_alloc_page_table.exit.i

sun50i_iommu_alloc_page_table.exit.i:             ; preds = %do.end23.i.i, %if.end10.i.i.sun50i_iommu_alloc_page_table.exit.i_crit_edge
  %cmp.i51.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51.i, label %sun50i_iommu_alloc_page_table.exit.i.sun50i_dte_get_page_table.exit_crit_edge, label %if.end8.i

sun50i_iommu_alloc_page_table.exit.i.sun50i_dte_get_page_table.exit_crit_edge: ; preds = %sun50i_iommu_alloc_page_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun50i_dte_get_page_table.exit

if.end8.i:                                        ; preds = %sun50i_iommu_alloc_page_table.exit.i
  %call.i52.i = tail call i32 @__virt_to_phys(i32 noundef %21) #11
  %and.i53.i = and i32 %call.i52.i, -1024
  %or.i.i = or i32 %and.i53.i, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end8.i
  %28 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx.i, i32 0, i32 %or.i.i) #11, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i54.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i54.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit.i.if.end29.i_crit_edge, label %if.then26.i

__cmpxchg.exit.i.if.end29.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then26.i:                                      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i55.i = and i32 %asmresult1.i.i, -1024
  %29 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and.i55.i, i32 -2130706432, i32 8454144) #16, !srcloc !101
  %30 = inttoptr i32 %29 to ptr
  %call.i.i56.i = tail call i32 @__virt_to_phys(i32 noundef %21) #11
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %call.i.i56.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %33 = ptrtoint ptr %pt_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pt_pool.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef nonnull %call.i.i.i) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %__cmpxchg.exit.i.if.end29.i_crit_edge
  %.pre-phi.i = phi i32 [ %29, %if.then26.i ], [ %21, %__cmpxchg.exit.i.if.end29.i_crit_edge ]
  %page_table.0.i = phi ptr [ %30, %if.then26.i ], [ %call.i.i.i, %__cmpxchg.exit.i.if.end29.i_crit_edge ]
  %35 = ptrtoint ptr %iommu1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iommu1, align 4
  %call.i.i59.i = tail call i32 @__virt_to_phys(i32 noundef %.pre-phi.i) #11
  %dev.i60.i = getelementptr inbounds %struct.sun50i_iommu, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i60.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i60.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %38, i32 noundef %call.i.i59.i, i32 noundef 4096, i32 noundef 1) #11
  %39 = ptrtoint ptr %iommu1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iommu1, align 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  %call.i.i62.i = tail call i32 @__virt_to_phys(i32 noundef %41) #11
  %dev.i63.i = getelementptr inbounds %struct.sun50i_iommu, ptr %40, i32 0, i32 2
  %42 = ptrtoint ptr %dev.i63.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i63.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %43, i32 noundef %call.i.i62.i, i32 noundef 4, i32 noundef 1) #11
  br label %sun50i_dte_get_page_table.exit

sun50i_dte_get_page_table.exit:                   ; preds = %if.end29.i, %sun50i_iommu_alloc_page_table.exit.i.sun50i_dte_get_page_table.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ %page_table.0.i, %if.end29.i ], [ %call.i.i.i, %sun50i_iommu_alloc_page_table.exit.i.sun50i_dte_get_page_table.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sun50i_dte_get_page_table.exit.if.then_crit_edge, label %if.end

sun50i_dte_get_page_table.exit.if.then_crit_edge: ; preds = %sun50i_dte_get_page_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %sun50i_dte_get_page_table.exit.if.then_crit_edge, %do.end.i.i, %if.end.i.if.then_crit_edge
  %retval.0.i33 = phi ptr [ %retval.0.i, %sun50i_dte_get_page_table.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.i.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ]
  %44 = ptrtoint ptr %retval.0.i33 to i32
  br label %cleanup

if.end:                                           ; preds = %sun50i_dte_get_page_table.exit
  %45 = ptrtoint ptr %iova.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iova.addr, align 4
  %and.i = lshr i32 %46, 12
  %shr.i = and i32 %and.i, 255
  %arrayidx = getelementptr i32, ptr %retval.0.i, i32 %shr.i
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %and.i25 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.i.not = icmp eq i32 %and.i25, 0
  br i1 %tobool.i.not, label %if.end10, label %if.then8, !prof !97

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_phys) #11
  %49 = ptrtoint ptr %page_phys to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %page_phys, align 4, !annotation !105
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %and.i26 = and i32 %51, -4096
  store i32 %and.i26, ptr %page_phys, align 4
  %dev = getelementptr inbounds %struct.sun50i_iommu, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.22, ptr noundef nonnull %iova.addr, ptr noundef nonnull %page_phys, ptr noundef nonnull %paddr.addr, i32 noundef %prot) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_phys) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %54 = ptrtoint ptr %paddr.addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %paddr.addr, align 4
  %and.i27 = and i32 %prot, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %if.else.i, label %if.end10.sun50i_mk_pte.exit_crit_edge

if.end10.sun50i_mk_pte.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun50i_mk_pte.exit

if.else.i:                                        ; preds = %if.end10
  %and1.i = and i32 %prot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i.sun50i_mk_pte.exit_crit_edge

if.else.i.sun50i_mk_pte.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun50i_mk_pte.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %and5.i = and i32 %prot, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %..i = select i1 %tobool6.not.i, i32 16, i32 48
  br label %sun50i_mk_pte.exit

sun50i_mk_pte.exit:                               ; preds = %if.else4.i, %if.else.i.sun50i_mk_pte.exit_crit_edge, %if.end10.sun50i_mk_pte.exit_crit_edge
  %aci.0.i = phi i32 [ 64, %if.end10.sun50i_mk_pte.exit_crit_edge ], [ 32, %if.else.i.sun50i_mk_pte.exit_crit_edge ], [ %..i, %if.else4.i ]
  %and28.i = and i32 %55, -4096
  %or29.i = or i32 %and28.i, %aci.0.i
  %or30.i = or i32 %or29.i, 2
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or30.i, ptr %arrayidx, align 4
  %57 = ptrtoint ptr %iommu1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iommu1, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  %call.i.i30 = tail call i32 @__virt_to_phys(i32 noundef %59) #11
  %dev.i = getelementptr inbounds %struct.sun50i_iommu, ptr %58, i32 0, i32 2
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %61, i32 noundef %call.i.i30, i32 noundef 4, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %sun50i_mk_pte.exit, %if.then8, %if.then
  %ret.0 = phi i32 [ %44, %if.then ], [ -16, %if.then8 ], [ 0, %sun50i_mk_pte.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_unmap(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %size, ptr nocapture noundef readnone %gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 2
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dt, align 4
  %shr.i = lshr i32 %iova, 20
  %arrayidx = getelementptr i32, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i17 = and i32 %3, -1024
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and.i17, i32 -2130706432, i32 8454144) #16, !srcloc !101
  %5 = inttoptr i32 %4 to ptr
  %and.i18 = lshr i32 %iova, 12
  %shr.i19 = and i32 %and.i18, 255
  %add.ptr = getelementptr i32, ptr %5, i32 %shr.i19
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %and.i20 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.i.not = icmp eq i32 %and.i20, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr, align 4
  %iommu1.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 4
  %9 = ptrtoint ptr %iommu1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iommu1.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %11) #11
  %dev.i = getelementptr inbounds %struct.sun50i_iommu, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %13, i32 noundef %call.i.i, i32 noundef 4, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_iommu_flush_iotlb_all(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu1 = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 4
  %0 = ptrtoint ptr %iommu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iommu_lock = getelementptr inbounds %struct.sun50i_iommu, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommu_lock) #11
  %call7 = tail call fastcc i32 @sun50i_iommu_flush_all_tlb(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommu_lock, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun50i_iommu_iotlb_sync(ptr nocapture noundef readonly %domain, ptr nocapture noundef readnone %gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu1.i = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 4
  %0 = ptrtoint ptr %iommu1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.sun50i_iommu_flush_iotlb_all.exit_crit_edge, label %do.body2.i

entry.sun50i_iommu_flush_iotlb_all.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun50i_iommu_flush_iotlb_all.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iommu_lock.i = getelementptr inbounds %struct.sun50i_iommu, ptr %1, i32 0, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iommu_lock.i) #11
  %call7.i = tail call fastcc i32 @sun50i_iommu_flush_all_tlb(ptr noundef nonnull %1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iommu_lock.i, i32 noundef %call4.i) #11
  br label %sun50i_iommu_flush_iotlb_all.exit

sun50i_iommu_flush_iotlb_all.exit:                ; preds = %do.body2.i, %entry.sun50i_iommu_flush_iotlb_all.exit_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_iova_to_phys(ptr nocapture noundef readonly %domain, i32 noundef %iova) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dt = getelementptr inbounds %struct.sun50i_iommu_domain, ptr %domain, i32 0, i32 2
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dt, align 4
  %shr.i = lshr i32 %iova, 20
  %arrayidx = getelementptr i32, ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i20 = and i32 %3, -1024
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and.i20, i32 -2130706432, i32 8454144) #16, !srcloc !101
  %5 = inttoptr i32 %4 to ptr
  %and.i21 = lshr i32 %iova, 12
  %shr.i22 = and i32 %and.i21, 255
  %arrayidx6 = getelementptr i32, ptr %5, i32 %shr.i22
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %and.i23 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.i.not = icmp eq i32 %and.i23, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and.i24 = and i32 %7, -4096
  %and.i25 = and i32 %iova, 4095
  %add = or i32 %and.i24, %and.i25
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sun50i_iommu_probe_device(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %sun50i_iommu_from_dev.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sun50i_iommu_from_dev.exit:                       ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sun50i_iommu_from_dev.exit.if.then_crit_edge, label %sun50i_iommu_from_dev.exit.cleanup_crit_edge

sun50i_iommu_from_dev.exit.cleanup_crit_edge:     ; preds = %sun50i_iommu_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sun50i_iommu_from_dev.exit.if.then_crit_edge:     ; preds = %sun50i_iommu_from_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %sun50i_iommu_from_dev.exit.if.then_crit_edge, %entry.if.then_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sun50i_iommu_from_dev.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %if.then ], [ %3, %sun50i_iommu_from_dev.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun50i_iommu_release_device(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun50i_iommu_device_group(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.sun50i_iommu_from_dev.exit_crit_edge, label %if.then.i.i

entry.sun50i_iommu_from_dev.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun50i_iommu_from_dev.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  br label %sun50i_iommu_from_dev.exit

sun50i_iommu_from_dev.exit:                       ; preds = %if.then.i.i, %entry.sun50i_iommu_from_dev.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.then.i.i ], [ null, %entry.sun50i_iommu_from_dev.exit_crit_edge ]
  %group = getelementptr inbounds %struct.sun50i_iommu, ptr %retval.0.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %call1 = tail call ptr @iommu_group_ref_get(ptr noundef %5) #11
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_iommu_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %7 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %priv1.i, align 4
  %call3 = call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef nonnull %id, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun50i_iommu_flush_all_tlb(ptr noundef %iommu) unnamed_addr #2 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %iommu_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %iommu_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !90

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/sun50i-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 302, 0\0A.popsection", ""() #11, !srcloc !106
  unreachable

do.end9:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %base.i = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1056965376) #11, !srcloc !94
  %call10 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call10, 2000000
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr57 = getelementptr i8, ptr %5, i32 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #11, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not58 = icmp eq i32 %6, 0
  br i1 %tobool14.not58, label %do.end9.if.end45_crit_edge, label %do.end9.land.lhs.true_crit_edge

do.end9.land.lhs.true_crit_edge:                  ; preds = %do.end9
  br label %land.lhs.true

do.end9.if.end45_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.end9.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then20, label %cond.false

if.then20:                                        ; preds = %land.lhs.true
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr24 = getelementptr i8, ptr %8, i32 128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp = icmp eq i32 %9, 0
  br i1 %phi.cmp, label %if.then20.if.end45_crit_edge, label %do.end44

if.then20.if.end45_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 128
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !107
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %cond.false.if.end45_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.false.if.end45_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.end44:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.17) #14
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %cond.false.if.end45_crit_edge, %if.then20.if.end45_crit_edge, %do.end9.if.end45_crit_edge
  %cond = phi i32 [ -110, %do.end44 ], [ 0, %if.then20.if.end45_crit_edge ], [ 0, %do.end9.if.end45_crit_edge ], [ 0, %cond.false.if.end45_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun50i_iommu_handle_pt_irq(ptr noundef %iommu, i32 noundef %addr_reg, i32 noundef %blame_reg) unnamed_addr #2 align 64 {
entry:
  %iova.addr.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %iommu_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %iommu_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !90

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/sun50i-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 799, 0\0A.popsection", ""() #11, !srcloc !109
  unreachable

do.end9:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %addr_reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !88
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 %blame_reg
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #11, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  %9 = lshr i32 %8, 24
  %and = and i32 %9, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i.i = icmp eq i32 %and, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 true) #11, !range !92
  %sub.i.op.i = xor i32 %10, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iova.addr.i)
  %11 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %iova.addr.i, align 4
  %dev.i = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26, ptr noundef nonnull %iova.addr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.29) #14
  %domain.i = getelementptr inbounds %struct.sun50i_iommu, ptr %iommu, i32 0, i32 6
  %14 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br i1 %tobool.not.i, label %do.end4.i, label %if.then.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %iova.addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iova.addr.i, align 4
  %call.i = call i32 @report_iommu_fault(ptr noundef nonnull %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #11
  br label %sun50i_iommu_report_fault.exit

do.end4.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.31) #14
  br label %sun50i_iommu_report_fault.exit

sun50i_iommu_report_fault.exit:                   ; preds = %do.end4.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iova.addr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_sun50i_iommu__262_1001_sun50i_iommu_driver_init6, !1, !"__initcall__kmod_sun50i_iommu__262_1001_sun50i_iommu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iommu/sun50i-iommu.c", i32 1001, i32 1}
!2 = !{ptr @__UNIQUE_ID_description263, !3, !"__UNIQUE_ID_description263", i1 false, i1 false}
!3 = !{!"../drivers/iommu/sun50i-iommu.c", i32 1003, i32 1}
!4 = !{ptr @__UNIQUE_ID_author264, !5, !"__UNIQUE_ID_author264", i1 false, i1 false}
!5 = !{!"../drivers/iommu/sun50i-iommu.c", i32 1004, i32 1}
!6 = !{ptr @__UNIQUE_ID_author265, !7, !"__UNIQUE_ID_author265", i1 false, i1 false}
!7 = !{!"../drivers/iommu/sun50i-iommu.c", i32 1005, i32 1}
!8 = !{ptr @__UNIQUE_ID_file266, !9, !"__UNIQUE_ID_file266", i1 false, i1 false}
!9 = !{!"../drivers/iommu/sun50i-iommu.c", i32 1006, i32 1}
!10 = !{ptr @__UNIQUE_ID_license267, !9, !"__UNIQUE_ID_license267", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iommu/sun50i-iommu.c", i32 996, i32 13}
!13 = !{ptr @sun50i_iommu_driver, !14, !"sun50i_iommu_driver", i1 false, i1 false}
!14 = !{!"../drivers/iommu/sun50i-iommu.c", i32 994, i32 31}
!15 = !{ptr @sun50i_iommu_dt, !16, !"sun50i_iommu_dt", i1 false, i1 false}
!16 = !{!"../drivers/iommu/sun50i-iommu.c", i32 988, i32 34}
!17 = !{ptr @sun50i_iommu_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/iommu/sun50i-iommu.c", i32 912, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iommu/sun50i-iommu.c", i32 943, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sun50i_iommu_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun50i_iommu_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iommu/sun50i-iommu.c", i32 950, i32 3}
!30 = !{ptr @sun50i_iommu_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sun50i_iommu_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @sun50i_iommu_ops, !33, !"sun50i_iommu_ops", i1 false, i1 false}
!33 = !{!"../drivers/iommu/sun50i-iommu.c", i32 761, i32 31}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iommu/sun50i-iommu.c", i32 715, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sun50i_iommu_attach_device.__UNIQUE_ID_ddebug261, !35, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iommu/sun50i-iommu.c", i32 650, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sun50i_iommu_attach_domain._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun50i_iommu_attach_domain._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iommu/sun50i-iommu.c", i32 319, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sun50i_iommu_flush_all_tlb._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun50i_iommu_flush_all_tlb._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iommu/sun50i-iommu.c", i32 696, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sun50i_iommu_detach_device.__UNIQUE_ID_ddebug260, !55, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iommu/sun50i-iommu.c", i32 539, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sun50i_iommu_map._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sun50i_iommu_map._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iommu/sun50i-iommu.c", i32 461, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sun50i_iommu_alloc_page_table._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sun50i_iommu_alloc_page_table._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iommu/sun50i-iommu.c", i32 782, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sun50i_iommu_report_fault._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sun50i_iommu_report_fault._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iommu/sun50i-iommu.c", i32 788, i32 3}
!77 = !{ptr @sun50i_iommu_report_fault._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sun50i_iommu_report_fault._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 6301636}
!89 = !{i64 2154464898}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2154713513, i64 2154714006, i64 2154713550, i64 2154713606, i64 2154713640, i64 2154713664, i64 2154713705, i64 2154713726, i64 2154713754, i64 2154713788}
!92 = !{i32 0, i32 33}
!93 = !{i64 2154465117}
!94 = !{i64 6301218}
!95 = !{i64 2148216942, i64 2148216947, i64 2148216960, i64 2148217004, i64 2148217038, i64 2148217059}
!96 = !{i64 2148429147, i64 2148429179, i64 2148429208, i64 2148429242, i64 2148429273, i64 2148429296}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2148517148}
!99 = !{i64 2148431612, i64 2148431644, i64 2148431673, i64 2148431707, i64 2148431738, i64 2148431761}
!100 = !{i64 2149866265}
!101 = !{i64 2148903903, i64 2148903926, i64 2148903958, i64 2148903990, i64 2148904028, i64 2148904058}
!102 = !{i64 2154695296}
!103 = !{i64 937109, i64 937130, i64 937153, i64 937172, i64 937191}
!104 = !{i64 2154695699}
!105 = !{!"auto-init"}
!106 = !{i64 2154676929, i64 2154677422, i64 2154676966, i64 2154677022, i64 2154677056, i64 2154677080, i64 2154677121, i64 2154677142, i64 2154677170, i64 2154677204}
!107 = !{i64 2154684800}
!108 = !{i64 2154685294}
!109 = !{i64 2154709560, i64 2154710053, i64 2154709597, i64 2154709653, i64 2154709687, i64 2154709711, i64 2154709752, i64 2154709773, i64 2154709801, i64 2154709835}
