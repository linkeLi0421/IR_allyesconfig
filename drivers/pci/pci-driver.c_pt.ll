; ModuleID = '/llk/IR_all_yes/drivers/pci/pci-driver.c_pt.bc'
source_filename = "../drivers/pci/pci-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_add_dynid\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_add_dynid\09\09\09\09"
module asm "\09.long\09__crc_pci_add_dynid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_add_dynid:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_add_dynid\22\09\09\09\09\09"
module asm "__kstrtabns_pci_add_dynid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_match_id\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_match_id\09\09\09\09"
module asm "\09.long\09__crc_pci_match_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_match_id\22\09\09\09\09\09"
module asm "__kstrtabns_pci_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__pci_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___pci_register_driver\09\09\09\09"
module asm "\09.long\09__crc___pci_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___pci_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_pci_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_dev_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_dev_driver\09\09\09\09"
module asm "\09.long\09__crc_pci_dev_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_dev_get\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_dev_get\09\09\09\09"
module asm "\09.long\09__crc_pci_dev_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_get\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_dev_put\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_dev_put\09\09\09\09"
module asm "\09.long\09__crc_pci_dev_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_put\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_bus_type\09\09\09\09"
module asm "\09.long\09__crc_pci_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcie_port_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_pcie_port_bus_type\09\09\09\09"
module asm "\09.long\09__crc_pcie_port_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dynid = type { %struct.list_head, %struct.pci_device_id }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, i32, i8, i16, i16, [6 x i32], i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__kstrtab_pci_add_dynid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_add_dynid = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_add_dynid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_add_dynid to i32), ptr @__kstrtab_pci_add_dynid, ptr @__kstrtabns_pci_add_dynid }, section "___ksymtab_gpl+pci_add_dynid", align 4
@__kstrtab_pci_match_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_match_id = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_match_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_match_id to i32), ptr @__kstrtab_pci_match_id, ptr @__kstrtabns_pci_match_id }, section "___ksymtab+pci_match_id", align 4
@pci_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.6, ptr null, ptr null, ptr @pci_bus_groups, ptr @pci_dev_groups, ptr @pci_drv_groups, ptr @pci_bus_match, ptr @pci_uevent, ptr @pci_device_probe, ptr null, ptr @pci_device_remove, ptr @pci_device_shutdown, ptr null, ptr null, ptr null, ptr null, ptr @pci_bus_num_vf, ptr @pci_dma_configure, ptr @pci_dev_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__pci_register_driver.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&drv->dynids.lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab___pci_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_register_driver to i32), ptr @__kstrtab___pci_register_driver, ptr @__kstrtabns___pci_register_driver }, section "___ksymtab+__pci_register_driver", align 4
@__kstrtab_pci_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unregister_driver to i32), ptr @__kstrtab_pci_unregister_driver, ptr @__kstrtabns_pci_unregister_driver }, section "___ksymtab+pci_unregister_driver", align 4
@pci_compat_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pci_dev_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_driver to i32), ptr @__kstrtab_pci_dev_driver, ptr @__kstrtabns_pci_dev_driver }, section "___ksymtab+pci_dev_driver", align 4
@__kstrtab_pci_dev_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_get to i32), ptr @__kstrtab_pci_dev_get, ptr @__kstrtabns_pci_dev_get }, section "___ksymtab+pci_dev_get", align 4
@__kstrtab_pci_dev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_put to i32), ptr @__kstrtab_pci_dev_put, ptr @__kstrtabns_pci_dev_put }, section "___ksymtab+pci_dev_put", align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ERROR_EVENT=BEGIN_RECOVERY\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEVICE_ONLINE=0\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ERROR_EVENT=SUCCESSFUL_RECOVERY\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEVICE_ONLINE=1\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERROR_EVENT=FAILED_RECOVERY\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@pci_bus_groups = external dso_local global [0 x ptr], align 4
@pci_dev_groups = external dso_local global [0 x ptr], align 4
@pci_drv_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pci_drv_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @pci_pm_prepare, ptr @pci_pm_complete, ptr @pci_pm_suspend, ptr @pci_pm_resume, ptr @pci_pm_freeze, ptr @pci_pm_thaw, ptr @pci_pm_poweroff, ptr @pci_pm_restore, ptr @pci_pm_suspend_late, ptr @pci_pm_resume_early, ptr null, ptr null, ptr @pci_pm_poweroff_late, ptr null, ptr @pci_pm_suspend_noirq, ptr @pci_pm_resume_noirq, ptr @pci_pm_freeze_noirq, ptr @pci_pm_thaw_noirq, ptr @pci_pm_poweroff_noirq, ptr @pci_pm_restore_noirq, ptr @pci_pm_runtime_suspend, ptr @pci_pm_runtime_resume, ptr @pci_pm_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pci_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_type to i32), ptr @__kstrtab_pci_bus_type, ptr @__kstrtabns_pci_bus_type }, section "___ksymtab+pci_bus_type", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pci_express\00", [20 x i8] zeroinitializer }, align 32
@pcie_port_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcie_port_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_pcie_port_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_bus_type to i32), ptr @__kstrtab_pcie_port_bus_type, ptr @__kstrtabns_pcie_port_bus_type }, section "___ksymtab_gpl+pcie_port_bus_type", align 4
@__initcall__kmod_pci_driver__300_1672_pci_driver_init2 = internal global ptr @pci_driver_init, section ".initcall2.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"compat\00", [25 x i8] zeroinitializer }, align 32
@pci_drv_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_drv_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_drv_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @driver_attr_new_id, ptr @driver_attr_remove_id, ptr null], [20 x i8] zeroinitializer }, align 32
@driver_attr_new_id = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.9, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @new_id_store }, [36 x i8] zeroinitializer }, align 32
@driver_attr_remove_id = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @remove_id_store }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"new_id\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%x %x %x %x %x %x %lx\00", [42 x i8] zeroinitializer }, align 32
@pci_device_id_any = internal constant { %struct.pci_device_id, [32 x i8] } { %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"remove_id\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%x %x %x %x %x %x\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCI_CLASS=%04X\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI_ID=%04X:%04X\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI_SUBSYS_ID=%04X:%04X\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI_SLOT_NAME=%s\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"MODALIAS=pci:v%08Xd%08Xsv%08Xsd%08Xbc%02Xsc%02Xi%02X\00", [43 x i8] zeroinitializer }, align 32
@local_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 336, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Driver probe function unexpectedly returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"local_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pci/pci-driver.c\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@local_pci_probe._entry_ptr = internal global ptr @local_pci_probe._entry, section ".printk_index", align 4
@kexec_in_progress = external dso_local local_unnamed_addr global i8, align 1
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@__func__.pci_pm_suspend = private unnamed_addr constant [15 x i8] c"pci_pm_suspend\00", align 1
@pci_pm_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s %s: PCI PM: State of device not saved by %pS\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s %s: device %04x:%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.pci_legacy_suspend = private unnamed_addr constant [19 x i8] c"pci_legacy_suspend\00", align 1
@pci_legacy_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: PCI PM: Device state not saved by %pS\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.pci_pm_freeze = private unnamed_addr constant [14 x i8] c"pci_pm_freeze\00", align 1
@__func__.pci_pm_poweroff = private unnamed_addr constant [16 x i8] c"pci_pm_poweroff\00", align 1
@__func__.pci_pm_suspend_noirq = private unnamed_addr constant [21 x i8] c"pci_pm_suspend_noirq\00", align 1
@pci_pm_suspend_noirq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_pm_suspend_noirq.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @__func__.pci_pm_suspend_noirq, ptr @.str.20, ptr @.str.27, i8 0, i8 -43, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci_driver\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCI PM: Suspend power state: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_pm_suspend_noirq.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @__func__.pci_pm_suspend_noirq, ptr @.str.20, ptr @.str.28, i8 0, i8 -39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI PM: Skipped\0A\00", [47 x i8] zeroinitializer }, align 32
@pci_power_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__func__.pci_pm_freeze_noirq = private unnamed_addr constant [20 x i8] c"pci_pm_freeze_noirq\00", align 1
@__func__.pci_pm_poweroff_noirq = private unnamed_addr constant [22 x i8] c"pci_pm_poweroff_noirq\00", align 1
@pci_pm_runtime_suspend.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.20, ptr @.str.30, i8 1, i8 60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_pm_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't suspend now (%ps returned %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@pci_pm_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.20, i32 1268, ptr @.str.32, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't suspend (%ps returned %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_pm_runtime_suspend._entry_ptr = internal global ptr @pci_pm_runtime_suspend._entry, section ".printk_index", align 4
@pci_pm_runtime_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967280, i64 4294967285]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"pci_bus_type\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1611, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1401, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"pci_compat_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1426, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1557, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1558, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1561, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1562, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1565, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1612, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"pci_drv_groups\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"pci_dev_pm_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1344, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1650, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"pcie_port_bus_type\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1649, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1427, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"pci_drv_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 296, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"pci_drv_attrs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 291, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"driver_attr_new_id\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"driver_attr_remove_id\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 245, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 198, i32 23 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"pci_device_id_any\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 118, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 289, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 265, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1520, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1523, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1526, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1530, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1533, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 335, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 784, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 660, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 605, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 854, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 869, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1263, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [28 x i8] c"../drivers/pci/pci-driver.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1267, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__initcall__kmod_pci_driver__300_1672_pci_driver_init2, ptr @__ksymtab___pci_register_driver, ptr @__ksymtab_pci_add_dynid, ptr @__ksymtab_pci_bus_type, ptr @__ksymtab_pci_dev_driver, ptr @__ksymtab_pci_dev_get, ptr @__ksymtab_pci_dev_put, ptr @__ksymtab_pci_match_id, ptr @__ksymtab_pci_unregister_driver, ptr @__ksymtab_pcie_port_bus_type, ptr @local_pci_probe._entry, ptr @local_pci_probe._entry_ptr, ptr @pci_pm_runtime_suspend._entry, ptr @pci_pm_runtime_suspend._entry_ptr, ptr @pci_bus_type, ptr @.str, ptr @pci_compat_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pci_drv_groups, ptr @pci_dev_pm_ops, ptr @.str.7, ptr @pcie_port_bus_type, ptr @.str.8, ptr @pci_drv_group, ptr @pci_drv_attrs, ptr @driver_attr_new_id, ptr @driver_attr_remove_id, ptr @.str.9, ptr @.str.10, ptr @pci_device_id_any, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_compat_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_drv_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_port_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_drv_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_drv_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_new_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_remove_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_device_id_any to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_pm_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_add_dynid(ptr noundef %drv, i32 noundef %vendor, i32 noundef %device, i32 noundef %subvendor, i32 noundef %subdevice, i32 noundef %class, i32 noundef %class_mask, i32 noundef %driver_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vendor, ptr %id, align 8
  %device3 = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %device, ptr %device3, align 4
  %subvendor5 = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %subvendor5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %subvendor, ptr %subvendor5, align 8
  %subdevice7 = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %subdevice7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %subdevice, ptr %subdevice7, align 4
  %class9 = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %class9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %class, ptr %class9, align 8
  %class_mask11 = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %class_mask11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %class_mask, ptr %class_mask11, align 4
  %driver_data13 = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %driver_data13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %driver_data, ptr %driver_data13, align 8
  %dynids = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %dynids) #12
  %list = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15, i32 1
  %prev.i = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %9, ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dynids) #12
  %driver = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14
  %call17 = tail call i32 @driver_attach(ptr noundef %driver) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_match_id(ptr noundef readonly %ids, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ids, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %while.cond.preheader

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

while.cond.preheader:                             ; preds = %entry
  %vendor2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %device9.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %class30.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %if.end, %while.cond.preheader
  %ids.addr.0 = phi ptr [ %incdec.ptr, %if.end ], [ %ids, %while.cond.preheader ]
  %0 = ptrtoint ptr %ids.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ids.addr.0, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %while.cond.lor.lhs.false.i_crit_edge [
    i32 0, label %lor.lhs.false
    i32 -1, label %while.cond.land.lhs.true.i_crit_edge
  ]

while.cond.land.lhs.true.i_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

while.cond.lor.lhs.false.i_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.lhs.false:                                    ; preds = %while.cond
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 2
  %3 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %subvendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %lor.rhs, label %lor.lhs.false.lor.lhs.false.i_crit_edge

lor.lhs.false.lor.lhs.false.i_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.rhs:                                          ; preds = %lor.lhs.false
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 5
  %5 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %class_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.rhs.return_crit_edge, label %lor.rhs.lor.lhs.false.i_crit_edge

lor.rhs.lor.lhs.false.i_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.i:                                  ; preds = %lor.rhs.lor.lhs.false.i_crit_edge, %lor.lhs.false.lor.lhs.false.i_crit_edge, %while.cond.lor.lhs.false.i_crit_edge
  %7 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor2.i, align 8
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i)
  %cmp3.i = icmp eq i32 %1, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %while.cond.land.lhs.true.i_crit_edge
  %device.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 1
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp5.i = icmp eq i32 %10, -1
  br i1 %cmp5.i, label %land.lhs.true.i.land.lhs.true13.i_crit_edge, label %lor.lhs.false7.i

land.lhs.true.i.land.lhs.true13.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13.i

lor.lhs.false7.i:                                 ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %device9.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device9.i, align 2
  %conv10.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %10, %conv10.i
  br i1 %cmp11.i, label %lor.lhs.false7.i.land.lhs.true13.i_crit_edge, label %lor.lhs.false7.i.if.end_crit_edge

lor.lhs.false7.i.if.end_crit_edge:                ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false7.i.land.lhs.true13.i_crit_edge:     ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false7.i.land.lhs.true13.i_crit_edge, %land.lhs.true.i.land.lhs.true13.i_crit_edge
  %subvendor.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 2
  %13 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subvendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp14.i = icmp eq i32 %14, -1
  br i1 %cmp14.i, label %land.lhs.true13.i.land.lhs.true21.i_crit_edge, label %lor.lhs.false16.i

land.lhs.true13.i.land.lhs.true21.i_crit_edge:    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true13.i
  %15 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor.i, align 4
  %conv18.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv18.i)
  %cmp19.i = icmp eq i32 %14, %conv18.i
  br i1 %cmp19.i, label %lor.lhs.false16.i.land.lhs.true21.i_crit_edge, label %lor.lhs.false16.i.if.end_crit_edge

lor.lhs.false16.i.if.end_crit_edge:               ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false16.i.land.lhs.true21.i_crit_edge:    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i

land.lhs.true21.i:                                ; preds = %lor.lhs.false16.i.land.lhs.true21.i_crit_edge, %land.lhs.true13.i.land.lhs.true21.i_crit_edge
  %subdevice.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 3
  %17 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subdevice.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp22.i = icmp eq i32 %18, -1
  br i1 %cmp22.i, label %land.lhs.true21.i.land.lhs.true29.i_crit_edge, label %lor.lhs.false24.i

land.lhs.true21.i.land.lhs.true29.i_crit_edge:    ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i

lor.lhs.false24.i:                                ; preds = %land.lhs.true21.i
  %19 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_device.i, align 2
  %conv26.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv26.i)
  %cmp27.i = icmp eq i32 %18, %conv26.i
  br i1 %cmp27.i, label %lor.lhs.false24.i.land.lhs.true29.i_crit_edge, label %lor.lhs.false24.i.if.end_crit_edge

