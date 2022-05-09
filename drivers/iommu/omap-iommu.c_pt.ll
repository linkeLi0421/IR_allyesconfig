; ModuleID = '/llk/IR_all_yes/drivers/iommu/omap-iommu.c_pt.bc'
source_filename = "../drivers/iommu/omap-iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_iommu_save_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_iommu_save_ctx\09\09\09\09"
module asm "\09.long\09__crc_omap_iommu_save_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_iommu_save_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_iommu_save_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_omap_iommu_save_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_iommu_restore_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_iommu_restore_ctx\09\09\09\09"
module asm "\09.long\09__crc_omap_iommu_restore_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_iommu_restore_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_iommu_restore_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_omap_iommu_restore_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_iommu_domain_deactivate\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_iommu_domain_deactivate\09\09\09\09"
module asm "\09.long\09__crc_omap_iommu_domain_deactivate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_iommu_domain_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_iommu_domain_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_omap_iommu_domain_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+omap_iommu_domain_activate\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_iommu_domain_activate\09\09\09\09"
module asm "\09.long\09__crc_omap_iommu_domain_activate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_iommu_domain_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_iommu_domain_activate\22\09\09\09\09\09"
module asm "__kstrtabns_omap_iommu_domain_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.omap_iommu = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.spinlock, i32, i32, ptr, ptr, i32, i32, i32, %struct.iommu_device, ptr, i8 }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.omap_iommu_arch_data = type { ptr, ptr }
%struct.iotlb_lock = type { i16, i16 }
%struct.cr_regs = type { i32, i32 }
%struct.omap_iommu_device = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iommu_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_iommu_domain = type { i32, ptr, ptr, %struct.spinlock, %struct.iommu_domain }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@omap_iommu_save_ctx.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap_iommu\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_iommu_save_ctx\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iommu/omap-iommu.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s\09[%02d] %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_omap_iommu_save_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_iommu_save_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_iommu_save_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_iommu_save_ctx to i32), ptr @__kstrtab_omap_iommu_save_ctx, ptr @__kstrtabns_omap_iommu_save_ctx }, section "___ksymtab_gpl+omap_iommu_save_ctx", align 4
@omap_iommu_restore_ctx.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_iommu_restore_ctx\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_omap_iommu_restore_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_iommu_restore_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_iommu_restore_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_iommu_restore_ctx to i32), ptr @__kstrtab_omap_iommu_restore_ctx, ptr @__kstrtabns_omap_iommu_restore_ctx }, section "___ksymtab_gpl+omap_iommu_restore_ctx", align 4
@__kstrtab_omap_iommu_domain_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_iommu_domain_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_iommu_domain_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_iommu_domain_deactivate to i32), ptr @__kstrtab_omap_iommu_domain_deactivate, ptr @__kstrtabns_omap_iommu_domain_deactivate }, section "___ksymtab_gpl+omap_iommu_domain_deactivate", align 4
@__kstrtab_omap_iommu_domain_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_iommu_domain_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_iommu_domain_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_iommu_domain_activate to i32), ptr @__kstrtab_omap_iommu_domain_activate, ptr @__kstrtabns_omap_iommu_domain_activate }, section "___ksymtab_gpl+omap_iommu_domain_activate", align 4
@__initcall__kmod_omap_iommu__245_1789_omap_iommu_init4 = internal global ptr @omap_iommu_init, section ".initcall4.init", align 4
@omap_iommu_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-dsp-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iopte_cache\00", [20 x i8] zeroinitializer }, align 32
@iopte_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_iommu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_iommu_probe, ptr @omap_iommu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_iommu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_iommu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@omap_iommu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to register driver\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_iommu_init\00", [16 x i8] zeroinitializer }, align 32
@omap_iommu_init._entry_ptr = internal global ptr @omap_iommu_init._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@omap_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr null, ptr @omap_iommu_domain_alloc, ptr @omap_iommu_domain_free, ptr @omap_iommu_attach_dev, ptr @omap_iommu_detach_dev, ptr @omap_iommu_map, ptr null, ptr @omap_iommu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @omap_iommu_iova_to_phys, ptr @omap_iommu_probe_device, ptr @omap_iommu_release_device, ptr null, ptr @omap_iommu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17895424, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap-iommu\00", [21 x i8] zeroinitializer }, align 32
@omap_iommu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @omap_iommu_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_iommu_runtime_suspend, ptr @omap_iommu_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_iommu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: only DT-based devices are supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_iommu_probe\00", [47 x i8] zeroinitializer }, align 32
@omap_iommu_probe._entry_ptr = internal global ptr @omap_iommu_probe._entry, section ".printk_index", align 4
@omap_iommu_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"device pm_domain is being reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,#tlb-entries\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,iommu-bus-err-back\00", [42 x i8] zeroinitializer }, align 32
@omap_iommu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&obj->iommu_lock\00", [47 x i8] zeroinitializer }, align 32
@omap_iommu_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&obj->page_table_lock\00", [42 x i8] zeroinitializer }, align 32
@omap_iommu_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 1246, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s registered\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_iommu_probe._entry_ptr.21 = internal global ptr @omap_iommu_probe._entry.17, section ".printk_index", align 4
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,dra7-dsp-iommu\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,syscon-mmuconfig\00", [44 x i8] zeroinitializer }, align 32
@omap_iommu_dra7_get_dsp_system_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1132, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ti,syscon-mmuconfig property is missing\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"omap_iommu_dra7_get_dsp_system_cfg\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@omap_iommu_dra7_get_dsp_system_cfg._entry_ptr = internal global ptr @omap_iommu_dra7_get_dsp_system_cfg._entry, section ".printk_index", align 4
@omap_iommu_dra7_get_dsp_system_cfg._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 1146, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"couldn't get the IOMMU instance id within subsystem\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_iommu_dra7_get_dsp_system_cfg._entry_ptr.29 = internal global ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.27, section ".printk_index", align 4
@omap_iommu_dra7_get_dsp_system_cfg._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.2, i32 1151, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid IOMMU instance id\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_iommu_dra7_get_dsp_system_cfg._entry_ptr.32 = internal global ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.30, section ".printk_index", align 4
@iommu_fault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 829, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: errs:0x%08x da:0x%08x pgd:0x%p *pgd:px%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iommu_fault_handler\00", [44 x i8] zeroinitializer }, align 32
@iommu_fault_handler._entry_ptr = internal global ptr @iommu_fault_handler._entry, section ".printk_index", align 4
@iommu_fault_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 836, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: errs:0x%08x da:0x%08x pgd:0x%p *pgd:0x%08x pte:0x%p *pte:0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@iommu_fault_handler._entry_ptr.37 = internal global ptr @iommu_fault_handler._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"40d01000.mmu\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"41501000.mmu\00", [19 x i8] zeroinitializer }, align 32
@omap_iommu_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1276, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s removed\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_iommu_remove\00", [46 x i8] zeroinitializer }, align 32
@omap_iommu_remove._entry_ptr = internal global ptr @omap_iommu_remove._entry, section ".printk_index", align 4
@omap_iommu_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1033, ptr @.str.44, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pwrdm_constraint failed to be reset, status = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_iommu_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_iommu_runtime_suspend._entry_ptr = internal global ptr @omap_iommu_runtime_suspend._entry, section ".printk_index", align 4
@omap2_iommu_disable.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap2_iommu_disable\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s is shutting down\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_iommu_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1063, ptr @.str.44, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pwrdm_constraint failed to be set, status = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_iommu_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@omap_iommu_runtime_resume._entry_ptr = internal global ptr @omap_iommu_runtime_resume._entry, section ".printk_index", align 4
@omap_iommu_runtime_resume._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1070, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"deassert_reset failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_iommu_runtime_resume._entry_ptr.51 = internal global ptr @omap_iommu_runtime_resume._entry.49, section ".printk_index", align 4
@omap2_iommu_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 167, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: version %d.%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap2_iommu_enable\00", [45 x i8] zeroinitializer }, align 32
@omap2_iommu_enable._entry_ptr = internal global ptr @omap2_iommu_enable._entry, section ".printk_index", align 4
@omap_iommu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&omap_domain->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_omap_iommu_detach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1529, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"domain has no attached device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_omap_iommu_detach_dev\00", [41 x i8] zeroinitializer }, align 32
@_omap_iommu_detach_dev._entry_ptr = internal global ptr @_omap_iommu_detach_dev._entry, section ".printk_index", align 4
@_omap_iommu_detach_dev._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1535, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid attached device\0A\00", [39 x i8] zeroinitializer }, align 32
@_omap_iommu_detach_dev._entry_ptr.59 = internal global ptr @_omap_iommu_detach_dev._entry.57, section ".printk_index", align 4
@omap_iommu_detach.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_iommu_detach\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@omap_iommu_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1466, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device doesn't have an associated iommu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_iommu_attach_dev\00", [42 x i8] zeroinitializer }, align 32
@omap_iommu_attach_dev._entry_ptr = internal global ptr @omap_iommu_attach_dev._entry, section ".printk_index", align 4
@omap_iommu_attach_dev._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 1474, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iommu domain is already attached\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_iommu_attach_dev._entry_ptr.66 = internal global ptr @omap_iommu_attach_dev._entry.64, section ".printk_index", align 4
@omap_iommu_attach_dev._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 1482, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to allocate required iommu data %d\0A\00", [53 x i8] zeroinitializer }, align 32
@omap_iommu_attach_dev._entry_ptr.69 = internal global ptr @omap_iommu_attach_dev._entry.67, section ".printk_index", align 4
@omap_iommu_attach_dev._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 1492, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get omap iommu: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_iommu_attach_dev._entry_ptr.72 = internal global ptr @omap_iommu_attach_dev._entry.70, section ".printk_index", align 4
@omap_iommu_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 855, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA map error for L1 table\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_iommu_attach\00", [46 x i8] zeroinitializer }, align 32
@omap_iommu_attach._entry_ptr = internal global ptr @omap_iommu_attach._entry, section ".printk_index", align 4
@omap_iommu_attach.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.61, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@omap_iommu_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 1335, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid size to map: %zu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_iommu_map\00", [17 x i8] zeroinitializer }, align 32
@omap_iommu_map._entry_ptr = internal global ptr @omap_iommu_map._entry, section ".printk_index", align 4
@omap_iommu_map.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mapping da 0x%lx to pa %pa size 0x%zx\0A\00", [57 x i8] zeroinitializer }, align 32
@omap_iommu_map._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.2, i32 1349, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"omap_iopgtable_store_entry failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@omap_iommu_map._entry_ptr.82 = internal global ptr @omap_iommu_map._entry.80, section ".printk_index", align 4
@flush_iotlb_page.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flush_iotlb_page\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %08x<=%08x(%zx)\0A\00", [43 x i8] zeroinitializer }, align 32
@flush_iotlb_page.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: no page for %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@iopgd_alloc_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 568, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %08x:%08x should aligned on %08lx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iopgd_alloc_super\00", [46 x i8] zeroinitializer }, align 32
@iopgd_alloc_super._entry_ptr = internal global ptr @iopgd_alloc_super._entry, section ".printk_index", align 4
@iopgd_alloc_section._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.88, ptr @.str.2, i32 551, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iopgd_alloc_section\00", [44 x i8] zeroinitializer }, align 32
@iopgd_alloc_section._entry_ptr = internal global ptr @iopgd_alloc_section._entry, section ".printk_index", align 4
@iopte_alloc_large._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.89, ptr @.str.2, i32 607, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iopte_alloc_large\00", [46 x i8] zeroinitializer }, align 32
@iopte_alloc_large._entry_ptr = internal global ptr @iopte_alloc_large._entry, section ".printk_index", align 4
@iopte_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 508, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA map error for L2 table\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iopte_alloc\00", [20 x i8] zeroinitializer }, align 32
@iopte_alloc._entry_ptr = internal global ptr @iopte_alloc._entry, section ".printk_index", align 4
@iopte_alloc._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.2, i32 518, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMA translation error for L2 table\0A\00", [60 x i8] zeroinitializer }, align 32
@iopte_alloc._entry_ptr.94 = internal global ptr @iopte_alloc._entry.92, section ".printk_index", align 4
@omap_iommu_unmap.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_iommu_unmap\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unmapping da 0x%lx size %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_iommu_iova_to_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1626, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bogus pte 0x%x, da 0x%llx\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_iommu_iova_to_phys\00", [40 x i8] zeroinitializer }, align 32
@omap_iommu_iova_to_phys._entry_ptr = internal global ptr @omap_iommu_iova_to_phys._entry, section ".printk_index", align 4
@omap_iommu_iova_to_phys._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 1634, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bogus pgd 0x%x, da 0x%llx\00", [38 x i8] zeroinitializer }, align 32
@omap_iommu_iova_to_phys._entry_ptr.101 = internal global ptr @omap_iommu_iova_to_phys._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@switch.table.omap_iommu_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iopgd_alloc_section, ptr @iopte_alloc_large, ptr @iopte_alloc_page, ptr @iopgd_alloc_super], [16 x i8] zeroinitializer }, align 32
@switch.table.flush_iotlb_page = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1048576, i32 -65536, i32 -4096, i32 -16777216], [16 x i8] zeroinitializer }, align 32
@switch.table.flush_iotlb_page.103 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1048576, i32 65536, i32 4096, i32 16777216], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 4096, i64 65536, i64 1048576, i64 16777216]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 262146]
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 86, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 116, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"omap_iommu_of_match\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1288, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1763, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"iopte_cachep\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 53, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"omap_iommu_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1296, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1773, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"omap_iommu_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1735, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1300, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"omap_iommu_pm_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1280, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1170, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1183, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1189, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1194, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1205, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1206, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1246, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1128, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1131, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1132, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1146, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1151, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 828, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 835, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1115, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1116, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1276, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1032, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 189, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1062, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1070, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 166, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1580, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1529, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1535, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 897, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1466, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1474, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1481, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1492, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 855, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 326, i32 6 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1335, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1339, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1348, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 425, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 435, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 567, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 550, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 606, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 508, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 518, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1376, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1625, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1633, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.450 = private constant [30 x i8] c"../drivers/iommu/omap-iommu.c\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 1661, i32 61 }
@___asan_gen_.452 = private unnamed_addr constant [28 x i8] c"switch.table.omap_iommu_map\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [30 x i8] c"switch.table.flush_iotlb_page\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [34 x i8] c"switch.table.flush_iotlb_page.103\00", align 1
@llvm.compiler.used = appending global [152 x ptr] [ptr @__initcall__kmod_omap_iommu__245_1789_omap_iommu_init4, ptr @__ksymtab_omap_iommu_domain_activate, ptr @__ksymtab_omap_iommu_domain_deactivate, ptr @__ksymtab_omap_iommu_restore_ctx, ptr @__ksymtab_omap_iommu_save_ctx, ptr @_omap_iommu_detach_dev._entry, ptr @_omap_iommu_detach_dev._entry.57, ptr @_omap_iommu_detach_dev._entry_ptr, ptr @_omap_iommu_detach_dev._entry_ptr.59, ptr @iommu_fault_handler._entry, ptr @iommu_fault_handler._entry.35, ptr @iommu_fault_handler._entry_ptr, ptr @iommu_fault_handler._entry_ptr.37, ptr @iopgd_alloc_section._entry, ptr @iopgd_alloc_section._entry_ptr, ptr @iopgd_alloc_super._entry, ptr @iopgd_alloc_super._entry_ptr, ptr @iopte_alloc._entry, ptr @iopte_alloc._entry.92, ptr @iopte_alloc._entry_ptr, ptr @iopte_alloc._entry_ptr.94, ptr @iopte_alloc_large._entry, ptr @iopte_alloc_large._entry_ptr, ptr @omap2_iommu_enable._entry, ptr @omap2_iommu_enable._entry_ptr, ptr @omap_iommu_attach._entry, ptr @omap_iommu_attach._entry_ptr, ptr @omap_iommu_attach_dev._entry, ptr @omap_iommu_attach_dev._entry.64, ptr @omap_iommu_attach_dev._entry.67, ptr @omap_iommu_attach_dev._entry.70, ptr @omap_iommu_attach_dev._entry_ptr, ptr @omap_iommu_attach_dev._entry_ptr.66, ptr @omap_iommu_attach_dev._entry_ptr.69, ptr @omap_iommu_attach_dev._entry_ptr.72, ptr @omap_iommu_dra7_get_dsp_system_cfg._entry, ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.27, ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.30, ptr @omap_iommu_dra7_get_dsp_system_cfg._entry_ptr, ptr @omap_iommu_dra7_get_dsp_system_cfg._entry_ptr.29, ptr @omap_iommu_dra7_get_dsp_system_cfg._entry_ptr.32, ptr @omap_iommu_init._entry, ptr @omap_iommu_init._entry_ptr, ptr @omap_iommu_iova_to_phys._entry, ptr @omap_iommu_iova_to_phys._entry.99, ptr @omap_iommu_iova_to_phys._entry_ptr, ptr @omap_iommu_iova_to_phys._entry_ptr.101, ptr @omap_iommu_map._entry, ptr @omap_iommu_map._entry.80, ptr @omap_iommu_map._entry_ptr, ptr @omap_iommu_map._entry_ptr.82, ptr @omap_iommu_probe._entry, ptr @omap_iommu_probe._entry.17, ptr @omap_iommu_probe._entry_ptr, ptr @omap_iommu_probe._entry_ptr.21, ptr @omap_iommu_remove._entry, ptr @omap_iommu_remove._entry_ptr, ptr @omap_iommu_runtime_resume._entry, ptr @omap_iommu_runtime_resume._entry.49, ptr @omap_iommu_runtime_resume._entry_ptr, ptr @omap_iommu_runtime_resume._entry_ptr.51, ptr @omap_iommu_runtime_suspend._entry, ptr @omap_iommu_runtime_suspend._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @omap_iommu_of_match, ptr @.str.5, ptr @iopte_cachep, ptr @omap_iommu_driver, ptr @.str.6, ptr @.str.7, ptr @omap_iommu_ops, ptr @.str.8, ptr @omap_iommu_pm_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @omap_iommu_probe.__key, ptr @.str.14, ptr @omap_iommu_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @omap_iommu_domain_alloc.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @switch.table.omap_iommu_map, ptr @switch.table.flush_iotlb_page, ptr @switch.table.flush_iotlb_page.103], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopte_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_dra7_get_dsp_system_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_fault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_fault_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_runtime_resume._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_iommu_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_iommu_detach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_omap_iommu_detach_dev._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_attach_dev._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_attach_dev._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_attach_dev._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_map._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopgd_alloc_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopgd_alloc_section._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopte_alloc_large._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopte_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iopte_alloc._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_iova_to_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_iommu_iova_to_phys._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_iommu_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.flush_iotlb_page to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.flush_iotlb_page.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_iommu_save_ctx(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %while.cond.preheader

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %dev_iommu_priv_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not32 = icmp eq ptr %5, null
  br i1 %tobool1.not32, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %6 = phi ptr [ %18, %for.end.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %arch_data.033 = phi ptr [ %incdec.ptr, %for.end.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %ctx = getelementptr inbounds %struct.omap_iommu, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %regbase.i = getelementptr inbounds %struct.omap_iommu, ptr %6, i32 0, i32 1
  %dev9 = getelementptr inbounds %struct.omap_iommu, ptr %6, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body
  %i.030 = phi i32 [ 0, %while.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.030, 2
  %9 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !231
  %arrayidx = getelementptr i32, ptr %8, i32 %i.030
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_save_ctx.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_save_ctx, %if.then8)) #11
          to label %for.inc [label %if.then8], !srcloc !232

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev9, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_save_ctx.__UNIQUE_ID_ddebug235, ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.030, i32 noundef %16) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %incdec.ptr = getelementptr %struct.omap_iommu_arch_data, ptr %arch_data.033, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq ptr %18, null
  br i1 %tobool1.not, label %for.end.cleanup_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %dev_iommu_priv_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_iommu_restore_ctx(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %while.cond.preheader

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %dev_iommu_priv_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not31 = icmp eq ptr %5, null
  br i1 %tobool1.not31, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %6 = phi ptr [ %18, %for.end.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %arch_data.032 = phi ptr [ %incdec.ptr, %for.end.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %ctx = getelementptr inbounds %struct.omap_iommu, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %regbase.i = getelementptr inbounds %struct.omap_iommu, ptr %6, i32 0, i32 1
  %dev8 = getelementptr inbounds %struct.omap_iommu, ptr %6, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body
  %i.029 = phi i32 [ 0, %while.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %8, i32 %i.029
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %mul = shl nuw nsw i32 %i.029, 2
  %11 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #11, !srcloc !233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_restore_ctx.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_restore_ctx, %if.then7)) #11
          to label %for.inc [label %if.then7], !srcloc !232

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_restore_ctx.__UNIQUE_ID_ddebug236, ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %i.029, i32 noundef %16) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %incdec.ptr = getelementptr %struct.omap_iommu_arch_data, ptr %arch_data.032, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr, align 4
  %tobool1.not = icmp eq ptr %18, null
  br i1 %tobool1.not, label %for.end.cleanup_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %dev_iommu_priv_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iotlb_lock_get(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !231
  %3 = trunc i32 %2 to i16
  %4 = lshr i16 %3, 10
  %conv = and i16 %4, 31
  %5 = ptrtoint ptr %l to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %l, align 2
  %6 = lshr i16 %3, 4
  %conv3 = and i16 %6, 31
  %vict = getelementptr inbounds %struct.iotlb_lock, ptr %l, i32 0, i32 1
  %7 = ptrtoint ptr %vict to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv3, ptr %vict, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iotlb_lock_set(ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %l, align 2
  %conv = sext i16 %1 to i32
  %shl = shl nsw i32 %conv, 10
  %vict = getelementptr inbounds %struct.iotlb_lock, ptr %l, i32 0, i32 1
  %2 = ptrtoint ptr %vict to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vict, align 2
  %conv1 = sext i16 %3 to i32
  %shl2 = shl nsw i32 %conv1, 4
  %or = or i32 %shl2, %shl
  %regbase.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 1
  %4 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #11, !srcloc !233
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__iotlb_read_cr(ptr noalias nocapture writeonly sret(%struct.cr_regs) align 4 %agg.result, ptr nocapture noundef readonly %obj, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.cr_regs, ptr %agg.result, i32 0, i32 1
  %regbase.i.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 1
  %1 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !231
  %conv.i = and i32 %3, 31744
  %sext = shl i32 %n, 16
  %shl2.i = ashr exact i32 %sext, 12
  %or.i = or i32 %conv.i, %shl2.i
  %4 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 %or.i) #11, !srcloc !233
  %6 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %7, i32 104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #11, !srcloc !231
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %agg.result, align 4
  %10 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %11, i32 108
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11, !srcloc !231
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_iommu_domain_deactivate(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %dev = getelementptr i8, ptr %domain, i32 -48
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %iommus = getelementptr i8, ptr %domain, i32 -52
  %4 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommus, align 4
  %sub = add i32 %3, -1
  %add.ptr = getelementptr %struct.omap_iommu_device, ptr %5, i32 %sub
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iommu.014 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %iommu_dev = getelementptr inbounds %struct.omap_iommu_device, ptr %iommu.014, i32 0, i32 1
  %6 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu_dev, align 4
  %dev2 = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #11
  %inc = add nuw i32 %i.015, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_device, ptr %iommu.014, i32 -1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_iommu_domain_activate(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %dev = getelementptr i8, ptr %domain, i32 -48
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %iommus = getelementptr i8, ptr %domain, i32 -52
  %4 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommus, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iommu.011 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %iommu_dev = getelementptr inbounds %struct.omap_iommu_device, ptr %iommu.011, i32 0, i32 1
  %6 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu_dev, align 4
  %dev1 = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #11
  %inc = add nuw i32 %i.012, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_device, ptr %iommu.011, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap_iommu_of_match, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @of_node_put(ptr noundef nonnull %call.i) #11
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 1024, i32 noundef 1024, i32 noundef 8192, ptr noundef null) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store ptr %call1, ptr @iopte_cachep, align 4
  tail call void @omap_iommu_debugfs_init() #11
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_iommu_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  br label %fail_driver

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @omap_iommu_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %fail_bus

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail_bus:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_iommu_driver) #11
  br label %fail_driver

fail_driver:                                      ; preds = %fail_bus, %do.end
  %ret.0 = phi i32 [ %call5, %do.end ], [ %call10, %fail_bus ]
  %0 = load ptr, ptr @iopte_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_driver, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_driver ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_iommu_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 428, i32 noundef 3520) #11
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %2 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end5.if.end22_crit_edge, label %do.body9

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body9:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_probe, %if.then15)) #11
          to label %do.end19 [label %if.then15], !srcloc !232

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_probe.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  %4 = ptrtoint ptr %pm_domain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pm_domain, align 8
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.end5.if.end22_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i179 = phi ptr [ %8, %if.end.i ], [ %6, %if.end22.dev_name.exit_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i179, ptr %call.i, align 4
  %nr_tlb_entries = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %nr_tlb_entries to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %nr_tlb_entries, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef %nr_tlb_entries, i32 noundef 1, i32 noundef 0) #11
  %11 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #11
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %dev_name.exit.cleanup_crit_edge [
    i32 0, label %dev_name.exit.if.end29_crit_edge
    i32 -22, label %dev_name.exit.if.end29_crit_edge200
  ]

dev_name.exit.if.end29_crit_edge200:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

dev_name.exit.if.end29_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %dev_name.exit.if.end29_crit_edge, %dev_name.exit.if.end29_crit_edge200
  %13 = ptrtoint ptr %nr_tlb_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_tlb_entries, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %14, label %if.end29.cleanup_crit_edge [
    i32 32, label %if.end29.if.end36_crit_edge
    i32 8, label %if.end29.if.end36_crit_edge201
  ]

if.end29.if.end36_crit_edge201:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.end29.if.end36_crit_edge, %if.end29.if.end36_crit_edge201
  %call37 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef null) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %has_bus_err_back = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %has_bus_err_back to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %has_bus_err_back, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %dev42 = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %dev42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev42, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 172
  %ctx = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %nr_tlb_entries to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_tlb_entries, align 4
  %mul = shl i32 %20, 3
  %call.i180 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #11
  %cr_ctx = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 12
  %21 = ptrtoint ptr %cr_ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i180, ptr %cr_ctx, align 4
  %tobool47.not = icmp eq ptr %call.i180, null
  br i1 %tobool47.not, label %if.end40.cleanup_crit_edge, label %do.body50

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body50:                                        ; preds = %if.end40
  %iommu_lock = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %iommu_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @omap_iommu_probe.__key, i16 noundef signext 3) #11
  %page_table_lock = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %page_table_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @omap_iommu_probe.__key.15, i16 noundef signext 3) #11
  %call58 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  %call60 = tail call ptr @devm_ioremap_resource(ptr noundef %23, ptr noundef %call58) #11
  %regbase = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call60, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then63, label %if.end66

