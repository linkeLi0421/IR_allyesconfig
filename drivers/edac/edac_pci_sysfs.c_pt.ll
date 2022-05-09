; ModuleID = '/llk/IR_all_yes/drivers/edac/edac_pci_sysfs.c_pt.bc'
source_filename = "../drivers/edac/edac_pci_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+edac_pci_handle_pe\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_pci_handle_pe\09\09\09\09"
module asm "\09.long\09__crc_edac_pci_handle_pe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_handle_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_handle_pe\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_handle_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_pci_handle_npe\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_pci_handle_npe\09\09\09\09"
module asm "\09.long\09__crc_edac_pci_handle_npe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_handle_npe:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_handle_npe\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_handle_npe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.edac_pci_dev_attribute = type { %struct.attribute, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.instance_attribute = type { %struct.attribute, ptr, ptr }
%struct.edac_pci_ctl_info = type { %struct.list_head, i32, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], %struct.edac_pci_counter, %struct.kobject }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.edac_pci_counter = type { %struct.atomic_t, %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@check_pci_errors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@edac_pci_create_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017EDAC DEBUG: %s: idx=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"edac_pci_create_sysfs\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/edac/edac_pci_sysfs.c\00", [34 x i8] zeroinitializer }, align 32
@edac_pci_create_sysfs._entry_ptr = internal global ptr @edac_pci_create_sysfs._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@edac_pci_create_sysfs._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017EDAC DEBUG: %s: sysfs_create_link() returned err= %d\0A\00", [40 x i8] zeroinitializer }, align 32
@edac_pci_create_sysfs._entry_ptr.6 = internal global ptr @edac_pci_create_sysfs._entry.4, section ".printk_index", align 4
@edac_pci_remove_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017EDAC DEBUG: %s: index=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"edac_pci_remove_sysfs\00", [42 x i8] zeroinitializer }, align 32
@edac_pci_remove_sysfs._entry_ptr = internal global ptr @edac_pci_remove_sysfs._entry, section ".printk_index", align 4
@edac_pci_remove_sysfs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017EDAC DEBUG: %s: calling edac_pci_main_kobj_teardown()\0A\00", [39 x i8] zeroinitializer }, align 32
@edac_pci_remove_sysfs._entry_ptr.11 = internal global ptr @edac_pci_remove_sysfs._entry.9, section ".printk_index", align 4
@edac_pci_do_parity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017EDAC DEBUG: %s: \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_pci_do_parity_check\00", [39 x i8] zeroinitializer }, align 32
@edac_pci_do_parity_check._entry_ptr = internal global ptr @edac_pci_do_parity_check._entry, section ".printk_index", align 4
@pci_parity_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EDAC: PCI Parity Error\00", [41 x i8] zeroinitializer }, align 32
@edac_pci_handle_pe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014EDAC PCI%d: Parity Error ctl: %s %d: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edac_pci_handle_pe\00", [45 x i8] zeroinitializer }, align 32
@edac_pci_handle_pe._entry_ptr = internal global ptr @edac_pci_handle_pe._entry, section ".printk_index", align 4
@__kstrtab_edac_pci_handle_pe = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_handle_pe = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_handle_pe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_handle_pe to i32), ptr @__kstrtab_edac_pci_handle_pe, ptr @__kstrtabns_edac_pci_handle_pe }, section "___ksymtab_gpl+edac_pci_handle_pe", align 4
@edac_pci_handle_npe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014EDAC PCI%d: Non-Parity Error ctl: %s %d: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"edac_pci_handle_npe\00", [44 x i8] zeroinitializer }, align 32
@edac_pci_handle_npe._entry_ptr = internal global ptr @edac_pci_handle_npe._entry, section ".printk_index", align 4
@__kstrtab_edac_pci_handle_npe = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_handle_npe = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_handle_npe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_handle_npe to i32), ptr @__kstrtab_edac_pci_handle_npe, ptr @__kstrtabns_edac_pci_handle_npe }, section "___ksymtab_gpl+edac_pci_handle_npe", align 4
@__param_str_check_pci_errors = internal constant [27 x i8] c"edac_core.check_pci_errors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_check_pci_errors = internal constant %struct.kernel_param { ptr @__param_str_check_pci_errors, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @check_pci_errors } }, section "__param", align 4
@__UNIQUE_ID_check_pci_errorstype236 = internal constant [40 x i8] c"edac_core.parmtype=check_pci_errors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check_pci_errors237 = internal constant [76 x i8] c"edac_core.parm=check_pci_errors:Check for PCI bus parity errors: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_pci_panic_on_pe = internal constant [31 x i8] c"edac_core.edac_pci_panic_on_pe\00", align 1
@edac_pci_panic_on_pe = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_edac_pci_panic_on_pe = internal constant %struct.kernel_param { ptr @__param_str_edac_pci_panic_on_pe, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @edac_pci_panic_on_pe } }, section "__param", align 4
@__UNIQUE_ID_edac_pci_panic_on_petype238 = internal constant [44 x i8] c"edac_core.parmtype=edac_pci_panic_on_pe:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_pci_panic_on_pe239 = internal constant [78 x i8] c"edac_core.parm=edac_pci_panic_on_pe:Panic on PCI Bus Parity error: 0=off 1=on\00", section ".modinfo", align 1
@edac_pci_main_kobj_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_pci_main_kobj_setup\00", [39 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_setup._entry_ptr = internal global ptr @edac_pci_main_kobj_setup._entry, section ".printk_index", align 4
@edac_pci_sysfs_refcount = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@edac_pci_main_kobj_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017EDAC DEBUG: %s: try_module_get() failed\0A\00", [53 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_setup._entry_ptr.22 = internal global ptr @edac_pci_main_kobj_setup._entry.20, section ".printk_index", align 4
@edac_pci_top_main_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@edac_pci_main_kobj_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017EDAC DEBUG: %s: Failed to allocate\0A\00", [58 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_setup._entry_ptr.25 = internal global ptr @edac_pci_main_kobj_setup._entry.23, section ".printk_index", align 4
@ktype_edac_pci_main_kobj = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @edac_pci_release_main_kobj, ptr @edac_pci_sysfs_ops, ptr @edac_pci_attr, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017EDAC DEBUG: %s: Failed to register '.../edac/pci'\0A\00", [43 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_setup._entry_ptr.29 = internal global ptr @edac_pci_main_kobj_setup._entry.27, section ".printk_index", align 4
@edac_pci_main_kobj_setup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017EDAC DEBUG: %s: Registered '.../edac/pci' kobject\0A\00", [43 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_setup._entry_ptr.32 = internal global ptr @edac_pci_main_kobj_setup._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@edac_pci_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @edac_pci_dev_show, ptr @edac_pci_dev_store }, [24 x i8] zeroinitializer }, align 32
@edac_pci_attr = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @edac_pci_attr_check_pci_errors, ptr @edac_pci_attr_edac_pci_log_pe, ptr @edac_pci_attr_edac_pci_log_npe, ptr @edac_pci_attr_edac_pci_panic_on_pe, ptr @edac_pci_attr_pci_parity_count, ptr @edac_pci_attr_pci_nonparity_count, ptr null], [36 x i8] zeroinitializer }, align 32
@edac_pci_release_main_kobj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017EDAC DEBUG: %s: here to module_put(THIS_MODULE)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"edac_pci_release_main_kobj\00", [37 x i8] zeroinitializer }, align 32
@edac_pci_release_main_kobj._entry_ptr = internal global ptr @edac_pci_release_main_kobj._entry, section ".printk_index", align 4
@edac_pci_attr_check_pci_errors = internal global { %struct.edac_pci_dev_attribute, [32 x i8] } { %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @check_pci_errors, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, [32 x i8] zeroinitializer }, align 32
@edac_pci_attr_edac_pci_log_pe = internal global { %struct.edac_pci_dev_attribute, [32 x i8] } { %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_pci_log_pe, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, [32 x i8] zeroinitializer }, align 32
@edac_pci_attr_edac_pci_log_npe = internal global { %struct.edac_pci_dev_attribute, [32 x i8] } { %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_pci_log_npe, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, [32 x i8] zeroinitializer }, align 32
@edac_pci_attr_edac_pci_panic_on_pe = internal global { %struct.edac_pci_dev_attribute, [32 x i8] } { %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edac_pci_panic_on_pe, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, [32 x i8] zeroinitializer }, align 32
@edac_pci_attr_pci_parity_count = internal global { %struct.edac_pci_dev_attribute, [32 x i8] } { %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pci_parity_count, ptr @edac_pci_int_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@edac_pci_attr_pci_nonparity_count = internal global { %struct.edac_pci_dev_attribute, [32 x i8] } { %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pci_nonparity_count, ptr @edac_pci_int_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_pci_errors\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"edac_pci_log_pe\00", [16 x i8] zeroinitializer }, align 32
@edac_pci_log_pe = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edac_pci_log_npe\00", [47 x i8] zeroinitializer }, align 32
@edac_pci_log_npe = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edac_pci_panic_on_pe\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_parity_count\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_nonparity_count\00", [44 x i8] zeroinitializer }, align 32
@pci_nonparity_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@edac_pci_create_instance_kobj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.42, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"edac_pci_create_instance_kobj\00", [34 x i8] zeroinitializer }, align 32
@edac_pci_create_instance_kobj._entry_ptr = internal global ptr @edac_pci_create_instance_kobj._entry, section ".printk_index", align 4
@ktype_pci_instance = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @edac_pci_instance_release, ptr @pci_instance_ops, ptr @pci_instance_attr, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pci%d\00", [26 x i8] zeroinitializer }, align 32
@edac_pci_create_instance_kobj._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017EDAC DEBUG: %s: failed to register instance pci%d\0A\00", [43 x i8] zeroinitializer }, align 32
@edac_pci_create_instance_kobj._entry_ptr.46 = internal global ptr @edac_pci_create_instance_kobj._entry.44, section ".printk_index", align 4
@edac_pci_create_instance_kobj._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017EDAC DEBUG: %s: Register instance 'pci%d' kobject\0A\00", [43 x i8] zeroinitializer }, align 32
@edac_pci_create_instance_kobj._entry_ptr.49 = internal global ptr @edac_pci_create_instance_kobj._entry.47, section ".printk_index", align 4
@pci_instance_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @edac_pci_instance_show, ptr @edac_pci_instance_store }, [24 x i8] zeroinitializer }, align 32
@pci_instance_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @attr_instance_pe_count, ptr @attr_instance_npe_count, ptr null], [20 x i8] zeroinitializer }, align 32
@edac_pci_instance_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.50, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"edac_pci_instance_release\00", [38 x i8] zeroinitializer }, align 32
@edac_pci_instance_release._entry_ptr = internal global ptr @edac_pci_instance_release._entry, section ".printk_index", align 4
@attr_instance_pe_count = internal global { %struct.instance_attribute, [36 x i8] } { %struct.instance_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @instance_pe_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@attr_instance_npe_count = internal global { %struct.instance_attribute, [36 x i8] } { %struct.instance_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @instance_npe_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pe_count\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"npe_count\00", [22 x i8] zeroinitializer }, align 32
@edac_pci_unregister_sysfs_instance_kobj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.54, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"edac_pci_unregister_sysfs_instance_kobj\00", [56 x i8] zeroinitializer }, align 32
@edac_pci_unregister_sysfs_instance_kobj._entry_ptr = internal global ptr @edac_pci_unregister_sysfs_instance_kobj._entry, section ".printk_index", align 4
@edac_pci_main_kobj_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.55, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"edac_pci_main_kobj_teardown\00", [36 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_teardown._entry_ptr = internal global ptr @edac_pci_main_kobj_teardown._entry, section ".printk_index", align 4
@edac_pci_main_kobj_teardown._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017EDAC DEBUG: %s: called kobject_put on main kobj\0A\00", [45 x i8] zeroinitializer }, align 32
@edac_pci_main_kobj_teardown._entry_ptr.58 = internal global ptr @edac_pci_main_kobj_teardown._entry.56, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017EDAC DEBUG: %s: PCI STATUS= 0x%04x %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edac_pci_dev_parity_test\00", [39 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr = internal global ptr @edac_pci_dev_parity_test._entry, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012EDAC PCI: Signaled System Error on %s\0A\00", [55 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.63 = internal global ptr @edac_pci_dev_parity_test._entry.61, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\012EDAC PCI: Master Data Parity Error on %s\0A\00", [52 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.66 = internal global ptr @edac_pci_dev_parity_test._entry.64, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012EDAC PCI: Detected Parity Error on %s\0A\00", [55 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.69 = internal global ptr @edac_pci_dev_parity_test._entry.67, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017EDAC DEBUG: %s: PCI HEADER TYPE= 0x%02x %s\0A\00", [50 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.72 = internal global ptr @edac_pci_dev_parity_test._entry.70, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017EDAC DEBUG: %s: PCI SEC_STATUS= 0x%04x %s\0A\00", [51 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.75 = internal global ptr @edac_pci_dev_parity_test._entry.73, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.60, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012EDAC PCI: Bridge Signaled System Error on %s\0A\00", [48 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.78 = internal global ptr @edac_pci_dev_parity_test._entry.76, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.60, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\012EDAC PCI: Bridge Master Data Parity Error on %s\0A\00", [45 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.81 = internal global ptr @edac_pci_dev_parity_test._entry.79, section ".printk_index", align 4
@edac_pci_dev_parity_test._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.60, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012EDAC PCI: Bridge Detected Parity Error on %s\0A\00", [48 x i8] zeroinitializer }, align 32
@edac_pci_dev_parity_test._entry_ptr.84 = internal global ptr @edac_pci_dev_parity_test._entry.82, section ".printk_index", align 4
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"check_pci_errors\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 20, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 426, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 438, i32 54 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 440, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 458, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 470, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 643, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"pci_parity_count\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 26, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 662, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 692, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 717, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"edac_pci_panic_on_pe\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 21, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 341, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"edac_pci_sysfs_refcount\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 30, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 357, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [23 x i8] c"edac_pci_top_main_kobj\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 29, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 364, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [25 x i8] c"ktype_edac_pci_main_kobj\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 327, i32 25 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 372, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 374, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 383, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"edac_pci_sysfs_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 261, i32 31 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"edac_pci_attr\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 295, i32 39 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 316, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [31 x i8] c"edac_pci_attr_check_pci_errors\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"edac_pci_attr_edac_pci_log_pe\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [31 x i8] c"edac_pci_attr_edac_pci_log_npe\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [35 x i8] c"edac_pci_attr_edac_pci_panic_on_pe\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [31 x i8] c"edac_pci_attr_pci_parity_count\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [34 x i8] c"edac_pci_attr_pci_nonparity_count\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 283, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 217, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 285, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"edac_pci_log_pe\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 22, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 287, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"edac_pci_log_npe\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 23, i32 12 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 289, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 291, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 292, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c"pci_nonparity_count\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 27, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 161, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [19 x i8] c"ktype_pci_instance\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 145, i32 25 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 175, i32 32 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 177, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 183, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"pci_instance_ops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 122, i32 31 }
@___asan_gen_.292 = private unnamed_addr constant [18 x i8] c"pci_instance_attr\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 138, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 78, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [23 x i8] c"attr_instance_pe_count\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [24 x i8] c"attr_instance_npe_count\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 134, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 61, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 135, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 200, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 409, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 416, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 546, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 553, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 560, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 568, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 577, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 584, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 592, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 599, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [33 x i8] c"../drivers/edac/edac_pci_sysfs.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 607, i32 5 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_check_pci_errors237, ptr @__UNIQUE_ID_check_pci_errorstype236, ptr @__UNIQUE_ID_edac_pci_panic_on_pe239, ptr @__UNIQUE_ID_edac_pci_panic_on_petype238, ptr @__ksymtab_edac_pci_handle_npe, ptr @__ksymtab_edac_pci_handle_pe, ptr @__param_check_pci_errors, ptr @__param_edac_pci_panic_on_pe, ptr @edac_pci_create_instance_kobj._entry, ptr @edac_pci_create_instance_kobj._entry.44, ptr @edac_pci_create_instance_kobj._entry.47, ptr @edac_pci_create_instance_kobj._entry_ptr, ptr @edac_pci_create_instance_kobj._entry_ptr.46, ptr @edac_pci_create_instance_kobj._entry_ptr.49, ptr @edac_pci_create_sysfs._entry, ptr @edac_pci_create_sysfs._entry.4, ptr @edac_pci_create_sysfs._entry_ptr, ptr @edac_pci_create_sysfs._entry_ptr.6, ptr @edac_pci_dev_parity_test._entry, ptr @edac_pci_dev_parity_test._entry.61, ptr @edac_pci_dev_parity_test._entry.64, ptr @edac_pci_dev_parity_test._entry.67, ptr @edac_pci_dev_parity_test._entry.70, ptr @edac_pci_dev_parity_test._entry.73, ptr @edac_pci_dev_parity_test._entry.76, ptr @edac_pci_dev_parity_test._entry.79, ptr @edac_pci_dev_parity_test._entry.82, ptr @edac_pci_dev_parity_test._entry_ptr, ptr @edac_pci_dev_parity_test._entry_ptr.63, ptr @edac_pci_dev_parity_test._entry_ptr.66, ptr @edac_pci_dev_parity_test._entry_ptr.69, ptr @edac_pci_dev_parity_test._entry_ptr.72, ptr @edac_pci_dev_parity_test._entry_ptr.75, ptr @edac_pci_dev_parity_test._entry_ptr.78, ptr @edac_pci_dev_parity_test._entry_ptr.81, ptr @edac_pci_dev_parity_test._entry_ptr.84, ptr @edac_pci_do_parity_check._entry, ptr @edac_pci_do_parity_check._entry_ptr, ptr @edac_pci_handle_npe._entry, ptr @edac_pci_handle_npe._entry_ptr, ptr @edac_pci_handle_pe._entry, ptr @edac_pci_handle_pe._entry_ptr, ptr @edac_pci_instance_release._entry, ptr @edac_pci_instance_release._entry_ptr, ptr @edac_pci_main_kobj_setup._entry, ptr @edac_pci_main_kobj_setup._entry.20, ptr @edac_pci_main_kobj_setup._entry.23, ptr @edac_pci_main_kobj_setup._entry.27, ptr @edac_pci_main_kobj_setup._entry.30, ptr @edac_pci_main_kobj_setup._entry_ptr, ptr @edac_pci_main_kobj_setup._entry_ptr.22, ptr @edac_pci_main_kobj_setup._entry_ptr.25, ptr @edac_pci_main_kobj_setup._entry_ptr.29, ptr @edac_pci_main_kobj_setup._entry_ptr.32, ptr @edac_pci_main_kobj_teardown._entry, ptr @edac_pci_main_kobj_teardown._entry.56, ptr @edac_pci_main_kobj_teardown._entry_ptr, ptr @edac_pci_main_kobj_teardown._entry_ptr.58, ptr @edac_pci_release_main_kobj._entry, ptr @edac_pci_release_main_kobj._entry_ptr, ptr @edac_pci_remove_sysfs._entry, ptr @edac_pci_remove_sysfs._entry.9, ptr @edac_pci_remove_sysfs._entry_ptr, ptr @edac_pci_remove_sysfs._entry_ptr.11, ptr @edac_pci_unregister_sysfs_instance_kobj._entry, ptr @edac_pci_unregister_sysfs_instance_kobj._entry_ptr, ptr @check_pci_errors, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @pci_parity_count, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @edac_pci_panic_on_pe, ptr @.str.19, ptr @edac_pci_sysfs_refcount, ptr @.str.21, ptr @edac_pci_top_main_kobj, ptr @.str.24, ptr @ktype_edac_pci_main_kobj, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @edac_pci_sysfs_ops, ptr @edac_pci_attr, ptr @.str.33, ptr @.str.34, ptr @edac_pci_attr_check_pci_errors, ptr @edac_pci_attr_edac_pci_log_pe, ptr @edac_pci_attr_edac_pci_log_npe, ptr @edac_pci_attr_edac_pci_panic_on_pe, ptr @edac_pci_attr_pci_parity_count, ptr @edac_pci_attr_pci_nonparity_count, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @edac_pci_log_pe, ptr @.str.38, ptr @edac_pci_log_npe, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pci_nonparity_count, ptr @.str.42, ptr @ktype_pci_instance, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @pci_instance_ops, ptr @pci_instance_attr, ptr @.str.50, ptr @attr_instance_pe_count, ptr @attr_instance_npe_count, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_pci_errors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_create_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_create_sysfs._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_remove_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_remove_sysfs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_do_parity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_parity_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_handle_pe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_handle_npe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_panic_on_pe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_sysfs_refcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_top_main_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_edac_pci_main_kobj to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_setup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_release_main_kobj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr_check_pci_errors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr_edac_pci_log_pe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr_edac_pci_log_npe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr_edac_pci_panic_on_pe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr_pci_parity_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_attr_pci_nonparity_count to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_log_pe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_log_npe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_nonparity_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_create_instance_kobj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_pci_instance to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_create_instance_kobj._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_create_instance_kobj._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_instance_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_instance_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_instance_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_instance_pe_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_instance_npe_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_unregister_sysfs_instance_kobj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_main_kobj_teardown._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_pci_dev_parity_test._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_pci_get_check_errors() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @check_pci_errors, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_pci_get_poll_msec() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1000
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_pci_create_sysfs(ptr noundef %pci) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end3, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i

do.end3:                                          ; preds = %entry
  %pci_idx = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 1
  %1 = ptrtoint ptr %pci_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pci_idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %2) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, -1
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end3.i_crit_edge

do.end3.do.end3.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19) #14
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end3.do.end3.i_crit_edge, %entry.do.end3.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @edac_pci_sysfs_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @llvm.prefetch.p0(ptr nonnull @edac_pci_sysfs_refcount, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #11, !srcloc !216
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp5.not.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp5.not.i, label %if.end7.i, label %do.end3.i.if.end6thread-pre-split_crit_edge

do.end3.i.if.end6thread-pre-split_crit_edge:      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6thread-pre-split

if.end7.i:                                        ; preds = %do.end3.i
  %call8.i = tail call ptr @edac_get_sysfs_subsys() #11
  %call9.i = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call9.i, label %if.end22.i, label %do.body11.i

do.body11.i:                                      ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %4 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12.i = icmp sgt i32 %4, 0
  br i1 %cmp12.i, label %do.end16.i, label %do.body11.i.edac_pci_main_kobj_setup.exit_crit_edge

do.body11.i.edac_pci_main_kobj_setup.exit_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_main_kobj_setup.exit

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #14
  br label %edac_pci_main_kobj_setup.exit

if.end22.i:                                       ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 136) #15
  store ptr %call7.i.i.i, ptr @edac_pci_top_main_kobj, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body25.i, label %if.end36.i

do.body25.i:                                      ; preds = %if.end22.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %6 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp26.i = icmp sgt i32 %6, 0
  br i1 %cmp26.i, label %do.end30.i, label %do.body25.i.kzalloc_fail.i_crit_edge

do.body25.i.kzalloc_fail.i_crit_edge:             ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc_fail.i

do.end30.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #14
  br label %kzalloc_fail.i

if.end36.i:                                       ; preds = %if.end22.i
  %dev_root.i = getelementptr inbounds %struct.bus_type, ptr %call8.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev_root.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_root.i, align 4
  %call37.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @ktype_edac_pci_main_kobj, ptr noundef %8, ptr noundef nonnull @.str.26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end51.i, label %do.body40.i

do.body40.i:                                      ; preds = %if.end36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %9 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp41.i = icmp sgt i32 %9, 0
  br i1 %cmp41.i, label %do.end45.i, label %do.body40.i.kobject_init_and_add_fail.i_crit_edge

do.body40.i.kobject_init_and_add_fail.i_crit_edge: ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kobject_init_and_add_fail.i

do.end45.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.19) #14
  br label %kobject_init_and_add_fail.i

if.end51.i:                                       ; preds = %if.end36.i
  %10 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  %call52.i = tail call i32 @kobject_uevent(ptr noundef %10, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %11 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp54.i = icmp sgt i32 %11, 0
  br i1 %cmp54.i, label %do.end58.i, label %if.end51.i.if.end6_crit_edge

if.end51.i.if.end6_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19) #14
  br label %if.end6thread-pre-split

kobject_init_and_add_fail.i:                      ; preds = %do.end45.i, %do.body40.i.kobject_init_and_add_fail.i_crit_edge
  %12 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %12) #11
  br label %kzalloc_fail.i

kzalloc_fail.i:                                   ; preds = %kobject_init_and_add_fail.i, %do.end30.i, %do.body25.i.kzalloc_fail.i_crit_edge
  %err.0.i = phi i32 [ %call37.i, %kobject_init_and_add_fail.i ], [ -12, %do.end30.i ], [ -12, %do.body25.i.kzalloc_fail.i_crit_edge ]
  tail call void @module_put(ptr noundef null) #11
  br label %edac_pci_main_kobj_setup.exit

edac_pci_main_kobj_setup.exit:                    ; preds = %kzalloc_fail.i, %do.end16.i, %do.body11.i.edac_pci_main_kobj_setup.exit_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %kzalloc_fail.i ], [ -19, %do.end16.i ], [ -19, %do.body11.i.edac_pci_main_kobj_setup.exit_crit_edge ]
  %call.i.i66.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @edac_pci_sysfs_refcount, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @edac_pci_sysfs_refcount, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #11, !srcloc !218
  br label %cleanup

