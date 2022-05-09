; ModuleID = '/llk/IR_all_yes/drivers/iommu/sprd-iommu.c_pt.bc'
source_filename = "../drivers/iommu/sprd-iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sprd_iommu_device = type { i32, ptr, i32, ptr, ptr, %struct.iommu_device, ptr, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.sprd_iommu_domain = type { %struct.spinlock, %struct.iommu_domain, ptr, i32, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_sprd_iommu__230_564_sprd_iommu_driver_init6 = internal global ptr @sprd_iommu_driver_init, section ".initcall6.init", align 4
@sprd_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_iommu_probe, ptr @sprd_iommu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sprd_iommu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_iommu_driver_exit = internal global ptr @sprd_iommu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [52 x i8] c"sprd_iommu.description=IOMMU driver for Unisoc SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"sprd_iommu.alias=platform:sprd-iommu\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [41 x i8] c"sprd_iommu.file=drivers/iommu/sprd-iommu\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"sprd_iommu.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sprd-iommu\00", [21 x i8] zeroinitializer }, align 32
@sprd_iommu_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,iommu-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_iommu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get ioremap resource.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_iommu_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iommu/sprd-iommu.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_iommu_probe._entry_ptr = internal global ptr @sprd_iommu_probe._entry, section ".printk_index", align 4
@sprd_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @sprd_iommu_domain_alloc, ptr @sprd_iommu_domain_free, ptr @sprd_iommu_attach_device, ptr @sprd_iommu_detach_device, ptr @sprd_iommu_map, ptr null, ptr @sprd_iommu_unmap, ptr null, ptr null, ptr @sprd_iommu_sync_map, ptr @sprd_iommu_sync, ptr @sprd_iommu_iova_to_phys, ptr @sprd_iommu_probe_device, ptr @sprd_iommu_release_device, ptr null, ptr @sprd_iommu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -4096, ptr null }, [60 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@sprd_iommu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IOMMU version(%d) is invalid.\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_iommu_probe._entry_ptr.8 = internal global ptr @sprd_iommu_probe._entry.6, section ".printk_index", align 4
@sprd_iommu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dom->pgtlock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sprd_iommu_attach_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013There's already a device attached to this domain.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sprd_iommu_attach_device\00", [39 x i8] zeroinitializer }, align 32
@sprd_iommu_attach_device._entry_ptr = internal global ptr @sprd_iommu_attach_device._entry, section ".printk_index", align 4
@sprd_iommu_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013No sprd_iommu_device attached to the domain\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_iommu_map\00", [17 x i8] zeroinitializer }, align 32
@sprd_iommu_map._entry_ptr = internal global ptr @sprd_iommu_map._entry, section ".printk_index", align 4
@sprd_iommu_map._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(iova(0x%lx) + size(%zx)) are not in the range!\0A\00", [47 x i8] zeroinitializer }, align 32
@sprd_iommu_map._entry_ptr.16 = internal global ptr @sprd_iommu_map._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"sprd_iommu_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 555, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 557, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"sprd_iommu_of_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 435, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 480, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"sprd_iommu_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 417, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 517, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 146, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 241, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 288, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [30 x i8] c"../drivers/iommu/sprd-iommu.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 293, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_sprd_iommu_driver_exit, ptr @__initcall__kmod_sprd_iommu__230_564_sprd_iommu_driver_init6, ptr @sprd_iommu_attach_device._entry, ptr @sprd_iommu_attach_device._entry_ptr, ptr @sprd_iommu_driver_exit, ptr @sprd_iommu_map._entry, ptr @sprd_iommu_map._entry.14, ptr @sprd_iommu_map._entry_ptr, ptr @sprd_iommu_map._entry_ptr.16, ptr @sprd_iommu_probe._entry, ptr @sprd_iommu_probe._entry.6, ptr @sprd_iommu_probe._entry_ptr, ptr @sprd_iommu_probe._entry_ptr.8, ptr @sprd_iommu_driver, ptr @.str, ptr @sprd_iommu_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sprd_iommu_ops, ptr @.str.7, ptr @sprd_iommu_domain_alloc.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_attach_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_iommu_map._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_iommu_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_iommu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_iommu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %base7 = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %base7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %base7, align 4
  %prot_page_pa = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 2
  %call.i92 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %prot_page_pa, i32 noundef 3264, i32 noundef 0) #7
  %prot_page_va = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %prot_page_va to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i92, ptr %prot_page_va, align 4
  %tobool10.not = icmp eq ptr %call.i92, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev13 = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev13, align 4
  %call14 = tail call ptr @iommu_group_alloc() #7
  %group = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %group, align 4
  %cmp.i93 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call14 to i32
  br label %free_page