if.then63:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end66:                                         ; preds = %do.body50
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i181 = tail call i32 @of_device_is_compatible(ptr noundef %27, ptr noundef nonnull @.str.22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool.not.i182 = icmp eq i32 %call.i181, 0
  br i1 %tobool.not.i182, label %if.end66.if.end70_crit_edge, label %if.end.i184

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.end.i184:                                      ; preds = %if.end66
  %call.i.i183 = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.23, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i183, null
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i184
  %call5.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %27, ptr noundef nonnull @.str.23) #11
  %syscfg.i = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i, ptr %syscfg.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %omap_iommu_dra7_get_dsp_system_cfg.exit, label %if.end11.i

if.end11.i:                                       ; preds = %if.end4.i
  %id.i = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 15
  %call12.i = tail call i32 @of_property_read_u32_index(ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef %id.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #14
  br label %cleanup

if.end19.i:                                       ; preds = %if.end11.i
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %switch.i = icmp ult i32 %30, 2
  br i1 %switch.i, label %if.end19.i.if.end70_crit_edge, label %do.end26.i

if.end19.i.if.end70_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #14
  br label %cleanup

omap_iommu_dra7_get_dsp_system_cfg.exit:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call5.i to i32
  br label %cleanup

if.end70:                                         ; preds = %if.end19.i.if.end70_crit_edge, %if.end66.if.end70_crit_edge
  %call71 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.cleanup_crit_edge, label %if.end74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %32 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev42, align 4
  %init_name.i186 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i186 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i186, align 8
  %tobool.not.i187 = icmp eq ptr %35, null
  br i1 %tobool.not.i187, label %if.end.i188, label %if.end74.dev_name.exit190_crit_edge

if.end74.dev_name.exit190_crit_edge:              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit190

if.end.i188:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  br label %dev_name.exit190

dev_name.exit190:                                 ; preds = %if.end.i188, %if.end74.dev_name.exit190_crit_edge
  %retval.0.i189 = phi ptr [ %37, %if.end.i188 ], [ %35, %if.end74.dev_name.exit190_crit_edge ]
  %call.i191 = tail call i32 @devm_request_threaded_irq(ptr noundef %33, i32 noundef %call71, ptr noundef nonnull @iommu_fault_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i189, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %cmp79 = icmp slt i32 %call.i191, 0
  br i1 %cmp79, label %dev_name.exit190.cleanup_crit_edge, label %if.end81

dev_name.exit190.cleanup_crit_edge:               ; preds = %dev_name.exit190
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end81:                                         ; preds = %dev_name.exit190
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call82 = tail call fastcc zeroext i1 @omap_iommu_can_register(ptr noundef %pdev)
  br i1 %call82, label %if.then83, label %if.end81.if.end103_crit_edge

if.end81.if.end103_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then83:                                        ; preds = %if.end81
  %call84 = tail call ptr @iommu_group_alloc() #11
  %group = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 17
  %39 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call84, ptr %group, align 4
  %cmp.i192 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %call84 to i32
  br label %cleanup

if.end90:                                         ; preds = %if.then83
  %iommu = getelementptr inbounds %struct.omap_iommu, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev42, align 4
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %call93 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %42, ptr noundef null, ptr noundef %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end90.out_group_crit_edge

if.end90.out_group_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_group

if.end96:                                         ; preds = %if.end90
  %call99 = tail call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @omap_iommu_ops, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end96.if.end103_crit_edge, label %out_sysfs

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.end103:                                        ; preds = %if.end96.if.end103_crit_edge, %if.end81.if.end103_crit_edge
  %45 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev42, align 4
  tail call void @pm_runtime_enable(ptr noundef %46) #11
  tail call void @omap_iommu_debugfs_add(ptr noundef nonnull %call.i) #11
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %48) #14
  %call110 = tail call i32 @bus_iommu_probe(ptr noundef nonnull @platform_bus_type) #11
  br label %cleanup

out_sysfs:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #11
  br label %out_group

out_group:                                        ; preds = %out_sysfs, %if.end90.out_group_crit_edge
  %err.0 = phi i32 [ %call93, %if.end90.out_group_crit_edge ], [ %call99, %out_sysfs ]
  %49 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %50) #11
  br label %cleanup