if.end6thread-pre-split:                          ; preds = %do.end58.i, %do.end3.i.if.end6thread-pre-split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr57 = load i32, ptr @edac_debug_level, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6thread-pre-split, %if.end51.i.if.end6_crit_edge
  %14 = phi i32 [ %.pr57, %if.end6thread-pre-split ], [ %11, %if.end51.i.if.end6_crit_edge ]
  %pci_idx7 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 1
  %15 = ptrtoint ptr %pci_idx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pci_idx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i39 = icmp sgt i32 %14, -1
  br i1 %cmp.i39, label %do.end.i41, label %if.end6.do.end3.i43_crit_edge

if.end6.do.end3.i43_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3.i43

do.end.i41:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.42) #14
  br label %do.end3.i43

do.end3.i43:                                      ; preds = %do.end.i41, %if.end6.do.end3.i43_crit_edge
  %17 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  %call4.i = tail call ptr @kobject_get(ptr noundef %17) #11
  %tobool.not.i42 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i42, label %do.end3.i43.unregister_cleanup_crit_edge, label %if.end6.i

do.end3.i43.unregister_cleanup_crit_edge:         ; preds = %do.end3.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %unregister_cleanup

if.end6.i:                                        ; preds = %do.end3.i43
  %18 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  %call7.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @ktype_pci_instance, ptr noundef %18, ptr noundef nonnull @.str.43, i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %if.end21.i, label %do.body10.i