lor.lhs.false24.i.if.end_crit_edge:               ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false24.i.land.lhs.true29.i_crit_edge:    ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i

land.lhs.true29.i:                                ; preds = %lor.lhs.false24.i.land.lhs.true29.i_crit_edge, %land.lhs.true21.i.land.lhs.true29.i_crit_edge
  %class.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 4
  %21 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %class.i, align 4
  %23 = ptrtoint ptr %class30.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class30.i, align 8
  %xor.i = xor i32 %24, %22
  %class_mask.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0, i32 0, i32 5
  %25 = ptrtoint ptr %class_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %class_mask.i, align 4
  %and.i = and i32 %xor.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %tobool4.not = icmp eq ptr %ids.addr.0, null
  %or.cond = or i1 %tobool4.not, %tobool.not.i
  br i1 %or.cond, label %land.lhs.true29.i.if.end_crit_edge, label %land.lhs.true29.i.return_crit_edge

land.lhs.true29.i.return_crit_edge:               ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true29.i.if.end_crit_edge:               ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true29.i.if.end_crit_edge, %lor.lhs.false24.i.if.end_crit_edge, %lor.lhs.false16.i.if.end_crit_edge, %lor.lhs.false7.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.pci_device_id, ptr %ids.addr.0, i32 1
  br label %while.cond

return:                                           ; preds = %land.lhs.true29.i.return_crit_edge, %lor.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %ids.addr.0, %land.lhs.true29.i.return_crit_edge ], [ null, %lor.rhs.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_alloc_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @pcibios_free_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pci_register_driver(ptr noundef %drv, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %driver = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver, align 4
  %bus = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pci_bus_type, ptr %bus, align 4
  %owner4 = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %owner4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %owner, ptr %owner4, align 4
  %mod_name6 = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %mod_name6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mod_name, ptr %mod_name6, align 4
  %groups = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 12
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %groups8 = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14, i32 14
  %8 = ptrtoint ptr %groups8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %groups8, align 4
  %dev_groups = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 13
  %9 = ptrtoint ptr %dev_groups to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_groups, align 4
  %dev_groups10 = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14, i32 15
  %11 = ptrtoint ptr %dev_groups10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev_groups10, align 4
  %dynids = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %dynids, ptr noundef nonnull @.str, ptr noundef nonnull @__pci_register_driver.__key, i16 noundef signext 3) #12
  %list = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i, align 4
  %call13 = tail call i32 @driver_register(ptr noundef %driver) #12
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 14
  tail call void @driver_unregister(ptr noundef %driver) #12
  %dynids.i = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %dynids.i) #12
  %list.i = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list.i, align 4
  %cmp.not24.i = icmp eq ptr %1, %list.i
  br i1 %cmp.not24.i, label %entry.pci_free_dynids.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pci_free_dynids.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_free_dynids.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %dynid.025.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %dynid.025.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0.i = load ptr, ptr %dynid.025.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dynid.025.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dynid.025.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %dynid.025.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dynid.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %dynid.025.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dynid.025.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dynid.025.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %dynid.025.i) #12
  %cmp.not.i = icmp eq ptr %n.0.i, %list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pci_free_dynids.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pci_free_dynids.exit_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_free_dynids.exit

pci_free_dynids.exit:                             ; preds = %list_del.exit.i.pci_free_dynids.exit_crit_edge, %entry.pci_free_dynids.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dynids.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_dev_driver(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.preheader, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.body.preheader:                               ; preds = %entry
  %flags = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool2.not = icmp sgt i32 %3, -1
  br i1 %tobool2.not, label %for.cond, label %for.body.preheader.return_crit_edge

for.body.preheader.return_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond:                                         ; preds = %for.body.preheader
  %flags.1 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 3
  %4 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool2.not.1 = icmp sgt i32 %5, -1
  br i1 %tobool2.not.1, label %for.cond.1, label %for.cond.return_crit_edge

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond.1:                                       ; preds = %for.cond
  %flags.2 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 2, i32 3
  %6 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool2.not.2 = icmp sgt i32 %7, -1
  br i1 %tobool2.not.2, label %for.cond.2, label %for.cond.1.return_crit_edge

for.cond.1.return_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond.2:                                       ; preds = %for.cond.1
  %flags.3 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 3, i32 3
  %8 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool2.not.3 = icmp sgt i32 %9, -1
  br i1 %tobool2.not.3, label %for.cond.3, label %for.cond.2.return_crit_edge

for.cond.2.return_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond.3:                                       ; preds = %for.cond.2
  %flags.4 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 3
  %10 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool2.not.4 = icmp sgt i32 %11, -1
  br i1 %tobool2.not.4, label %for.cond.4, label %for.cond.3.return_crit_edge

for.cond.3.return_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond.4:                                       ; preds = %for.cond.3
  %flags.5 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 5, i32 3
  %12 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool2.not.5 = icmp sgt i32 %13, -1
  br i1 %tobool2.not.5, label %for.cond.5, label %for.cond.4.return_crit_edge

for.cond.4.return_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  %flags.6 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 6, i32 3
  %14 = ptrtoint ptr %flags.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool2.not.6 = icmp sgt i32 %15, -1
  %spec.select = select i1 %tobool2.not.6, ptr null, ptr @pci_compat_driver
  br label %return

return:                                           ; preds = %for.cond.5, %for.cond.4.return_crit_edge, %for.cond.3.return_crit_edge, %for.cond.2.return_crit_edge, %for.cond.1.return_crit_edge, %for.cond.return_crit_edge, %for.body.preheader.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi ptr [ %1, %entry.return_crit_edge ], [ @pci_compat_driver, %for.body.preheader.return_crit_edge ], [ @pci_compat_driver, %for.cond.return_crit_edge ], [ @pci_compat_driver, %for.cond.1.return_crit_edge ], [ @pci_compat_driver, %for.cond.2.return_crit_edge ], [ @pci_compat_driver, %for.cond.3.return_crit_edge ], [ @pci_compat_driver, %for.cond.4.return_crit_edge ], [ %spec.select, %for.cond.5 ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_dev_get(ptr noundef returned %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call ptr @get_device(ptr noundef %dev1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %dev
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_dev_put(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @put_device(ptr noundef %dev1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_uevent_ers(ptr noundef %pdev, i32 noundef %err_type) local_unnamed_addr #0 align 64 {
entry:
  %envp = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #12
  %0 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  %2 = zext i32 %err_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %err_type, label %entry.if.end_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge25
    i32 5, label %sw.bb3
    i32 4, label %sw.bb8
  ]

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25
  %3 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %envp, align 4
  br label %if.then

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.3, ptr %envp, align 4
  br label %if.then

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.5, ptr %envp, align 4
  br label %if.then

if.then:                                          ; preds = %sw.bb8, %sw.bb3, %sw.bb
  %.str.2.sink = phi ptr [ @.str.2, %sw.bb8 ], [ @.str.4, %sw.bb3 ], [ @.str.2, %sw.bb ]
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.str.2.sink, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call i32 @kobject_uevent_env(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %envp) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_bus_match(ptr nocapture noundef readonly %dev, ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %match_driver = getelementptr i8, ptr %dev, i32 1480
  %0 = ptrtoint ptr %match_driver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %match_driver, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %tobool.not.i = icmp eq ptr %drv, null
  %add.ptr.i = getelementptr i8, ptr %drv, i32 -60
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %call1 = tail call fastcc ptr @pci_match_device(ptr noundef %spec.select.i, ptr noundef %add.ptr)
  %tobool2.not = icmp ne ptr %call1, null
  %. = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_uevent(ptr noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %class = getelementptr i8, ptr %dev, i32 -96
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.13, i32 noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vendor = getelementptr i8, ptr %dev, i32 -104
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  %conv = zext i16 %3 to i32
  %device = getelementptr i8, ptr %dev, i32 -102
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv4 = zext i16 %5 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %subsystem_vendor = getelementptr i8, ptr %dev, i32 -100
  %6 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor, align 4
  %conv9 = zext i16 %7 to i32
  %subsystem_device = getelementptr i8, ptr %dev, i32 -98
  %8 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device, align 2
  %conv10 = zext i16 %9 to i32
  %call11 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.15, i32 noundef %conv9, i32 noundef %conv10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end14.pci_name.exit_crit_edge

if.end14.pci_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end14.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end14.pci_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor, align 8
  %conv21 = zext i16 %15 to i32
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  %conv23 = zext i16 %17 to i32
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_vendor, align 4
  %conv25 = zext i16 %19 to i32
  %20 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_device, align 2
  %conv27 = zext i16 %21 to i32
  %22 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %class, align 8
  %shr = lshr i32 %23, 16
  %conv30 = and i32 %shr, 255
  %shr32 = lshr i32 %23, 8
  %conv34 = and i32 %shr32, 255
  %conv37 = and i32 %23, 255
  %call38 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.17, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv30, i32 noundef %conv34, i32 noundef %conv37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %. = select i1 %tobool39.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %pci_name.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ -12, %pci_name.exit.cleanup_crit_edge ], [ %., %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_device_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %is_virtfn.i = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load.i = load i40, ptr %is_virtfn.i, align 1
  %3 = and i40 %bf.load.i, 65536
  %tobool.not.i21 = icmp eq i40 %3, 0
  br i1 %tobool.not.i21, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %4 = getelementptr i8, ptr %dev, i32 1856
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 66
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %drivers_autoprobe.i = getelementptr inbounds %struct.pci_sriov, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %drivers_autoprobe.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %drivers_autoprobe.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %pci_device_can_probe.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pci_device_can_probe.exit:                        ; preds = %lor.lhs.false.i
  %driver_override.i = getelementptr i8, ptr %dev, i32 1888
  %12 = ptrtoint ptr %driver_override.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_override.i, align 8
  %tobool2.i.not = icmp eq ptr %13, null
  br i1 %tobool2.i.not, label %pci_device_can_probe.exit.cleanup_crit_edge, label %pci_device_can_probe.exit.if.end_crit_edge

pci_device_can_probe.exit.if.end_crit_edge:       ; preds = %pci_device_can_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pci_device_can_probe.exit.cleanup_crit_edge:      ; preds = %pci_device_can_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pci_device_can_probe.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @pci_assign_irq(ptr noundef %add.ptr) #12
  %call2 = tail call i32 @pcibios_alloc_irq(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool.not.i22 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i22, label %if.end4.pci_dev_get.exit_crit_edge, label %if.then.i

if.end4.pci_dev_get.exit_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_dev_get.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @get_device(ptr noundef %dev) #12
  br label %pci_dev_get.exit

pci_dev_get.exit:                                 ; preds = %if.then.i, %if.end4.pci_dev_get.exit_crit_edge
  %probe.i = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 3
  %14 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %probe.i, align 4
  %tobool.not.i23 = icmp eq ptr %15, null
  br i1 %tobool.not.i23, label %pci_dev_get.exit.cleanup_crit_edge, label %if.then.i26

pci_dev_get.exit.cleanup_crit_edge:               ; preds = %pci_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i26:                                      ; preds = %pci_dev_get.exit
  %call.i24 = tail call fastcc ptr @pci_match_device(ptr noundef %spec.select.i, ptr noundef %add.ptr) #12
  %tobool1.not.i25 = icmp eq ptr %call.i24, null
  br i1 %tobool1.not.i25, label %if.then.i26.if.then7_crit_edge, label %if.then2.i

if.then.i26.if.then7_crit_edge:                   ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then2.i:                                       ; preds = %if.then.i26
  %16 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i, align 1
  %bf.set.i.i = or i40 %bf.load.i.i, 64
  store i40 %bf.set.i.i, ptr %is_virtfn.i, align 1
  tail call void @cpu_hotplug_disable() #12
  %call.i.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  %driver.i.i.i = getelementptr i8, ptr %dev, i32 -60
  %17 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.select.i, ptr %driver.i.i.i, align 4
  %18 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %probe.i, align 4
  %call3.i.i.i = tail call i32 %19(ptr noundef %add.ptr, ptr noundef nonnull %call.i24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then2.i.__pci_device_probe.exit_crit_edge, label %if.end.i.i.i

if.then2.i.__pci_device_probe.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__pci_device_probe.exit

if.end.i.i.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %do.end.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver.i.i.i, align 4
  %call.i25.i.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #12
  br label %__pci_device_probe.exit

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call3.i.i.i) #16
  br label %__pci_device_probe.exit

__pci_device_probe.exit:                          ; preds = %do.end.i.i.i, %if.then4.i.i.i, %if.then2.i.__pci_device_probe.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then4.i.i.i ], [ 0, %do.end.i.i.i ], [ 0, %if.then2.i.__pci_device_probe.exit_crit_edge ]
  %21 = ptrtoint ptr %is_virtfn.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 5)
  %bf.load19.i.i = load i40, ptr %is_virtfn.i, align 1
  %bf.clear20.i.i = and i40 %bf.load19.i.i, -65
  store i40 %bf.clear20.i.i, ptr %is_virtfn.i, align 1
  tail call void @cpu_hotplug_enable() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not, label %__pci_device_probe.exit.cleanup_crit_edge, label %__pci_device_probe.exit.if.then7_crit_edge

__pci_device_probe.exit.if.then7_crit_edge:       ; preds = %__pci_device_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

__pci_device_probe.exit.cleanup_crit_edge:        ; preds = %__pci_device_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %__pci_device_probe.exit.if.then7_crit_edge, %if.then.i26.if.then7_crit_edge
  %error.0.i35 = phi i32 [ %retval.0.i.i.i, %__pci_device_probe.exit.if.then7_crit_edge ], [ -19, %if.then.i26.if.then7_crit_edge ]
  tail call void @pcibios_free_irq(ptr noundef %add.ptr)
  br i1 %tobool.not.i22, label %if.then7.cleanup_crit_edge, label %if.then.i29

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i29:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i29, %if.then7.cleanup_crit_edge, %__pci_device_probe.exit.cleanup_crit_edge, %pci_dev_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pci_device_can_probe.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %pci_device_can_probe.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %__pci_device_probe.exit.cleanup_crit_edge ], [ %error.0.i35, %if.then7.cleanup_crit_edge ], [ %error.0.i35, %if.then.i29 ], [ 0, %pci_dev_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_device_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr i8, ptr %dev, i32 -60
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  tail call void %5(ptr noundef %add.ptr) #12
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !135
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @pcibios_free_irq(ptr noundef %add.ptr)
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver, align 4
  tail call void @pci_iov_remove(ptr noundef %add.ptr) #12
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #12
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %8 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %current_state, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end6.pci_dev_put.exit_crit_edge, label %if.then.i

if.end6.pci_dev_put.exit_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_dev_put.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %dev) #12
  br label %pci_dev_put.exit

pci_dev_put.exit:                                 ; preds = %if.then.i, %if.end6.pci_dev_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_device_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr i8, ptr %dev, i32 -60
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @kexec_in_progress to i32))
  %4 = load i8, ptr @kexec_in_progress, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %land.lhs.true4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true4:                                   ; preds = %if.end
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %5 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %if.then5, label %land.lhs.true4.if.end6_crit_edge

land.lhs.true4.if.end6_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_clear_master(ptr noundef %add.ptr) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_bus_num_vf(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @pci_num_vf(ptr noundef %add.ptr) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_dma_configure(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call ptr @pci_get_host_bridge_device(ptr noundef %add.ptr) #12
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @of_dma_configure_id(ptr noundef %dev, ptr noundef nonnull %3, i1 noundef zeroext true, ptr noundef null) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %land.lhs.true.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  tail call void @pci_put_host_bridge_device(ptr noundef %call) #12
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %cmp.not = icmp eq ptr %1, @pcie_port_bus_type
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bus1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 8
  %cmp2.not = icmp eq ptr %3, @pcie_port_bus_type
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %service = getelementptr i8, ptr %drv, i32 -4
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service, align 4
  %service6 = getelementptr i8, ptr %dev, i32 -8
  %6 = ptrtoint ptr %service6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.not = icmp eq i32 %5, %7
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %port_type = getelementptr i8, ptr %drv, i32 -8
  %8 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp10.not = icmp eq i32 %9, -1
  br i1 %cmp10.not, label %if.end9.if.end14_crit_edge, label %land.lhs.true

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %port = getelementptr i8, ptr %dev, i32 -12
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %14 = lshr i16 %13, 4
  %15 = and i16 %14, 15
  %16 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %16)
  %cmp12.not = icmp eq i32 %9, %16
  br i1 %cmp12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @pci_bus_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bus_register(ptr noundef nonnull @pcie_port_bus_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_debug_add_bus(ptr noundef nonnull @pci_bus_type) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_id_store(ptr noundef %driver, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %vendor = alloca i32, align 4
  %device = alloca i32, align 4
  %subvendor = alloca i32, align 4
  %subdevice = alloca i32, align 4
  %class = alloca i32, align 4
  %class_mask = alloca i32, align 4
  %driver_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %driver, null
  %add.ptr.i = getelementptr i8, ptr %driver, i32 -60
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %id_table = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 2
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor) #12
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vendor, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #12
  %3 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %device, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subvendor) #12
  %4 = ptrtoint ptr %subvendor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %subvendor, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subdevice) #12
  %5 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %subdevice, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class) #12
  %6 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class_mask) #12
  %7 = ptrtoint ptr %class_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %class_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %driver_data) #12
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %driver_data, align 4
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef nonnull %vendor, ptr noundef nonnull %device, ptr noundef nonnull %subvendor, ptr noundef nonnull %subdevice, ptr noundef nonnull %class, ptr noundef nonnull %class_mask, ptr noundef nonnull %driver_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp = icmp slt i32 %call2, 2
  br i1 %cmp, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 7
  br i1 %cmp3.not, label %if.end.if.end21_crit_edge, label %if.then4

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 2040) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4.cleanup43_crit_edge, label %cleanup