if.end20:                                         ; preds = %if.end12
  %iommu = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %if.end20.dev_name.exit_crit_edge ]
  %call22 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %dev1, ptr noundef null, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %dev_name.exit.put_group_crit_edge

dev_name.exit.put_group_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_group

if.end25:                                         ; preds = %dev_name.exit
  %call27 = tail call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @sprd_iommu_ops, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.remove_sysfs_crit_edge

if.end25.remove_sysfs_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_sysfs

if.end30:                                         ; preds = %if.end25
  %call31 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #7
  br i1 %call31, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sprd_iommu_ops) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  %call.i94 = tail call ptr @devm_clk_get_optional(ptr noundef %12, ptr noundef null) #7
  %tobool.not.i95 = icmp eq ptr %call.i94, null
  br i1 %tobool.not.i95, label %if.end34.if.end38_crit_edge, label %if.end.i96

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end.i96:                                       ; preds = %if.end34
  %cmp.i.i = icmp ugt ptr %call.i94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sprd_iommu_clk_enable.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i96
  %eb5.i = getelementptr inbounds %struct.sprd_iommu_device, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %eb5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i94, ptr %eb5.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %call.i94) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.i.unregister_iommu_crit_edge

if.end4.i.unregister_iommu_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_iommu

if.end.i.i:                                       ; preds = %if.end4.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %call.i94) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end38_crit_edge, label %if.then3.i.i

if.end.i.i.if.end38_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %call.i94) #7
  br label %unregister_iommu

sprd_iommu_clk_enable.exit:                       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i94 to i32
  br label %unregister_iommu

if.end38:                                         ; preds = %if.end.i.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  %15 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base7, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !56
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %and.i = lshr i32 %18, 8
  %19 = and i32 %18, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %switch.i = icmp eq i32 %19, 0
  %shr.i = and i32 %and.i, 255
  %retval.0.i98 = select i1 %switch.i, i32 %shr.i, i32 -22
  br i1 %switch.i, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i98) #10
  tail call fastcc void @sprd_iommu_clk_disable(ptr noundef nonnull %call.i)
  br label %unregister_iommu

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i98, ptr %call.i, align 4
  br label %cleanup

unregister_iommu:                                 ; preds = %do.end43, %sprd_iommu_clk_enable.exit, %if.then3.i.i, %if.end4.i.unregister_iommu_crit_edge
  %ret.0 = phi i32 [ %14, %sprd_iommu_clk_enable.exit ], [ -22, %do.end43 ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end4.i.unregister_iommu_crit_edge ]
  tail call void @iommu_device_unregister(ptr noundef %iommu) #7
  br label %remove_sysfs

remove_sysfs:                                     ; preds = %unregister_iommu, %if.end25.remove_sysfs_crit_edge
  %ret.1 = phi i32 [ %call27, %if.end25.remove_sysfs_crit_edge ], [ %ret.0, %unregister_iommu ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #7
  br label %put_group

put_group:                                        ; preds = %remove_sysfs, %dev_name.exit.put_group_crit_edge
  %ret.2 = phi i32 [ %call22, %dev_name.exit.put_group_crit_edge ], [ %ret.1, %remove_sysfs ]
  %21 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %22) #7
  br label %free_page