do.body10.i:                                      ; preds = %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %19 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp11.i = icmp sgt i32 %19, 1
  br i1 %cmp11.i, label %do.end15.i, label %do.body10.i.do.end20.i_crit_edge

do.body10.i.do.end20.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.42, i32 noundef %16) #14
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end15.i, %do.body10.i.do.end20.i_crit_edge
  %20 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  br label %unregister_cleanup.sink.split

if.end21.i:                                       ; preds = %if.end6.i
  %call23.i = tail call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %21 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25.i = icmp sgt i32 %21, 0
  br i1 %cmp25.i, label %do.end29.i, label %if.end21.i.if.end11_crit_edge

if.end21.i.if.end11_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef %16) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end29.i, %if.end21.i.if.end11_crit_edge
  %dev = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call13 = tail call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %23, ptr noundef nonnull @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %do.body16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body16:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %24 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp17 = icmp sgt i32 %24, -1
  br i1 %cmp17, label %symlink_fail, label %do.body16.unregister_cleanup.sink.split_crit_edge

do.body16.unregister_cleanup.sink.split_crit_edge: ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %unregister_cleanup.sink.split

symlink_fail:                                     ; preds = %do.body16
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %call13) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr60 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr60)
  %cmp.i45 = icmp sgt i32 %.pr60, -1
  br i1 %cmp.i45, label %do.end.i47, label %symlink_fail.unregister_cleanup.sink.split_crit_edge