if.then4.cleanup43_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

cleanup:                                          ; preds = %if.then4
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %11 to i16
  %vendor8 = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %vendor8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %vendor8, align 8
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device, align 4
  %conv9 = trunc i32 %14 to i16
  %device10 = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %device10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv9, ptr %device10, align 2
  %16 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %subvendor, align 4
  %conv11 = trunc i32 %17 to i16
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv11, ptr %subsystem_vendor, align 4
  %19 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subdevice, align 4
  %conv12 = trunc i32 %20 to i16
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv12, ptr %subsystem_device, align 2
  %22 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %class, align 4
  %class13 = getelementptr inbounds %struct.pci_dev, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %class13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %class13, align 8
  %call14 = call fastcc ptr @pci_match_device(ptr noundef %spec.select.i, ptr noundef nonnull %call7.i.i)
  %tobool15.not = icmp eq ptr %call14, null
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br i1 %tobool15.not, label %cleanup.if.end21_crit_edge, label %cleanup.cleanup43_crit_edge

cleanup.cleanup43_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

cleanup.if.end21_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %cleanup.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %1, null
  br i1 %tobool22.not, label %if.end21.if.end38_crit_edge, label %if.end21.while.cond_crit_edge

if.end21.while.cond_crit_edge:                    ; preds = %if.end21
  br label %while.cond

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end21.while.cond_crit_edge
  %ids.0 = phi ptr [ %incdec.ptr, %while.body.while.cond_crit_edge ], [ %1, %if.end21.while.cond_crit_edge ]
  %25 = ptrtoint ptr %ids.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ids.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not = icmp eq i32 %26, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %subvendor26 = getelementptr inbounds %struct.pci_device_id, ptr %ids.0, i32 0, i32 2
  %27 = ptrtoint ptr %subvendor26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subvendor26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not = icmp eq i32 %28, 0
  br i1 %tobool27.not, label %lor.rhs, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %class_mask28 = getelementptr inbounds %struct.pci_device_id, ptr %ids.0, i32 0, i32 5
  %29 = ptrtoint ptr %class_mask28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %class_mask28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not = icmp eq i32 %30, 0
  br i1 %tobool29.not, label %lor.rhs.cleanup43_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.rhs.cleanup43_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %while.cond.while.body_crit_edge
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %driver_data, align 4
  %driver_data30 = getelementptr inbounds %struct.pci_device_id, ptr %ids.0, i32 0, i32 6
  %33 = ptrtoint ptr %driver_data30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_data30, align 4
  %cmp31 = icmp eq i32 %32, %34
  %incdec.ptr = getelementptr %struct.pci_device_id, ptr %ids.0, i32 1
  br i1 %cmp31, label %while.body.if.end38_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38:                                         ; preds = %while.body.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %35 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vendor, align 4
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device, align 4
  %39 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %subvendor, align 4
  %41 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subdevice, align 4
  %43 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %class, align 4
  %45 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %class_mask, align 4
  %47 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %driver_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 40) #15
  %tobool.not.i77 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i77, label %if.end38.cleanup43_crit_edge, label %if.end.i

if.end38.cleanup43_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup43

if.end.i:                                         ; preds = %if.end38
  %id.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %36, ptr %id.i, align 8
  %device3.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %device3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %38, ptr %device3.i, align 4
  %subvendor5.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %subvendor5.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %40, ptr %subvendor5.i, align 8
  %subdevice7.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %subdevice7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %42, ptr %subdevice7.i, align 4
  %class9.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %class9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %44, ptr %class9.i, align 8
  %class_mask11.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %55 = ptrtoint ptr %class_mask11.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %46, ptr %class_mask11.i, align 4
  %driver_data13.i = getelementptr inbounds %struct.pci_dynid, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %driver_data13.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %48, ptr %driver_data13.i, align 8
  %dynids.i = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %dynids.i) #12
  %list.i = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 15, i32 1
  %prev.i.i = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 15, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %58, ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.pci_add_dynid.exit_crit_edge

if.end.i.pci_add_dynid.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_add_dynid.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %call7.i.i.i, ptr %58, align 4
  br label %pci_add_dynid.exit

pci_add_dynid.exit:                               ; preds = %if.end.i.i.i, %if.end.i.pci_add_dynid.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dynids.i) #12
  %driver.i = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 14
  %call17.i = call i32 @driver_attach(ptr noundef %driver.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool40.not = icmp eq i32 %call17.i, 0
  %spec.select84 = select i1 %tobool40.not, i32 %count, i32 %call17.i
  br label %cleanup43

cleanup43:                                        ; preds = %pci_add_dynid.exit, %if.end38.cleanup43_crit_edge, %lor.rhs.cleanup43_crit_edge, %cleanup.cleanup43_crit_edge, %if.then4.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.1 = phi i32 [ -17, %cleanup.cleanup43_crit_edge ], [ -22, %entry.cleanup43_crit_edge ], [ -12, %if.then4.cleanup43_crit_edge ], [ -12, %if.end38.cleanup43_crit_edge ], [ %spec.select84, %pci_add_dynid.exit ], [ -22, %lor.rhs.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %driver_data) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class_mask) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdevice) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subvendor) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor) #12
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pci_match_device(ptr noundef %drv, ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_override = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 80
  %0 = ptrtoint ptr %driver_override to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_override, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dynids = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %dynids) #12
  %list = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 15, i32 1
  %vendor2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %device9.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %class30.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %pci_match_one_device.exit.for.cond_crit_edge, %if.end
  %dynid.0.in = phi ptr [ %list, %if.end ], [ %dynid.0, %pci_match_one_device.exit.for.cond_crit_edge ]
  %4 = ptrtoint ptr %dynid.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %dynid.0 = load ptr, ptr %dynid.0.in, align 4
  %cmp.not = icmp eq ptr %dynid.0, %list
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %dynids) #12
  br label %if.end20

for.body:                                         ; preds = %for.cond
  %id = getelementptr inbounds %struct.pci_dynid, ptr %dynid.0, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp eq i32 %6, -1
  br i1 %cmp.i, label %for.body.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %for.body
  %7 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor2.i, align 8
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp3.i = icmp eq i32 %6, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %device.i = getelementptr inbounds %struct.pci_dynid, ptr %dynid.0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp5.i = icmp eq i32 %10, -1
  br i1 %cmp5.i, label %land.lhs.true.i.land.lhs.true13.i_crit_edge, label %lor.lhs.false7.i

land.lhs.true.i.land.lhs.true13.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13.i

lor.lhs.false7.i:                                 ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %device9.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device9.i, align 2
  %conv10.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %10, %conv10.i
  br i1 %cmp11.i, label %lor.lhs.false7.i.land.lhs.true13.i_crit_edge, label %lor.lhs.false7.i.if.end.i_crit_edge

lor.lhs.false7.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false7.i.land.lhs.true13.i_crit_edge:     ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13.i

land.lhs.true13.i:                                ; preds = %lor.lhs.false7.i.land.lhs.true13.i_crit_edge, %land.lhs.true.i.land.lhs.true13.i_crit_edge
  %subvendor.i = getelementptr inbounds %struct.pci_dynid, ptr %dynid.0, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subvendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp14.i = icmp eq i32 %14, -1
  br i1 %cmp14.i, label %land.lhs.true13.i.land.lhs.true21.i_crit_edge, label %lor.lhs.false16.i

land.lhs.true13.i.land.lhs.true21.i_crit_edge:    ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i

lor.lhs.false16.i:                                ; preds = %land.lhs.true13.i
  %15 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor.i, align 4
  %conv18.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv18.i)
  %cmp19.i = icmp eq i32 %14, %conv18.i
  br i1 %cmp19.i, label %lor.lhs.false16.i.land.lhs.true21.i_crit_edge, label %lor.lhs.false16.i.if.end.i_crit_edge

lor.lhs.false16.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false16.i.land.lhs.true21.i_crit_edge:    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i

land.lhs.true21.i:                                ; preds = %lor.lhs.false16.i.land.lhs.true21.i_crit_edge, %land.lhs.true13.i.land.lhs.true21.i_crit_edge
  %subdevice.i = getelementptr inbounds %struct.pci_dynid, ptr %dynid.0, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subdevice.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp22.i = icmp eq i32 %18, -1
  br i1 %cmp22.i, label %land.lhs.true21.i.land.lhs.true29.i_crit_edge, label %lor.lhs.false24.i

land.lhs.true21.i.land.lhs.true29.i_crit_edge:    ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i

lor.lhs.false24.i:                                ; preds = %land.lhs.true21.i
  %19 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_device.i, align 2
  %conv26.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv26.i)
  %cmp27.i = icmp eq i32 %18, %conv26.i
  br i1 %cmp27.i, label %lor.lhs.false24.i.land.lhs.true29.i_crit_edge, label %lor.lhs.false24.i.if.end.i_crit_edge

lor.lhs.false24.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false24.i.land.lhs.true29.i_crit_edge:    ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i

land.lhs.true29.i:                                ; preds = %lor.lhs.false24.i.land.lhs.true29.i_crit_edge, %land.lhs.true21.i.land.lhs.true29.i_crit_edge
  %class.i = getelementptr inbounds %struct.pci_dynid, ptr %dynid.0, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %class.i, align 4
  %23 = ptrtoint ptr %class30.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class30.i, align 8
  %xor.i = xor i32 %24, %22
  %class_mask.i = getelementptr inbounds %struct.pci_dynid, ptr %dynid.0, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %class_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %class_mask.i, align 4
  %and.i = and i32 %xor.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true29.i.pci_match_one_device.exit_crit_edge, label %land.lhs.true29.i.if.end.i_crit_edge

land.lhs.true29.i.if.end.i_crit_edge:             ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true29.i.pci_match_one_device.exit_crit_edge: ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_match_one_device.exit

if.end.i:                                         ; preds = %land.lhs.true29.i.if.end.i_crit_edge, %lor.lhs.false24.i.if.end.i_crit_edge, %lor.lhs.false16.i.if.end.i_crit_edge, %lor.lhs.false7.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  br label %pci_match_one_device.exit

pci_match_one_device.exit:                        ; preds = %if.end.i, %land.lhs.true29.i.pci_match_one_device.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end.i ], [ %id, %land.lhs.true29.i.pci_match_one_device.exit_crit_edge ]
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %pci_match_one_device.exit.for.cond_crit_edge, label %for.end

pci_match_one_device.exit.for.cond_crit_edge:     ; preds = %pci_match_one_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %pci_match_one_device.exit
  tail call void @_raw_spin_unlock(ptr noundef %dynids) #12
  %tobool18.not = icmp eq ptr %id, null
  br i1 %tobool18.not, label %for.end.if.end20_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %for.end.if.end20_crit_edge, %for.end.thread
  %id_table = getelementptr inbounds %struct.pci_driver, ptr %drv, i32 0, i32 2
  %27 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %id_table, align 4
  %tobool.not.i5971 = icmp eq ptr %28, null
  br i1 %tobool.not.i5971, label %if.end20.for.end34_crit_edge, label %if.end20.while.cond.i_crit_edge

if.end20.while.cond.i_crit_edge:                  ; preds = %if.end20
  br label %while.cond.i

if.end20.for.end34_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end20.while.cond.i_crit_edge
  %ids.addr.0.i = phi ptr [ %ids.addr.0.i.be, %while.cond.i.backedge ], [ %28, %if.end20.while.cond.i_crit_edge ]
  %29 = ptrtoint ptr %ids.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ids.addr.0.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %30, label %while.cond.i.lor.lhs.false.i.i_crit_edge [
    i32 0, label %lor.lhs.false.i61
    i32 -1, label %while.cond.i.land.lhs.true.i.i_crit_edge
  ]

while.cond.i.land.lhs.true.i.i_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

while.cond.i.lor.lhs.false.i.i_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

lor.lhs.false.i61:                                ; preds = %while.cond.i
  %subvendor.i60 = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 2
  %32 = ptrtoint ptr %subvendor.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subvendor.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i = icmp eq i32 %33, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i61.lor.lhs.false.i.i_crit_edge

lor.lhs.false.i61.lor.lhs.false.i.i_crit_edge:    ; preds = %lor.lhs.false.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i61
  %class_mask.i62 = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 5
  %34 = ptrtoint ptr %class_mask.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %class_mask.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not.i = icmp eq i32 %35, 0
  br i1 %tobool3.not.i, label %lor.rhs.i.for.end34_crit_edge, label %lor.rhs.i.lor.lhs.false.i.i_crit_edge

lor.rhs.i.lor.lhs.false.i.i_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

lor.rhs.i.for.end34_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

lor.lhs.false.i.i:                                ; preds = %lor.rhs.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.i61.lor.lhs.false.i.i_crit_edge, %while.cond.i.lor.lhs.false.i.i_crit_edge
  %36 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vendor2.i, align 8
  %conv.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i.i)
  %cmp3.i.i = icmp eq i32 %30, %conv.i.i
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i63_crit_edge