free_page:                                        ; preds = %put_group, %if.then17
  %ret.3 = phi i32 [ %6, %if.then17 ], [ %ret.2, %put_group ]
  %23 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev13, align 4
  %25 = ptrtoint ptr %prot_page_va to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prot_page_va, align 4
  %27 = ptrtoint ptr %prot_page_pa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prot_page_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef 4096, ptr noundef %26, i32 noundef %28, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_page, %if.end44, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %ret.3, %free_page ], [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %prot_page_va = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prot_page_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prot_page_va, align 4
  %prot_page_pa = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %prot_page_pa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prot_page_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef %5, i32 noundef %7, i32 noundef 0) #7
  %group = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %9) #7
  %10 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %group, align 4
  %call2 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #7
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %driver_data.i.i, align 4
  %iommu = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 5
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #7
  tail call void @iommu_device_unregister(ptr noundef %iommu) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sprd_iommu_clk_disable(ptr nocapture noundef readonly %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eb = getelementptr inbounds %struct.sprd_iommu_device, ptr %sdev, i32 0, i32 7
  %0 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %1) #7
  tail call void @clk_unprepare(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sprd_iommu_domain_alloc(i32 noundef %domain_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %domain_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %domain_type, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 92) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @sprd_iommu_domain_alloc.__key, i16 noundef signext 3) #7
  %domain = getelementptr inbounds %struct.sprd_iommu_domain, ptr %call7.i.i, i32 0, i32 1
  %geometry = getelementptr inbounds %struct.sprd_iommu_domain, ptr %call7.i.i, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %geometry, align 8
  %aperture_end = getelementptr inbounds %struct.sprd_iommu_domain, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %3 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 268435455, ptr %aperture_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %domain, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_iommu_domain_free(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  tail call void @kfree(ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_attach_device(ptr noundef %domain, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %sdev3 = getelementptr i8, ptr %domain, i32 44
  %4 = ptrtoint ptr %sdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end:                                           ; preds = %dev_iommu_priv_get.exit
  %aperture_end.i = getelementptr %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aperture_end.i, align 4
  %sub.i = add i32 %7, 1
  %geometry.i = getelementptr %struct.iommu_domain, ptr %domain, i32 0, i32 5
  %8 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %geometry.i, align 4
  %add.i = sub i32 %sub.i, %9
  %10 = lshr i32 %add.i, 10
  %mul.i = and i32 %10, 4194300
  %dev5 = getelementptr inbounds %struct.sprd_iommu_device, ptr %retval.0.i, i32 0, i32 4
  %11 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5, align 4
  %pgt_pa = getelementptr i8, ptr %domain, i32 40
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef %mul.i, ptr noundef %pgt_pa, i32 noundef 3264, i32 noundef 0) #7
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %13 = ptrtoint ptr %pgt_va to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %pgt_va, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %14 = ptrtoint ptr %sdev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %sdev3, align 4
  %15 = ptrtoint ptr %pgt_pa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pgt_pa, align 4
  %shr.i = lshr i32 %16, 12
  %17 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  %base.i.i = getelementptr inbounds %struct.sprd_iommu_device, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #7, !srcloc !57
  %20 = ptrtoint ptr %sdev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %..i = select i1 %cmp.i, i32 8, i32 28
  %24 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %geometry.i, align 4
  %shr.i27 = lshr i32 %25, 12
  %26 = tail call i32 @llvm.bswap.i32(i32 %shr.i27) #7
  %base.i.i28 = getelementptr inbounds %struct.sprd_iommu_device, ptr %21, i32 0, i32 3
  %27 = ptrtoint ptr %base.i.i28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i28, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %28, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 %26) #7, !srcloc !57
  %29 = ptrtoint ptr %sdev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev3, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i31 = icmp eq i32 %32, 0
  %..i32 = select i1 %cmp.i31, i32 12, i32 32
  %33 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %aperture_end.i, align 4
  %35 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %geometry.i, align 4
  %sub.i35 = sub i32 %34, %36
  %shr.i36 = lshr i32 %sub.i35, 12
  %37 = tail call i32 @llvm.bswap.i32(i32 %shr.i36) #7
  %base.i.i37 = getelementptr inbounds %struct.sprd_iommu_device, ptr %30, i32 0, i32 3
  %38 = ptrtoint ptr %base.i.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i37, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %39, i32 %..i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 %37) #7, !srcloc !57
  %prot_page_pa.i = getelementptr inbounds %struct.sprd_iommu_device, ptr %retval.0.i, i32 0, i32 2
  %40 = ptrtoint ptr %prot_page_pa.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prot_page_pa.i, align 4
  %shr.i39 = lshr i32 %41, 12
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %43, label %if.end10.sprd_iommu_default_ppn.exit_crit_edge [
    i32 0, label %if.then.i42
    i32 1, label %if.then3.i
  ]

if.end10.sprd_iommu_default_ppn.exit_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_iommu_default_ppn.exit