symlink_fail.unregister_cleanup.sink.split_crit_edge: ; preds = %symlink_fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %unregister_cleanup.sink.split

do.end.i47:                                       ; preds = %symlink_fail
  call void @__sanitizer_cov_trace_pc() #13
  %call.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.54) #14
  br label %unregister_cleanup.sink.split

unregister_cleanup.sink.split:                    ; preds = %do.end.i47, %symlink_fail.unregister_cleanup.sink.split_crit_edge, %do.body16.unregister_cleanup.sink.split_crit_edge, %do.end20.i
  %.sink = phi ptr [ %20, %do.end20.i ], [ %kobj, %do.body16.unregister_cleanup.sink.split_crit_edge ], [ %kobj, %symlink_fail.unregister_cleanup.sink.split_crit_edge ], [ %kobj, %do.end.i47 ]
  %err.0.ph = phi i32 [ %call7.i, %do.end20.i ], [ %call13, %do.body16.unregister_cleanup.sink.split_crit_edge ], [ %call13, %symlink_fail.unregister_cleanup.sink.split_crit_edge ], [ %call13, %do.end.i47 ]
  tail call void @kobject_put(ptr noundef %.sink) #11
  br label %unregister_cleanup

unregister_cleanup:                               ; preds = %unregister_cleanup.sink.split, %do.end3.i43.unregister_cleanup_crit_edge
  %err.0 = phi i32 [ -19, %do.end3.i43.unregister_cleanup_crit_edge ], [ %err.0.ph, %unregister_cleanup.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %25 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i49 = icmp sgt i32 %25, -1
  br i1 %cmp.i49, label %do.end.i51, label %unregister_cleanup.do.end2.i_crit_edge

unregister_cleanup.do.end2.i_crit_edge:           ; preds = %unregister_cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2.i

do.end.i51:                                       ; preds = %unregister_cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55) #14
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i51, %unregister_cleanup.do.end2.i_crit_edge
  %call.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @edac_pci_sysfs_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr nonnull @edac_pci_sysfs_refcount, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #11, !srcloc !220
  %asmresult.i.i.i.i.i53 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i53)
  %cmp4.i = icmp eq i32 %asmresult.i.i.i.i.i53, 0
  br i1 %cmp4.i, label %do.body6.i, label %do.end2.i.cleanup_crit_edge

do.end2.i.cleanup_crit_edge:                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body6.i:                                       ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %27 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp7.i = icmp sgt i32 %27, -1
  br i1 %cmp7.i, label %do.end10.i, label %do.body6.i.do.end14.i_crit_edge

do.body6.i.do.end14.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i

do.end10.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55) #14
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end10.i, %do.body6.i.do.end14.i_crit_edge
  %28 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %28) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14.i, %do.end2.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %edac_pci_main_kobj_setup.exit
  %retval.0 = phi i32 [ %err.1.i, %edac_pci_main_kobj_setup.exit ], [ 0, %if.end11.cleanup_crit_edge ], [ %err.0, %do.end2.i.cleanup_crit_edge ], [ %err.0, %do.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_pci_remove_sysfs(ptr noundef %pci) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pci_idx = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 1
  %1 = ptrtoint ptr %pci_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pci_idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %2) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %kobj = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 15
  tail call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef nonnull @.str.3) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %3 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %do.end.i, label %do.end2.edac_pci_unregister_sysfs_instance_kobj.exit_crit_edge

do.end2.edac_pci_unregister_sysfs_instance_kobj.exit_crit_edge: ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_unregister_sysfs_instance_kobj.exit

do.end.i:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.54) #14
  br label %edac_pci_unregister_sysfs_instance_kobj.exit

edac_pci_unregister_sysfs_instance_kobj.exit:     ; preds = %do.end.i, %do.end2.edac_pci_unregister_sysfs_instance_kobj.exit_crit_edge
  tail call void @kobject_put(ptr noundef %kobj) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %4 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp4 = icmp sgt i32 %4, -1
  br i1 %cmp4, label %do.end11, label %edac_pci_unregister_sysfs_instance_kobj.exit.do.end2.i_crit_edge

edac_pci_unregister_sysfs_instance_kobj.exit.do.end2.i_crit_edge: ; preds = %edac_pci_unregister_sysfs_instance_kobj.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2.i

do.end11:                                         ; preds = %edac_pci_unregister_sysfs_instance_kobj.exit
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.i14 = icmp sgt i32 %.pr, -1
  br i1 %cmp.i14, label %do.end.i16, label %do.end11.do.end2.i_crit_edge

do.end11.do.end2.i_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2.i

do.end.i16:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55) #14
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i16, %do.end11.do.end2.i_crit_edge, %edac_pci_unregister_sysfs_instance_kobj.exit.do.end2.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @edac_pci_sysfs_refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr nonnull @edac_pci_sysfs_refcount, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #11, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp4.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp4.i, label %do.body6.i, label %do.end2.i.edac_pci_main_kobj_teardown.exit_crit_edge

do.end2.i.edac_pci_main_kobj_teardown.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_main_kobj_teardown.exit

do.body6.i:                                       ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %6 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp7.i = icmp sgt i32 %6, -1
  br i1 %cmp7.i, label %do.end10.i, label %do.body6.i.do.end14.i_crit_edge

do.body6.i.do.end14.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14.i

do.end10.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55) #14
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end10.i, %do.body6.i.do.end14.i_crit_edge
  %7 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %7) #11
  br label %edac_pci_main_kobj_teardown.exit

edac_pci_main_kobj_teardown.exit:                 ; preds = %do.end14.i, %do.end2.i.edac_pci_main_kobj_teardown.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_pci_do_parity_check() local_unnamed_addr #2 align 64 {
entry:
  %status.i225.i = alloca i16, align 2
  %sanity.i226.i = alloca i32, align 4
  %status.i.i = alloca i16, align 2
  %sanity.i.i = alloca i32, align 4
  %header_type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = load i32, ptr @check_pci_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @pci_parity_count, i32 noundef 4) #11
  %2 = load volatile i32, ptr @pci_parity_count, align 4
  %call2.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #11
  %cmp.not3.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not3.i, label %if.end5.edac_pci_dev_parity_iterator.exit_crit_edge, label %if.end5.while.body.i_crit_edge

if.end5.while.body.i_crit_edge:                   ; preds = %if.end5
  br label %while.body.i

if.end5.edac_pci_dev_parity_iterator.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_iterator.exit

while.body.i:                                     ; preds = %edac_pci_dev_parity_test.exit.while.body.i_crit_edge, %if.end5.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %edac_pci_dev_parity_test.exit.while.body.i_crit_edge ], [ %call2.i, %if.end5.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %header_type.i) #11
  %3 = ptrtoint ptr %header_type.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %header_type.i, align 1, !annotation !222
  %4 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !223
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %while.body.i.do.end11.i_crit_edge

while.body.i.do.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %while.body.i.do.end11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i.i) #11
  %5 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %status.i.i, align 2, !annotation !222
  %call.i.i16 = call i32 @pci_read_config_word(ptr noundef nonnull %call4.i, i32 noundef 6, ptr noundef nonnull %status.i.i) #11
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i.i = icmp eq i16 %7, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end11.i.if.end6.i.i_crit_edge

do.end11.i.if.end6.i.i_crit_edge:                 ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %do.end11.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sanity.i.i) #11
  %8 = ptrtoint ptr %sanity.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sanity.i.i, align 4, !annotation !222
  %call2.i.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 0, ptr noundef nonnull %sanity.i.i) #11
  %9 = ptrtoint ptr %sanity.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sanity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp3.i.i = icmp eq i32 %10, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sanity.i.i) #11
  br i1 %cmp3.i.i, label %if.then.i.i.get_pci_parity_status.exit.i_crit_edge, label %if.then.i.i.if.end6.i.i_crit_edge

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.then.i.i.get_pci_parity_status.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pci_parity_status.exit.i

if.end6.i.i:                                      ; preds = %if.then.i.i.if.end6.i.i_crit_edge, %do.end11.i.if.end6.i.i_crit_edge
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status.i.i, align 2
  %13 = and i16 %12, -16128
  store i16 %13, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool9.not.i.i, label %if.end6.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

if.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i = call i32 @pci_write_config_word(ptr noundef nonnull %call4.i, i32 noundef 6, i16 noundef zeroext %13) #11
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %if.end6.i.i.if.end12.i.i_crit_edge
  %14 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status.i.i, align 2
  br label %get_pci_parity_status.exit.i

get_pci_parity_status.exit.i:                     ; preds = %if.end12.i.i, %if.then.i.i.get_pci_parity_status.exit.i_crit_edge
  %retval.1.i.i = phi i16 [ %15, %if.end12.i.i ], [ 0, %if.then.i.i.get_pci_parity_status.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i.i) #11
  %call13.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call4.i, i32 noundef 14, ptr noundef nonnull %header_type.i) #11
  br i1 %tobool.not.i, label %if.then23.i, label %get_pci_parity_status.exit.i.do.body25.i_crit_edge

get_pci_parity_status.exit.i.do.body25.i_crit_edge: ; preds = %get_pci_parity_status.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25.i

if.then23.i:                                      ; preds = %get_pci_parity_status.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_on() #11
  br label %do.body25.i

do.body25.i:                                      ; preds = %if.then23.i, %get_pci_parity_status.exit.i.do.body25.i_crit_edge
  %16 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !224
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool33.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool33.not.i, label %if.then37.i, label %do.body25.i.do.end40.i_crit_edge, !prof !225

do.body25.i.do.end40.i_crit_edge:                 ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