cleanup:                                          ; preds = %out_group, %if.end103, %if.then87, %dev_name.exit190.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %omap_iommu_dra7_get_dsp_system_cfg.exit, %do.end26.i, %do.end17.i, %do.end.i, %if.then63, %if.end40.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %25, %if.then63 ], [ %40, %if.then87 ], [ %err.0, %out_group ], [ 0, %if.end103 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %11, %dev_name.exit.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ %31, %omap_iommu_dra7_get_dsp_system_cfg.exit ], [ -19, %if.end70.cleanup_crit_edge ], [ %call.i191, %dev_name.exit190.cleanup_crit_edge ], [ -22, %do.end17.i ], [ -22, %do.end26.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %group = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iommu_group_put(ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %group, align 4
  %iommu = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 16
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #11
  tail call void @iommu_device_unregister(ptr noundef %iommu) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @omap_iommu_debugfs_remove(ptr noundef %1) #11
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #11
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.40, ptr noundef %8) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iommu_fault_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.omap_iommu, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %dev = getelementptr i8, ptr %1, i32 -48
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %regbase.i.i = getelementptr inbounds %struct.omap_iommu, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !231
  %and.i = and i32 %6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %8, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #11, !srcloc !231
  %10 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %and.i) #11, !srcloc !233
  %dev5 = getelementptr inbounds %struct.omap_iommu, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %call6 = tail call i32 @report_iommu_fault(ptr noundef %1, ptr noundef %13, i32 noundef %9, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %14 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #11, !srcloc !233
  %iopgd10 = getelementptr inbounds %struct.omap_iommu, ptr %data, i32 0, i32 7
  %16 = ptrtoint ptr %iopgd10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iopgd10, align 4
  %shr = lshr i32 %9, 20
  %add.ptr = getelementptr i32, ptr %17, i32 %shr
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %and11 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 1
  br i1 %cmp12, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev5, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.33, ptr noundef %23, i32 noundef %and.i, i32 noundef %9, ptr noundef %add.ptr, i32 noundef %19) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %and16 = and i32 %19, -1024
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and16, i32 -2130706432, i32 8454144) #15, !srcloc !234
  %25 = inttoptr i32 %24 to ptr
  %shr18 = lshr i32 %9, 12
  %and19 = and i32 %shr18, 255
  %add.ptr20 = getelementptr i32, ptr %25, i32 %and19
  %26 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev5, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.36, ptr noundef %29, i32 noundef %and.i, i32 noundef %9, ptr noundef %add.ptr, i32 noundef %19, ptr noundef %add.ptr20, i32 noundef %31) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @omap_iommu_can_register(ptr nocapture noundef readonly %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dev_name.exit, label %dev_name.exit.thread

dev_name.exit:                                    ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(13) @.str.38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %dev_name.exit.cleanup_crit_edge, label %if.end.i15

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dev_name.exit.thread:                             ; preds = %if.end
  %call319 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(13) @.str.38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool4.not20 = icmp eq i32 %call319, 0
  br i1 %tobool4.not20, label %dev_name.exit.thread.cleanup_crit_edge, label %dev_name.exit.thread.dev_name.exit17_crit_edge

dev_name.exit.thread.dev_name.exit17_crit_edge:   ; preds = %dev_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit17

dev_name.exit.thread.cleanup_crit_edge:           ; preds = %dev_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i15:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit17

dev_name.exit17:                                  ; preds = %if.end.i15, %dev_name.exit.thread.dev_name.exit17_crit_edge
  %retval.0.i16 = phi ptr [ %7, %if.end.i15 ], [ %3, %dev_name.exit.thread.dev_name.exit17_crit_edge ]
  %call7 = tail call i32 @strcmp(ptr noundef %retval.0.i16, ptr noundef nonnull dereferenceable(13) @.str.39) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit17, %dev_name.exit.thread.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %dev_name.exit.cleanup_crit_edge ], [ %tobool8.not, %dev_name.exit17 ], [ true, %dev_name.exit.thread.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_iommu_debugfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_iommu_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_iommu_debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_iommu_prepare(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %. = zext i1 %cmp.i to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %domain = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iopgd = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %iopgd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iopgd, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %regbase.i.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 80
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !231
  %11 = trunc i32 %10 to i16
  %12 = lshr i16 %11, 10
  %conv.i.i = and i16 %12, 31
  %conv17.i = zext i16 %conv.i.i to i32
  %num_cr_ctx.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %num_cr_ctx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv17.i, ptr %num_cr_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i)
  %tobool.not.i = icmp eq i16 %conv.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.rhs.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.preheader.i:                             ; preds = %if.then
  %cr_ctx.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %cr_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cr_ctx.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %i.020.i = phi i32 [ %inc.i, %land.rhs.i.land.rhs.i_crit_edge ], [ 0, %land.rhs.preheader.i ]
  %tmp.019.i = phi ptr [ %incdec.ptr.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %15, %land.rhs.preheader.i ]
  %16 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !235
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !noalias !235, !srcloc !231
  %conv.i.i.i = and i32 %18, 31744
  %sext.i.i = shl i32 %i.020.i, 16
  %shl2.i.i.i = ashr exact i32 %sext.i.i, 12
  %or.i.i.i = or i32 %conv.i.i.i, %shl2.i.i.i
  %19 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !235
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i.i, i32 %or.i.i.i) #11, !noalias !235, !srcloc !233
  %21 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !235
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %22, i32 104
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i.i) #11, !noalias !235, !srcloc !231
  %24 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !235
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %25, i32 108
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #11, !noalias !235, !srcloc !231
  %incdec.ptr.i = getelementptr %struct.cr_regs, ptr %tmp.019.i, i32 1
  %27 = ptrtoint ptr %tmp.019.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %tmp.019.i, align 4
  %cr.sroa.5.0.tmp.0..sroa_idx.i = getelementptr inbounds i8, ptr %tmp.019.i, i32 4
  %28 = ptrtoint ptr %cr.sroa.5.0.tmp.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %cr.sroa.5.0.tmp.0..sroa_idx.i, align 4
  %inc.i = add nuw i32 %i.020.i, 1
  %29 = ptrtoint ptr %num_cr_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_cr_ctx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %land.rhs.i.land.rhs.i_crit_edge, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end:                                           ; preds = %land.rhs.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regbase.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 68
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !231
  %and.i = and i32 %33, -15
  %34 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %35, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %and.i) #11, !srcloc !233
  %syscfg.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %syscfg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %syscfg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.dra7_cfg_dspsys_mmu.exit.i_crit_edge, label %if.end.i.i

if.end.dra7_cfg_dspsys_mmu.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dra7_cfg_dspsys_mmu.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %id.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 15
  %38 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %39, 2
  %shl.i.i = shl nuw i32 1, %mul.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %37, i32 noundef 24, i32 noundef %shl.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %dra7_cfg_dspsys_mmu.exit.i

dra7_cfg_dspsys_mmu.exit.i:                       ; preds = %if.end.i.i, %if.end.dra7_cfg_dspsys_mmu.exit.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_iommu_disable.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_runtime_suspend, %if.then.i)) #11
          to label %omap2_iommu_disable.exit [label %if.then.i], !srcloc !232

if.then.i:                                        ; preds = %dra7_cfg_dspsys_mmu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap2_iommu_disable.__UNIQUE_ID_ddebug237, ptr noundef %41, ptr noundef nonnull @.str.46, ptr noundef %43) #11
  br label %omap2_iommu_disable.exit

omap2_iommu_disable.exit:                         ; preds = %if.then.i, %dra7_cfg_dspsys_mmu.exit.i
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %omap2_iommu_disable.exit.if.end27_crit_edge, label %land.lhs.true4

omap2_iommu_disable.exit.if.end27_crit_edge:      ; preds = %omap2_iommu_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true4:                                   ; preds = %omap2_iommu_disable.exit
  %device_idle = getelementptr inbounds %struct.iommu_platform_data, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %device_idle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_idle, align 4
  %tobool5.not = icmp eq ptr %45, null
  br i1 %tobool5.not, label %land.lhs.true4.land.lhs.true11_crit_edge, label %if.then6

land.lhs.true4.land.lhs.true11_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 %45(ptr noundef %add.ptr) #11
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.then6, %land.lhs.true4.land.lhs.true11_crit_edge
  %assert_reset = getelementptr inbounds %struct.iommu_platform_data, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %assert_reset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %assert_reset, align 4
  %tobool12.not = icmp eq ptr %47, null
  br i1 %tobool12.not, label %land.lhs.true11.land.lhs.true18_crit_edge, label %if.then13

land.lhs.true11.land.lhs.true18_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true18

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call15 = tail call i32 %47(ptr noundef %add.ptr, ptr noundef %49) #11
  br label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.then13, %land.lhs.true11.land.lhs.true18_crit_edge
  %set_pwrdm_constraint = getelementptr inbounds %struct.iommu_platform_data, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %set_pwrdm_constraint to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_pwrdm_constraint, align 4
  %tobool19.not = icmp eq ptr %51, null
  br i1 %tobool19.not, label %land.lhs.true18.if.end27_crit_edge, label %if.then20

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then20:                                        ; preds = %land.lhs.true18
  %pwrst = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 18
  %call22 = tail call i32 %51(ptr noundef %add.ptr, i1 noundef zeroext false, ptr noundef %pwrst) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end27_crit_edge, label %do.end

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 3
  %52 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.42, i32 noundef %call22) #14
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.then20.if.end27_crit_edge, %land.lhs.true18.if.end27_crit_edge, %omap2_iommu_disable.exit.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %set_pwrdm_constraint = getelementptr inbounds %struct.iommu_platform_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %set_pwrdm_constraint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_pwrdm_constraint, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.land.lhs.true10_crit_edge, label %if.then

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10

if.then:                                          ; preds = %land.lhs.true
  %pwrst = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 18
  %call4 = tail call i32 %5(ptr noundef %add.ptr, i1 noundef zeroext true, ptr noundef %pwrst) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.land.lhs.true10_crit_edge, label %do.end