lor.lhs.false.i.i.if.end.i63_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, %while.cond.i.land.lhs.true.i.i_crit_edge
  %device.i.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %device.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp5.i.i = icmp eq i32 %39, -1
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge, label %lor.lhs.false7.i.i

land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13.i.i

lor.lhs.false7.i.i:                               ; preds = %land.lhs.true.i.i
  %40 = ptrtoint ptr %device9.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device9.i, align 2
  %conv10.i.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv10.i.i)
  %cmp11.i.i = icmp eq i32 %39, %conv10.i.i
  br i1 %cmp11.i.i, label %lor.lhs.false7.i.i.land.lhs.true13.i.i_crit_edge, label %lor.lhs.false7.i.i.if.end.i63_crit_edge

lor.lhs.false7.i.i.if.end.i63_crit_edge:          ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

lor.lhs.false7.i.i.land.lhs.true13.i.i_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13.i.i

land.lhs.true13.i.i:                              ; preds = %lor.lhs.false7.i.i.land.lhs.true13.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge
  %subvendor.i.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %subvendor.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %subvendor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp14.i.i = icmp eq i32 %43, -1
  br i1 %cmp14.i.i, label %land.lhs.true13.i.i.land.lhs.true21.i.i_crit_edge, label %lor.lhs.false16.i.i

land.lhs.true13.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

lor.lhs.false16.i.i:                              ; preds = %land.lhs.true13.i.i
  %44 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %subsystem_vendor.i, align 4
  %conv18.i.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv18.i.i)
  %cmp19.i.i = icmp eq i32 %43, %conv18.i.i
  br i1 %cmp19.i.i, label %lor.lhs.false16.i.i.land.lhs.true21.i.i_crit_edge, label %lor.lhs.false16.i.i.if.end.i63_crit_edge

lor.lhs.false16.i.i.if.end.i63_crit_edge:         ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

lor.lhs.false16.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

land.lhs.true21.i.i:                              ; preds = %lor.lhs.false16.i.i.land.lhs.true21.i.i_crit_edge, %land.lhs.true13.i.i.land.lhs.true21.i.i_crit_edge
  %subdevice.i.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 3
  %46 = ptrtoint ptr %subdevice.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %subdevice.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp22.i.i = icmp eq i32 %47, -1
  br i1 %cmp22.i.i, label %land.lhs.true21.i.i.land.lhs.true29.i.i_crit_edge, label %lor.lhs.false24.i.i

land.lhs.true21.i.i.land.lhs.true29.i.i_crit_edge: ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i.i

lor.lhs.false24.i.i:                              ; preds = %land.lhs.true21.i.i
  %48 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %subsystem_device.i, align 2
  %conv26.i.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv26.i.i)
  %cmp27.i.i = icmp eq i32 %47, %conv26.i.i
  br i1 %cmp27.i.i, label %lor.lhs.false24.i.i.land.lhs.true29.i.i_crit_edge, label %lor.lhs.false24.i.i.if.end.i63_crit_edge

lor.lhs.false24.i.i.if.end.i63_crit_edge:         ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

lor.lhs.false24.i.i.land.lhs.true29.i.i_crit_edge: ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29.i.i

land.lhs.true29.i.i:                              ; preds = %lor.lhs.false24.i.i.land.lhs.true29.i.i_crit_edge, %land.lhs.true21.i.i.land.lhs.true29.i.i_crit_edge
  %class.i.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 4
  %50 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %class.i.i, align 4
  %52 = ptrtoint ptr %class30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %class30.i, align 8
  %xor.i.i = xor i32 %53, %51
  %class_mask.i.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 5
  %54 = ptrtoint ptr %class_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %class_mask.i.i, align 4
  %and.i.i = and i32 %xor.i.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool4.not.i = icmp eq ptr %ids.addr.0.i, null
  %or.cond.i = or i1 %tobool4.not.i, %tobool.not.i.i
  br i1 %or.cond.i, label %land.lhs.true29.i.i.if.end.i63_crit_edge, label %for.body24

land.lhs.true29.i.i.if.end.i63_crit_edge:         ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i63

if.end.i63:                                       ; preds = %land.lhs.true29.i.i.if.end.i63_crit_edge, %lor.lhs.false24.i.i.if.end.i63_crit_edge, %lor.lhs.false16.i.i.if.end.i63_crit_edge, %lor.lhs.false7.i.i.if.end.i63_crit_edge, %lor.lhs.false.i.i.if.end.i63_crit_edge
  %incdec.ptr.i = getelementptr %struct.pci_device_id, ptr %ids.addr.0.i, i32 1
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %for.inc32.while.cond.i.backedge_crit_edge, %if.end.i63
  %ids.addr.0.i.be = phi ptr [ %incdec.ptr.i, %if.end.i63 ], [ %add.ptr33, %for.inc32.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

for.body24:                                       ; preds = %land.lhs.true29.i.i
  %override_only = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.0.i, i32 0, i32 7
  %56 = ptrtoint ptr %override_only to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %override_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool25.not = icmp eq i32 %57, 0
  br i1 %tobool25.not, label %for.body24.cleanup_crit_edge, label %if.then26

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %for.body24
  %58 = ptrtoint ptr %driver_override to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_override, align 8
  %tobool28.not = icmp eq ptr %59, null
  br i1 %tobool28.not, label %for.inc32, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc32:                                        ; preds = %if.then26
  %add.ptr33 = getelementptr %struct.pci_device_id, ptr %ids.addr.0.i, i32 1
  %tobool.not.i59 = icmp eq ptr %add.ptr33, null
  br i1 %tobool.not.i59, label %for.inc32.for.end34_crit_edge, label %for.inc32.while.cond.i.backedge_crit_edge

for.inc32.while.cond.i.backedge_crit_edge:        ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

for.inc32.for.end34_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.end34:                                        ; preds = %for.inc32.for.end34_crit_edge, %lor.rhs.i.for.end34_crit_edge, %if.end20.for.end34_crit_edge
  %60 = ptrtoint ptr %driver_override to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_override, align 8
  %tobool36.not = icmp eq ptr %61, null
  %.pci_device_id_any = select i1 %tobool36.not, ptr null, ptr @pci_device_id_any
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %if.then26.cleanup_crit_edge, %for.body24.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ %id, %for.end.cleanup_crit_edge ], [ %.pci_device_id_any, %for.end34 ], [ %ids.addr.0.i, %if.then26.cleanup_crit_edge ], [ %ids.addr.0.i, %for.body24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_id_store(ptr noundef %driver, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %vendor = alloca i32, align 4
  %device = alloca i32, align 4
  %subvendor = alloca i32, align 4
  %subdevice = alloca i32, align 4
  %class = alloca i32, align 4
  %class_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor) #12
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vendor, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #12
  %1 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %device, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subvendor) #12
  %2 = ptrtoint ptr %subvendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %subvendor, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subdevice) #12
  %3 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %subdevice, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class) #12
  %4 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class_mask) #12
  %5 = ptrtoint ptr %class_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %class_mask, align 4
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.12, ptr noundef nonnull %vendor, ptr noundef nonnull %device, ptr noundef nonnull %subvendor, ptr noundef nonnull %subdevice, ptr noundef nonnull %class, ptr noundef nonnull %class_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp = icmp slt i32 %call2, 2
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %driver, null
  %add.ptr.i = getelementptr i8, ptr %driver, i32 -60
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dynids = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %dynids) #12
  %list = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %cmp11.not68 = icmp eq ptr %7, %list
  br i1 %cmp11.not68, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %8 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vendor, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %dynid.069 = phi ptr [ %7, %for.body.lr.ph ], [ %n.070, %cleanup.for.body_crit_edge ]
  %10 = ptrtoint ptr %dynid.069 to i32
  call void @__asan_load4_noabort(i32 %10)
  %n.070 = load ptr, ptr %dynid.069, align 4
  %id12 = getelementptr inbounds %struct.pci_dynid, ptr %dynid.069, i32 0, i32 1
  %11 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp14 = icmp eq i32 %12, %9
  br i1 %cmp14, label %land.lhs.true, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %device15 = getelementptr inbounds %struct.pci_dynid, ptr %dynid.069, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device15, align 4
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16 = icmp eq i32 %14, %16
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true17:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subvendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp18 = icmp eq i32 %18, -1
  br i1 %cmp18, label %land.lhs.true17.land.lhs.true21_crit_edge, label %lor.lhs.false

land.lhs.true17.land.lhs.true21_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21

lor.lhs.false:                                    ; preds = %land.lhs.true17
  %subvendor19 = getelementptr inbounds %struct.pci_dynid, ptr %dynid.069, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %subvendor19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subvendor19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp20 = icmp eq i32 %20, %18
  br i1 %cmp20, label %lor.lhs.false.land.lhs.true21_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.land.lhs.true21_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %lor.lhs.false.land.lhs.true21_crit_edge, %land.lhs.true17.land.lhs.true21_crit_edge
  %21 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %subdevice, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp22 = icmp eq i32 %22, -1
  br i1 %cmp22, label %land.lhs.true21.land.lhs.true26_crit_edge, label %lor.lhs.false23

land.lhs.true21.land.lhs.true26_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true26

lor.lhs.false23:                                  ; preds = %land.lhs.true21
  %subdevice24 = getelementptr inbounds %struct.pci_dynid, ptr %dynid.069, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %subdevice24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %subdevice24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp25 = icmp eq i32 %24, %22
  br i1 %cmp25, label %lor.lhs.false23.land.lhs.true26_crit_edge, label %lor.lhs.false23.cleanup_crit_edge

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false23.land.lhs.true26_crit_edge:        ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %lor.lhs.false23.land.lhs.true26_crit_edge, %land.lhs.true21.land.lhs.true26_crit_edge
  %class27 = getelementptr inbounds %struct.pci_dynid, ptr %dynid.069, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %class27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %class27, align 4
  %27 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %class, align 4
  %xor = xor i32 %28, %26
  %29 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %class_mask, align 4
  %and = and i32 %xor, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then28, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true26
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dynid.069) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then28.cleanup.thread_crit_edge

if.then28.cleanup.thread_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dynid.069, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %dynid.069 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dynid.069, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i.i, %if.then28.cleanup.thread_crit_edge
  %37 = ptrtoint ptr %dynid.069 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %dynid.069, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dynid.069, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %dynid.069) #12
  br label %for.end

cleanup:                                          ; preds = %land.lhs.true26.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cmp11.not = icmp eq ptr %n.070, %list
  br i1 %cmp11.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %if.end.for.end_crit_edge
  %retval1.2 = phi i32 [ %count, %cleanup.thread ], [ -19, %if.end.for.end_crit_edge ], [ -19, %cleanup.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %dynids) #12
  br label %cleanup38

cleanup38:                                        ; preds = %for.end, %entry.cleanup38_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %for.end ], [ -22, %entry.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class_mask) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdevice) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subvendor) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_enable() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iov_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_host_bridge_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_put_host_bridge_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_prepare(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %cond.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

cond.end:                                         ; preds = %entry
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.end.if.end12_crit_edge, label %land.lhs.true

cond.end.if.end12_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %cond.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %5(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup16_crit_edge, label %if.end

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8:                                   ; preds = %if.end
  %driver_flags.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_flags.i, align 8
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true8.if.end12_crit_edge, label %land.lhs.true8.cleanup16_crit_edge

land.lhs.true8.cleanup16_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %if.end.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %cond.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %call13 = tail call zeroext i1 @pci_dev_need_resume(ptr noundef %add.ptr) #12
  br i1 %call13, label %if.end12.cleanup16_crit_edge, label %if.end15

if.end12.cleanup16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_dev_adjust_pme(ptr noundef %add.ptr) #12
  br label %cleanup16

cleanup16:                                        ; preds = %if.end15, %if.end12.cleanup16_crit_edge, %land.lhs.true8.cleanup16_crit_edge, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ 1, %if.end15 ], [ 0, %if.end12.cleanup16_crit_edge ], [ 0, %land.lhs.true8.cleanup16_crit_edge ], [ %call, %if.then.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_pm_complete(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_dev_complete_resume(ptr noundef %add.ptr) #12
  tail call void @pm_generic_complete(ptr noundef %dev) #12
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %land.lhs.true, label %pm_runtime_suspended.exit.if.end5_crit_edge

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %pm_runtime_suspended.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  %3 = load i32, ptr @pm_suspend_global_flags, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_state, align 4
  tail call void @pci_refresh_power_state(ptr noundef %add.ptr) #12
  %6 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp = icmp slt i32 %7, %5
  br i1 %cmp, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 1) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %skip_bus_pm = getelementptr i8, ptr %dev, i32 -30
  %4 = ptrtoint ptr %skip_bus_pm to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %skip_bus_pm, align 2
  %bf.clear = and i32 %bf.load, -65537
  store i32 %bf.clear, ptr %skip_bus_pm, align 2
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %5 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cond.end.if.end_crit_edge, label %land.rhs.i

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %land.end.i.if.end_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %6, i32 0, i32 14, i32 16
  %11 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %13 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %16, %if.end.i.i.i ], [ %14, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %17 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %18 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %20 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then

if.then:                                          ; preds = %pci_name.exit.i, %land.rhs4.i.if.then_crit_edge
  %call3 = tail call fastcc i32 @pci_legacy_suspend(ptr noundef %dev, [1 x i32] [i32 2])
  br label %cleanup82

if.end:                                           ; preds = %land.end.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %subordinate.i.i = getelementptr i8, ptr %dev, i32 -124
  %21 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %subordinate.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.i.not.i, label %if.then.i, label %if.then5.cleanup82_crit_edge

if.then5.cleanup82_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_enabled_device(ptr noundef %add.ptr) #12
  br label %cleanup82

if.end6:                                          ; preds = %if.end
  %driver_flags.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_flags.i, align 8
  %and.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end6.if.then9_crit_edge, label %lor.lhs.false

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end6
  %call8 = tail call zeroext i1 @pci_dev_need_resume(ptr noundef %add.ptr) #12
  br i1 %call8, label %lor.lhs.false.if.then9_crit_edge, label %if.else

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %call.i118 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #12
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %25 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %25, i32 5)
  %bf.load11 = load i40, ptr %state_saved, align 1
  %bf.clear12 = and i40 %bf.load11, -262145
  store i40 %bf.clear12, ptr %state_saved, align 1
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_dev_adjust_pme(ptr noundef %add.ptr) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %suspend = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 2
  %26 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %suspend, align 4
  %tobool15.not = icmp eq ptr %27, null
  br i1 %tobool15.not, label %if.end14.cleanup82_crit_edge, label %if.then16

if.end14.cleanup82_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.then16:                                        ; preds = %if.end14
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %28 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %current_state, align 4
  %call18 = tail call i32 %27(ptr noundef %dev) #12
  %30 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %suspend, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_suspend, ptr noundef %31, i32 noundef %call18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end22, label %if.then16.cleanup82_crit_edge

if.then16.cleanup82_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.end22:                                         ; preds = %if.then16
  %state_saved23 = getelementptr i8, ptr %dev, i32 1481
  %32 = ptrtoint ptr %state_saved23 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 5)
  %bf.load24 = load i40, ptr %state_saved23, align 1
  %33 = and i40 %bf.load24, 262144
  %tobool26.not = icmp eq i40 %33, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.end22.cleanup82_crit_edge

if.end22.cleanup82_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