if.then37.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then37.i, %do.body25.i.do.end40.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #11, !srcloc !226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %17 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp46.i = icmp sgt i32 %17, 3
  %conv53.i = zext i16 %retval.1.i.i to i32
  br i1 %cmp46.i, label %do.end51.i, label %do.end40.i.do.end59.i_crit_edge

do.end40.i.do.end59.i_crit_edge:                  ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59.i

do.end51.i:                                       ; preds = %do.end40.i
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end51.i.dev_name.exit.i_crit_edge

do.end51.i.dev_name.exit.i_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %20 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev54.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end51.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %do.end51.i.dev_name.exit.i_crit_edge ]
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %conv53.i, ptr noundef %retval.0.i.i) #14
  br label %do.end59.i

do.end59.i:                                       ; preds = %dev_name.exit.i, %do.end40.i.do.end59.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.1.i.i)
  %tobool61.not.i = icmp eq i16 %retval.1.i.i, 0
  br i1 %tobool61.not.i, label %do.end59.i.do.body97.i_crit_edge, label %land.lhs.true.i

do.end59.i.do.body97.i_crit_edge:                 ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97.i

land.lhs.true.i:                                  ; preds = %do.end59.i
  %broken_parity_status.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 49
  %22 = ptrtoint ptr %broken_parity_status.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 5)
  %bf.load.i = load i40, ptr %broken_parity_status.i, align 1
  %23 = and i40 %bf.load.i, 1073741824
  %tobool62.not.i = icmp eq i40 %23, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %land.lhs.true.i.do.body97.i_crit_edge

land.lhs.true.i.do.body97.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97.i

if.then63.i:                                      ; preds = %land.lhs.true.i
  %and.i = and i32 %conv53.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool65.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool65.not.i, label %if.then63.i.if.end73.i_crit_edge, label %do.end69.i

if.then63.i.if.end73.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

do.end69.i:                                       ; preds = %if.then63.i
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end69.i.pci_name.exit.i_crit_edge

do.end69.i.pci_name.exit.i_crit_edge:             ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end69.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %27, %if.end.i.i.i ], [ %25, %do.end69.i.pci_name.exit.i_crit_edge ]
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %retval.0.i.i.i) #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pci_nonparity_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @pci_nonparity_count, i32 1, i32 3, i32 1) #11
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_nonparity_count, ptr nonnull @pci_nonparity_count, i32 1, ptr nonnull elementtype(i32) @pci_nonparity_count) #11, !srcloc !227
  br label %if.end73.i

if.end73.i:                                       ; preds = %pci_name.exit.i, %if.then63.i.if.end73.i_crit_edge
  %and75.i = and i32 %conv53.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end73.i.if.end84.i_crit_edge, label %do.end80.i

if.end73.i.if.end84.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84.i

do.end80.i:                                       ; preds = %if.end73.i
  %init_name.i.i208.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i208.i, align 8
  %tobool.not.i.i209.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i209.i, label %if.end.i.i211.i, label %do.end80.i.pci_name.exit213.i_crit_edge

do.end80.i.pci_name.exit213.i_crit_edge:          ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit213.i

if.end.i.i211.i:                                  ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i210.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %31 = ptrtoint ptr %dev.i210.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i210.i, align 4
  br label %pci_name.exit213.i

pci_name.exit213.i:                               ; preds = %if.end.i.i211.i, %do.end80.i.pci_name.exit213.i_crit_edge
  %retval.0.i.i212.i = phi ptr [ %32, %if.end.i.i211.i ], [ %30, %do.end80.i.pci_name.exit213.i_crit_edge ]
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i212.i) #14
  %call.i.i202.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pci_parity_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @pci_parity_count, i32 1, i32 3, i32 1) #11
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #11, !srcloc !227
  br label %if.end84.i

if.end84.i:                                       ; preds = %pci_name.exit213.i, %if.end73.i.if.end84.i_crit_edge
  %and86.i = and i32 %conv53.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end84.i.do.body97.i_crit_edge, label %do.end91.i

if.end84.i.do.body97.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body97.i

do.end91.i:                                       ; preds = %if.end84.i
  %init_name.i.i214.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %34 = ptrtoint ptr %init_name.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i214.i, align 8
  %tobool.not.i.i215.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i215.i, label %if.end.i.i217.i, label %do.end91.i.pci_name.exit219.i_crit_edge

do.end91.i.pci_name.exit219.i_crit_edge:          ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit219.i

if.end.i.i217.i:                                  ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i216.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %36 = ptrtoint ptr %dev.i216.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i216.i, align 4
  br label %pci_name.exit219.i

pci_name.exit219.i:                               ; preds = %if.end.i.i217.i, %do.end91.i.pci_name.exit219.i_crit_edge
  %retval.0.i.i218.i = phi ptr [ %37, %if.end.i.i217.i ], [ %35, %do.end91.i.pci_name.exit219.i_crit_edge ]
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %retval.0.i.i218.i) #14
  %call.i.i203.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pci_parity_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @pci_parity_count, i32 1, i32 3, i32 1) #11
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #11, !srcloc !227
  br label %do.body97.i

do.body97.i:                                      ; preds = %pci_name.exit219.i, %if.end84.i.do.body97.i_crit_edge, %land.lhs.true.i.do.body97.i_crit_edge, %do.end59.i.do.body97.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %39 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp98.i = icmp sgt i32 %39, 3
  br i1 %cmp98.i, label %do.end103.i, label %do.body97.i.do.end111.i_crit_edge

do.body97.i.do.end111.i_crit_edge:                ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end111.i

do.end103.i:                                      ; preds = %do.body97.i
  %40 = ptrtoint ptr %header_type.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %header_type.i, align 1
  %conv105.i = zext i8 %41 to i32
  %init_name.i220.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %42 = ptrtoint ptr %init_name.i220.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i220.i, align 8
  %tobool.not.i221.i = icmp eq ptr %43, null
  br i1 %tobool.not.i221.i, label %if.end.i222.i, label %do.end103.i.dev_name.exit224.i_crit_edge

do.end103.i.dev_name.exit224.i_crit_edge:         ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit224.i

if.end.i222.i:                                    ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev106.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %44 = ptrtoint ptr %dev106.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev106.i, align 4
  br label %dev_name.exit224.i

dev_name.exit224.i:                               ; preds = %if.end.i222.i, %do.end103.i.dev_name.exit224.i_crit_edge
  %retval.0.i223.i = phi ptr [ %45, %if.end.i222.i ], [ %43, %do.end103.i.dev_name.exit224.i_crit_edge ]
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.60, i32 noundef %conv105.i, ptr noundef %retval.0.i223.i) #14
  br label %do.end111.i

do.end111.i:                                      ; preds = %dev_name.exit224.i, %do.body97.i.do.end111.i_crit_edge
  %46 = ptrtoint ptr %header_type.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %header_type.i, align 1
  %48 = and i8 %47, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp114.i = icmp eq i8 %48, 1
  br i1 %cmp114.i, label %if.then116.i, label %do.end111.i.edac_pci_dev_parity_test.exit_crit_edge

do.end111.i.edac_pci_dev_parity_test.exit_crit_edge: ; preds = %do.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_test.exit

if.then116.i:                                     ; preds = %do.end111.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i225.i) #11
  %49 = ptrtoint ptr %status.i225.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %status.i225.i, align 2, !annotation !222
  %call.i227.i = call i32 @pci_read_config_word(ptr noundef nonnull %call4.i, i32 noundef 30, ptr noundef nonnull %status.i225.i) #11
  %50 = ptrtoint ptr %status.i225.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %status.i225.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp.i228.i = icmp eq i16 %51, -1
  br i1 %cmp.i228.i, label %if.then.i231.i, label %if.then116.i.if.end6.i233.i_crit_edge

if.then116.i.if.end6.i233.i_crit_edge:            ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i233.i

if.then.i231.i:                                   ; preds = %if.then116.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sanity.i226.i) #11
  %52 = ptrtoint ptr %sanity.i226.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %sanity.i226.i, align 4, !annotation !222
  %call2.i229.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 0, ptr noundef nonnull %sanity.i226.i) #11
  %53 = ptrtoint ptr %sanity.i226.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sanity.i226.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp3.i230.i = icmp eq i32 %54, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sanity.i226.i) #11
  br i1 %cmp3.i230.i, label %if.then.i231.i.get_pci_parity_status.exit238.i_crit_edge, label %if.then.i231.i.if.end6.i233.i_crit_edge

if.then.i231.i.if.end6.i233.i_crit_edge:          ; preds = %if.then.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i233.i

if.then.i231.i.get_pci_parity_status.exit238.i_crit_edge: ; preds = %if.then.i231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pci_parity_status.exit238.i

if.end6.i233.i:                                   ; preds = %if.then.i231.i.if.end6.i233.i_crit_edge, %if.then116.i.if.end6.i233.i_crit_edge
  %55 = ptrtoint ptr %status.i225.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %status.i225.i, align 2
  %57 = and i16 %56, -16128
  store i16 %57, ptr %status.i225.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool9.not.i232.i = icmp eq i16 %57, 0
  br i1 %tobool9.not.i232.i, label %if.end6.i233.i.if.end12.i236.i_crit_edge, label %if.then10.i235.i

if.end6.i233.i.if.end12.i236.i_crit_edge:         ; preds = %if.end6.i233.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i236.i

if.then10.i235.i:                                 ; preds = %if.end6.i233.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i234.i = call i32 @pci_write_config_word(ptr noundef nonnull %call4.i, i32 noundef 30, i16 noundef zeroext %57) #11
  br label %if.end12.i236.i