if.then.i42:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %shr.i39) #7
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %47, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 %45) #7, !srcloc !57
  br label %sprd_iommu_default_ppn.exit

if.then3.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %shr.i39) #7
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %48) #7, !srcloc !57
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %52, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %48) #7, !srcloc !57
  br label %sprd_iommu_default_ppn.exit

sprd_iommu_default_ppn.exit:                      ; preds = %if.then3.i, %if.then.i42, %if.end10.sprd_iommu_default_ppn.exit_crit_edge
  %53 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i43 = icmp eq i32 %54, 0
  %..i44 = select i1 %cmp.i43, i32 0, i32 4
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 %..i44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !56
  %58 = or i32 %57, 50331648
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %60, i32 %..i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %58) #7, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %sprd_iommu_default_ppn.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sprd_iommu_default_ppn.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_iommu_detach_device(ptr nocapture noundef %domain, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev1 = getelementptr i8, ptr %domain, i32 44
  %0 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %aperture_end.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aperture_end.i, align 4
  %sub.i = add i32 %3, 1
  %geometry.i = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5
  %4 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %geometry.i, align 4
  %add.i = sub i32 %sub.i, %5
  %6 = lshr i32 %add.i, 10
  %mul.i = and i32 %6, 4194300
  %dev3 = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %9 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pgt_va, align 4
  %pgt_pa = getelementptr i8, ptr %domain, i32 40
  %11 = ptrtoint ptr %pgt_pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgt_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %mul.i, ptr noundef %10, i32 noundef %12, i32 noundef 0) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %..i = select i1 %cmp.i, i32 0, i32 4
  %base.i.i.i = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %..i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !56
  %18 = and i32 %17, -50331649
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %20, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %18) #7, !srcloc !57
  %21 = ptrtoint ptr %sdev1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sdev1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_map(ptr noundef %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %shr = lshr i32 %size, 12
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aperture_end, align 4
  %sdev = getelementptr i8, ptr %domain, i32 44
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %iova)
  %cmp = icmp ugt i32 %1, %iova
  br i1 %cmp, label %if.end.do.end8_crit_edge, label %lor.lhs.false

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