if.then.land.lhs.true10_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %call4) #14
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %do.end, %if.then.land.lhs.true10_crit_edge, %land.lhs.true.land.lhs.true10_crit_edge
  %deassert_reset = getelementptr inbounds %struct.iommu_platform_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %deassert_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %deassert_reset, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %land.lhs.true10.land.lhs.true23_crit_edge, label %if.then12

land.lhs.true10.land.lhs.true23_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true23

if.then12:                                        ; preds = %land.lhs.true10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call14 = tail call i32 %9(ptr noundef %add.ptr, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.land.lhs.true23_crit_edge, label %do.end19

if.then12.land.lhs.true23_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true23

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call14) #14
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.then12.land.lhs.true23_crit_edge, %land.lhs.true10.land.lhs.true23_crit_edge
  %device_enable = getelementptr inbounds %struct.iommu_platform_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %device_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_enable, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %land.lhs.true23.if.end28_crit_edge, label %if.then25

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 %13(ptr noundef %add.ptr) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true23.if.end28_crit_edge, %entry.if.end28_crit_edge
  %domain = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain, align 4
  %tobool29.not = icmp eq ptr %15, null
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  %num_cr_ctx.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %num_cr_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cr_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then30.if.end31_crit_edge, label %for.body.lr.ph.i

if.then30.if.end31_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.body.lr.ph.i:                                 ; preds = %if.then30
  %cr_ctx.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %cr_ctx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cr_ctx.i, align 4
  %regbase.i.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tmp.035.i = phi ptr [ %19, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %sext33.i = shl i32 %i.036.i, 16
  %shl2.i.i = ashr exact i32 %sext33.i, 12
  %20 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl2.i.i) #11, !srcloc !233
  %22 = ptrtoint ptr %tmp.035.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp.035.i, align 4
  %or.i19.i = or i32 %23, 4
  %24 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %25, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21.i, i32 %or.i19.i) #11, !srcloc !233
  %ram.i.i = getelementptr inbounds %struct.cr_regs, ptr %tmp.035.i, i32 0, i32 1
  %26 = ptrtoint ptr %ram.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ram.i.i, align 4
  %28 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %29, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %27) #11, !srcloc !233
  %30 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 1) #11, !srcloc !233
  %32 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %33, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 1) #11, !srcloc !233
  %inc.i = add nuw i32 %i.036.i, 1
  %incdec.ptr.i = getelementptr %struct.cr_regs, ptr %tmp.035.i, i32 1
  %34 = ptrtoint ptr %num_cr_ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_cr_ctx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %35
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i = shl i32 %35, 16
  %phi.bo39.i = ashr exact i32 %phi.bo.i, 6
  %phi.bo40.i = shl i32 %inc.i, 16
  %phi.bo41.i = ashr exact i32 %phi.bo40.i, 12
  %36 = or i32 %phi.bo39.i, %phi.bo41.i
  %37 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %38, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i, i32 %36) #11, !srcloc !233
  br label %if.end31

if.end31:                                         ; preds = %for.end.i, %if.then30.if.end31_crit_edge, %if.end28.if.end31_crit_edge
  %iopgd.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %iopgd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iopgd.i, align 4
  %tobool.not.i64 = icmp ne ptr %40, null
  %41 = ptrtoint ptr %40 to i32
  %and.i = and i32 %41, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i65 = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i64, i1 %cmp.i65, i1 false
  br i1 %or.cond.i, label %if.end.i66, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i66:                                       ; preds = %if.end31
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %41) #11
  %and3.i = and i32 %call.i.i, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %if.end6.i, label %if.end.i66.cleanup_crit_edge

if.end.i66.cleanup_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i66
  %regbase.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase.i.i, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !231
  %dev.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %shr.i = lshr i32 %44, 4
  %and8.i = and i32 %shr.i, 15
  %and9.i = and i32 %44, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.52, ptr noundef %48, i32 noundef %and8.i, i32 noundef %and9.i) #14
  %49 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %call.i.i) #11, !srcloc !233
  %syscfg.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %syscfg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %syscfg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.end6.i.dra7_cfg_dspsys_mmu.exit.i_crit_edge, label %if.end.i.i

if.end6.i.dra7_cfg_dspsys_mmu.exit.i_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dra7_cfg_dspsys_mmu.exit.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %id.i.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 15
  %53 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %54, 2
  %shl.i.i = shl nuw i32 1, %mul.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %52, i32 noundef 24, i32 noundef %shl.i.i, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %dra7_cfg_dspsys_mmu.exit.i

dra7_cfg_dspsys_mmu.exit.i:                       ; preds = %if.end.i.i, %if.end6.i.dra7_cfg_dspsys_mmu.exit.i_crit_edge
  %has_bus_err_back.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 14
  %55 = ptrtoint ptr %has_bus_err_back.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %has_bus_err_back.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool10.not.i = icmp eq i32 %56, 0
  br i1 %tobool10.not.i, label %dra7_cfg_dspsys_mmu.exit.i.if.end12.i_crit_edge, label %if.then11.i

dra7_cfg_dspsys_mmu.exit.i.if.end12.i_crit_edge:  ; preds = %dra7_cfg_dspsys_mmu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then11.i:                                      ; preds = %dra7_cfg_dspsys_mmu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %58, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 1) #11, !srcloc !233
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %dra7_cfg_dspsys_mmu.exit.i.if.end12.i_crit_edge
  %59 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i.i67 = getelementptr i8, ptr %60, i32 68
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i67) #11, !srcloc !231
  %62 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %63, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 30) #11, !srcloc !233
  %and.i.i = and i32 %61, -15
  %or.i.i = or i32 %and.i.i, 6
  %64 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %65, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %or.i.i) #11, !srcloc !233
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end.i66.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end19
  %retval.0 = phi i32 [ %call14, %do.end19 ], [ 0, %if.end12.i ], [ -22, %if.end31.cleanup_crit_edge ], [ -22, %if.end.i66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_iommu_domain_alloc(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.omap_iommu_domain, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.54, ptr noundef nonnull @omap_iommu_domain_alloc.__key, i16 noundef signext 3) #11
  %domain = getelementptr inbounds %struct.omap_iommu_domain, ptr %call7.i.i, i32 0, i32 4
  %geometry = getelementptr inbounds %struct.omap_iommu_domain, ptr %call7.i.i, i32 0, i32 4, i32 5
  %1 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.omap_iommu_domain, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 1
  %2 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %aperture_end, align 8
  %force_aperture = getelementptr inbounds %struct.omap_iommu_domain, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 2
  %3 = ptrtoint ptr %force_aperture to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %force_aperture, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %domain, %do.body ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_iommu_domain_free(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %dev = getelementptr i8, ptr %domain, i32 -48
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @_omap_iommu_detach_dev(ptr noundef %add.ptr.i, ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_attach_dev(ptr noundef %domain, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %dev_iommu_priv_get.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dev_iommu_priv_get.exit:                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.do.end_crit_edge, label %lor.lhs.false

dev_iommu_priv_get.exit.do.end_crit_edge:         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %dev_iommu_priv_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %dev_iommu_priv_get.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr i8, ptr %domain, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %dev3 = getelementptr i8, ptr %domain, i32 -48
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #14
  br label %out

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end9.dev_iommu_priv_get.exit.i.i_crit_edge, label %if.then.i.i.i

if.end9.dev_iommu_priv_get.exit.i.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_iommu_priv_get.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %priv.i.i.i = getelementptr inbounds %struct.dev_iommu, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i.i, align 4
  br label %dev_iommu_priv_get.exit.i.i

dev_iommu_priv_get.exit.i.i:                      ; preds = %if.then.i.i.i, %if.end9.dev_iommu_priv_get.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %11, %if.then.i.i.i ], [ null, %if.end9.dev_iommu_priv_get.exit.i.i_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retval.0.i.i.i, align 4
  %tobool.not3.i.i = icmp eq ptr %13, null
  br i1 %tobool.not3.i.i, label %omap_iommu_count.exit.thread.i, label %dev_iommu_priv_get.exit.i.i.while.body.i.i_crit_edge

dev_iommu_priv_get.exit.i.i.while.body.i.i_crit_edge: ; preds = %dev_iommu_priv_get.exit.i.i
  br label %while.body.i.i

omap_iommu_count.exit.thread.i:                   ; preds = %dev_iommu_priv_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr.i, align 4
  br label %do.end15

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %dev_iommu_priv_get.exit.i.i.while.body.i.i_crit_edge
  %count.05.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %dev_iommu_priv_get.exit.i.i.while.body.i.i_crit_edge ]
  %arch_data.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %retval.0.i.i.i, %dev_iommu_priv_get.exit.i.i.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %count.05.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.omap_iommu_arch_data, ptr %arch_data.04.i.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %omap_iommu_count.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

omap_iommu_count.exit.i:                          ; preds = %while.body.i.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i.i, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i74 = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i74, label %omap_iommu_count.exit.i.do.end15_crit_edge, label %if.end.i

omap_iommu_count.exit.i.do.end15_crit_edge:       ; preds = %omap_iommu_count.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.end.i:                                         ; preds = %omap_iommu_count.exit.i
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 8) #11
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !238

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %iommus59.i = getelementptr i8, ptr %domain, i32 -52
  %20 = ptrtoint ptr %iommus59.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %iommus59.i, align 4
  br label %do.end15

if.end7.i.i.i:                                    ; preds = %if.end.i
  %21 = extractvalue { i32, i1 } %18, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 2848) #18
  %iommus.i = getelementptr i8, ptr %domain, i32 -52
  %22 = ptrtoint ptr %iommus.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i.i, ptr %iommus.i, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.do.end15_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.do.end15_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp61.not.i = icmp eq i32 %24, 0
  br i1 %cmp61.not.i, label %for.cond.preheader.i.for.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %iommu.062.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call8.i.i.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 2848, i32 noundef 2) #18
  %25 = ptrtoint ptr %iommu.062.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call1.i.i.i.i, ptr %iommu.062.i, align 4
  %tobool12.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool12.not.i, label %for.body.i.do.end15_crit_edge, label %if.end14.i

for.body.i.do.end15_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

if.end14.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %call1.i.i.i.i to i32
  %and.i = and i32 %26, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp16.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp16.not.i, label %for.inc.i, label %do.end.i, !prof !239

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1435, i32 noundef 9, ptr noundef null) #11
  br label %do.end15

for.inc.i:                                        ; preds = %if.end14.i
  %inc.i = add nuw i32 %i.063.i, 1
  %incdec.ptr.i = getelementptr %struct.omap_iommu_device, ptr %iommu.062.i, i32 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end16

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end15:                                         ; preds = %do.end.i, %for.body.i.do.end15_crit_edge, %if.end7.i.i.i.do.end15_crit_edge, %kcalloc.exit.thread.i, %omap_iommu_count.exit.i.do.end15_crit_edge, %omap_iommu_count.exit.thread.i
  %retval.0.i75.ph = phi i32 [ -12, %kcalloc.exit.thread.i ], [ -22, %omap_iommu_count.exit.thread.i ], [ -12, %if.end7.i.i.i.do.end15_crit_edge ], [ -22, %omap_iommu_count.exit.i.do.end15_crit_edge ], [ -22, %do.end.i ], [ -12, %for.body.i.do.end15_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i75.ph) #14
  br label %init_fail

if.end16:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp92.not = icmp eq i32 %28, 0
  br i1 %cmp92.not, label %if.end16.for.end_crit_edge, label %for.body.preheader

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end16
  %iommus = getelementptr i8, ptr %domain, i32 -52
  %29 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iommus, align 4
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.preheader
  %i.095 = phi i32 [ %inc, %if.end24.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iommu.094 = phi ptr [ %incdec.ptr, %if.end24.for.body_crit_edge ], [ %30, %for.body.preheader ]
  %arch_data.093 = phi ptr [ %incdec.ptr27, %if.end24.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %31 = ptrtoint ptr %arch_data.093 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arch_data.093, align 4
  %33 = ptrtoint ptr %iommu.094 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iommu.094, align 4
  %call18 = tail call fastcc i32 @omap_iommu_attach(ptr noundef %32, ptr noundef %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %for.body
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %call18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095)
  %tobool29.not96 = icmp eq i32 %i.095, 0
  br i1 %tobool29.not96, label %do.end23.init_fail_crit_edge, label %do.end23.while.body_crit_edge

do.end23.while.body_crit_edge:                    ; preds = %do.end23
  br label %while.body

do.end23.init_fail_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_fail

if.end24:                                         ; preds = %for.body
  %domain25 = getelementptr inbounds %struct.omap_iommu, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %domain25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %domain, ptr %domain25, align 4
  %iommu_dev26 = getelementptr inbounds %struct.omap_iommu_device, ptr %iommu.094, i32 0, i32 1
  %36 = ptrtoint ptr %iommu_dev26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %32, ptr %iommu_dev26, align 4
  %inc = add nuw i32 %i.095, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_device, ptr %iommu.094, i32 1
  %incdec.ptr27 = getelementptr %struct.omap_iommu_arch_data, ptr %arch_data.093, i32 1
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %if.end16.for.end_crit_edge, %for.cond.preheader.i.for.end_crit_edge
  %39 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %dev3, align 4
  br label %out

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end23.while.body_crit_edge
  %i.198 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.095, %do.end23.while.body_crit_edge ]
  %iommu.197 = phi ptr [ %incdec.ptr30, %while.body.while.body_crit_edge ], [ %iommu.094, %do.end23.while.body_crit_edge ]
  %dec = add i32 %i.198, -1
  %incdec.ptr30 = getelementptr %struct.omap_iommu_device, ptr %iommu.197, i32 -1
  %iommu_dev32 = getelementptr %struct.omap_iommu_device, ptr %iommu.197, i32 -1, i32 1
  %40 = ptrtoint ptr %iommu_dev32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iommu_dev32, align 4
  tail call fastcc void @omap_iommu_detach(ptr noundef %41)
  %42 = ptrtoint ptr %iommu_dev32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %iommu_dev32, align 4
  %domain34 = getelementptr inbounds %struct.omap_iommu, ptr %41, i32 0, i32 4
  %43 = ptrtoint ptr %domain34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %domain34, align 4
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %while.body.init_fail_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.init_fail_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_fail

init_fail:                                        ; preds = %while.body.init_fail_crit_edge, %do.end23.init_fail_crit_edge, %do.end15
  %ret.1 = phi i32 [ %retval.0.i75.ph, %do.end15 ], [ %call18, %do.end23.init_fail_crit_edge ], [ %call18, %while.body.init_fail_crit_edge ]
  %iommus.i76 = getelementptr i8, ptr %domain, i32 -52
  %44 = ptrtoint ptr %iommus.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iommus.i76, align 4
  %tobool.not11.i = icmp eq ptr %45, null
  br i1 %tobool.not11.i, label %init_fail.omap_iommu_detach_fini.exit_crit_edge, label %init_fail.land.rhs.i_crit_edge

init_fail.land.rhs.i_crit_edge:                   ; preds = %init_fail
  br label %land.rhs.i

init_fail.omap_iommu_detach_fini.exit_crit_edge:  ; preds = %init_fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_iommu_detach_fini.exit

land.rhs.i:                                       ; preds = %for.body.i81.land.rhs.i_crit_edge, %init_fail.land.rhs.i_crit_edge
  %iommu.013.i = phi ptr [ %incdec.ptr.i79, %for.body.i81.land.rhs.i_crit_edge ], [ %45, %init_fail.land.rhs.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i78, %for.body.i81.land.rhs.i_crit_edge ], [ 0, %init_fail.land.rhs.i_crit_edge ]
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.012.i, i32 %47)
  %cmp.i77 = icmp ult i32 %i.012.i, %47
  br i1 %cmp.i77, label %for.body.i81, label %land.rhs.i.omap_iommu_detach_fini.exit_crit_edge