if.end12.i236.i:                                  ; preds = %if.then10.i235.i, %if.end6.i233.i.if.end12.i236.i_crit_edge
  %58 = ptrtoint ptr %status.i225.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %status.i225.i, align 2
  br label %get_pci_parity_status.exit238.i

get_pci_parity_status.exit238.i:                  ; preds = %if.end12.i236.i, %if.then.i231.i.get_pci_parity_status.exit238.i_crit_edge
  %retval.1.i237.i = phi i16 [ %59, %if.end12.i236.i ], [ 0, %if.then.i231.i.get_pci_parity_status.exit238.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i225.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %60 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp119.i = icmp sgt i32 %60, 3
  %conv126.i = zext i16 %retval.1.i237.i to i32
  br i1 %cmp119.i, label %do.end124.i, label %get_pci_parity_status.exit238.i.do.end132.i_crit_edge

get_pci_parity_status.exit238.i.do.end132.i_crit_edge: ; preds = %get_pci_parity_status.exit238.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132.i

do.end124.i:                                      ; preds = %get_pci_parity_status.exit238.i
  %init_name.i239.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %61 = ptrtoint ptr %init_name.i239.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i239.i, align 8
  %tobool.not.i240.i = icmp eq ptr %62, null
  br i1 %tobool.not.i240.i, label %if.end.i241.i, label %do.end124.i.dev_name.exit243.i_crit_edge

do.end124.i.dev_name.exit243.i_crit_edge:         ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit243.i

if.end.i241.i:                                    ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev127.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %63 = ptrtoint ptr %dev127.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev127.i, align 4
  br label %dev_name.exit243.i

dev_name.exit243.i:                               ; preds = %if.end.i241.i, %do.end124.i.dev_name.exit243.i_crit_edge
  %retval.0.i242.i = phi ptr [ %64, %if.end.i241.i ], [ %62, %do.end124.i.dev_name.exit243.i_crit_edge ]
  %call129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.60, i32 noundef %conv126.i, ptr noundef %retval.0.i242.i) #14
  br label %do.end132.i

do.end132.i:                                      ; preds = %dev_name.exit243.i, %get_pci_parity_status.exit238.i.do.end132.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.1.i237.i)
  %tobool134.not.i = icmp eq i16 %retval.1.i237.i, 0
  br i1 %tobool134.not.i, label %do.end132.i.edac_pci_dev_parity_test.exit_crit_edge, label %land.lhs.true135.i

do.end132.i.edac_pci_dev_parity_test.exit_crit_edge: ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_test.exit

land.lhs.true135.i:                               ; preds = %do.end132.i
  %broken_parity_status136.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 49
  %65 = ptrtoint ptr %broken_parity_status136.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 5)
  %bf.load137.i = load i40, ptr %broken_parity_status136.i, align 1
  %66 = and i40 %bf.load137.i, 1073741824
  %tobool141.not.i = icmp eq i40 %66, 0
  br i1 %tobool141.not.i, label %if.then142.i, label %land.lhs.true135.i.edac_pci_dev_parity_test.exit_crit_edge

land.lhs.true135.i.edac_pci_dev_parity_test.exit_crit_edge: ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_test.exit

if.then142.i:                                     ; preds = %land.lhs.true135.i
  %and144.i = and i32 %conv126.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i)
  %tobool145.not.i = icmp eq i32 %and144.i, 0
  br i1 %tobool145.not.i, label %if.then142.i.if.end153.i_crit_edge, label %do.end149.i

if.then142.i.if.end153.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153.i

do.end149.i:                                      ; preds = %if.then142.i
  %init_name.i.i244.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %67 = ptrtoint ptr %init_name.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i244.i, align 8
  %tobool.not.i.i245.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i245.i, label %if.end.i.i247.i, label %do.end149.i.pci_name.exit249.i_crit_edge

do.end149.i.pci_name.exit249.i_crit_edge:         ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit249.i

if.end.i.i247.i:                                  ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i246.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %69 = ptrtoint ptr %dev.i246.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i246.i, align 4
  br label %pci_name.exit249.i

pci_name.exit249.i:                               ; preds = %if.end.i.i247.i, %do.end149.i.pci_name.exit249.i_crit_edge
  %retval.0.i.i248.i = phi ptr [ %70, %if.end.i.i247.i ], [ %68, %do.end149.i.pci_name.exit249.i_crit_edge ]
  %call152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %retval.0.i.i248.i) #14
  %call.i.i204.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pci_nonparity_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @pci_nonparity_count, i32 1, i32 3, i32 1) #11
  %71 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_nonparity_count, ptr nonnull @pci_nonparity_count, i32 1, ptr nonnull elementtype(i32) @pci_nonparity_count) #11, !srcloc !227
  br label %if.end153.i

if.end153.i:                                      ; preds = %pci_name.exit249.i, %if.then142.i.if.end153.i_crit_edge
  %and155.i = and i32 %conv126.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %if.end153.i.if.end164.i_crit_edge, label %do.end160.i

if.end153.i.if.end164.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164.i

do.end160.i:                                      ; preds = %if.end153.i
  %init_name.i.i250.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %72 = ptrtoint ptr %init_name.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i250.i, align 8
  %tobool.not.i.i251.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i251.i, label %if.end.i.i253.i, label %do.end160.i.pci_name.exit255.i_crit_edge

do.end160.i.pci_name.exit255.i_crit_edge:         ; preds = %do.end160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit255.i

if.end.i.i253.i:                                  ; preds = %do.end160.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i252.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %74 = ptrtoint ptr %dev.i252.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i252.i, align 4
  br label %pci_name.exit255.i

pci_name.exit255.i:                               ; preds = %if.end.i.i253.i, %do.end160.i.pci_name.exit255.i_crit_edge
  %retval.0.i.i254.i = phi ptr [ %75, %if.end.i.i253.i ], [ %73, %do.end160.i.pci_name.exit255.i_crit_edge ]
  %call163.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %retval.0.i.i254.i) #14
  %call.i.i205.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pci_parity_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @pci_parity_count, i32 1, i32 3, i32 1) #11
  %76 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #11, !srcloc !227
  br label %if.end164.i

if.end164.i:                                      ; preds = %pci_name.exit255.i, %if.end153.i.if.end164.i_crit_edge
  %and166.i = and i32 %conv126.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  br i1 %tobool167.not.i, label %if.end164.i.edac_pci_dev_parity_test.exit_crit_edge, label %do.end171.i

if.end164.i.edac_pci_dev_parity_test.exit_crit_edge: ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_test.exit

do.end171.i:                                      ; preds = %if.end164.i
  %init_name.i.i256.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44, i32 3
  %77 = ptrtoint ptr %init_name.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i.i256.i, align 8
  %tobool.not.i.i257.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i257.i, label %if.end.i.i259.i, label %do.end171.i.pci_name.exit261.i_crit_edge

do.end171.i.pci_name.exit261.i_crit_edge:         ; preds = %do.end171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit261.i

if.end.i.i259.i:                                  ; preds = %do.end171.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i258.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 44
  %79 = ptrtoint ptr %dev.i258.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i258.i, align 4
  br label %pci_name.exit261.i

pci_name.exit261.i:                               ; preds = %if.end.i.i259.i, %do.end171.i.pci_name.exit261.i_crit_edge
  %retval.0.i.i260.i = phi ptr [ %80, %if.end.i.i259.i ], [ %78, %do.end171.i.pci_name.exit261.i_crit_edge ]
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %retval.0.i.i260.i) #14
  %call.i.i206.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @pci_parity_count, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @pci_parity_count, i32 1, i32 3, i32 1) #11
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #11, !srcloc !227
  br label %edac_pci_dev_parity_test.exit

edac_pci_dev_parity_test.exit:                    ; preds = %pci_name.exit261.i, %if.end164.i.edac_pci_dev_parity_test.exit_crit_edge, %land.lhs.true135.i.edac_pci_dev_parity_test.exit_crit_edge, %do.end132.i.edac_pci_dev_parity_test.exit_crit_edge, %do.end111.i.edac_pci_dev_parity_test.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %header_type.i) #11
  %call.i = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call4.i) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %edac_pci_dev_parity_test.exit.edac_pci_dev_parity_iterator.exit_crit_edge, label %edac_pci_dev_parity_test.exit.while.body.i_crit_edge

edac_pci_dev_parity_test.exit.while.body.i_crit_edge: ; preds = %edac_pci_dev_parity_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

edac_pci_dev_parity_test.exit.edac_pci_dev_parity_iterator.exit_crit_edge: ; preds = %edac_pci_dev_parity_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_iterator.exit

edac_pci_dev_parity_iterator.exit:                ; preds = %edac_pci_dev_parity_test.exit.edac_pci_dev_parity_iterator.exit_crit_edge, %if.end5.edac_pci_dev_parity_iterator.exit_crit_edge
  %82 = load i32, ptr @edac_pci_panic_on_pe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool8.not = icmp eq i32 %82, 0
  br i1 %tobool8.not, label %edac_pci_dev_parity_iterator.exit.cleanup_crit_edge, label %if.then9

edac_pci_dev_parity_iterator.exit.cleanup_crit_edge: ; preds = %edac_pci_dev_parity_iterator.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %edac_pci_dev_parity_iterator.exit
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @pci_parity_count, i32 noundef 4) #11
  %83 = load volatile i32, ptr @pci_parity_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %83)
  %cmp11.not = icmp eq i32 %2, %83
  br i1 %cmp11.not, label %if.then9.cleanup_crit_edge, label %if.then12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.14) #16
  unreachable