land.lhs.true:                                    ; preds = %if.end22
  %34 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %current_state, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %35, label %if.then31 [
    i32 0, label %land.lhs.true.cleanup82_crit_edge
    i32 5, label %land.lhs.true.cleanup82_crit_edge120
  ]

land.lhs.true.cleanup82_crit_edge120:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

land.lhs.true.cleanup82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %29)
  %cmp33.not = icmp eq i32 %35, %29
  br i1 %cmp33.not, label %if.then31.cleanup82_crit_edge, label %land.rhs

if.then31.cleanup82_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

land.rhs:                                         ; preds = %if.then31
  %.b113 = load i1, ptr @pci_pm_suspend.__already_done, align 1
  br i1 %.b113, label %land.rhs.cleanup82_crit_edge, label %if.then41, !prof !138

land.rhs.cleanup82_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.then41:                                        ; preds = %land.rhs
  store i1 true, ptr @pci_pm_suspend.__already_done, align 1
  %call55 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then41.pci_name.exit_crit_edge

if.then41.pci_name.exit_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then41.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then41.pci_name.exit_crit_edge ]
  %41 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %suspend, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 786, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call55, ptr noundef %retval.0.i.i, ptr noundef %42) #12
  br label %cleanup82

cleanup82:                                        ; preds = %pci_name.exit, %land.rhs.cleanup82_crit_edge, %if.then31.cleanup82_crit_edge, %land.lhs.true.cleanup82_crit_edge, %land.lhs.true.cleanup82_crit_edge120, %if.end22.cleanup82_crit_edge, %if.then16.cleanup82_crit_edge, %if.end14.cleanup82_crit_edge, %if.then.i, %if.then5.cleanup82_crit_edge, %if.then
  %retval.1 = phi i32 [ %call3, %if.then ], [ 0, %pci_name.exit ], [ 0, %if.end14.cleanup82_crit_edge ], [ %call18, %if.then16.cleanup82_crit_edge ], [ 0, %if.end22.cleanup82_crit_edge ], [ 0, %land.lhs.true.cleanup82_crit_edge ], [ 0, %land.lhs.true.cleanup82_crit_edge120 ], [ 0, %if.then31.cleanup82_crit_edge ], [ 0, %land.rhs.cleanup82_crit_edge ], [ 0, %if.then5.cleanup82_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %4 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %5 = and i40 %bf.load, 262144
  %tobool3.not = icmp eq i40 %5, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @pci_update_current_state(ptr noundef %add.ptr, i32 noundef 5) #12
  %current_state.i = getelementptr i8, ptr %dev, i32 -36
  %6 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then.if.end2.i_crit_edge, label %if.then.i

if.then.if.end2.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %if.then.if.end2.i_crit_edge
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  tail call void @pci_pme_restore(ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.end2.i, %if.then.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %8 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver.i, align 4
  %tobool.not.i29 = icmp eq ptr %9, null
  br i1 %tobool.not.i29, label %if.end.if.end7_crit_edge, label %land.rhs.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.rhs.i:                                       ; preds = %if.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.end.i.if.end7_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end7_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 14, i32 16
  %14 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then5_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then5_crit_edge:                   ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i30 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %21 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %23 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i30, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then5

if.then5:                                         ; preds = %pci_name.exit.i, %land.rhs4.i.if.then5_crit_edge
  %24 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver.i, align 4
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %add.ptr) #12
  %tobool.not.i32 = icmp eq ptr %25, null
  br i1 %tobool.not.i32, label %if.then5.cond.false.i_crit_edge, label %land.lhs.true.i

if.then5.cond.false.i_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then5
  %resume.i33 = getelementptr inbounds %struct.pci_driver, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %resume.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resume.i33, align 4
  %tobool1.not.i34 = icmp eq ptr %27, null
  br i1 %tobool1.not.i34, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 %27(ptr noundef %add.ptr) #12
  br label %cleanup

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then5.cond.false.i_crit_edge
  %call.i.i = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #12
  %28 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %28, i32 5)
  %bf.load.i.i = load i40, ptr %state_saved, align 1
  %29 = and i40 %bf.load.i.i, 17179869184
  %tobool.not.i.i = icmp eq i40 %29, 0
  br i1 %tobool.not.i.i, label %cond.false.i.cleanup_crit_edge, label %if.then.i.i

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  br label %cleanup

if.end7:                                          ; preds = %land.end.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %add.ptr) #12
  %call.i36 = tail call i32 @pci_enable_wake(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext false) #12
  %tobool8.not = icmp eq ptr %cond, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %resume = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 3
  %30 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resume, align 4
  %tobool10.not = icmp eq ptr %31, null
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.then11

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 %31(ptr noundef %dev) #12
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %call.i37 = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #12
  %32 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %32, i32 5)
  %bf.load.i = load i40, ptr %state_saved, align 1
  %33 = and i40 %bf.load.i, 17179869184
  %tobool.not.i38 = icmp eq i40 %33, 0
  br i1 %tobool.not.i38, label %if.else.cleanup_crit_edge, label %if.then.i39

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i39, %if.else.cleanup_crit_edge, %if.then11, %if.then9.cleanup_crit_edge, %if.then.i.i, %cond.false.i.cleanup_crit_edge, %cond.true.i
  %retval.0 = phi i32 [ %call13, %if.then11 ], [ 0, %if.then9.cleanup_crit_edge ], [ %call.i35, %cond.true.i ], [ %call.i.i, %cond.false.i.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_freeze(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.if.end_crit_edge, label %land.rhs.i

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.if.end_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then

if.then:                                          ; preds = %pci_name.exit.i, %land.rhs4.i.if.then_crit_edge
  %call3 = tail call fastcc i32 @pci_legacy_suspend(ptr noundef %dev, [1 x i32] [i32 1])
  br label %cleanup17

if.end:                                           ; preds = %land.end.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %subordinate.i.i = getelementptr i8, ptr %dev, i32 -124
  %20 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subordinate.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %21, null
  br i1 %tobool.i.not.i, label %if.then.i, label %if.then5.cleanup17_crit_edge

if.then5.cleanup17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_enabled_device(ptr noundef %add.ptr) #12
  br label %cleanup17

if.end6:                                          ; preds = %if.end
  %call.i33 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #12
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %22 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %22, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %bf.clear = and i40 %bf.load, -262145
  store i40 %bf.clear, ptr %state_saved, align 1
  %freeze = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 4
  %23 = ptrtoint ptr %freeze to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %freeze, align 4
  %tobool8.not = icmp eq ptr %24, null
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  %call11 = tail call i32 %24(ptr noundef %dev) #12
  %25 = ptrtoint ptr %freeze to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %freeze, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_freeze, ptr noundef %26, i32 noundef %call11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.then9.if.end16_crit_edge, label %if.then9.cleanup17_crit_edge

if.then9.cleanup17_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup17

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  br label %cleanup17

cleanup17:                                        ; preds = %if.end16, %if.then9.cleanup17_crit_edge, %if.then.i, %if.then5.cleanup17_crit_edge, %if.then
  %retval.1 = phi i32 [ %call3, %if.then ], [ 0, %if.end16 ], [ %call11, %if.then9.cleanup17_crit_edge ], [ 0, %if.then5.cleanup17_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_thaw(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.if.end_crit_edge, label %land.rhs.i

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.if.end_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then

if.then:                                          ; preds = %pci_name.exit.i, %land.rhs4.i.if.then_crit_edge
  %20 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver.i, align 4
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %add.ptr) #12
  %tobool.not.i25 = icmp eq ptr %21, null
  br i1 %tobool.not.i25, label %if.then.cond.false.i_crit_edge, label %land.lhs.true.i

if.then.cond.false.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then
  %resume.i26 = getelementptr inbounds %struct.pci_driver, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %resume.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resume.i26, align 4
  %tobool1.not.i27 = icmp eq ptr %23, null
  br i1 %tobool1.not.i27, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i28 = tail call i32 %23(ptr noundef %add.ptr) #12
  br label %cleanup

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then.cond.false.i_crit_edge
  %call.i.i = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #12
  %is_busmaster.i.i = getelementptr i8, ptr %dev, i32 1481
  %24 = ptrtoint ptr %is_busmaster.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 5)
  %bf.load.i.i = load i40, ptr %is_busmaster.i.i, align 1
  %25 = and i40 %bf.load.i.i, 17179869184
  %tobool.not.i.i = icmp eq i40 %25, 0
  br i1 %tobool.not.i.i, label %cond.false.i.cleanup_crit_edge, label %if.then.i.i

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  br label %cleanup

if.end:                                           ; preds = %land.end.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %thaw = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 5
  %26 = ptrtoint ptr %thaw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %thaw, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %if.then5.if.end12_crit_edge, label %if.then7

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 %27(ptr noundef %dev) #12
  br label %if.end12

if.else:                                          ; preds = %if.end
  %call.i29 = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #12
  %is_busmaster.i = getelementptr i8, ptr %dev, i32 1481
  %28 = ptrtoint ptr %is_busmaster.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 5)
  %bf.load.i = load i40, ptr %is_busmaster.i, align 1
  %29 = and i40 %bf.load.i, 17179869184
  %tobool.not.i30 = icmp eq i40 %29, 0
  br i1 %tobool.not.i30, label %if.else.if.end12_crit_edge, label %if.then.i

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.else.if.end12_crit_edge, %if.then7, %if.then5.if.end12_crit_edge
  %error.0 = phi i32 [ %call9, %if.then7 ], [ 0, %if.then5.if.end12_crit_edge ], [ 0, %if.else.if.end12_crit_edge ], [ 0, %if.then.i ]
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %30 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %30, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %bf.clear = and i40 %bf.load, -262145
  store i40 %bf.clear, ptr %state_saved, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.i.i, %cond.false.i.cleanup_crit_edge, %cond.true.i
  %retval.0 = phi i32 [ %error.0, %if.end12 ], [ %call.i28, %cond.true.i ], [ %call.i.i, %cond.false.i.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_poweroff(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.if.end_crit_edge, label %land.rhs.i

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.if.end_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then

if.then:                                          ; preds = %pci_name.exit.i, %land.rhs4.i.if.then_crit_edge
  %call3 = tail call fastcc i32 @pci_legacy_suspend(ptr noundef %dev, [1 x i32] [i32 4])
  br label %cleanup21

if.end:                                           ; preds = %land.end.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %subordinate.i.i = getelementptr i8, ptr %dev, i32 -124
  %20 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subordinate.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %21, null
  br i1 %tobool.i.not.i, label %if.then.i, label %if.then5.cleanup21_crit_edge

if.then5.cleanup21_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_enabled_device(ptr noundef %add.ptr) #12
  br label %cleanup21

if.end6:                                          ; preds = %if.end
  %driver_flags.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_flags.i, align 8
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end6.if.then9_crit_edge, label %lor.lhs.false

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end6
  %call8 = tail call zeroext i1 @pci_dev_need_resume(ptr noundef %add.ptr) #12
  br i1 %call8, label %lor.lhs.false.if.then9_crit_edge, label %if.else

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %call.i40 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #12
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %24 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %24, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %bf.clear = and i40 %bf.load, -262145
  store i40 %bf.clear, ptr %state_saved, align 1
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_dev_adjust_pme(ptr noundef %add.ptr) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %poweroff = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 6
  %25 = ptrtoint ptr %poweroff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %poweroff, align 4
  %tobool12.not = icmp eq ptr %26, null
  br i1 %tobool12.not, label %if.end11.if.end20_crit_edge, label %if.then13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %call15 = tail call i32 %26(ptr noundef %dev) #12
  %27 = ptrtoint ptr %poweroff to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %poweroff, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_poweroff, ptr noundef %28, i32 noundef %call15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.then13.if.end20_crit_edge, label %if.then13.cleanup21_crit_edge

if.then13.cleanup21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %if.then13.cleanup21_crit_edge, %if.then.i, %if.then5.cleanup21_crit_edge, %if.then
  %retval.1 = phi i32 [ %call3, %if.then ], [ 0, %if.end20 ], [ %call15, %if.then13.cleanup21_crit_edge ], [ 0, %if.then5.cleanup21_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %4 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %5 = and i40 %bf.load, 262144
  %tobool3.not = icmp eq i40 %5, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @pci_update_current_state(ptr noundef %add.ptr, i32 noundef 5) #12
  %current_state.i = getelementptr i8, ptr %dev, i32 -36
  %6 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then.if.end2.i_crit_edge, label %if.then.i

if.then.if.end2.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %if.then.if.end2.i_crit_edge
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  tail call void @pci_pme_restore(ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.end2.i, %if.then.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %8 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver.i, align 4
  %tobool.not.i29 = icmp eq ptr %9, null
  br i1 %tobool.not.i29, label %if.end.if.end7_crit_edge, label %land.rhs.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.rhs.i:                                       ; preds = %if.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.end.i.if.end7_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end7_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 14, i32 16
  %14 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then5_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then5_crit_edge:                   ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i30 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %21 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %23 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i30, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then5

if.then5:                                         ; preds = %pci_name.exit.i, %land.rhs4.i.if.then5_crit_edge
  %24 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver.i, align 4
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %add.ptr) #12
  %tobool.not.i32 = icmp eq ptr %25, null
  br i1 %tobool.not.i32, label %if.then5.cond.false.i_crit_edge, label %land.lhs.true.i

if.then5.cond.false.i_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then5
  %resume.i33 = getelementptr inbounds %struct.pci_driver, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %resume.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resume.i33, align 4
  %tobool1.not.i34 = icmp eq ptr %27, null
  br i1 %tobool1.not.i34, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 %27(ptr noundef %add.ptr) #12
  br label %cleanup

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then5.cond.false.i_crit_edge
  %call.i.i = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #12
  %28 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %28, i32 5)
  %bf.load.i.i = load i40, ptr %state_saved, align 1
  %29 = and i40 %bf.load.i.i, 17179869184
  %tobool.not.i.i = icmp eq i40 %29, 0
  br i1 %tobool.not.i.i, label %cond.false.i.cleanup_crit_edge, label %if.then.i.i

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  br label %cleanup

if.end7:                                          ; preds = %land.end.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %add.ptr) #12
  %call.i36 = tail call i32 @pci_enable_wake(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext false) #12
  %tobool8.not = icmp eq ptr %cond, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %restore = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 7
  %30 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %restore, align 4
  %tobool10.not = icmp eq ptr %31, null
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %if.then11

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call i32 %31(ptr noundef %dev) #12
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %call.i37 = tail call i32 @pci_reenable_device(ptr noundef %add.ptr) #12
  %32 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %32, i32 5)
  %bf.load.i = load i40, ptr %state_saved, align 1
  %33 = and i40 %bf.load.i, 17179869184
  %tobool.not.i38 = icmp eq i40 %33, 0
  br i1 %tobool.not.i38, label %if.else.cleanup_crit_edge, label %if.then.i39

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i39, %if.else.cleanup_crit_edge, %if.then11, %if.then9.cleanup_crit_edge, %if.then.i.i, %cond.false.i.cleanup_crit_edge, %cond.true.i
  %retval.0 = phi i32 [ %call13, %if.then11 ], [ 0, %if.then9.cleanup_crit_edge ], [ %call.i35, %cond.true.i ], [ %call.i.i, %cond.false.i.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then.i39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_suspend_late(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %dev) #12
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %add.ptr) #12
  %call1 = tail call i32 @pm_generic_suspend_late(ptr noundef %dev) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_resume_early(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @dev_pm_skip_resume(ptr noundef %dev) #12
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @pm_generic_resume_early(ptr noundef %dev) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_poweroff_late(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %dev) #12
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %add.ptr) #12
  %call1 = tail call i32 @pm_generic_poweroff_late(ptr noundef %dev) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_suspend_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %dev) #12
  br i1 %call, label %cond.end.cleanup179_crit_edge, label %if.end