land.rhs.i.omap_iommu_detach_fini.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_iommu_detach_fini.exit

for.body.i81:                                     ; preds = %land.rhs.i
  %48 = ptrtoint ptr %iommu.013.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iommu.013.i, align 4
  tail call void @kfree(ptr noundef %49) #11
  %inc.i78 = add nuw i32 %i.012.i, 1
  %incdec.ptr.i79 = getelementptr %struct.omap_iommu_device, ptr %iommu.013.i, i32 1
  %tobool.not.i80 = icmp eq ptr %incdec.ptr.i79, null
  br i1 %tobool.not.i80, label %for.body.i81.omap_iommu_detach_fini.exit_crit_edge, label %for.body.i81.land.rhs.i_crit_edge

for.body.i81.land.rhs.i_crit_edge:                ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.body.i81.omap_iommu_detach_fini.exit_crit_edge: ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_iommu_detach_fini.exit

omap_iommu_detach_fini.exit:                      ; preds = %for.body.i81.omap_iommu_detach_fini.exit_crit_edge, %land.rhs.i.omap_iommu_detach_fini.exit_crit_edge, %init_fail.omap_iommu_detach_fini.exit_crit_edge
  %50 = ptrtoint ptr %iommus.i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iommus.i76, align 4
  tail call void @kfree(ptr noundef %51) #11
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %add.ptr.i, align 4
  %53 = ptrtoint ptr %iommus.i76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %iommus.i76, align 4
  br label %out

out:                                              ; preds = %omap_iommu_detach_fini.exit, %for.end, %do.end8
  %ret.2 = phi i32 [ -16, %do.end8 ], [ %ret.1, %omap_iommu_detach_fini.exit ], [ 0, %for.end ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %ret.2, %out ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_iommu_detach_dev(ptr noundef %domain, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %lock = getelementptr i8, ptr %domain, i32 -44
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  tail call fastcc void @_omap_iommu_detach_dev(ptr noundef %add.ptr.i, ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_map(ptr nocapture noundef readonly %domain, i32 noundef %da, i32 noundef %pa, i32 noundef %bytes, i32 noundef %prot, i32 noundef %gfp) #0 align 64 {
entry:
  %pa.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pa.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pa, ptr %pa.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %dev1 = getelementptr i8, ptr %domain, i32 -48
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %3 = zext i32 %bytes to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %bytes, label %do.end [
    i32 16777216, label %entry.do.body15_crit_edge
    i32 1048576, label %cond.end12.fold.split
    i32 65536, label %cond.end12.fold.split67
    i32 4096, label %do.body15.fold.split
  ]

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

cond.end12.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

cond.end12.fold.split67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.77, i32 noundef %bytes) #14
  br label %cleanup

do.body15.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

do.body15:                                        ; preds = %do.body15.fold.split, %cond.end12.fold.split67, %cond.end12.fold.split, %entry.do.body15_crit_edge
  %cond13.ph = phi i32 [ 1, %cond.end12.fold.split67 ], [ 0, %cond.end12.fold.split ], [ 3, %entry.do.body15_crit_edge ], [ 2, %do.body15.fold.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_map.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_map, %if.then19)) #11
          to label %do.end22 [label %if.then19], !srcloc !232

if.then19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_map.__UNIQUE_ID_ddebug243, ptr noundef %2, ptr noundef nonnull @.str.79, i32 noundef %da, ptr noundef nonnull %pa.addr, i32 noundef %bytes) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body15
  %4 = ptrtoint ptr %pa.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pa.addr, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2484.not = icmp eq i32 %7, 0
  br i1 %cmp2484.not, label %do.end22.cleanup_crit_edge, label %for.body.preheader

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %do.end22
  %iommus = getelementptr i8, ptr %domain, i32 -52
  %8 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommus, align 4
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.omap_iommu_map, i32 0, i32 %cond13.ph
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.086 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iommu.085 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %9, %for.body.preheader ]
  %iommu_dev = getelementptr inbounds %struct.omap_iommu_device, ptr %iommu.085, i32 0, i32 1
  %10 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iommu_dev, align 4
  call fastcc void @flush_iotlb_page(ptr noundef %11, i32 noundef %da) #11
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %for.body.while.cond.preheader_crit_edge, label %switch.lookup, !prof !240

for.body.while.cond.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

switch.lookup:                                    ; preds = %for.body
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %page_table_lock.i.i = getelementptr inbounds %struct.omap_iommu, ptr %11, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %page_table_lock.i.i) #11
  %call31.i.i = call i32 %switch.load(ptr noundef nonnull %11, i32 noundef %da, i32 noundef %5, i32 noundef 0) #11, !callees !241
  call void @_raw_spin_unlock(ptr noundef %page_table_lock.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool26.not = icmp eq i32 %call31.i.i, 0
  br i1 %tobool26.not, label %for.inc, label %switch.lookup.while.cond.preheader_crit_edge

switch.lookup.while.cond.preheader_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

for.inc:                                          ; preds = %switch.lookup
  %inc = add nuw i32 %i.086, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_device, ptr %iommu.085, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %cmp24 = icmp ult i32 %inc, %14
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

while.cond.preheader:                             ; preds = %switch.lookup.while.cond.preheader_crit_edge, %for.body.while.cond.preheader_crit_edge
  %retval.0.i9.i75 = phi i32 [ %call31.i.i, %switch.lookup.while.cond.preheader_crit_edge ], [ -22, %for.body.while.cond.preheader_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.81, i32 noundef %retval.0.i9.i75) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086)
  %tobool34.not89 = icmp eq i32 %i.086, 0
  br i1 %tobool34.not89, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.191 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.086, %while.cond.preheader.while.body_crit_edge ]
  %iommu.190 = phi ptr [ %incdec.ptr35, %while.body.while.body_crit_edge ], [ %iommu.085, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.191, -1
  %incdec.ptr35 = getelementptr %struct.omap_iommu_device, ptr %iommu.190, i32 -1
  %iommu_dev36 = getelementptr %struct.omap_iommu_device, ptr %iommu.190, i32 -1, i32 1
  %15 = ptrtoint ptr %iommu_dev36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iommu_dev36, align 4
  %call37 = call fastcc i32 @iopgtable_clear_entry(ptr noundef %16, i32 noundef %da)
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i9.i75, %while.cond.preheader.cleanup_crit_edge ], [ -22, %do.end22.cleanup_crit_edge ], [ %retval.0.i9.i75, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_unmap(ptr nocapture noundef readonly %domain, i32 noundef %da, i32 noundef %size, ptr nocapture noundef readnone %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %domain, i32 -56
  %dev1 = getelementptr i8, ptr %domain, i32 -48
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_unmap.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_unmap, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !232

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_unmap.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.96, i32 noundef %da, i32 noundef %size) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %do.end.for.end_crit_edge, label %for.body.preheader

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %iommus = getelementptr i8, ptr %domain, i32 -52
  %4 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommus, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %error.0.off021 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ false, %for.body.preheader ]
  %iommu.020 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %iommu_dev = getelementptr inbounds %struct.omap_iommu_device, ptr %iommu.020, i32 0, i32 1
  %6 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu_dev, align 4
  %call5 = tail call fastcc i32 @iopgtable_clear_entry(ptr noundef %7, i32 noundef %da)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i1 true, i1 %error.0.off021
  %inc = add nuw i32 %i.022, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_device, ptr %iommu.020, i32 1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.sel = select i1 %spec.select, i32 0, i32 %call5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end.for.end_crit_edge
  %error.0.off0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %phi.sel, %for.end.loopexit ]
  ret i32 %error.0.off0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_iommu_iova_to_phys(ptr nocapture noundef readonly %domain, i32 noundef %da) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommus = getelementptr i8, ptr %domain, i32 -52
  %0 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommus, align 4
  %iommu_dev = getelementptr inbounds %struct.omap_iommu_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu_dev, align 4
  %dev1 = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %iopgd1.i = getelementptr inbounds %struct.omap_iommu, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %iopgd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iopgd1.i, align 4
  %shr.i = lshr i32 %da, 20
  %add.ptr.i38 = getelementptr i32, ptr %7, i32 %shr.i
  %8 = ptrtoint ptr %add.ptr.i38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i38, align 4
  %and2.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 1
  br i1 %cmp.i, label %iopgtable_lookup_entry.exit, label %entry.if.else10_crit_edge

entry.if.else10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else10

iopgtable_lookup_entry.exit:                      ; preds = %entry
  %and4.i = and i32 %9, -1024
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and4.i, i32 -2130706432, i32 8454144) #15, !srcloc !234
  %11 = inttoptr i32 %10 to ptr
  %shr5.i = lshr i32 %da, 12
  %and6.i = and i32 %shr5.i, 255
  %add.ptr7.i = getelementptr i32, ptr %11, i32 %and6.i
  %tobool.not = icmp eq ptr %add.ptr7.i, null
  br i1 %tobool.not, label %iopgtable_lookup_entry.exit.if.else10_crit_edge, label %if.then

iopgtable_lookup_entry.exit.if.else10_crit_edge:  ; preds = %iopgtable_lookup_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else10

if.then:                                          ; preds = %iopgtable_lookup_entry.exit
  %12 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr7.i, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %13, -4096
  %and1.i = and i32 %da, 4095
  %or.i = or i32 %and.i, %and1.i
  br label %if.end29

if.else:                                          ; preds = %if.then
  %and4 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 1
  br i1 %cmp5, label %if.then6, label %do.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and.i39 = and i32 %13, -65536
  %and1.i40 = and i32 %da, 65535
  %or.i41 = or i32 %and.i39, %and1.i40
  br label %if.end29

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %da to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.97, i32 noundef %13, i64 noundef %conv) #14
  br label %if.end29

if.else10:                                        ; preds = %iopgtable_lookup_entry.exit.if.else10_crit_edge, %entry.if.else10_crit_edge
  %and11 = and i32 %9, 262147
  %14 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %and11, label %do.end25 [
    i32 2, label %if.then14
    i32 262146, label %if.then20
  ]

if.then14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  %and.i42 = and i32 %9, -1048576
  %and1.i43 = and i32 %da, 1048575
  %or.i44 = or i32 %and.i42, %and1.i43
  br label %if.end29

if.then20:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  %and.i45 = and i32 %9, -16777216
  %and1.i46 = and i32 %da, 16777215
  %or.i47 = or i32 %and.i45, %and1.i46
  br label %if.end29