cleanup:                                          ; preds = %if.then9.cleanup_crit_edge, %edac_pci_dev_parity_iterator.exit.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_pci_clear_parity_errors() local_unnamed_addr #2 align 64 {
entry:
  %status.i6.i = alloca i16, align 2
  %sanity.i7.i = alloca i32, align 4
  %status.i.i = alloca i16, align 2
  %sanity.i.i = alloca i32, align 4
  %header_type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #11
  %cmp.not3.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not3.i, label %entry.edac_pci_dev_parity_iterator.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.edac_pci_dev_parity_iterator.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_iterator.exit

while.body.i:                                     ; preds = %edac_pci_dev_parity_clear.exit.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i, %edac_pci_dev_parity_clear.exit.while.body.i_crit_edge ], [ %call2.i, %entry.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %header_type.i) #11
  %0 = ptrtoint ptr %header_type.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %header_type.i, align 1, !annotation !222
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i.i) #11
  %1 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %status.i.i, align 2, !annotation !222
  %call.i.i = call i32 @pci_read_config_word(ptr noundef nonnull %call4.i, i32 noundef 6, ptr noundef nonnull %status.i.i) #11
  %2 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.i = icmp eq i16 %3, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.if.end6.i.i_crit_edge

while.body.i.if.end6.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sanity.i.i) #11
  %4 = ptrtoint ptr %sanity.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sanity.i.i, align 4, !annotation !222
  %call2.i.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 0, ptr noundef nonnull %sanity.i.i) #11
  %5 = ptrtoint ptr %sanity.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sanity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp3.i.i = icmp eq i32 %6, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sanity.i.i) #11
  br i1 %cmp3.i.i, label %if.then.i.i.get_pci_parity_status.exit.i_crit_edge, label %if.then.i.i.if.end6.i.i_crit_edge

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.then.i.i.get_pci_parity_status.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pci_parity_status.exit.i

if.end6.i.i:                                      ; preds = %if.then.i.i.if.end6.i.i_crit_edge, %while.body.i.if.end6.i.i_crit_edge
  %7 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status.i.i, align 2
  %9 = and i16 %8, -16128
  store i16 %9, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool9.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool9.not.i.i, label %if.end6.i.i.get_pci_parity_status.exit.i_crit_edge, label %if.then10.i.i

if.end6.i.i.get_pci_parity_status.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pci_parity_status.exit.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i = call i32 @pci_write_config_word(ptr noundef nonnull %call4.i, i32 noundef 6, i16 noundef zeroext %9) #11
  br label %get_pci_parity_status.exit.i

get_pci_parity_status.exit.i:                     ; preds = %if.then10.i.i, %if.end6.i.i.get_pci_parity_status.exit.i_crit_edge, %if.then.i.i.get_pci_parity_status.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i.i) #11
  %call1.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call4.i, i32 noundef 14, ptr noundef nonnull %header_type.i) #11
  %10 = ptrtoint ptr %header_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %header_type.i, align 1
  %12 = and i8 %11, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  br i1 %cmp.i, label %if.then.i, label %get_pci_parity_status.exit.i.edac_pci_dev_parity_clear.exit_crit_edge

get_pci_parity_status.exit.i.edac_pci_dev_parity_clear.exit_crit_edge: ; preds = %get_pci_parity_status.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_clear.exit

if.then.i:                                        ; preds = %get_pci_parity_status.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i6.i) #11
  %13 = ptrtoint ptr %status.i6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %status.i6.i, align 2, !annotation !222
  %call.i8.i = call i32 @pci_read_config_word(ptr noundef nonnull %call4.i, i32 noundef 30, ptr noundef nonnull %status.i6.i) #11
  %14 = ptrtoint ptr %status.i6.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp.i9.i = icmp eq i16 %15, -1
  br i1 %cmp.i9.i, label %if.then.i12.i, label %if.then.i.if.end6.i14.i_crit_edge

if.then.i.if.end6.i14.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i14.i

if.then.i12.i:                                    ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sanity.i7.i) #11
  %16 = ptrtoint ptr %sanity.i7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %sanity.i7.i, align 4, !annotation !222
  %call2.i10.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 0, ptr noundef nonnull %sanity.i7.i) #11
  %17 = ptrtoint ptr %sanity.i7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sanity.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp3.i11.i = icmp eq i32 %18, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sanity.i7.i) #11
  br i1 %cmp3.i11.i, label %if.then.i12.i.get_pci_parity_status.exit19.i_crit_edge, label %if.then.i12.i.if.end6.i14.i_crit_edge

if.then.i12.i.if.end6.i14.i_crit_edge:            ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i14.i

if.then.i12.i.get_pci_parity_status.exit19.i_crit_edge: ; preds = %if.then.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pci_parity_status.exit19.i

if.end6.i14.i:                                    ; preds = %if.then.i12.i.if.end6.i14.i_crit_edge, %if.then.i.if.end6.i14.i_crit_edge
  %19 = ptrtoint ptr %status.i6.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %status.i6.i, align 2
  %21 = and i16 %20, -16128
  store i16 %21, ptr %status.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool9.not.i13.i = icmp eq i16 %21, 0
  br i1 %tobool9.not.i13.i, label %if.end6.i14.i.get_pci_parity_status.exit19.i_crit_edge, label %if.then10.i16.i

if.end6.i14.i.get_pci_parity_status.exit19.i_crit_edge: ; preds = %if.end6.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_pci_parity_status.exit19.i

if.then10.i16.i:                                  ; preds = %if.end6.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i15.i = call i32 @pci_write_config_word(ptr noundef nonnull %call4.i, i32 noundef 30, i16 noundef zeroext %21) #11
  br label %get_pci_parity_status.exit19.i

get_pci_parity_status.exit19.i:                   ; preds = %if.then10.i16.i, %if.end6.i14.i.get_pci_parity_status.exit19.i_crit_edge, %if.then.i12.i.get_pci_parity_status.exit19.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i6.i) #11
  br label %edac_pci_dev_parity_clear.exit

edac_pci_dev_parity_clear.exit:                   ; preds = %get_pci_parity_status.exit19.i, %get_pci_parity_status.exit.i.edac_pci_dev_parity_clear.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %header_type.i) #11
  %call.i = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call4.i) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %edac_pci_dev_parity_clear.exit.edac_pci_dev_parity_iterator.exit_crit_edge, label %edac_pci_dev_parity_clear.exit.while.body.i_crit_edge

edac_pci_dev_parity_clear.exit.while.body.i_crit_edge: ; preds = %edac_pci_dev_parity_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

edac_pci_dev_parity_clear.exit.edac_pci_dev_parity_iterator.exit_crit_edge: ; preds = %edac_pci_dev_parity_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %edac_pci_dev_parity_iterator.exit

edac_pci_dev_parity_iterator.exit:                ; preds = %edac_pci_dev_parity_clear.exit.edac_pci_dev_parity_iterator.exit_crit_edge, %entry.edac_pci_dev_parity_iterator.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_pci_handle_pe(ptr noundef %pci, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %counters = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counters, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %counters, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %counters, ptr %counters, i32 1, ptr elementtype(i32) %counters) #11, !srcloc !227
  %1 = load i32, ptr @edac_pci_log_pe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pci_idx = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 1
  %2 = ptrtoint ptr %pci_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pci_idx, align 4
  %ctl_name = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 8
  %4 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_name, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef %5, i32 noundef %3, ptr noundef %msg) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @edac_pci_do_parity_check()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_pci_handle_npe(ptr noundef %pci, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npe_count = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 14, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %npe_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %npe_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %npe_count, ptr %npe_count, i32 1, ptr elementtype(i32) %npe_count) #11, !srcloc !227
  %1 = load i32, ptr @edac_pci_log_npe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pci_idx = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 1
  %2 = ptrtoint ptr %pci_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pci_idx, align 4
  %ctl_name = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 8
  %4 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_name, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %3, ptr noundef %5, i32 noundef %3, ptr noundef %msg) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @edac_pci_do_parity_check()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edac_pci_release_main_kobj(ptr noundef %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @kfree(ptr noundef %kobj) #11
  tail call void @module_put(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_pci_dev_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %buffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_pci_dev_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %buffer, i32 noundef %count) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_pci_int_show(ptr nocapture noundef readonly %ptr, ptr nocapture noundef writeonly %buffer) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.36, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_pci_int_store(ptr nocapture noundef writeonly %ptr, ptr noundef %buffer, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %2)
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buffer, ptr noundef null, i32 noundef 0) #11
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edac_pci_instance_release(ptr noundef %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.50) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %add.ptr = getelementptr i8, ptr %kobj, i32 -244
  %1 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_pci_instance_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.instance_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %kobj, i32 -244
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edac_pci_instance_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buffer, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.instance_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %kobj, i32 -244
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @instance_pe_count_show(ptr noundef %pci, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %counters = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counters, i32 noundef 4) #11
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %counters, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.52, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @instance_npe_count_show(ptr noundef %pci, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %npe_count = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %pci, i32 0, i32 14, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %npe_count, i32 noundef 4) #11
  %0 = ptrtoint ptr %npe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %npe_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.52, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !93, !95, !97, !98, !100, !102, !103, !105, !107, !108, !110, !112, !113, !115, !116, !118, !119, !121, !123, !124, !125, !127, !129, !130, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !147, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 426, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @edac_pci_create_sysfs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @edac_pci_create_sysfs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 438, i32 54}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 440, i32 3}