cond.end.cleanup179_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end:                                           ; preds = %cond.end
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %land.rhs.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.rhs.i:                                       ; preds = %if.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.if.end6_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end6_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then4_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then4_crit_edge:                   ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then4

if.then4:                                         ; preds = %pci_name.exit.i, %land.rhs4.i.if.then4_crit_edge
  %state_saved.i = getelementptr i8, ptr %dev, i32 1481
  %20 = ptrtoint ptr %state_saved.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 5)
  %bf.load.i = load i40, ptr %state_saved.i, align 1
  %21 = and i40 %bf.load.i, 262144
  %tobool.not.i231 = icmp eq i40 %21, 0
  br i1 %tobool.not.i231, label %if.then.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i232 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %current_state.i.i = getelementptr i8, ptr %dev, i32 -36
  %22 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.pci_legacy_suspend_late.exit_crit_edge

if.end.i.pci_legacy_suspend_late.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_legacy_suspend_late.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %current_state.i.i, align 4
  br label %pci_legacy_suspend_late.exit

pci_legacy_suspend_late.exit:                     ; preds = %if.then.i.i, %if.end.i.pci_legacy_suspend_late.exit_crit_edge
  tail call void @pci_fixup_device(i32 noundef 7, ptr noundef %add.ptr) #12
  br label %cleanup179

if.end6:                                          ; preds = %land.end.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %cond, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %Fixup

if.end10:                                         ; preds = %if.end6
  %suspend_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 14
  %25 = ptrtoint ptr %suspend_noirq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %suspend_noirq, align 4
  %tobool11.not = icmp eq ptr %26, null
  br i1 %tobool11.not, label %if.end10.if.end74_crit_edge, label %if.then12

if.end10.if.end74_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then12:                                        ; preds = %if.end10
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %27 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_state, align 4
  %call14 = tail call i32 %26(ptr noundef %dev) #12
  %29 = ptrtoint ptr %suspend_noirq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %suspend_noirq, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_suspend_noirq, ptr noundef %30, i32 noundef %call14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end18, label %if.then12.cleanup179_crit_edge

if.then12.cleanup179_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.end18:                                         ; preds = %if.then12
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %31 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %31, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %32 = and i40 %bf.load, 262144
  %tobool19.not = icmp eq i40 %32, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end18.if.end74_crit_edge

if.end18.if.end74_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

land.lhs.true:                                    ; preds = %if.end18
  %33 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_state, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %34, label %if.then24 [
    i32 0, label %land.lhs.true.if.end74_crit_edge
    i32 5, label %land.lhs.true.if.end74_crit_edge251
  ]

land.lhs.true.if.end74_crit_edge251:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %28)
  %cmp26.not = icmp eq i32 %34, %28
  br i1 %cmp26.not, label %if.then24.Fixup_crit_edge, label %land.rhs

if.then24.Fixup_crit_edge:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %Fixup

land.rhs:                                         ; preds = %if.then24
  %.b227 = load i1, ptr @pci_pm_suspend_noirq.__already_done, align 1
  br i1 %.b227, label %land.rhs.Fixup_crit_edge, label %if.then34, !prof !138

land.rhs.Fixup_crit_edge:                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %Fixup

if.then34:                                        ; preds = %land.rhs
  store i1 true, ptr @pci_pm_suspend_noirq.__already_done, align 1
  %call48 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then34.pci_name.exit_crit_edge

if.then34.pci_name.exit_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then34.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %if.then34.pci_name.exit_crit_edge ]
  %40 = ptrtoint ptr %suspend_noirq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %suspend_noirq, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 832, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call48, ptr noundef %retval.0.i.i, ptr noundef %41) #12
  br label %Fixup

if.end74:                                         ; preds = %land.lhs.true.if.end74_crit_edge, %land.lhs.true.if.end74_crit_edge251, %if.end18.if.end74_crit_edge, %if.end10.if.end74_crit_edge
  %skip_bus_pm = getelementptr i8, ptr %dev, i32 -30
  %42 = ptrtoint ptr %skip_bus_pm to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load75 = load i32, ptr %skip_bus_pm, align 2
  %43 = and i32 %bf.load75, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool78.not = icmp eq i32 %43, 0
  %state_saved89 = getelementptr i8, ptr %dev, i32 1481
  %44 = ptrtoint ptr %state_saved89 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 5)
  %bf.load90 = load i40, ptr %state_saved89, align 1
  %45 = and i40 %bf.load90, 262144
  %tobool94.not = icmp eq i40 %45, 0
  br i1 %tobool78.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %if.end74
  br i1 %tobool94.not, label %if.then86, label %if.then79.do.body103_crit_edge

if.then79.do.body103_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.then86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  %call87 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %do.body103

if.else:                                          ; preds = %if.end74
  br i1 %tobool94.not, label %if.then95, label %if.else.do.body103_crit_edge

if.else.do.body103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.then95:                                        ; preds = %if.else
  %call96 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  %subordinate.i.i = getelementptr i8, ptr %dev, i32 -124
  %46 = ptrtoint ptr %subordinate.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %subordinate.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %47, null
  br i1 %tobool.i.not.i, label %if.then95.if.then98_crit_edge, label %pci_power_manageable.exit

if.then95.if.then98_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

pci_power_manageable.exit:                        ; preds = %if.then95
  %48 = ptrtoint ptr %skip_bus_pm to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %bf.load.i234 = load i32, ptr %skip_bus_pm, align 2
  %49 = and i32 %bf.load.i234, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not = icmp eq i32 %49, 0
  br i1 %tobool.i.not, label %pci_power_manageable.exit.do.body103_crit_edge, label %pci_power_manageable.exit.if.then98_crit_edge

pci_power_manageable.exit.if.then98_crit_edge:    ; preds = %pci_power_manageable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

pci_power_manageable.exit.do.body103_crit_edge:   ; preds = %pci_power_manageable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.then98:                                        ; preds = %pci_power_manageable.exit.if.then98_crit_edge, %if.then95.if.then98_crit_edge
  %call99 = tail call i32 @pci_prepare_to_sleep(ptr noundef %add.ptr) #12
  br label %do.body103

do.body103:                                       ; preds = %if.then98, %pci_power_manageable.exit.do.body103_crit_edge, %if.else.do.body103_crit_edge, %if.then86, %if.then79.do.body103_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_pm_suspend_noirq.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_pm_suspend_noirq, %do.end122)) #12
          to label %if.then116 [label %do.end122], !srcloc !139

if.then116:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #14
  %current_state118 = getelementptr i8, ptr %dev, i32 -36
  %50 = ptrtoint ptr %current_state118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %current_state118, align 4
  %add.i = add i32 %51, 1
  %arrayidx.i = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %add.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_pm_suspend_noirq.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %53) #12
  br label %do.end122

do.end122:                                        ; preds = %if.then116, %do.body103
  %current_state123 = getelementptr i8, ptr %dev, i32 -36
  %54 = ptrtoint ptr %current_state123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_state123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp124 = icmp eq i32 %55, 0
  br i1 %cmp124, label %if.then125, label %do.end122.if.end138_crit_edge

do.end122.if.end138_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then125:                                       ; preds = %do.end122
  %56 = ptrtoint ptr %skip_bus_pm to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %bf.load127 = load i32, ptr %skip_bus_pm, align 2
  %bf.set = or i32 %bf.load127, 65536
  store i32 %bf.set, ptr %skip_bus_pm, align 2
  %bus = getelementptr i8, ptr %dev, i32 -128
  %57 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %self, align 4
  %tobool129.not = icmp eq ptr %60, null
  br i1 %tobool129.not, label %if.then125.if.end138_crit_edge, label %if.then130

if.then125.if.end138_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then130:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  %skip_bus_pm133 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %skip_bus_pm133 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %bf.load134 = load i32, ptr %skip_bus_pm133, align 2
  %bf.set136 = or i32 %bf.load134, 65536
  store i32 %bf.set136, ptr %skip_bus_pm133, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then130, %if.then125.if.end138_crit_edge, %do.end122.if.end138_crit_edge
  %62 = ptrtoint ptr %skip_bus_pm to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %bf.load140 = load i32, ptr %skip_bus_pm, align 2
  %63 = and i32 %bf.load140, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool143.not = icmp eq i32 %63, 0
  br i1 %tobool143.not, label %if.end138.if.end166_crit_edge, label %land.lhs.true144

if.end138.if.end166_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

land.lhs.true144:                                 ; preds = %if.end138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  %64 = load i32, ptr @pm_suspend_global_flags, align 4
  %and.i = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i235.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i235.not, label %land.lhs.true144.if.end166_crit_edge, label %do.body147

land.lhs.true144.if.end166_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

do.body147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_pm_suspend_noirq.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_pm_suspend_noirq, %Fixup)) #12
          to label %if.then161 [label %Fixup], !srcloc !139

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_pm_suspend_noirq.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.28) #12
  br label %Fixup

if.end166:                                        ; preds = %land.lhs.true144.if.end166_crit_edge, %if.end138.if.end166_crit_edge
  %65 = ptrtoint ptr %current_state123 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %current_state123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i = icmp eq i32 %66, 0
  br i1 %cmp.i, label %if.then.i236, label %if.end166.pci_pm_set_unknown_state.exit_crit_edge

if.end166.pci_pm_set_unknown_state.exit_crit_edge: ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_pm_set_unknown_state.exit

if.then.i236:                                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %current_state123 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 5, ptr %current_state123, align 4
  br label %pci_pm_set_unknown_state.exit

pci_pm_set_unknown_state.exit:                    ; preds = %if.then.i236, %if.end166.pci_pm_set_unknown_state.exit_crit_edge
  %class = getelementptr i8, ptr %dev, i32 -96
  %68 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 787232, i32 %69)
  %cmp167 = icmp eq i32 %69, 787232
  br i1 %cmp167, label %if.then168, label %pci_pm_set_unknown_state.exit.Fixup_crit_edge

pci_pm_set_unknown_state.exit.Fixup_crit_edge:    ; preds = %pci_pm_set_unknown_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %Fixup

if.then168:                                       ; preds = %pci_pm_set_unknown_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call169 = tail call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 4, i16 noundef zeroext 0) #12
  br label %Fixup

Fixup:                                            ; preds = %if.then168, %pci_pm_set_unknown_state.exit.Fixup_crit_edge, %if.then161, %do.body147, %pci_name.exit, %land.rhs.Fixup_crit_edge, %if.then24.Fixup_crit_edge, %if.then8
  tail call void @pci_fixup_device(i32 noundef 7, ptr noundef %add.ptr) #12
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %70 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i238 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i238)
  %tobool.i239 = icmp slt i16 %bf.load.i238, 0
  br i1 %tobool.i239, label %device_may_wakeup.exit, label %Fixup.cleanup179_crit_edge

Fixup.cleanup179_crit_edge:                       ; preds = %Fixup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

device_may_wakeup.exit:                           ; preds = %Fixup
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %71 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %72, null
  br i1 %tobool2.i.not, label %if.then174, label %device_may_wakeup.exit.cleanup179_crit_edge

device_may_wakeup.exit.cleanup179_crit_edge:      ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup179