do.end25:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  %conv26 = zext i32 %da to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.100, i32 noundef %9, i64 noundef %conv26) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %if.then20, %if.then14, %do.end, %if.then6, %if.then2
  %ret.0 = phi i32 [ %or.i, %if.then2 ], [ %or.i41, %if.then6 ], [ 0, %do.end ], [ %or.i44, %if.then14 ], [ %or.i47, %if.then20 ], [ 0, %do.end25 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_iommu_probe_device(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_property_count_elems_of_size(ptr noundef nonnull %1, ptr noundef nonnull @.str.102, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add = add nuw i32 %call2, 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end4.cleanup_crit_edge, label %if.end7.i.i, !prof !238

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end4
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #18
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp1065.not = icmp eq i32 %call2, 0
  br i1 %cmp1065.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %if.end26.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %tmp.066 = phi ptr [ %incdec.ptr, %if.end26.for.body_crit_edge ], [ %call8.i.i, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef 0, i32 noundef %i.067, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %if.then14

of_parse_phandle.exit:                            ; preds = %for.body
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %of_parse_phandle.exit.if.then14_crit_edge, label %if.end16

of_parse_phandle.exit.if.then14_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %of_parse_phandle.exit.if.then14_crit_edge, %of_parse_phandle.exit.thread
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end16:                                         ; preds = %of_parse_phandle.exit
  %call17 = call ptr @of_find_device_by_node(ptr noundef nonnull %9) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %9) #11
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call17, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %9) #11
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %12 = ptrtoint ptr %tmp.066 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tmp.066, align 4
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %call17, i32 0, i32 3
  %dev28 = getelementptr inbounds %struct.omap_iommu_arch_data, ptr %tmp.066, i32 0, i32 1
  %13 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev27, ptr %dev28, align 4
  call void @of_node_put(ptr noundef nonnull %9) #11
  %inc = add nuw nsw i32 %i.067, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_arch_data, ptr %tmp.066, i32 1
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %14 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %priv1.i, align 4
  %17 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call8.i.i, align 128
  %iommu = getelementptr inbounds %struct.omap_iommu, ptr %18, i32 0, i32 16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then24, %if.then19, %if.then14, %if.end7.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then24 ], [ inttoptr (i32 -19 to ptr), %if.then19 ], [ inttoptr (i32 -22 to ptr), %if.then14 ], [ %iommu, %for.end ], [ null, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_iommu_release_device(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  %tobool1.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %if.end

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %priv.i, align 4
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_iommu_priv_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_iommu_device_group(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %if.end

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dev_iommu_priv_get.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %group6 = getelementptr inbounds %struct.omap_iommu, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %group6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group6, align 4
  %call7 = tail call ptr @iommu_group_ref_get(ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %dev_iommu_priv_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then4 ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %dev_iommu_priv_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_omap_iommu_detach_dev(ptr nocapture noundef %omap_domain, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommus = getelementptr inbounds %struct.omap_iommu_domain, ptr %omap_domain, i32 0, i32 1
  %0 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommus, align 4
  %dev1 = getelementptr inbounds %struct.omap_iommu_domain, ptr %omap_domain, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %3, %dev
  br i1 %cmp.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %omap_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %omap_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1240.not = icmp eq i32 %5, 0
  br i1 %cmp1240.not, label %if.end7.for.end_crit_edge, label %for.body.preheader

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end7
  %sub = add i32 %5, -1
  %add.ptr = getelementptr %struct.omap_iommu_device, ptr %1, i32 %sub
  br label %for.body

for.body:                                         ; preds = %iopgtable_clear_entry_all.exit.for.body_crit_edge, %for.body.preheader
  %i.042 = phi i32 [ %inc, %iopgtable_clear_entry_all.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iommu.041 = phi ptr [ %incdec.ptr, %iopgtable_clear_entry_all.exit.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %iommu_dev = getelementptr inbounds %struct.omap_iommu_device, ptr %iommu.041, i32 0, i32 1
  %6 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu_dev, align 4
  %page_table_lock.i = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock.i) #11
  %iopgd1.i = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 7
  %dev.i.i = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 3
  %pd_dma.i = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body
  %i.026.i = phi i32 [ 0, %for.body ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %iopgd1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iopgd1.i, align 4
  %add.ptr.i = getelementptr i32, ptr %9, i32 %i.026.i
  %mul.i = shl nuw nsw i32 %i.026.i, 2
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i36 = icmp eq i32 %11, 0
  br i1 %tobool.not.i36, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %and4.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and4.i, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  %and7.i = and i32 %11, -1024
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and7.i, i32 -2130706432, i32 8454144) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.then6.i.if.end9.i_crit_edge, label %if.then.i.i

if.then6.i.if.end9.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = inttoptr i32 %12 to ptr
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %12) #11
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %call.i.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %16 = load ptr, ptr @iopte_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %13) #11
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.i, %if.then6.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %add.ptr.i, align 4
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %20 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pd_dma.i, align 4
  %add.i.i.i = add i32 %21, %mul.i
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %add.i.i.i, i32 noundef 4, i32 noundef 1) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end9.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond.not.i, label %iopgtable_clear_entry_all.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

iopgtable_clear_entry_all.exit:                   ; preds = %cleanup.i
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %call.i.i25.i = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #11
  %regbase.i.i.i.i = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #11, !srcloc !233
  %26 = ptrtoint ptr %regbase.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regbase.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1) #11, !srcloc !233
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %call.i6.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #11
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock.i) #11
  tail call fastcc void @omap_iommu_detach(ptr noundef %7)
  %30 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %iommu_dev, align 4
  %domain = getelementptr inbounds %struct.omap_iommu, ptr %7, i32 0, i32 4
  %31 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %domain, align 4
  %inc = add nuw i32 %i.042, 1
  %incdec.ptr = getelementptr %struct.omap_iommu_device, ptr %iommu.041, i32 -1
  %32 = ptrtoint ptr %omap_domain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %omap_domain, align 4
  %cmp12 = icmp ult i32 %inc, %33
  br i1 %cmp12, label %iopgtable_clear_entry_all.exit.for.body_crit_edge, label %iopgtable_clear_entry_all.exit.for.end_crit_edge

iopgtable_clear_entry_all.exit.for.end_crit_edge: ; preds = %iopgtable_clear_entry_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

iopgtable_clear_entry_all.exit.for.body_crit_edge: ; preds = %iopgtable_clear_entry_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %iopgtable_clear_entry_all.exit.for.end_crit_edge, %if.end7.for.end_crit_edge
  %34 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iommus, align 4
  %tobool.not11.i = icmp eq ptr %35, null
  br i1 %tobool.not11.i, label %for.end.omap_iommu_detach_fini.exit_crit_edge, label %for.end.land.rhs.i_crit_edge

for.end.land.rhs.i_crit_edge:                     ; preds = %for.end
  br label %land.rhs.i

for.end.omap_iommu_detach_fini.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_iommu_detach_fini.exit

land.rhs.i:                                       ; preds = %for.body.i39.land.rhs.i_crit_edge, %for.end.land.rhs.i_crit_edge
  %iommu.013.i = phi ptr [ %incdec.ptr.i, %for.body.i39.land.rhs.i_crit_edge ], [ %35, %for.end.land.rhs.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i37, %for.body.i39.land.rhs.i_crit_edge ], [ 0, %for.end.land.rhs.i_crit_edge ]
  %36 = ptrtoint ptr %omap_domain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %omap_domain, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.012.i, i32 %37)
  %cmp.i = icmp ult i32 %i.012.i, %37
  br i1 %cmp.i, label %for.body.i39, label %land.rhs.i.omap_iommu_detach_fini.exit_crit_edge

land.rhs.i.omap_iommu_detach_fini.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_iommu_detach_fini.exit

for.body.i39:                                     ; preds = %land.rhs.i
  %38 = ptrtoint ptr %iommu.013.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iommu.013.i, align 4
  tail call void @kfree(ptr noundef %39) #11
  %inc.i37 = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.omap_iommu_device, ptr %iommu.013.i, i32 1
  %tobool.not.i38 = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i38, label %for.body.i39.omap_iommu_detach_fini.exit_crit_edge, label %for.body.i39.land.rhs.i_crit_edge

for.body.i39.land.rhs.i_crit_edge:                ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.body.i39.omap_iommu_detach_fini.exit_crit_edge: ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %omap_iommu_detach_fini.exit

omap_iommu_detach_fini.exit:                      ; preds = %for.body.i39.omap_iommu_detach_fini.exit_crit_edge, %land.rhs.i.omap_iommu_detach_fini.exit_crit_edge, %for.end.omap_iommu_detach_fini.exit_crit_edge
  %40 = ptrtoint ptr %iommus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iommus, align 4
  tail call void @kfree(ptr noundef %41) #11
  %42 = ptrtoint ptr %omap_domain to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %omap_domain, align 4
  %43 = ptrtoint ptr %iommus to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %iommus, align 4
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %dev1, align 4
  br label %cleanup

cleanup:                                          ; preds = %omap_iommu_detach_fini.exit, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_iommu_detach(ptr noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %obj, null
  %cmp.i = icmp ugt ptr %obj, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %iommu_lock = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #11
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pd_dma = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %pd_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pd_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef 16384, i32 noundef 1, i32 noundef 0) #11
  %4 = ptrtoint ptr %pd_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pd_dma, align 4
  %iopgd = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %5 = ptrtoint ptr %iopgd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %iopgd, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #11
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_detach.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_detach, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !232

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_detach.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, ptr noundef %11) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_iommu_attach(ptr noundef %obj, ptr noundef %iopgd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #11
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %iopgd) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !239

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %iopgd, i32 noundef 16384) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %iopgd to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %and.i = and i32 %7, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 16384, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i36 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %pd_dma = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 9
  %8 = ptrtoint ptr %pd_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i36, ptr %pd_dma, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %10, i32 noundef %retval.0.i36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i36)
  %cmp.i = icmp eq i32 %retval.0.i36, -1
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.73) #14
  br label %out_err

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %iopgd5 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %13 = ptrtoint ptr %iopgd5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iopgd, ptr %iopgd5, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i37 = icmp slt i32 %call.i.i, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br i1 %cmp.i37, label %if.then.i38, label %if.end9

if.then.i38:                                      ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !243
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i38.out_err_crit_edge, label %do.end11.i.i.i.i.i

if.then.i38.out_err_crit_edge:                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err

do.end11.i.i.i.i.i:                               ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !244
  br label %out_err

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i40 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #11
  %regbase.i.i.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 1
  %19 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #11, !srcloc !233
  %21 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #11, !srcloc !233
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i6.i = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 4) #11
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_iommu_attach.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_iommu_attach, %if.then16)) #11
          to label %cleanup [label %if.then16], !srcloc !232

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %obj, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_iommu_attach.__UNIQUE_ID_ddebug240, ptr noundef %26, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.74, ptr noundef %28) #11
  br label %cleanup

out_err:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i38.out_err_crit_edge, %do.end
  %err.0 = phi i32 [ -12, %do.end ], [ %call.i.i, %if.then.i38.out_err_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then16, %if.end9
  %retval.0 = phi i32 [ %err.0, %out_err ], [ 0, %if.then16 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iopgtable_clear_entry(ptr noundef %obj, i32 noundef %da) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page_table_lock = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock) #11
  %iopgd1.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %iopgd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iopgd1.i, align 4
  %shr.i = lshr i32 %da, 20
  %add.ptr.i = getelementptr i32, ptr %1, i32 %shr.i
  %mul.i = shl nuw nsw i32 %shr.i, 2
  %shr4.i = lshr i32 %da, 12
  %and5.i = and i32 %shr4.i, 255
  %mul6.i = shl nuw nsw i32 %and5.i, 2
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.iopgtable_clear_entry_core.exit_crit_edge, label %if.end.i

entry.iopgtable_clear_entry_core.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %iopgtable_clear_entry_core.exit

if.end.i:                                         ; preds = %entry
  %and7.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 1
  br i1 %cmp.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  %and9.i = and i32 %3, -1024
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i, i32 -2130706432, i32 8454144) #15, !srcloc !234
  %5 = inttoptr i32 %4 to ptr
  %add.ptr12.i = getelementptr i32, ptr %5, i32 %and5.i
  %6 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %and21.i = and i32 %shr4.i, 240
  %add.ptr22.i = getelementptr i32, ptr %5, i32 %and21.i
  %nent.0.i = select i1 %tobool14.not.i, i32 1, i32 16
  %iopte.0.i = select i1 %tobool14.not.i, ptr %add.ptr12.i, ptr %add.ptr22.i
  %mul24.i = shl nuw nsw i32 %nent.0.i, 12
  %mul25.i = shl nuw nsw i32 %nent.0.i, 2
  %8 = call ptr @memset(ptr %iopte.0.i, i32 0, i32 %mul25.i)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %and26.i = and i32 %10, -1024
  %dev.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %add.i.i.i = or i32 %and26.i, %mul6.i
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %add.i.i.i, i32 noundef %mul25.i, i32 noundef 1) #11
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and27.i = and i32 %14, -1024
  %15 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and27.i, i32 -2130706432, i32 8454144) #15, !srcloc !234
  %16 = inttoptr i32 %15 to ptr
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then8.i
  %i.091.i = phi i32 [ 0, %if.then8.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %16, i32 %i.091.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool31.not.i = icmp eq i32 %18, 0
  br i1 %tobool31.not.i, label %for.cond.i, label %for.body.i.iopgtable_clear_entry_core.exit_crit_edge

for.body.i.iopgtable_clear_entry_core.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iopgtable_clear_entry_core.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.end.i.if.end46.i_crit_edge, label %if.then.i.i

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %15) #11
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %call.i.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %21 = load ptr, ptr @iopte_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %16) #11
  br label %if.end46.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and35.i = and i32 %3, 262146
  call void @__sanitizer_cov_trace_const_cmp4(i32 262146, i32 %and35.i)
  %cmp36.i = icmp eq i32 %and35.i, 262146
  %shr41.i = and i32 %shr.i, 4080
  %add.ptr43.i = getelementptr i32, ptr %1, i32 %shr41.i
  %iopgd.0.i = select i1 %cmp36.i, ptr %add.ptr43.i, ptr %add.ptr.i
  %nent.2.i = select i1 %cmp36.i, i32 16, i32 1
  %mul45.i = shl nuw nsw i32 %nent.2.i, 20
  %phi.bo.i = shl nuw nsw i32 %nent.2.i, 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i, %if.then.i.i, %for.end.i.if.end46.i_crit_edge
  %bytes.0.i = phi i32 [ %mul45.i, %if.else.i ], [ %mul24.i, %for.end.i.if.end46.i_crit_edge ], [ %mul24.i, %if.then.i.i ]
  %iopgd.1.i = phi ptr [ %iopgd.0.i, %if.else.i ], [ %add.ptr.i, %for.end.i.if.end46.i_crit_edge ], [ %add.ptr.i, %if.then.i.i ]
  %nent.3.i = phi i32 [ %phi.bo.i, %if.else.i ], [ 4, %for.end.i.if.end46.i_crit_edge ], [ 4, %if.then.i.i ]
  %22 = call ptr @memset(ptr %iopgd.1.i, i32 0, i32 %nent.3.i)
  %dev48.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %23 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev48.i, align 4
  %pd_dma.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 9
  %25 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pd_dma.i, align 4
  %add.i.i87.i = add i32 %26, %mul.i
  tail call void @dma_sync_single_for_device(ptr noundef %24, i32 noundef %add.i.i87.i, i32 noundef %nent.3.i, i32 noundef 1) #11
  br label %iopgtable_clear_entry_core.exit