!10 = !{ptr @edac_pci_create_sysfs._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @edac_pci_create_sysfs._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 458, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @edac_pci_remove_sysfs._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @edac_pci_remove_sysfs._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 470, i32 2}
!19 = !{ptr @edac_pci_remove_sysfs._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @edac_pci_remove_sysfs._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 643, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @edac_pci_do_parity_check._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @edac_pci_do_parity_check._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 662, i32 10}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 692, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @edac_pci_handle_pe._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @edac_pci_handle_pe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_edac_pci_handle_pe, !34, !"__ksymtab_edac_pci_handle_pe", i1 false, i1 false}
!34 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 702, i32 1}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 717, i32 3}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @edac_pci_handle_npe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @edac_pci_handle_npe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_edac_pci_handle_npe, !41, !"__ksymtab_edac_pci_handle_npe", i1 false, i1 false}
!41 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 727, i32 1}
!42 = !{ptr @__param_check_pci_errors, !43, !"__param_check_pci_errors", i1 false, i1 false}
!43 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 732, i32 1}
!44 = !{ptr @__UNIQUE_ID_check_pci_errorstype236, !43, !"__UNIQUE_ID_check_pci_errorstype236", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_check_pci_errors237, !46, !"__UNIQUE_ID_check_pci_errors237", i1 false, i1 false}
!46 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 733, i32 1}
!47 = !{ptr @__param_edac_pci_panic_on_pe, !48, !"__param_edac_pci_panic_on_pe", i1 false, i1 false}
!48 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 735, i32 1}
!49 = !{ptr @__UNIQUE_ID_edac_pci_panic_on_petype238, !48, !"__UNIQUE_ID_edac_pci_panic_on_petype238", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_edac_pci_panic_on_pe239, !51, !"__UNIQUE_ID_edac_pci_panic_on_pe239", i1 false, i1 false}
!51 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 736, i32 1}
!52 = !{ptr @check_pci_errors, !53, !"check_pci_errors", i1 false, i1 false}
!53 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 20, i32 12}
!54 = !{ptr @edac_pci_panic_on_pe, !55, !"edac_pci_panic_on_pe", i1 false, i1 false}
!55 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 21, i32 12}
!56 = distinct !{null, !57, !"edac_pci_poll_msec", i1 false, i1 false}
!57 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 24, i32 12}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 341, i32 2}
!60 = !{ptr @edac_pci_main_kobj_setup._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @edac_pci_main_kobj_setup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 357, i32 3}
!64 = !{ptr @edac_pci_main_kobj_setup._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @edac_pci_main_kobj_setup._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 364, i32 3}
!68 = !{ptr @edac_pci_main_kobj_setup._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @edac_pci_main_kobj_setup._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 372, i32 38}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 374, i32 3}
!74 = !{ptr @edac_pci_main_kobj_setup._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @edac_pci_main_kobj_setup._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 383, i32 2}
!78 = !{ptr @edac_pci_main_kobj_setup._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @edac_pci_main_kobj_setup._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @edac_pci_sysfs_refcount, !81, !"edac_pci_sysfs_refcount", i1 false, i1 false}
!81 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 30, i32 17}
!82 = !{ptr @edac_pci_top_main_kobj, !83, !"edac_pci_top_main_kobj", i1 false, i1 false}
!83 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 29, i32 24}
!84 = !{ptr @ktype_edac_pci_main_kobj, !85, !"ktype_edac_pci_main_kobj", i1 false, i1 false}
!85 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 327, i32 25}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 316, i32 2}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @edac_pci_release_main_kobj._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @edac_pci_release_main_kobj._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @edac_pci_sysfs_ops, !92, !"edac_pci_sysfs_ops", i1 false, i1 false}
!92 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 261, i32 31}
!93 = !{ptr @edac_pci_attr, !94, !"edac_pci_attr", i1 false, i1 false}
!94 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 295, i32 39}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 283, i32 1}
!97 = !{ptr @edac_pci_attr_check_pci_errors, !96, !"edac_pci_attr_check_pci_errors", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 217, i32 25}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 285, i32 1}
!102 = !{ptr @edac_pci_attr_edac_pci_log_pe, !101, !"edac_pci_attr_edac_pci_log_pe", i1 false, i1 false}
!103 = !{ptr @edac_pci_log_pe, !104, !"edac_pci_log_pe", i1 false, i1 false}
!104 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 22, i32 12}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 287, i32 1}
!107 = !{ptr @edac_pci_attr_edac_pci_log_npe, !106, !"edac_pci_attr_edac_pci_log_npe", i1 false, i1 false}
!108 = !{ptr @edac_pci_log_npe, !109, !"edac_pci_log_npe", i1 false, i1 false}
!109 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 23, i32 12}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 289, i32 1}
!112 = !{ptr @edac_pci_attr_edac_pci_panic_on_pe, !111, !"edac_pci_attr_edac_pci_panic_on_pe", i1 false, i1 false}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 291, i32 1}
!115 = !{ptr @edac_pci_attr_pci_parity_count, !114, !"edac_pci_attr_pci_parity_count", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 292, i32 1}
!118 = !{ptr @edac_pci_attr_pci_nonparity_count, !117, !"edac_pci_attr_pci_nonparity_count", i1 false, i1 false}
!119 = !{ptr @pci_nonparity_count, !120, !"pci_nonparity_count", i1 false, i1 false}
!120 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 27, i32 17}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 161, i32 2}
!123 = !{ptr @edac_pci_create_instance_kobj._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @edac_pci_create_instance_kobj._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 175, i32 32}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 177, i32 3}
!129 = !{ptr @edac_pci_create_instance_kobj._entry.44, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @edac_pci_create_instance_kobj._entry_ptr.46, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 183, i32 2}
!133 = !{ptr @edac_pci_create_instance_kobj._entry.47, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @edac_pci_create_instance_kobj._entry_ptr.49, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @ktype_pci_instance, !136, !"ktype_pci_instance", i1 false, i1 false}
!136 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 145, i32 25}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 78, i32 2}
!139 = !{ptr @edac_pci_instance_release._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @edac_pci_instance_release._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @pci_instance_ops, !142, !"pci_instance_ops", i1 false, i1 false}
!142 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 122, i32 31}
!143 = !{ptr @pci_instance_attr, !144, !"pci_instance_attr", i1 false, i1 false}
!144 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 138, i32 35}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 134, i32 1}
!147 = !{ptr @attr_instance_pe_count, !146, !"attr_instance_pe_count", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 61, i32 23}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 135, i32 1}
!152 = !{ptr @attr_instance_npe_count, !151, !"attr_instance_npe_count", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 200, i32 2}
!155 = !{ptr @edac_pci_unregister_sysfs_instance_kobj._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @edac_pci_unregister_sysfs_instance_kobj._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 409, i32 2}
!159 = !{ptr @edac_pci_main_kobj_teardown._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @edac_pci_main_kobj_teardown._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 416, i32 3}
!163 = !{ptr @edac_pci_main_kobj_teardown._entry.56, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @edac_pci_main_kobj_teardown._entry_ptr.58, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @pci_parity_count, !166, !"pci_parity_count", i1 false, i1 false}
!166 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 26, i32 17}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 546, i32 2}
!169 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @edac_pci_dev_parity_test._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @edac_pci_dev_parity_test._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 553, i32 4}
!174 = !{ptr @edac_pci_dev_parity_test._entry.61, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @edac_pci_dev_parity_test._entry_ptr.63, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 560, i32 4}
!178 = !{ptr @edac_pci_dev_parity_test._entry.64, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @edac_pci_dev_parity_test._entry_ptr.66, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 568, i32 4}
!182 = !{ptr @edac_pci_dev_parity_test._entry.67, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @edac_pci_dev_parity_test._entry_ptr.69, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 577, i32 2}
!186 = !{ptr @edac_pci_dev_parity_test._entry.70, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @edac_pci_dev_parity_test._entry_ptr.72, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 584, i32 3}
!190 = !{ptr @edac_pci_dev_parity_test._entry.73, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @edac_pci_dev_parity_test._entry_ptr.75, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 592, i32 5}
!194 = !{ptr @edac_pci_dev_parity_test._entry.76, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @edac_pci_dev_parity_test._entry_ptr.78, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 599, i32 5}
!198 = !{ptr @edac_pci_dev_parity_test._entry.79, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @edac_pci_dev_parity_test._entry_ptr.81, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/edac/edac_pci_sysfs.c", i32 607, i32 5}
!202 = !{ptr @edac_pci_dev_parity_test._entry.82, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @edac_pci_dev_parity_test._entry_ptr.84, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @__param_str_check_pci_errors, !43, !"__param_str_check_pci_errors", i1 false, i1 false}
!205 = !{ptr @__param_str_edac_pci_panic_on_pe, !48, !"__param_str_edac_pci_panic_on_pe", i1 false, i1 false}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{i64 2148442868}
!216 = !{i64 2148358153, i64 2148358185, i64 2148358214, i64 2148358248, i64 2148358279, i64 2148358302}
!217 = !{i64 2148443097}
!218 = !{i64 2148359898, i64 2148359924, i64 2148359953, i64 2148359987, i64 2148360018, i64 2148360041}
!219 = !{i64 2148445909}
!220 = !{i64 2148360618, i64 2148360650, i64 2148360679, i64 2148360713, i64 2148360744, i64 2148360767}
!221 = !{i64 2148446138}
!222 = !{!"auto-init"}
!223 = !{i64 761133, i64 761194}
!224 = !{i64 763865}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{i64 764150}
!227 = !{i64 2148357433, i64 2148357459, i64 2148357488, i64 2148357522, i64 2148357553, i64 2148357576}