lor.lhs.false:                                    ; preds = %if.end
  %add = add i32 %size, %iova
  %add3 = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add3)
  %cmp4 = icmp ugt i32 %add, %add3
  br i1 %cmp4, label %lor.lhs.false.do.end8_crit_edge, label %if.end10

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end8:                                          ; preds = %lor.lhs.false.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %dev = getelementptr inbounds %struct.sprd_iommu_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %iova, i32 noundef %size) #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %8 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pgt_va, align 4
  %sub = sub i32 %iova, %1
  %shr11 = lshr i32 %sub, 12
  %add.ptr = getelementptr i32, ptr %9, i32 %shr11
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp2249.not = icmp ult i32 %size, 4096
  br i1 %cmp2249.not, label %if.end10.for.end_crit_edge, label %for.body.preheader

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end10
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pabase.051 = phi i32 [ %add25, %for.body.for.body_crit_edge ], [ %paddr, %for.body.preheader ]
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shr24 = lshr i32 %pabase.051, 12
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %i.050
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr24, ptr %arrayidx, align 4
  %add25 = add i32 %pabase.051, 4096
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call17) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %for.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_unmap(ptr noundef %domain, i32 noundef %iova, i32 noundef %size, ptr nocapture noundef readnone %iotlb_gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %geometry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %iova)
  %cmp = icmp ugt i32 %1, %iova
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aperture_end, align 4
  %add = add i32 %size, %iova
  %add2 = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add2)
  %cmp3 = icmp ugt i32 %add, %add2
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %4 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgt_va, align 4
  %sub = sub i32 %iova, %1
  %shr4 = lshr i32 %sub, 12
  %add.ptr = getelementptr i32, ptr %5, i32 %shr4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #7
  %6 = lshr i32 %size, 10
  %mul = and i32 %6, 4194300
  %7 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_iommu_sync_map(ptr nocapture noundef readonly %domain, i32 noundef %iova, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev = getelementptr i8, ptr %domain, i32 44
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %. = select i1 %cmp, i32 4, i32 8
  %base.i = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 -1) #7, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_iommu_sync(ptr nocapture noundef readonly %domain, ptr nocapture noundef readnone %iotlb_gather) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i = getelementptr i8, ptr %domain, i32 44
  %0 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %..i = select i1 %cmp.i, i32 4, i32 8
  %base.i.i = getelementptr inbounds %struct.sprd_iommu_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 %..i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -1) #7, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_iova_to_phys(ptr noundef %domain, i32 noundef %iova) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -44
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %geometry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %iova)
  %cmp = icmp ugt i32 %1, %iova
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %domain, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aperture_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %iova)
  %cmp2 = icmp ult i32 %3, %iova
  br i1 %cmp2, label %lor.rhs.do.end_crit_edge, label %do.body25, !prof !58

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 362, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body25:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #7
  %pgt_va = getelementptr i8, ptr %domain, i32 36
  %4 = ptrtoint ptr %pgt_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgt_va, align 4
  %sub = sub i32 %iova, %1
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr i32, ptr %5, i32 %shr
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %shl = shl i32 %7, 12
  %and = and i32 %sub, 4095
  %add = or i32 %shl, %and
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call29) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %add, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sprd_iommu_probe_device(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @sprd_iommu_ops
  br i1 %cmp.not, label %dev_iommu_priv_get.exit, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %iommu = getelementptr inbounds %struct.sprd_iommu_device, ptr %7, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %dev_iommu_priv_get.exit, %lor.lhs.false.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %iommu, %dev_iommu_priv_get.exit ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %dev_iommu_fwspec_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_iommu_release_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %lor.lhs.false

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_iommu_fwspec_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, @sprd_iommu_ops
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iommu_fwspec_free(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sprd_iommu_device_group(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %group = getelementptr inbounds %struct.sprd_iommu_device, ptr %retval.0.i, i32 0, i32 6
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %call1 = tail call ptr @iommu_group_ref_get(ptr noundef %5) #7
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_iommu_of_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %dev_iommu_priv_get.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

dev_iommu_priv_get.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.if.then_crit_edge, label %dev_iommu_priv_get.exit.if.end_crit_edge

dev_iommu_priv_get.exit.if.end_crit_edge:         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dev_iommu_priv_get.exit.if.then_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %dev_iommu_priv_get.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args, align 4
  %call1 = tail call ptr @of_find_device_by_node(ptr noundef %5) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %priv1.i, align 4
  tail call void @platform_device_put(ptr noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_iommu_priv_get.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_sprd_iommu__230_564_sprd_iommu_driver_init6, !1, !"__initcall__kmod_sprd_iommu__230_564_sprd_iommu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iommu/sprd-iommu.c", i32 564, i32 1}
!2 = !{ptr @__exitcall_sprd_iommu_driver_exit, !1, !"__exitcall_sprd_iommu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/iommu/sprd-iommu.c", i32 566, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias232, !6, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!6 = !{!"../drivers/iommu/sprd-iommu.c", i32 567, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iommu/sprd-iommu.c", i32 568, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iommu/sprd-iommu.c", i32 557, i32 12}
!12 = !{ptr @sprd_iommu_driver, !13, !"sprd_iommu_driver", i1 false, i1 false}
!13 = !{!"../drivers/iommu/sprd-iommu.c", i32 555, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/sprd-iommu.c", i32 480, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sprd_iommu_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sprd_iommu_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iommu/sprd-iommu.c", i32 517, i32 3}
!24 = !{ptr @sprd_iommu_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sprd_iommu_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sprd_iommu_ops, !27, !"sprd_iommu_ops", i1 false, i1 false}
!27 = !{!"../drivers/iommu/sprd-iommu.c", i32 417, i32 31}
!28 = !{ptr @sprd_iommu_domain_alloc.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/iommu/sprd-iommu.c", i32 146, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iommu/sprd-iommu.c", i32 241, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sprd_iommu_attach_device._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sprd_iommu_attach_device._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iommu/sprd-iommu.c", i32 288, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sprd_iommu_map._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sprd_iommu_map._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iommu/sprd-iommu.c", i32 293, i32 3}
!43 = !{ptr @sprd_iommu_map._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sprd_iommu_map._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @sprd_iommu_of_match, !46, !"sprd_iommu_of_match", i1 false, i1 false}
!46 = !{!"../drivers/iommu/sprd-iommu.c", i32 435, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 6261160}
!57 = !{i64 6260742}
!58 = !{!"branch_weights", i32 1, i32 2000}