iopgtable_clear_entry_core.exit:                  ; preds = %if.end46.i, %for.body.i.iopgtable_clear_entry_core.exit_crit_edge, %entry.iopgtable_clear_entry_core.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.iopgtable_clear_entry_core.exit_crit_edge ], [ %bytes.0.i, %if.end46.i ], [ %mul24.i, %for.body.i.iopgtable_clear_entry_core.exit_crit_edge ]
  tail call fastcc void @flush_iotlb_page(ptr noundef %obj, i32 noundef %da)
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_iotlb_page(ptr nocapture noundef readonly %obj, i32 noundef %da) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #11
  %nr_tlb_entries = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 10
  %2 = ptrtoint ptr %nr_tlb_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_tlb_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp107 = icmp sgt i32 %3, 0
  br i1 %cmp107, label %land.rhs.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %regbase.i.i.i = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0108 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !245
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !noalias !245, !srcloc !231
  %conv.i.i = and i32 %6, 31744
  %sext.i = shl i32 %i.0108, 16
  %shl2.i.i = ashr exact i32 %sext.i, 12
  %or.i.i = or i32 %conv.i.i, %shl2.i.i
  %7 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !245
  %add.ptr.i.i6.i = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 %or.i.i) #11, !noalias !245, !srcloc !233
  %9 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !245
  %add.ptr.i.i8.i = getelementptr i8, ptr %10, i32 104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #11, !noalias !245, !srcloc !231
  %12 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i.i.i, align 4, !noalias !245
  %add.ptr.i5.i.i = getelementptr i8, ptr %13, i32 108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #11, !noalias !245, !srcloc !231
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.rhs.for.inc_crit_edge, label %switch.lookup

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

switch.lookup:                                    ; preds = %land.rhs
  %and.i80 = and i32 %11, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.flush_iotlb_page, i32 0, i32 %and.i80
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep122 = getelementptr inbounds [4 x i32], ptr @switch.table.flush_iotlb_page.103, i32 0, i32 %and.i80
  %16 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load123 = load i32, ptr %switch.gep122, align 4
  %and22.i86 = and i32 %11, %switch.load
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.i86, i32 %da)
  %cmp22.not = icmp ule i32 %and22.i86, %da
  %add = add i32 %switch.load123, %and22.i86
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %da)
  %cmp23 = icmp ugt i32 %add, %da
  %or.cond = and i1 %cmp22.not, %cmp23
  br i1 %or.cond, label %do.body, label %switch.lookup.for.inc_crit_edge

switch.lookup.for.inc_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %switch.lookup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush_iotlb_page.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flush_iotlb_page, %if.then30)) #11
          to label %cleanup [label %if.then30], !srcloc !232

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flush_iotlb_page.__UNIQUE_ID_ddebug238, ptr noundef %18, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef %and22.i86, i32 noundef %da, i32 noundef %switch.load123) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body
  %or.i = or i32 %11, 4
  %19 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #11, !srcloc !233
  %21 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %22, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %14) #11, !srcloc !233
  %23 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %24, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 1) #11, !srcloc !233
  %25 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %26, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 1) #11, !srcloc !233
  %27 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #11, !srcloc !233
  br label %for.end

for.inc:                                          ; preds = %switch.lookup.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0108, 1
  %29 = ptrtoint ptr %nr_tlb_entries to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_tlb_entries, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %i.0104 = phi i32 [ %i.0108, %cleanup ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %call.i81 = tail call i32 @__pm_runtime_idle(ptr noundef %32, i32 noundef 4) #11
  %33 = ptrtoint ptr %nr_tlb_entries to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_tlb_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104, i32 %34)
  %cmp38 = icmp eq i32 %i.0104, %34
  br i1 %cmp38, label %do.body40, label %for.end.if.end57_crit_edge

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

do.body40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush_iotlb_page.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flush_iotlb_page, %if.then52)) #11
          to label %if.end57 [label %if.then52], !srcloc !232

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @flush_iotlb_page.__UNIQUE_ID_ddebug239, ptr noundef %36, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i32 noundef %da) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %do.body40, %for.end.if.end57_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iopgd_alloc_super(ptr nocapture noundef readonly %obj, i32 noundef %da, i32 noundef %pa, i32 noundef %prot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %pa, %da
  %and4 = and i32 %or, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %da, 20
  %mul = shl nuw nsw i32 %shr, 2
  %iopgd1 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %iopgd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iopgd1, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  %and5 = and i32 %pa, -16777216
  %or6 = or i32 %and5, %prot
  %or7 = or i32 %or6, 262146
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or7, ptr %add.ptr, align 4
  %add.ptr8.1 = getelementptr i32, ptr %add.ptr, i32 1
  %3 = ptrtoint ptr %add.ptr8.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or7, ptr %add.ptr8.1, align 4
  %add.ptr8.2 = getelementptr i32, ptr %add.ptr, i32 2
  %4 = ptrtoint ptr %add.ptr8.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or7, ptr %add.ptr8.2, align 4
  %add.ptr8.3 = getelementptr i32, ptr %add.ptr, i32 3
  %5 = ptrtoint ptr %add.ptr8.3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or7, ptr %add.ptr8.3, align 4
  %add.ptr8.4 = getelementptr i32, ptr %add.ptr, i32 4
  %6 = ptrtoint ptr %add.ptr8.4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or7, ptr %add.ptr8.4, align 4
  %add.ptr8.5 = getelementptr i32, ptr %add.ptr, i32 5
  %7 = ptrtoint ptr %add.ptr8.5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or7, ptr %add.ptr8.5, align 4
  %add.ptr8.6 = getelementptr i32, ptr %add.ptr, i32 6
  %8 = ptrtoint ptr %add.ptr8.6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or7, ptr %add.ptr8.6, align 4
  %add.ptr8.7 = getelementptr i32, ptr %add.ptr, i32 7
  %9 = ptrtoint ptr %add.ptr8.7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or7, ptr %add.ptr8.7, align 4
  %add.ptr8.8 = getelementptr i32, ptr %add.ptr, i32 8
  %10 = ptrtoint ptr %add.ptr8.8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or7, ptr %add.ptr8.8, align 4
  %add.ptr8.9 = getelementptr i32, ptr %add.ptr, i32 9
  %11 = ptrtoint ptr %add.ptr8.9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or7, ptr %add.ptr8.9, align 4
  %add.ptr8.10 = getelementptr i32, ptr %add.ptr, i32 10
  %12 = ptrtoint ptr %add.ptr8.10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or7, ptr %add.ptr8.10, align 4
  %add.ptr8.11 = getelementptr i32, ptr %add.ptr, i32 11
  %13 = ptrtoint ptr %add.ptr8.11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or7, ptr %add.ptr8.11, align 4
  %add.ptr8.12 = getelementptr i32, ptr %add.ptr, i32 12
  %14 = ptrtoint ptr %add.ptr8.12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or7, ptr %add.ptr8.12, align 4
  %add.ptr8.13 = getelementptr i32, ptr %add.ptr, i32 13
  %15 = ptrtoint ptr %add.ptr8.13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or7, ptr %add.ptr8.13, align 4
  %add.ptr8.14 = getelementptr i32, ptr %add.ptr, i32 14
  %16 = ptrtoint ptr %add.ptr8.14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or7, ptr %add.ptr8.14, align 4
  %add.ptr8.15 = getelementptr i32, ptr %add.ptr, i32 15
  %17 = ptrtoint ptr %add.ptr8.15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or7, ptr %add.ptr8.15, align 4
  %dev9 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 4
  %pd_dma = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 9
  %20 = ptrtoint ptr %pd_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pd_dma, align 4
  %add.i.i = add i32 %21, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %add.i.i, i32 noundef 64, i32 noundef 1) #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef %da, i32 noundef %pa, i32 noundef 16777216) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.preheader
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iopgd_alloc_section(ptr nocapture noundef readonly %obj, i32 noundef %da, i32 noundef %pa, i32 noundef %prot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %pa, %da
  %and4 = and i32 %or, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.88, i32 noundef %da, i32 noundef %pa, i32 noundef 1048576) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %da, 20
  %mul = shl nuw nsw i32 %shr, 2
  %iopgd1 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %2 = ptrtoint ptr %iopgd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iopgd1, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 %shr
  %and5 = and i32 %pa, -1048576
  %or6 = or i32 %and5, %prot
  %or7 = or i32 %or6, 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or7, ptr %add.ptr, align 4
  %dev8 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  %pd_dma = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 9
  %7 = ptrtoint ptr %pd_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pd_dma, align 4
  %add.i.i = add i32 %8, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %6, i32 noundef %add.i.i, i32 noundef 4, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iopte_alloc_large(ptr noundef %obj, i32 noundef %da, i32 noundef %pa, i32 noundef %prot) unnamed_addr #0 align 64 {
entry:
  %pt_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iopgd1 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %iopgd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iopgd1, align 4
  %shr = lshr i32 %da, 20
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt_dma) #11
  %2 = ptrtoint ptr %pt_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pt_dma, align 4, !annotation !248
  %call = call fastcc ptr @iopte_alloc(ptr noundef %obj, ptr noundef %add.ptr, ptr noundef nonnull %pt_dma, i32 noundef %da)
  %3 = lshr i32 %da, 10
  %mul = and i32 %3, 1020
  %or = or i32 %pa, %da
  %and4 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.89, i32 noundef %da, i32 noundef %pa, i32 noundef 65536) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and9 = and i32 %pa, -65536
  %or10 = or i32 %and9, %prot
  %or11 = or i32 %or10, 1
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or11, ptr %call, align 4
  %add.ptr12.1 = getelementptr i32, ptr %call, i32 1
  %7 = ptrtoint ptr %add.ptr12.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or11, ptr %add.ptr12.1, align 4
  %add.ptr12.2 = getelementptr i32, ptr %call, i32 2
  %8 = ptrtoint ptr %add.ptr12.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or11, ptr %add.ptr12.2, align 4
  %add.ptr12.3 = getelementptr i32, ptr %call, i32 3
  %9 = ptrtoint ptr %add.ptr12.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or11, ptr %add.ptr12.3, align 4
  %add.ptr12.4 = getelementptr i32, ptr %call, i32 4
  %10 = ptrtoint ptr %add.ptr12.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or11, ptr %add.ptr12.4, align 4
  %add.ptr12.5 = getelementptr i32, ptr %call, i32 5
  %11 = ptrtoint ptr %add.ptr12.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or11, ptr %add.ptr12.5, align 4
  %add.ptr12.6 = getelementptr i32, ptr %call, i32 6
  %12 = ptrtoint ptr %add.ptr12.6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or11, ptr %add.ptr12.6, align 4
  %add.ptr12.7 = getelementptr i32, ptr %call, i32 7
  %13 = ptrtoint ptr %add.ptr12.7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or11, ptr %add.ptr12.7, align 4
  %add.ptr12.8 = getelementptr i32, ptr %call, i32 8
  %14 = ptrtoint ptr %add.ptr12.8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or11, ptr %add.ptr12.8, align 4
  %add.ptr12.9 = getelementptr i32, ptr %call, i32 9
  %15 = ptrtoint ptr %add.ptr12.9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or11, ptr %add.ptr12.9, align 4
  %add.ptr12.10 = getelementptr i32, ptr %call, i32 10
  %16 = ptrtoint ptr %add.ptr12.10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or11, ptr %add.ptr12.10, align 4
  %add.ptr12.11 = getelementptr i32, ptr %call, i32 11
  %17 = ptrtoint ptr %add.ptr12.11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or11, ptr %add.ptr12.11, align 4
  %add.ptr12.12 = getelementptr i32, ptr %call, i32 12
  %18 = ptrtoint ptr %add.ptr12.12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or11, ptr %add.ptr12.12, align 4
  %add.ptr12.13 = getelementptr i32, ptr %call, i32 13
  %19 = ptrtoint ptr %add.ptr12.13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or11, ptr %add.ptr12.13, align 4
  %add.ptr12.14 = getelementptr i32, ptr %call, i32 14
  %20 = ptrtoint ptr %add.ptr12.14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or11, ptr %add.ptr12.14, align 4
  %add.ptr12.15 = getelementptr i32, ptr %call, i32 15
  %21 = ptrtoint ptr %add.ptr12.15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or11, ptr %add.ptr12.15, align 4
  %dev13 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %22 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev13, align 4
  %24 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pt_dma, align 4
  %add.i.i = add i32 %25, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %23, i32 noundef %add.i.i, i32 noundef 64, i32 noundef 1) #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.cond.preheader, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %26, %if.then6 ], [ 0, %for.cond.preheader ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt_dma) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iopte_alloc_page(ptr noundef %obj, i32 noundef %da, i32 noundef %pa, i32 noundef %prot) unnamed_addr #0 align 64 {
entry:
  %pt_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iopgd1 = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %iopgd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iopgd1, align 4
  %shr = lshr i32 %da, 20
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt_dma) #11
  %2 = ptrtoint ptr %pt_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pt_dma, align 4, !annotation !248
  %call = call fastcc ptr @iopte_alloc(ptr noundef %obj, ptr noundef %add.ptr, ptr noundef nonnull %pt_dma, i32 noundef %da)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = lshr i32 %da, 10
  %mul = and i32 %4, 1020
  %and6 = and i32 %pa, -4096
  %or = or i32 %and6, %prot
  %or7 = or i32 %or, 2
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or7, ptr %call, align 4
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pt_dma, align 4
  %add.i.i = add i32 %9, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %add.i.i, i32 noundef 4, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt_dma) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iopte_alloc(ptr noundef %obj, ptr nocapture noundef %iopgd, ptr nocapture noundef %pt_dma, i32 noundef %da) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %da, 18
  %mul = and i32 %0, 16380
  %1 = ptrtoint ptr %iopgd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iopgd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.pte_ready_crit_edge