if.then174:                                       ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %may_skip_resume = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %73 = ptrtoint ptr %may_skip_resume to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load175 = load i8, ptr %may_skip_resume, align 4
  %bf.clear176 = and i8 %bf.load175, -9
  store i8 %bf.clear176, ptr %may_skip_resume, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %if.then174, %device_may_wakeup.exit.cleanup179_crit_edge, %Fixup.cleanup179_crit_edge, %if.then12.cleanup179_crit_edge, %pci_legacy_suspend_late.exit, %cond.end.cleanup179_crit_edge
  %retval.1 = phi i32 [ 0, %pci_legacy_suspend_late.exit ], [ 0, %cond.end.cleanup179_crit_edge ], [ 0, %if.then174 ], [ 0, %device_may_wakeup.exit.cleanup179_crit_edge ], [ 0, %Fixup.cleanup179_crit_edge ], [ %call14, %if.then12.cleanup179_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_resume_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_state, align 4
  %skip_bus_pm3 = getelementptr i8, ptr %dev, i32 -30
  %6 = ptrtoint ptr %skip_bus_pm3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %skip_bus_pm3, align 2
  %7 = and i32 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %call = tail call zeroext i1 @dev_pm_skip_resume(ptr noundef %dev) #12
  br i1 %call, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br i1 %tobool4.not, label %if.end.if.then7_crit_edge, label %land.lhs.true

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  %8 = load i32, ptr @pm_suspend_global_flags, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.then7_crit_edge, label %if.end12.critedge

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %call.i = tail call i32 @pci_power_up(ptr noundef %add.ptr) #12
  tail call void @pci_update_current_state(ptr noundef %add.ptr, i32 noundef 0) #12
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  tail call void @pci_pme_restore(ptr noundef %add.ptr) #12
  tail call void @pci_fixup_device(i32 noundef 6, ptr noundef %add.ptr) #12
  %pcie_cap.i.i.i = getelementptr i8, ptr %dev, i32 -72
  %9 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not.i = icmp eq i8 %10, 0
  br i1 %tobool.i.not.i, label %if.then7.pcie_pme_root_status_cleanup.exit_crit_edge, label %land.lhs.true.i

if.then7.pcie_pme_root_status_cleanup.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_pme_root_status_cleanup.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %pcie_flags_reg.i.i.i = getelementptr i8, ptr %dev, i32 -66
  %11 = ptrtoint ptr %pcie_flags_reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pcie_flags_reg.i.i.i, align 2
  %13 = lshr i16 %12, 4
  %14 = and i16 %13, 15
  %15 = zext i16 %14 to i32
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %15, label %land.lhs.true.i.pcie_pme_root_status_cleanup.exit_crit_edge [
    i32 4, label %land.lhs.true.i.if.then.i_crit_edge
    i32 10, label %land.lhs.true.i.if.then.i_crit_edge50
  ]

land.lhs.true.i.if.then.i_crit_edge50:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

land.lhs.true.i.pcie_pme_root_status_cleanup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcie_pme_root_status_cleanup.exit

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge50
  tail call void @pcie_clear_root_pme_status(ptr noundef %add.ptr) #12
  br label %pcie_pme_root_status_cleanup.exit

pcie_pme_root_status_cleanup.exit:                ; preds = %if.then.i, %land.lhs.true.i.pcie_pme_root_status_cleanup.exit_crit_edge, %if.then7.pcie_pme_root_status_cleanup.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then11, label %pcie_pme_root_status_cleanup.exit.if.end12_crit_edge

pcie_pme_root_status_cleanup.exit.if.end12_crit_edge: ; preds = %pcie_pme_root_status_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %pcie_pme_root_status_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_bridge_wait_for_secondary_bus(ptr noundef %add.ptr) #12
  br label %if.end12

if.end12.critedge:                                ; preds = %land.lhs.true
  tail call void @pci_fixup_device(i32 noundef 6, ptr noundef %add.ptr) #12
  %pcie_cap.i.i.i41 = getelementptr i8, ptr %dev, i32 -72
  %17 = ptrtoint ptr %pcie_cap.i.i.i41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pcie_cap.i.i.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not.i42 = icmp eq i8 %18, 0
  br i1 %tobool.i.not.i42, label %if.end12.critedge.if.end12_crit_edge, label %land.lhs.true.i44

if.end12.critedge.if.end12_crit_edge:             ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true.i44:                                ; preds = %if.end12.critedge
  %pcie_flags_reg.i.i.i43 = getelementptr i8, ptr %dev, i32 -66
  %19 = ptrtoint ptr %pcie_flags_reg.i.i.i43 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pcie_flags_reg.i.i.i43, align 2
  %21 = lshr i16 %20, 4
  %22 = and i16 %21, 15
  %23 = zext i16 %22 to i32
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %23, label %land.lhs.true.i44.if.end12_crit_edge [
    i32 4, label %land.lhs.true.i44.if.then.i45_crit_edge
    i32 10, label %land.lhs.true.i44.if.then.i45_crit_edge51
  ]

land.lhs.true.i44.if.then.i45_crit_edge51:        ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i45

land.lhs.true.i44.if.then.i45_crit_edge:          ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i45

land.lhs.true.i44.if.end12_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then.i45:                                      ; preds = %land.lhs.true.i44.if.then.i45_crit_edge, %land.lhs.true.i44.if.then.i45_crit_edge51
  tail call void @pcie_clear_root_pme_status(ptr noundef %add.ptr) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then.i45, %land.lhs.true.i44.if.end12_crit_edge, %if.end12.critedge.if.end12_crit_edge, %if.then11, %pcie_pme_root_status_cleanup.exit.if.end12_crit_edge
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %25 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end12.pci_has_legacy_pm_support.exit_crit_edge, label %land.rhs.i

if.end12.pci_has_legacy_pm_support.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_has_legacy_pm_support.exit

land.rhs.i:                                       ; preds = %if.end12
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %land.end.i.pci_has_legacy_pm_support.exit_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.pci_has_legacy_pm_support.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_has_legacy_pm_support.exit

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %26, i32 0, i32 14, i32 16
  %31 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %land.rhs4.i.cleanup_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.cleanup_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i47 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %37 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %38 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %39 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %40 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i47, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %cleanup

pci_has_legacy_pm_support.exit:                   ; preds = %land.end.i.pci_has_legacy_pm_support.exit_crit_edge, %if.end12.pci_has_legacy_pm_support.exit_crit_edge
  %tobool16.not = icmp eq ptr %cond, null
  br i1 %tobool16.not, label %pci_has_legacy_pm_support.exit.cleanup_crit_edge, label %land.lhs.true17

pci_has_legacy_pm_support.exit.cleanup_crit_edge: ; preds = %pci_has_legacy_pm_support.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true17:                                  ; preds = %pci_has_legacy_pm_support.exit
  %resume_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 15
  %41 = ptrtoint ptr %resume_noirq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resume_noirq, align 4
  %tobool18.not = icmp eq ptr %42, null
  br i1 %tobool18.not, label %land.lhs.true17.cleanup_crit_edge, label %if.then19

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 %42(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true17.cleanup_crit_edge, %pci_has_legacy_pm_support.exit.cleanup_crit_edge, %pci_name.exit.i, %land.rhs4.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then19 ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %pci_has_legacy_pm_support.exit.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %pci_name.exit.i ], [ 0, %land.rhs4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_freeze_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.if.end_crit_edge, label %land.rhs.i

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.if.end_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then

if.then:                                          ; preds = %pci_name.exit.i, %land.rhs4.i.if.then_crit_edge
  %state_saved.i = getelementptr i8, ptr %dev, i32 1481
  %20 = ptrtoint ptr %state_saved.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 5)
  %bf.load.i = load i40, ptr %state_saved.i, align 1
  %21 = and i40 %bf.load.i, 262144
  %tobool.not.i34 = icmp eq i40 %21, 0
  br i1 %tobool.not.i34, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i35 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %current_state.i.i = getelementptr i8, ptr %dev, i32 -36
  %22 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.pci_legacy_suspend_late.exit_crit_edge

if.end.i.pci_legacy_suspend_late.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_legacy_suspend_late.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %current_state.i.i, align 4
  br label %pci_legacy_suspend_late.exit

pci_legacy_suspend_late.exit:                     ; preds = %if.then.i.i, %if.end.i.pci_legacy_suspend_late.exit_crit_edge
  tail call void @pci_fixup_device(i32 noundef 7, ptr noundef %add.ptr) #12
  br label %cleanup18

if.end:                                           ; preds = %land.end.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %freeze_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 16
  %25 = ptrtoint ptr %freeze_noirq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %freeze_noirq, align 4
  %tobool5.not = icmp eq ptr %26, null
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %if.then6

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then6:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 %26(ptr noundef %dev) #12
  %27 = ptrtoint ptr %freeze_noirq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %freeze_noirq, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_freeze_noirq, ptr noundef %28, i32 noundef %call8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.then6.if.end13_crit_edge, label %if.then6.cleanup18_crit_edge

if.then6.cleanup18_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup18

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %29 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %29, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %30 = and i40 %bf.load, 262144
  %tobool14.not = icmp eq i40 %30, 0
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %current_state.i = getelementptr i8, ptr %dev, i32 -36
  %31 = ptrtoint ptr %current_state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %current_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br i1 %cmp.i, label %if.then.i36, label %if.end17.cleanup18_crit_edge

if.end17.cleanup18_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup18

if.then.i36:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %current_state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %current_state.i, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %if.then.i36, %if.end17.cleanup18_crit_edge, %if.then6.cleanup18_crit_edge, %pci_legacy_suspend_late.exit
  %retval.1 = phi i32 [ 0, %pci_legacy_suspend_late.exit ], [ %call8, %if.then6.cleanup18_crit_edge ], [ 0, %if.end17.cleanup18_crit_edge ], [ 0, %if.then.i36 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_thaw_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.pci_has_legacy_pm_support.exit_crit_edge, label %land.rhs.i

cond.end.pci_has_legacy_pm_support.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_has_legacy_pm_support.exit

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.pci_has_legacy_pm_support.exit_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.pci_has_legacy_pm_support.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_has_legacy_pm_support.exit

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.cleanup_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.cleanup_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %cleanup

pci_has_legacy_pm_support.exit:                   ; preds = %land.end.i.pci_has_legacy_pm_support.exit_crit_edge, %cond.end.pci_has_legacy_pm_support.exit_crit_edge
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %pci_has_legacy_pm_support.exit.cleanup_crit_edge, label %land.lhs.true

pci_has_legacy_pm_support.exit.cleanup_crit_edge: ; preds = %pci_has_legacy_pm_support.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %pci_has_legacy_pm_support.exit
  %thaw_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 17
  %20 = ptrtoint ptr %thaw_noirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %thaw_noirq, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 %21(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %pci_has_legacy_pm_support.exit.cleanup_crit_edge, %pci_name.exit.i, %land.rhs4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then6 ], [ 0, %pci_has_legacy_pm_support.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %pci_name.exit.i ], [ 0, %land.rhs4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_poweroff_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call = tail call zeroext i1 @dev_pm_skip_suspend(ptr noundef %dev) #12
  br i1 %call, label %cond.end.cleanup27_crit_edge, label %if.end

cond.end.cleanup27_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end:                                           ; preds = %cond.end
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %land.rhs.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.rhs.i:                                       ; preds = %if.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.if.end6_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.if.end6_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.if.then4_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.if.then4_crit_edge:                   ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %if.then4

if.then4:                                         ; preds = %pci_name.exit.i, %land.rhs4.i.if.then4_crit_edge
  %state_saved.i = getelementptr i8, ptr %dev, i32 1481
  %20 = ptrtoint ptr %state_saved.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 5)
  %bf.load.i = load i40, ptr %state_saved.i, align 1
  %21 = and i40 %bf.load.i, 262144
  %tobool.not.i48 = icmp eq i40 %21, 0
  br i1 %tobool.not.i48, label %if.then.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i49 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then4.if.end.i_crit_edge
  %current_state.i.i = getelementptr i8, ptr %dev, i32 -36
  %22 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.cleanup27.sink.split_crit_edge

if.end.i.cleanup27.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27.sink.split

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %current_state.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %current_state.i.i, align 4
  br label %cleanup27.sink.split

if.end6:                                          ; preds = %land.end.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %cond, null
  br i1 %tobool7.not, label %if.end6.cleanup27.sink.split_crit_edge, label %if.end9

if.end6.cleanup27.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27.sink.split

if.end9:                                          ; preds = %if.end6
  %poweroff_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 18
  %25 = ptrtoint ptr %poweroff_noirq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %poweroff_noirq, align 4
  %tobool10.not = icmp eq ptr %26, null
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %if.then11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  %call13 = tail call i32 %26(ptr noundef %dev) #12
  %27 = ptrtoint ptr %poweroff_noirq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %poweroff_noirq, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_pm_poweroff_noirq, ptr noundef %28, i32 noundef %call13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.then11.if.end18_crit_edge, label %if.then11.cleanup27_crit_edge

if.then11.cleanup27_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %29 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %29, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %30 = and i40 %bf.load, 262144
  %tobool19.not = icmp eq i40 %30, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end18
  %subordinate.i = getelementptr i8, ptr %dev, i32 -124
  %31 = ptrtoint ptr %subordinate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %subordinate.i, align 4
  %tobool.i.not = icmp eq ptr %32, null
  br i1 %tobool.i.not, label %if.then21, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @pci_prepare_to_sleep(ptr noundef %add.ptr) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %class = getelementptr i8, ptr %dev, i32 -96
  %33 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 787232, i32 %34)
  %cmp = icmp eq i32 %34, 787232
  br i1 %cmp, label %if.then24, label %if.end23.cleanup27.sink.split_crit_edge

if.end23.cleanup27.sink.split_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27.sink.split

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 4, i16 noundef zeroext 0) #12
  br label %cleanup27.sink.split

cleanup27.sink.split:                             ; preds = %if.then24, %if.end23.cleanup27.sink.split_crit_edge, %if.end6.cleanup27.sink.split_crit_edge, %if.then.i.i, %if.end.i.cleanup27.sink.split_crit_edge
  tail call void @pci_fixup_device(i32 noundef 7, ptr noundef %add.ptr) #12
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup27.sink.split, %if.then11.cleanup27_crit_edge, %cond.end.cleanup27_crit_edge
  %retval.1 = phi i32 [ %call13, %if.then11.cleanup27_crit_edge ], [ 0, %cond.end.cleanup27_crit_edge ], [ 0, %cleanup27.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_restore_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call.i = tail call i32 @pci_power_up(ptr noundef %add.ptr) #12
  tail call void @pci_update_current_state(ptr noundef %add.ptr, i32 noundef 0) #12
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  tail call void @pci_pme_restore(ptr noundef %add.ptr) #12
  tail call void @pci_fixup_device(i32 noundef 6, ptr noundef %add.ptr) #12
  %driver.i = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end.pci_has_legacy_pm_support.exit_crit_edge, label %land.rhs.i

cond.end.pci_has_legacy_pm_support.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_has_legacy_pm_support.exit

land.rhs.i:                                       ; preds = %cond.end
  %suspend.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.end.i, label %land.rhs.i.land.rhs4.i_crit_edge

land.rhs.i.land.rhs4.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i:                                       ; preds = %land.rhs.i
  %resume.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.end.i.pci_has_legacy_pm_support.exit_crit_edge, label %land.end.i.land.rhs4.i_crit_edge

land.end.i.land.rhs4.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs4.i

land.end.i.pci_has_legacy_pm_support.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_has_legacy_pm_support.exit

land.rhs4.i:                                      ; preds = %land.end.i.land.rhs4.i_crit_edge, %land.rhs.i.land.rhs4.i_crit_edge
  %pm.i = getelementptr inbounds %struct.pci_driver, ptr %5, i32 0, i32 14, i32 16
  %10 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.rhs4.i.cleanup_crit_edge, label %do.end.i, !prof !138

land.rhs4.i.cleanup_crit_edge:                    ; preds = %land.rhs4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %land.rhs4.i
  %call.i18 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.pci_name.exit.i_crit_edge ]
  %vendor.i = getelementptr i8, ptr %dev, i32 -104
  %16 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %17 to i32
  %device.i = getelementptr i8, ptr %dev, i32 -102
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device.i, align 2
  %conv17.i = zext i16 %19 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 661, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %call.i18, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %conv17.i) #12
  br label %cleanup

pci_has_legacy_pm_support.exit:                   ; preds = %land.end.i.pci_has_legacy_pm_support.exit_crit_edge, %cond.end.pci_has_legacy_pm_support.exit_crit_edge
  %tobool3.not = icmp eq ptr %cond, null
  br i1 %tobool3.not, label %pci_has_legacy_pm_support.exit.cleanup_crit_edge, label %land.lhs.true

pci_has_legacy_pm_support.exit.cleanup_crit_edge: ; preds = %pci_has_legacy_pm_support.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %pci_has_legacy_pm_support.exit
  %restore_noirq = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 19
  %20 = ptrtoint ptr %restore_noirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %restore_noirq, align 4
  %tobool4.not = icmp eq ptr %21, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 %21(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %pci_has_legacy_pm_support.exit.cleanup_crit_edge, %pci_name.exit.i, %land.rhs4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then5 ], [ 0, %pci_has_legacy_pm_support.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %pci_name.exit.i ], [ 0, %land.rhs4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_state, align 4
  %driver3 = getelementptr i8, ptr %dev, i32 -60
  %6 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %8 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %8, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %bf.clear = and i40 %bf.load, -262145
  store i40 %bf.clear, ptr %state_saved, align 1
  %tobool5.not = icmp eq ptr %cond, null
  br i1 %tobool5.not, label %if.end103.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %runtime_suspend = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 20
  %9 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime_suspend, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %land.lhs.true.land.lhs.true33_crit_edge, label %if.then7

land.lhs.true.land.lhs.true33_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true33

if.then7:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 %10(ptr noundef %dev) #12
  %11 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call9, label %do.end26 [
    i32 -16, label %if.then7.do.body_crit_edge
    i32 -11, label %if.then7.do.body_crit_edge155
    i32 0, label %if.then7.land.lhs.true33_crit_edge
  ]

if.then7.land.lhs.true33_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true33

if.then7.do.body_crit_edge155:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.then7.do.body_crit_edge, %if.then7.do.body_crit_edge155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_pm_runtime_suspend.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_pm_runtime_suspend, %cleanup)) #12
          to label %if.then18 [label %cleanup], !srcloc !139

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime_suspend, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_pm_runtime_suspend.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef %13, i32 noundef %call9) #12
  br label %cleanup

do.end26:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime_suspend, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %15, i32 noundef %call9) #16
  br label %cleanup

land.lhs.true33:                                  ; preds = %if.then7.land.lhs.true33_crit_edge, %land.lhs.true.land.lhs.true33_crit_edge
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %add.ptr) #12
  %16 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime_suspend, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %land.lhs.true33.if.end103_crit_edge, label %land.lhs.true36