entry.pte_ready_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pte_ready

if.end:                                           ; preds = %entry
  %page_table_lock = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock) #11
  %3 = load ptr, ptr @iopte_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #11
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock) #11
  %4 = ptrtoint ptr %iopgd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iopgd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %dev = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i87 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i) #11
  br i1 %call.i87, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end7
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !239

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef nonnull %call.i, i32 noundef 1024) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %call.i to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %14 = ptrtoint ptr %pt_dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %pt_dma, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %16, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %iopte_free.exit, label %if.end15

iopte_free.exit:                                  ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.90) #14
  %19 = load ptr, ptr @iopte_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef nonnull %call.i) #11
  br label %cleanup

if.end15:                                         ; preds = %dma_map_single_attrs.exit
  %20 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pt_dma, align 4
  %22 = ptrtoint ptr %call.i to i32
  %call.i89 = tail call i32 @__virt_to_phys(i32 noundef %22) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call.i89)
  %cmp.not = icmp eq i32 %21, %call.i89
  br i1 %cmp.not, label %if.end49, label %iopte_free.exit92, !prof !239

iopte_free.exit92:                                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 517, i32 noundef 9, ptr noundef null) #11
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.93) #14
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pt_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %28, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  %29 = load ptr, ptr @iopte_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef nonnull %call.i) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call.i93 = tail call i32 @__virt_to_phys(i32 noundef %22) #11
  %or = or i32 %call.i93, 1
  %30 = ptrtoint ptr %iopgd to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %iopgd, align 4
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %pd_dma = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 9
  %33 = ptrtoint ptr %pd_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pd_dma, align 4
  %add.i.i = add i32 %34, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %32, i32 noundef %add.i.i, i32 noundef 4, i32 noundef 1) #11
  br label %pte_ready

if.else:                                          ; preds = %if.end
  br i1 %tobool4.not, label %if.else.pte_ready_crit_edge, label %if.then.i95

if.else.pte_ready_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %pte_ready

if.then.i95:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %35 = load ptr, ptr @iopte_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef nonnull %call.i) #11
  br label %pte_ready

pte_ready:                                        ; preds = %if.then.i95, %if.else.pte_ready_crit_edge, %if.end49, %entry.pte_ready_crit_edge
  %36 = ptrtoint ptr %iopgd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iopgd, align 4
  %and53 = and i32 %37, -1024
  %38 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and53, i32 -2130706432, i32 8454144) #15, !srcloc !234
  %39 = inttoptr i32 %38 to ptr
  %shr55 = lshr i32 %da, 12
  %and56 = and i32 %shr55, 255
  %add.ptr = getelementptr i32, ptr %39, i32 %and56
  %40 = ptrtoint ptr %pt_dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and53, ptr %pt_dma, align 4
  br label %cleanup

cleanup:                                          ; preds = %pte_ready, %iopte_free.exit92, %iopte_free.exit, %if.then3.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %pte_ready ], [ inttoptr (i32 -12 to ptr), %iopte_free.exit ], [ inttoptr (i32 -12 to ptr), %iopte_free.exit92 ], [ inttoptr (i32 -12 to ptr), %if.then3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/omap-iommu.c", i32 86, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omap_iommu_save_ctx.__UNIQUE_ID_ddebug235, !1, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!6 = !{ptr @__ksymtab_omap_iommu_save_ctx, !7, !"__ksymtab_omap_iommu_save_ctx", i1 false, i1 false}
!7 = !{!"../drivers/iommu/omap-iommu.c", i32 92, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/omap-iommu.c", i32 116, i32 4}
!10 = !{ptr @omap_iommu_restore_ctx.__UNIQUE_ID_ddebug236, !9, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!11 = !{ptr @__ksymtab_omap_iommu_restore_ctx, !12, !"__ksymtab_omap_iommu_restore_ctx", i1 false, i1 false}
!12 = !{!"../drivers/iommu/omap-iommu.c", i32 122, i32 1}
!13 = !{ptr @__ksymtab_omap_iommu_domain_deactivate, !14, !"__ksymtab_omap_iommu_domain_deactivate", i1 false, i1 false}
!14 = !{!"../drivers/iommu/omap-iommu.c", i32 968, i32 1}
!15 = !{ptr @__ksymtab_omap_iommu_domain_activate, !16, !"__ksymtab_omap_iommu_domain_activate", i1 false, i1 false}
!16 = !{!"../drivers/iommu/omap-iommu.c", i32 996, i32 1}
!17 = !{ptr @__initcall__kmod_omap_iommu__245_1789_omap_iommu_init4, !18, !"__initcall__kmod_omap_iommu__245_1789_omap_iommu_init4", i1 false, i1 false}
!18 = !{!"../drivers/iommu/omap-iommu.c", i32 1789, i32 1}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iommu/omap-iommu.c", i32 1763, i32 24}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iommu/omap-iommu.c", i32 1773, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @omap_iommu_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @omap_iommu_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @omap_iommu_of_match, !27, !"omap_iommu_of_match", i1 false, i1 false}
!27 = !{!"../drivers/iommu/omap-iommu.c", i32 1288, i32 34}
!28 = !{ptr @iopte_cachep, !29, !"iopte_cachep", i1 false, i1 false}
!29 = !{!"../drivers/iommu/omap-iommu.c", i32 53, i32 27}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iommu/omap-iommu.c", i32 1300, i32 11}
!32 = !{ptr @omap_iommu_driver, !33, !"omap_iommu_driver", i1 false, i1 false}
!33 = !{!"../drivers/iommu/omap-iommu.c", i32 1296, i32 31}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iommu/omap-iommu.c", i32 1170, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @omap_iommu_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap_iommu_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iommu/omap-iommu.c", i32 1183, i32 3}
!41 = !{ptr @omap_iommu_probe.__UNIQUE_ID_ddebug242, !40, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iommu/omap-iommu.c", i32 1189, i32 33}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iommu/omap-iommu.c", i32 1194, i32 27}
!46 = !{ptr @omap_iommu_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/iommu/omap-iommu.c", i32 1205, i32 2}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @omap_iommu_probe.__key.15, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/iommu/omap-iommu.c", i32 1206, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iommu/omap-iommu.c", i32 1246, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @omap_iommu_probe._entry.17, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap_iommu_probe._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iommu/omap-iommu.c", i32 1128, i32 35}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iommu/omap-iommu.c", i32 1131, i32 33}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iommu/omap-iommu.c", i32 1132, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @omap_iommu_dra7_get_dsp_system_cfg._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @omap_iommu_dra7_get_dsp_system_cfg._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iommu/omap-iommu.c", i32 1146, i32 3}
!70 = !{ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @omap_iommu_dra7_get_dsp_system_cfg._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iommu/omap-iommu.c", i32 1151, i32 3}
!74 = !{ptr @omap_iommu_dra7_get_dsp_system_cfg._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @omap_iommu_dra7_get_dsp_system_cfg._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iommu/omap-iommu.c", i32 828, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @iommu_fault_handler._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @iommu_fault_handler._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iommu/omap-iommu.c", i32 835, i32 2}
!83 = !{ptr @iommu_fault_handler._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @iommu_fault_handler._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iommu/omap-iommu.c", i32 1115, i32 37}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iommu/omap-iommu.c", i32 1116, i32 37}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iommu/omap-iommu.c", i32 1276, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @omap_iommu_remove._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap_iommu_remove._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @omap_iommu_pm_ops, !95, !"omap_iommu_pm_ops", i1 false, i1 false}
!95 = !{!"../drivers/iommu/omap-iommu.c", i32 1280, i32 32}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iommu/omap-iommu.c", i32 1032, i32 4}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @omap_iommu_runtime_suspend._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @omap_iommu_runtime_suspend._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iommu/omap-iommu.c", i32 189, i32 2}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @omap2_iommu_disable.__UNIQUE_ID_ddebug237, !103, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iommu/omap-iommu.c", i32 1062, i32 4}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @omap_iommu_runtime_resume._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @omap_iommu_runtime_resume._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iommu/omap-iommu.c", i32 1070, i32 4}
!113 = !{ptr @omap_iommu_runtime_resume._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @omap_iommu_runtime_resume._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iommu/omap-iommu.c", i32 166, i32 2}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @omap2_iommu_enable._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @omap2_iommu_enable._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @omap_iommu_ops, !121, !"omap_iommu_ops", i1 false, i1 false}
!121 = !{!"../drivers/iommu/omap-iommu.c", i32 1735, i32 31}
!122 = !{ptr @omap_iommu_domain_alloc.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/iommu/omap-iommu.c", i32 1580, i32 2}
!124 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iommu/omap-iommu.c", i32 1529, i32 3}
!127 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @_omap_iommu_detach_dev._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @_omap_iommu_detach_dev._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iommu/omap-iommu.c", i32 1535, i32 3}
!132 = !{ptr @_omap_iommu_detach_dev._entry.57, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @_omap_iommu_detach_dev._entry_ptr.59, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iommu/omap-iommu.c", i32 897, i32 2}
!136 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @omap_iommu_detach.__UNIQUE_ID_ddebug241, !135, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iommu/omap-iommu.c", i32 1466, i32 3}
!140 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @omap_iommu_attach_dev._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @omap_iommu_attach_dev._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iommu/omap-iommu.c", i32 1474, i32 3}
!145 = !{ptr @omap_iommu_attach_dev._entry.64, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @omap_iommu_attach_dev._entry_ptr.66, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iommu/omap-iommu.c", i32 1481, i32 3}
!149 = !{ptr @omap_iommu_attach_dev._entry.67, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @omap_iommu_attach_dev._entry_ptr.69, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iommu/omap-iommu.c", i32 1492, i32 4}
!153 = !{ptr @omap_iommu_attach_dev._entry.70, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @omap_iommu_attach_dev._entry_ptr.72, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iommu/omap-iommu.c", i32 855, i32 3}
!157 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @omap_iommu_attach._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @omap_iommu_attach._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @omap_iommu_attach.__UNIQUE_ID_ddebug240, !161, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!161 = !{!"../drivers/iommu/omap-iommu.c", i32 868, i32 2}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iommu/omap-iommu.c", i32 1335, i32 3}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @omap_iommu_map._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @omap_iommu_map._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/iommu/omap-iommu.c", i32 1339, i32 2}
!173 = !{ptr @omap_iommu_map.__UNIQUE_ID_ddebug243, !172, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iommu/omap-iommu.c", i32 1348, i32 4}
!176 = !{ptr @omap_iommu_map._entry.80, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @omap_iommu_map._entry_ptr.82, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iommu/omap-iommu.c", i32 425, i32 4}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @flush_iotlb_page.__UNIQUE_ID_ddebug238, !179, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/iommu/omap-iommu.c", i32 435, i32 3}
!184 = !{ptr @flush_iotlb_page.__UNIQUE_ID_ddebug239, !183, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iommu/omap-iommu.c", i32 567, i32 3}
!187 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @iopgd_alloc_super._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @iopgd_alloc_super._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/iommu/omap-iommu.c", i32 550, i32 3}
!192 = !{ptr @iopgd_alloc_section._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @iopgd_alloc_section._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/iommu/omap-iommu.c", i32 606, i32 3}
!196 = !{ptr @iopte_alloc_large._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @iopte_alloc_large._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/iommu/omap-iommu.c", i32 508, i32 4}
!200 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @iopte_alloc._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @iopte_alloc._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iommu/omap-iommu.c", i32 518, i32 4}
!205 = !{ptr @iopte_alloc._entry.92, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @iopte_alloc._entry_ptr.94, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/iommu/omap-iommu.c", i32 1376, i32 2}
!209 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @omap_iommu_unmap.__UNIQUE_ID_ddebug244, !208, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/iommu/omap-iommu.c", i32 1625, i32 4}
!213 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @omap_iommu_iova_to_phys._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @omap_iommu_iova_to_phys._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/iommu/omap-iommu.c", i32 1633, i32 4}
!218 = !{ptr @omap_iommu_iova_to_phys._entry.99, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @omap_iommu_iova_to_phys._entry_ptr.101, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/iommu/omap-iommu.c", i32 1661, i32 61}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i64 6257563}
!232 = !{i64 2148362080, i64 2148362085, i64 2148362098, i64 2148362142, i64 2148362176, i64 2148362197}
!233 = !{i64 6257145}
!234 = !{i64 2148954416, i64 2148954439, i64 2148954471, i64 2148954503, i64 2148954541, i64 2148954571}
!235 = !{!236}
!236 = distinct !{!236, !237, !"__iotlb_read_cr: %agg.result"}
!237 = distinct !{!237, !"__iotlb_read_cr"}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{!"branch_weights", i32 2146410443, i32 1073205}
!241 = !{ptr @iopgd_alloc_section, ptr @iopgd_alloc_super, ptr @iopte_alloc_large, ptr @iopte_alloc_page}
!242 = !{i64 2148548106}
!243 = !{i64 1034706, i64 1034731, i64 1034753, i64 1034769, i64 1034781, i64 1034801, i64 1034825, i64 1034841, i64 1034853}
!244 = !{i64 2148548294}
!245 = !{!246}
!246 = distinct !{!246, !247, !"__iotlb_read_cr: %agg.result"}
!247 = distinct !{!247, !"__iotlb_read_cr"}
!248 = !{!"auto-init"}