land.lhs.true33.if.end103_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %18 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %18, i32 5)
  %bf.load38 = load i40, ptr %state_saved, align 1
  %19 = and i40 %bf.load38, 262144
  %tobool40.not = icmp eq i40 %19, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %land.lhs.true36.if.end103_crit_edge

land.lhs.true36.if.end103_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %20 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_state, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %21, label %if.then47 [
    i32 0, label %land.lhs.true41.if.end103_crit_edge
    i32 5, label %land.lhs.true41.if.end103_crit_edge156
  ]

land.lhs.true41.if.end103_crit_edge156:           ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

land.lhs.true41.if.end103_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then47:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %5)
  %cmp49.not = icmp eq i32 %21, %5
  br i1 %cmp49.not, label %if.then47.cleanup_crit_edge, label %land.rhs

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %if.then47
  %.b152 = load i1, ptr @pci_pm_runtime_suspend.__already_done, align 1
  br i1 %.b152, label %land.rhs.cleanup_crit_edge, label %if.then65, !prof !138

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then65:                                        ; preds = %land.rhs
  store i1 true, ptr @pci_pm_runtime_suspend.__already_done, align 1
  %call79 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then65.pci_name.exit_crit_edge

if.then65.pci_name.exit_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then65.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.then65.pci_name.exit_crit_edge ]
  %27 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime_suspend, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1280, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call79, ptr noundef %retval.0.i.i, ptr noundef %28) #12
  br label %cleanup

if.end103.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %add.ptr) #12
  br label %if.end103

if.end103:                                        ; preds = %if.end103.critedge, %land.lhs.true41.if.end103_crit_edge, %land.lhs.true41.if.end103_crit_edge156, %land.lhs.true36.if.end103_crit_edge, %land.lhs.true33.if.end103_crit_edge
  %29 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %29, i32 5)
  %bf.load105 = load i40, ptr %state_saved, align 1
  %30 = and i40 %bf.load105, 262144
  %tobool109.not = icmp eq i40 %30, 0
  br i1 %tobool109.not, label %if.then110, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %call111 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  %call112 = tail call i32 @pci_finish_runtime_suspend(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.end103.cleanup_crit_edge, %pci_name.exit, %land.rhs.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %do.end26, %if.then18, %do.body, %if.then
  %retval.0 = phi i32 [ %call9, %do.end26 ], [ 0, %if.then ], [ %call9, %if.then18 ], [ 0, %if.then47.cleanup_crit_edge ], [ 0, %pci_name.exit ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.then110 ], [ 0, %if.end103.cleanup_crit_edge ], [ %call9, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_state, align 4
  tail call void @pci_update_current_state(ptr noundef %add.ptr, i32 noundef 5) #12
  %6 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %cond.end.if.end2.i_crit_edge, label %if.then.i

cond.end.if.end2.i_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then.i:                                        ; preds = %cond.end
  %call.i = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.pci_restore_standard_config.exit_crit_edge

if.then.i.pci_restore_standard_config.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_restore_standard_config.exit

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %cond.end.if.end2.i_crit_edge
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  tail call void @pci_pme_restore(ptr noundef %add.ptr) #12
  br label %pci_restore_standard_config.exit

pci_restore_standard_config.exit:                 ; preds = %if.end2.i, %if.then.i.pci_restore_standard_config.exit_crit_edge
  %driver3 = getelementptr i8, ptr %dev, i32 -60
  %8 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %pci_restore_standard_config.exit.cleanup_crit_edge, label %if.end

pci_restore_standard_config.exit.cleanup_crit_edge: ; preds = %pci_restore_standard_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pci_restore_standard_config.exit
  tail call void @pci_fixup_device(i32 noundef 6, ptr noundef %add.ptr) #12
  tail call void @pci_fixup_device(i32 noundef 4, ptr noundef %add.ptr) #12
  %call.i28 = tail call i32 @pci_enable_wake(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_bridge_wait_for_secondary_bus(ptr noundef %add.ptr) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %cond, null
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %runtime_resume = getelementptr inbounds %struct.dev_pm_ops, ptr %cond, i32 0, i32 21
  %10 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime_resume, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true.if.end12_crit_edge, label %if.then9

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 %11(ptr noundef %dev) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %error.0 = phi i32 [ %call11, %if.then9 ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ 0, %if.end6.if.end12_crit_edge ]
  %runtime_d3cold = getelementptr i8, ptr %dev, i32 -30
  %12 = ptrtoint ptr %runtime_d3cold to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load = load i32, ptr %runtime_d3cold, align 2
  %bf.clear = and i32 %bf.load, -131073
  store i32 %bf.clear, ptr %runtime_d3cold, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %pci_restore_standard_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end12 ], [ 0, %pci_restore_standard_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_pm_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %entry
  %pm2 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2, align 4
  %driver3 = getelementptr i8, ptr %dev, i32 -60
  %4 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver320 = getelementptr i8, ptr %dev, i32 -60
  %6 = ptrtoint ptr %driver320 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver320, align 4
  %tobool4.not21 = icmp eq ptr %7, null
  %spec.select = select i1 %tobool4.not21, i32 0, i32 -38
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %runtime_idle = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %runtime_idle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime_idle, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %9(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.thread, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then9 ], [ 0, %cond.end.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %spec.select, %cond.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dev_need_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_adjust_pme(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_complete_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_generic_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_refresh_power_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_legacy_suspend(ptr noundef %dev, [1 x i32] %state.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr i8, ptr %dev, i32 -60
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end63_crit_edge, label %land.lhs.true

entry.if.end63_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end63_crit_edge, label %if.then

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then:                                          ; preds = %land.lhs.true
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %4 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_state, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, [1 x i32] %state.coerce) #12
  %6 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %suspend, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.pci_legacy_suspend, ptr noundef %7, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup64_crit_edge

if.then.cleanup64_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end:                                           ; preds = %if.then
  %state_saved = getelementptr i8, ptr %dev, i32 1481
  %8 = ptrtoint ptr %state_saved to i32
  call void @__asan_loadN_noabort(i32 %8, i32 5)
  %bf.load = load i40, ptr %state_saved, align 1
  %9 = and i40 %bf.load, 262144
  %tobool7.not = icmp eq i40 %9, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true8:                                   ; preds = %if.end
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_state, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %11, label %if.then13 [
    i32 0, label %land.lhs.true8.if.end63_crit_edge
    i32 5, label %land.lhs.true8.if.end63_crit_edge90
  ]

land.lhs.true8.if.end63_crit_edge90:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true8.if.end63_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp15.not = icmp eq i32 %11, %5
  br i1 %cmp15.not, label %if.then13.if.end63_crit_edge, label %land.rhs

if.then13.if.end63_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.rhs:                                         ; preds = %if.then13
  %.b85 = load i1, ptr @pci_legacy_suspend.__already_done, align 1
  br i1 %.b85, label %land.rhs.if.end63_crit_edge, label %if.then23, !prof !138

land.rhs.if.end63_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then23:                                        ; preds = %land.rhs
  store i1 true, ptr @pci_legacy_suspend.__already_done, align 1
  %call37 = tail call ptr @dev_driver_string(ptr noundef %dev) #12
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then23.pci_name.exit_crit_edge

if.then23.pci_name.exit_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then23.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then23.pci_name.exit_crit_edge ]
  %17 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %suspend, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 607, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call37, ptr noundef %retval.0.i.i, ptr noundef %18) #12
  br label %if.end63

if.end63:                                         ; preds = %pci_name.exit, %land.rhs.if.end63_crit_edge, %if.then13.if.end63_crit_edge, %land.lhs.true8.if.end63_crit_edge, %land.lhs.true8.if.end63_crit_edge90, %if.end.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %entry.if.end63_crit_edge
  tail call void @pci_fixup_device(i32 noundef 5, ptr noundef %add.ptr) #12
  br label %cleanup64

cleanup64:                                        ; preds = %if.end63, %if.then.cleanup64_crit_edge
  %retval.1 = phi i32 [ 0, %if.end63 ], [ %call, %if.then.cleanup64_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__suspend_report_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_device(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_enabled_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_update_current_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pme_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_skip_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_late(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_skip_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_early(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_poweroff_late(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_wait_for_secondary_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_power_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_clear_root_pme_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_finish_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_debug_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !79, !80, !82, !84, !86, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !105, !106, !108, !109, !111, !113, !115, !116, !117, !119, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__ksymtab_pci_add_dynid, !1, !"__ksymtab_pci_add_dynid", i1 false, i1 false}
!1 = !{!"../drivers/pci/pci-driver.c", i32 78, i32 1}
!2 = !{ptr @__ksymtab_pci_match_id, !3, !"__ksymtab_pci_match_id", i1 false, i1 false}
!3 = !{!"../drivers/pci/pci-driver.c", i32 116, i32 1}
!4 = !{ptr @__pci_register_driver.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/pci/pci-driver.c", i32 1401, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab___pci_register_driver, !8, !"__ksymtab___pci_register_driver", i1 false, i1 false}
!8 = !{!"../drivers/pci/pci-driver.c", i32 1407, i32 1}
!9 = !{ptr @__ksymtab_pci_unregister_driver, !10, !"__ksymtab_pci_unregister_driver", i1 false, i1 false}
!10 = !{!"../drivers/pci/pci-driver.c", i32 1424, i32 1}
!11 = !{ptr @__ksymtab_pci_dev_driver, !12, !"__ksymtab_pci_dev_driver", i1 false, i1 false}
!12 = !{!"../drivers/pci/pci-driver.c", i32 1449, i32 1}
!13 = !{ptr @__ksymtab_pci_dev_get, !14, !"__ksymtab_pci_dev_get", i1 false, i1 false}
!14 = !{!"../drivers/pci/pci-driver.c", i32 1495, i32 1}
!15 = !{ptr @__ksymtab_pci_dev_put, !16, !"__ksymtab_pci_dev_put", i1 false, i1 false}
!16 = !{!"../drivers/pci/pci-driver.c", i32 1509, i32 1}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/pci-driver.c", i32 1557, i32 17}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/pci-driver.c", i32 1558, i32 17}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/pci-driver.c", i32 1561, i32 17}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/pci-driver.c", i32 1562, i32 17}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/pci-driver.c", i32 1565, i32 17}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/pci-driver.c", i32 1612, i32 11}
!29 = !{ptr @pci_bus_type, !30, !"pci_bus_type", i1 false, i1 false}
!30 = !{!"../drivers/pci/pci-driver.c", i32 1611, i32 17}
!31 = !{ptr @__ksymtab_pci_bus_type, !32, !"__ksymtab_pci_bus_type", i1 false, i1 false}
!32 = !{!"../drivers/pci/pci-driver.c", i32 1625, i32 1}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/pci-driver.c", i32 1650, i32 11}
!35 = !{ptr @pcie_port_bus_type, !36, !"pcie_port_bus_type", i1 false, i1 false}
!36 = !{!"../drivers/pci/pci-driver.c", i32 1649, i32 17}
!37 = !{ptr @__ksymtab_pcie_port_bus_type, !38, !"__ksymtab_pcie_port_bus_type", i1 false, i1 false}
!38 = !{!"../drivers/pci/pci-driver.c", i32 1653, i32 1}
!39 = !{ptr @__initcall__kmod_pci_driver__300_1672_pci_driver_init2, !40, !"__initcall__kmod_pci_driver__300_1672_pci_driver_init2", i1 false, i1 false}
!40 = !{!"../drivers/pci/pci-driver.c", i32 1672, i32 1}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/pci-driver.c", i32 1427, i32 10}
!43 = !{ptr @pci_compat_driver, !44, !"pci_compat_driver", i1 false, i1 false}
!44 = !{!"../drivers/pci/pci-driver.c", i32 1426, i32 26}
!45 = !{ptr @pci_drv_groups, !46, !"pci_drv_groups", i1 false, i1 false}
!46 = !{!"../drivers/pci/pci-driver.c", i32 296, i32 1}
!47 = !{ptr @pci_drv_group, !46, !"pci_drv_group", i1 false, i1 false}
!48 = !{ptr @pci_drv_attrs, !49, !"pci_drv_attrs", i1 false, i1 false}
!49 = !{!"../drivers/pci/pci-driver.c", i32 291, i32 26}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/pci-driver.c", i32 245, i32 8}
!52 = !{ptr @driver_attr_new_id, !51, !"driver_attr_new_id", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/pci-driver.c", i32 198, i32 23}
!55 = !{ptr @pci_device_id_any, !56, !"pci_device_id_any", i1 false, i1 false}
!56 = !{!"../drivers/pci/pci-driver.c", i32 118, i32 35}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/pci-driver.c", i32 289, i32 8}
!59 = !{ptr @driver_attr_remove_id, !58, !"driver_attr_remove_id", i1 false, i1 false}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/pci-driver.c", i32 265, i32 23}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/pci-driver.c", i32 1520, i32 26}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/pci-driver.c", i32 1523, i32 26}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/pci-driver.c", i32 1526, i32 26}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/pci-driver.c", i32 1530, i32 26}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/pci-driver.c", i32 1533, i32 26}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/pci-driver.c", i32 335, i32 2}
!74 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @local_pci_probe._entry, !73, !"_entry", i1 false, i1 false}
!79 = !{ptr @local_pci_probe._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @pci_dev_pm_ops, !81, !"pci_dev_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/pci/pci-driver.c", i32 1344, i32 32}
!82 = !{ptr @__func__.pci_pm_suspend, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/pci-driver.c", i32 778, i32 3}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../drivers/pci/pci-driver.c", i32 784, i32 4}
!86 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/pci-driver.c", i32 660, i32 2}
!89 = !{ptr @__func__.pci_legacy_suspend, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/pci-driver.c", i32 599, i32 3}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/pci/pci-driver.c", i32 605, i32 4}
!93 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__func__.pci_pm_freeze, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/pci-driver.c", i32 1013, i32 3}
!96 = !{ptr @__func__.pci_pm_poweroff, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/pci-driver.c", i32 1119, i32 3}
!98 = !{ptr @__func__.pci_pm_suspend_noirq, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/pci-driver.c", i32 824, i32 3}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/pci/pci-driver.c", i32 830, i32 4}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/pci-driver.c", i32 854, i32 2}
!104 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pci_pm_suspend_noirq.__UNIQUE_ID_ddebug297, !103, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/pci-driver.c", i32 869, i32 3}
!108 = !{ptr @pci_pm_suspend_noirq.__UNIQUE_ID_ddebug298, !107, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!109 = !{ptr @__func__.pci_pm_freeze_noirq, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/pci-driver.c", i32 1033, i32 3}
!111 = !{ptr @__func__.pci_pm_poweroff_noirq, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/pci-driver.c", i32 1157, i32 3}
!113 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pci/pci-driver.c", i32 1263, i32 4}
!115 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @pci_pm_runtime_suspend.__UNIQUE_ID_ddebug299, !114, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/pci-driver.c", i32 1267, i32 4}
!119 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pci_pm_runtime_suspend._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @pci_pm_runtime_suspend._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/pci/pci-driver.c", i32 1278, i32 3}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
!134 = !{i64 2148701853}
!135 = !{i64 1188453, i64 1188478, i64 1188500, i64 1188516, i64 1188528, i64 1188548, i64 1188572, i64 1188588, i64 1188600}
!136 = !{i64 2148702041}
!137 = !{!"auto-init"}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2148526249, i64 2148526254, i64 2148526267, i64 2148526311, i64 2148526345, i64 2148526366}
