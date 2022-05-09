; ModuleID = '/llk/IR_all_yes/drivers/pci/endpoint/pci-ep-cfs.c_pt.bc'
source_filename = "../drivers/pci/endpoint/pci-ep-cfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_ep_cfs_add_epc_group\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ep_cfs_add_epc_group\09\09\09\09"
module asm "\09.long\09__crc_pci_ep_cfs_add_epc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_add_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_add_epc_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_add_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_ep_cfs_remove_epc_group\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ep_cfs_remove_epc_group\09\09\09\09"
module asm "\09.long\09__crc_pci_ep_cfs_remove_epc_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_remove_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_remove_epc_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_remove_epc_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_ep_cfs_add_epf_group\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ep_cfs_add_epf_group\09\09\09\09"
module asm "\09.long\09__crc_pci_ep_cfs_add_epf_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_add_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_add_epf_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_add_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_ep_cfs_remove_epf_group\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ep_cfs_remove_epf_group\09\09\09\09"
module asm "\09.long\09__crc_pci_ep_cfs_remove_epf_group\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ep_cfs_remove_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ep_cfs_remove_epf_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ep_cfs_remove_epf_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_epc_group = type { %struct.config_group, ptr, i8 }
%struct.pci_epf_group = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.delayed_work, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }

@pci_epc_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @pci_epc_item_ops, ptr null, ptr @pci_epc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@controllers_group = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pci_ep_cfs_add_epc_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to register configfs group for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_ep_cfs_add_epc_group\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pci/endpoint/pci-ep-cfs.c\00", [62 x i8] zeroinitializer }, align 32
@pci_ep_cfs_add_epc_group._entry_ptr = internal global ptr @pci_ep_cfs_add_epc_group._entry, section ".printk_index", align 4
@__kstrtab_pci_ep_cfs_add_epc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_add_epc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_add_epc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_add_epc_group to i32), ptr @__kstrtab_pci_ep_cfs_add_epc_group, ptr @__kstrtabns_pci_ep_cfs_add_epc_group }, section "___ksymtab+pci_ep_cfs_add_epc_group", align 4
@__kstrtab_pci_ep_cfs_remove_epc_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_remove_epc_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_remove_epc_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_remove_epc_group to i32), ptr @__kstrtab_pci_ep_cfs_remove_epc_group, ptr @__kstrtabns_pci_ep_cfs_remove_epc_group }, section "___ksymtab+pci_ep_cfs_remove_epc_group", align 4
@functions_group = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pci_epf_group_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @pci_epf_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_ep_cfs_add_epf_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013failed to register configfs group for %s function\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_ep_cfs_add_epf_group\00", [39 x i8] zeroinitializer }, align 32
@pci_ep_cfs_add_epf_group._entry_ptr = internal global ptr @pci_ep_cfs_add_epf_group._entry, section ".printk_index", align 4
@__kstrtab_pci_ep_cfs_add_epf_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_add_epf_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_add_epf_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_add_epf_group to i32), ptr @__kstrtab_pci_ep_cfs_add_epf_group, ptr @__kstrtabns_pci_ep_cfs_add_epf_group }, section "___ksymtab+pci_ep_cfs_add_epf_group", align 4
@__kstrtab_pci_ep_cfs_remove_epf_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ep_cfs_remove_epf_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ep_cfs_remove_epf_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ep_cfs_remove_epf_group to i32), ptr @__kstrtab_pci_ep_cfs_remove_epf_group, ptr @__kstrtabns_pci_ep_cfs_remove_epf_group }, section "___ksymtab+pci_ep_cfs_remove_epf_group", align 4
@__initcall__kmod_pci_ep_cfs__236_719_pci_ep_cfs_init6 = internal global ptr @pci_ep_cfs_init, section ".initcall6.init", align 4
@pci_ep_cfs_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"pci_ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @pci_ep_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_ep_cfs_subsys, i64 132), ptr getelementptr (i8, ptr @pci_ep_cfs_subsys, i64 132) }, ptr getelementptr (i8, ptr @pci_ep_cfs_subsys, i64 80), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 4, i8 0, i32 0, i32 0 } } }, [52 x i8] zeroinitializer }, align 32
@__exitcall_pci_ep_cfs_exit = internal global ptr @pci_ep_cfs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [39 x i8] c"pci_ep_cfs.description=PCI EP CONFIGFS\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [57 x i8] c"pci_ep_cfs.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"pci_ep_cfs.file=drivers/pci/endpoint/pci-ep-cfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [26 x i8] c"pci_ep_cfs.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pci_epc_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr null, ptr @pci_epc_epf_link, ptr @pci_epc_epf_unlink }, [20 x i8] zeroinitializer }, align 32
@pci_epc_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pci_epc_attr_start, ptr null], [24 x i8] zeroinitializer }, align 32
@pci_epc_epf_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epc_attr_start = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @pci_epc_start_show, ptr @pci_epc_start_store }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@pci_epc_start_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 189, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to start endpoint controller\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci_epc_start_store\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_epc_start_store._entry_ptr = internal global ptr @pci_epc_start_store._entry, section ".printk_index", align 4
@pci_epf_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @pci_epf_make, ptr null, ptr null, ptr @pci_epf_drop }, [44 x i8] zeroinitializer }, align 32
@functions_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @functions_mutex, i64 52), ptr getelementptr (i8, ptr @functions_mutex, i64 52) }, ptr @functions_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@functions_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pci_epf_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @pci_epf_ops, ptr @pci_epf_type_group_ops, ptr @pci_epf_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@pci_epf_make._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013failed to create endpoint function device\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_epf_make\00", [19 x i8] zeroinitializer }, align 32
@pci_epf_make._entry_ptr = internal global ptr @pci_epf_make._entry, section ".printk_index", align 4
@pci_epf_make.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&epf_group->cfs_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@pci_epf_make.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&epf_group->cfs_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"functions_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"functions_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"functions_idr.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@pci_epf_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @pci_epf_release, ptr @pci_epf_vepf_link, ptr @pci_epf_vepf_unlink }, [20 x i8] zeroinitializer }, align 32
@pci_epf_type_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @pci_epf_type_make, ptr null, ptr null, ptr @pci_epf_type_drop }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @pci_epf_attr_vendorid, ptr @pci_epf_attr_deviceid, ptr @pci_epf_attr_revid, ptr @pci_epf_attr_progif_code, ptr @pci_epf_attr_subclass_code, ptr @pci_epf_attr_baseclass_code, ptr @pci_epf_attr_cache_line_size, ptr @pci_epf_attr_subsys_vendor_id, ptr @pci_epf_attr_subsys_id, ptr @pci_epf_attr_interrupt_pin, ptr @pci_epf_attr_msi_interrupts, ptr @pci_epf_attr_msix_interrupts, ptr null], [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_vendorid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @pci_epf_vendorid_show, ptr @pci_epf_vendorid_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_deviceid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @pci_epf_deviceid_show, ptr @pci_epf_deviceid_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_revid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 420, ptr @pci_epf_revid_show, ptr @pci_epf_revid_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_progif_code = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 420, ptr @pci_epf_progif_code_show, ptr @pci_epf_progif_code_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_subclass_code = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @pci_epf_subclass_code_show, ptr @pci_epf_subclass_code_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_baseclass_code = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 420, ptr @pci_epf_baseclass_code_show, ptr @pci_epf_baseclass_code_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_cache_line_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.27, ptr null, i16 420, ptr @pci_epf_cache_line_size_show, ptr @pci_epf_cache_line_size_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_subsys_vendor_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.28, ptr null, i16 420, ptr @pci_epf_subsys_vendor_id_show, ptr @pci_epf_subsys_vendor_id_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_subsys_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.29, ptr null, i16 420, ptr @pci_epf_subsys_id_show, ptr @pci_epf_subsys_id_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_interrupt_pin = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.30, ptr null, i16 420, ptr @pci_epf_interrupt_pin_show, ptr @pci_epf_interrupt_pin_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_msi_interrupts = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.31, ptr null, i16 420, ptr @pci_epf_msi_interrupts_show, ptr @pci_epf_msi_interrupts_store }, [44 x i8] zeroinitializer }, align 32
@pci_epf_attr_msix_interrupts = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.32, ptr null, i16 420, ptr @pci_epf_msix_interrupts_show, ptr @pci_epf_msix_interrupts_store }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vendorid\00", [23 x i8] zeroinitializer }, align 32
@pci_epf_vendorid_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@pci_epf_vendorid_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"deviceid\00", [23 x i8] zeroinitializer }, align 32
@pci_epf_deviceid_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_deviceid_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"revid\00", [26 x i8] zeroinitializer }, align 32
@pci_epf_revid_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_revid_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"progif_code\00", [20 x i8] zeroinitializer }, align 32
@pci_epf_progif_code_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_progif_code_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"subclass_code\00", [18 x i8] zeroinitializer }, align 32
@pci_epf_subclass_code_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_subclass_code_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"baseclass_code\00", [17 x i8] zeroinitializer }, align 32
@pci_epf_baseclass_code_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_baseclass_code_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache_line_size\00", [16 x i8] zeroinitializer }, align 32
@pci_epf_cache_line_size_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_cache_line_size_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subsys_vendor_id\00", [47 x i8] zeroinitializer }, align 32
@pci_epf_subsys_vendor_id_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_subsys_vendor_id_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"subsys_id\00", [22 x i8] zeroinitializer }, align 32
@pci_epf_subsys_id_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_subsys_id_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interrupt_pin\00", [18 x i8] zeroinitializer }, align 32
@pci_epf_interrupt_pin_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_interrupt_pin_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi_interrupts\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msix_interrupts\00", [16 x i8] zeroinitializer }, align 32
@pci_epf_cfs_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to create 'primary' EPC interface\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_epf_cfs_work\00", [47 x i8] zeroinitializer }, align 32
@pci_epf_cfs_work._entry_ptr = internal global ptr @pci_epf_cfs_work._entry, section ".printk_index", align 4
@pci_epf_cfs_work._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013failed to create 'secondary' EPC interface\0A\00", [50 x i8] zeroinitializer }, align 32
@pci_epf_cfs_work._entry_ptr.37 = internal global ptr @pci_epf_cfs_work._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@pci_primary_epc_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @pci_primary_epc_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_primary_epc_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr null, ptr @pci_primary_epc_epf_link, ptr @pci_primary_epc_epf_unlink }, [20 x i8] zeroinitializer }, align 32
@pci_primary_epc_epf_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"secondary\00", [22 x i8] zeroinitializer }, align 32
@pci_secondary_epc_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @pci_secondary_epc_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_secondary_epc_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr null, ptr @pci_secondary_epc_epf_link, ptr @pci_secondary_epc_epf_unlink }, [20 x i8] zeroinitializer }, align 32
@pci_secondary_epc_epf_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_ep_cfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Error %d while registering subsystem %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_ep_cfs_init\00", [16 x i8] zeroinitializer }, align 32
@pci_ep_cfs_init._entry_ptr = internal global ptr @pci_ep_cfs_init._entry, section ".printk_index", align 4
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"functions\00", [22 x i8] zeroinitializer }, align 32
@pci_functions_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@pci_ep_cfs_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Error %d while registering functions group\0A\00", [50 x i8] zeroinitializer }, align 32
@pci_ep_cfs_init._entry_ptr.45 = internal global ptr @pci_ep_cfs_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"controllers\00", [20 x i8] zeroinitializer }, align 32
@pci_controllers_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@pci_ep_cfs_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.41, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Error %d while registering controllers group\0A\00", [48 x i8] zeroinitializer }, align 32
@pci_ep_cfs_init._entry_ptr.49 = internal global ptr @pci_ep_cfs_init._entry.47, section ".printk_index", align 4
@pci_ep_type = internal constant { %struct.config_item_type, [44 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pci_ep_cfs_subsys.su_mutex.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_ep_cfs_subsys.su_mutex\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"pci_epc_type\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 253, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"controllers_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 20, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 277, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"functions_group\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 19, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"pci_epf_group_type\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 625, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 637, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"pci_ep_cfs_subsys\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 665, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"pci_epc_item_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 248, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"pci_epc_attrs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 205, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"pci_epc_attr_start\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 203, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 200, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 189, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"pci_epf_group_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 620, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"functions_mutex\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"functions_idr\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"pci_epf_type\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 526, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 576, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 585, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 595, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 18, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 17, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"pci_epf_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 499, i32 40 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"pci_epf_type_group_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 521, i32 41 }
@___asan_gen_.169 = private unnamed_addr constant [14 x i8] c"pci_epf_attrs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 450, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"pci_epf_attr_vendorid\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"pci_epf_attr_deviceid\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"pci_epf_attr_revid\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"pci_epf_attr_progif_code\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"pci_epf_attr_subclass_code\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [28 x i8] c"pci_epf_attr_baseclass_code\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [29 x i8] c"pci_epf_attr_cache_line_size\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [30 x i8] c"pci_epf_attr_subsys_vendor_id\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [23 x i8] c"pci_epf_attr_subsys_id\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"pci_epf_attr_interrupt_pin\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"pci_epf_attr_msi_interrupts\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [29 x i8] c"pci_epf_attr_msix_interrupts\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 437, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 407, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 438, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 439, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 440, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 441, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 442, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 443, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 444, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 445, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 446, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 447, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 448, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 541, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 547, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 161, i32 49 }
@___asan_gen_.265 = private unnamed_addr constant [21 x i8] c"pci_primary_epc_type\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 151, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant [25 x i8] c"pci_primary_epc_item_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 146, i32 40 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 101, i32 51 }
@___asan_gen_.274 = private unnamed_addr constant [23 x i8] c"pci_secondary_epc_type\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 90, i32 38 }
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"pci_secondary_epc_item_ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 85, i32 40 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 684, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 689, i32 58 }
@___asan_gen_.292 = private unnamed_addr constant [19 x i8] c"pci_functions_type\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 653, i32 38 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 693, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 699, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant [21 x i8] c"pci_controllers_type\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 657, i32 38 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 703, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [12 x i8] c"pci_ep_type\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 661, i32 38 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [37 x i8] c"../drivers/pci/endpoint/pci-ep-cfs.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 672, i32 14 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pci_ep_cfs_exit, ptr @__initcall__kmod_pci_ep_cfs__236_719_pci_ep_cfs_init6, ptr @__ksymtab_pci_ep_cfs_add_epc_group, ptr @__ksymtab_pci_ep_cfs_add_epf_group, ptr @__ksymtab_pci_ep_cfs_remove_epc_group, ptr @__ksymtab_pci_ep_cfs_remove_epf_group, ptr @pci_ep_cfs_add_epc_group._entry, ptr @pci_ep_cfs_add_epc_group._entry_ptr, ptr @pci_ep_cfs_add_epf_group._entry, ptr @pci_ep_cfs_add_epf_group._entry_ptr, ptr @pci_ep_cfs_exit, ptr @pci_ep_cfs_init._entry, ptr @pci_ep_cfs_init._entry.43, ptr @pci_ep_cfs_init._entry.47, ptr @pci_ep_cfs_init._entry_ptr, ptr @pci_ep_cfs_init._entry_ptr.45, ptr @pci_ep_cfs_init._entry_ptr.49, ptr @pci_epc_start_store._entry, ptr @pci_epc_start_store._entry_ptr, ptr @pci_epf_cfs_work._entry, ptr @pci_epf_cfs_work._entry.35, ptr @pci_epf_cfs_work._entry_ptr, ptr @pci_epf_cfs_work._entry_ptr.37, ptr @pci_epf_make._entry, ptr @pci_epf_make._entry_ptr, ptr @pci_epc_type, ptr @controllers_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @functions_group, ptr @pci_epf_group_type, ptr @.str.3, ptr @.str.4, ptr @pci_ep_cfs_subsys, ptr @pci_epc_item_ops, ptr @pci_epc_attrs, ptr @pci_epc_attr_start, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @pci_epf_group_ops, ptr @functions_mutex, ptr @functions_idr, ptr @pci_epf_type, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pci_epf_make.__key, ptr @.str.14, ptr @pci_epf_make.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pci_epf_ops, ptr @pci_epf_type_group_ops, ptr @pci_epf_attrs, ptr @pci_epf_attr_vendorid, ptr @pci_epf_attr_deviceid, ptr @pci_epf_attr_revid, ptr @pci_epf_attr_progif_code, ptr @pci_epf_attr_subclass_code, ptr @pci_epf_attr_baseclass_code, ptr @pci_epf_attr_cache_line_size, ptr @pci_epf_attr_subsys_vendor_id, ptr @pci_epf_attr_subsys_id, ptr @pci_epf_attr_interrupt_pin, ptr @pci_epf_attr_msi_interrupts, ptr @pci_epf_attr_msix_interrupts, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @pci_primary_epc_type, ptr @pci_primary_epc_item_ops, ptr @.str.39, ptr @pci_secondary_epc_type, ptr @pci_secondary_epc_item_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @pci_functions_type, ptr @.str.44, ptr @.str.46, ptr @pci_controllers_type, ptr @.str.48, ptr @pci_ep_type, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controllers_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_cfs_add_epc_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functions_group to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_group_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_cfs_add_epf_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_cfs_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_attr_start to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epc_start_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functions_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functions_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_make._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_make.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_make.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_type_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_vendorid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_deviceid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_revid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_progif_code to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_subclass_code to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_baseclass_code to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_cache_line_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_subsys_vendor_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_subsys_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_interrupt_pin to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_msi_interrupts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_attr_msix_interrupts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_cfs_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_cfs_work._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_primary_epc_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_primary_epc_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_secondary_epc_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_secondary_epc_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_cfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_functions_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_cfs_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_controllers_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_cfs_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ep_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_ep_cfs_add_epc_group(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %entry
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @pci_epc_type) #6
  %1 = load ptr, ptr @controllers_group, align 4
  %call2 = tail call i32 @configfs_register_group(ptr noundef %1, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %err_register_group

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @pci_epc_get(ptr noundef %name) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7 to i32
  tail call void @configfs_unregister_group(ptr noundef nonnull %call7.i.i) #6
  br label %err_register_group

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %epc12 = getelementptr inbounds %struct.pci_epc_group, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %epc12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %epc12, align 8
  br label %cleanup

err_register_group:                               ; preds = %if.then9, %do.end
  %ret.0 = phi i32 [ %call2, %do.end ], [ %2, %if.then9 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %err

err:                                              ; preds = %err_register_group, %entry.err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_register_group ], [ -12, %entry.err_crit_edge ]
  %4 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end11
  %retval.0 = phi ptr [ %4, %err ], [ %call7.i.i, %if.end11 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_ep_cfs_remove_epc_group(ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %group, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %epc = getelementptr inbounds %struct.pci_epc_group, ptr %group, i32 0, i32 1
  %0 = ptrtoint ptr %epc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epc, align 4
  tail call void @pci_epc_put(ptr noundef %1) #6
  tail call void @configfs_unregister_group(ptr noundef nonnull %group) #6
  tail call void @kfree(ptr noundef nonnull %group) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_ep_cfs_add_epf_group(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @functions_group, align 4
  %call = tail call ptr @configfs_register_default_group(ptr noundef %0, ptr noundef %name, ptr noundef nonnull @pci_epf_group_type) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_register_default_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_ep_cfs_remove_epf_group(ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %group, null
  %cmp.i = icmp ugt ptr %group, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @configfs_unregister_default_group(ptr noundef nonnull %group) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_default_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_ep_cfs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @pci_ep_cfs_subsys) #6
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @pci_ep_cfs_subsys) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call, ptr noundef getelementptr inbounds (%struct.configfs_subsystem, ptr @pci_ep_cfs_subsys, i32 0, i32 0, i32 0, i32 1)) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @configfs_register_default_group(ptr noundef nonnull @pci_ep_cfs_subsys, ptr noundef nonnull @.str.42, ptr noundef nonnull @pci_functions_type) #6
  store ptr %call2, ptr @functions_group, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call2 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %0) #10
  br label %err_functions_group

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @configfs_register_default_group(ptr noundef nonnull @pci_ep_cfs_subsys, ptr noundef nonnull @.str.46, ptr noundef nonnull @pci_controllers_type) #6
  store ptr %call12, ptr @controllers_group, align 4
  %cmp.i30 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call12 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %1) #10
  %2 = load ptr, ptr @functions_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %2) #6
  br label %err_functions_group

err_functions_group:                              ; preds = %if.then14, %if.then4
  %ret.0 = phi i32 [ %0, %if.then4 ], [ %1, %if.then14 ]
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @pci_ep_cfs_subsys) #6
  br label %cleanup

cleanup:                                          ; preds = %err_functions_group, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.0, %err_functions_group ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_ep_cfs_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @controllers_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %0) #6
  %1 = load ptr, ptr @functions_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %1) #6
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @pci_ep_cfs_subsys) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epc_epf_link(ptr nocapture noundef readonly %epc_item, ptr nocapture noundef readonly %epf_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epc2 = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 1
  %0 = ptrtoint ptr %epc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epc2, align 4
  %epf3 = getelementptr inbounds %struct.pci_epf_group, ptr %epf_item, i32 0, i32 4
  %2 = ptrtoint ptr %epf3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf3, align 4
  %call4 = tail call i32 @pci_epc_add_epf(ptr noundef %1, ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @pci_epf_bind(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_epc_remove_epf(ptr noundef %1, ptr noundef %3, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epc_epf_unlink(ptr nocapture noundef readonly %epc_item, ptr nocapture noundef readonly %epf_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %start, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pci_epc_epf_unlink.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !225

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epc_epf_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %epc37 = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 1
  %2 = ptrtoint ptr %epc37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc37, align 4
  %epf38 = getelementptr inbounds %struct.pci_epf_group, ptr %epf_item, i32 0, i32 4
  %4 = ptrtoint ptr %epf38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epf38, align 4
  tail call void @pci_epf_unbind(ptr noundef %5) #6
  tail call void @pci_epc_remove_epf(ptr noundef %3, ptr noundef %5, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_add_epf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epf_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_remove_epf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epc_start_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.pci_epc_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %start, align 4, !range !224
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %2) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epc_start_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %start = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start) #6
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %start, align 1, !annotation !226
  %epc1 = getelementptr inbounds %struct.pci_epc_group, ptr %item, i32 0, i32 1
  %1 = ptrtoint ptr %epc1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epc1, align 4
  %call2 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %start) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %start, align 1, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_epc_stop(ptr noundef %2) #6
  %start4 = getelementptr inbounds %struct.pci_epc_group, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %start4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %start4, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @pci_epc_start(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %start, align 1, !range !224
  %start11 = getelementptr inbounds %struct.pci_epc_group, ptr %item, i32 0, i32 2
  %8 = ptrtoint ptr %start11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %start11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %len, %if.end9 ], [ %len, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pci_epf_make(ptr nocapture noundef readonly %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 348) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @functions_mutex, i32 noundef 0) #6
  %call2 = tail call i32 @idr_alloc(ptr noundef nonnull @functions_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #6
  tail call void @mutex_unlock(ptr noundef nonnull @functions_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.free_group_crit_edge, label %if.end4

if.end.free_group_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_group

if.end4:                                          ; preds = %if.end
  %index5 = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %index5, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @pci_epf_type) #6
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %4 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index5, align 8
  %call8 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %5) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end4.remove_idr_crit_edge, label %if.end11

if.end4.remove_idr_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_idr

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @pci_epf_create(ptr noundef nonnull %call8) #6
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  tail call void @kfree(ptr noundef nonnull %call8) #6
  br label %remove_idr

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %group18 = getelementptr inbounds %struct.pci_epf, ptr %call12, i32 0, i32 18
  %6 = ptrtoint ptr %group18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %group18, align 4
  %epf19 = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %epf19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %epf19, align 4
  tail call void @kfree(ptr noundef nonnull %call8) #6
  %cfs_work = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %cfs_work, i32 noundef 0) #6
  %8 = ptrtoint ptr %cfs_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %cfs_work, align 8
  %lockdep_map = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @pci_epf_make.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry28 = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry28, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pci_epf_cfs_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.pci_epf_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @pci_epf_make.__key.15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %cfs_work, i32 noundef 1) #6
  br label %cleanup

remove_idr:                                       ; preds = %do.end, %if.end4.remove_idr_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ -12, %if.end4.remove_idr_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @functions_mutex, i32 noundef 0) #6
  %13 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index5, align 8
  %call44 = tail call ptr @idr_remove(ptr noundef nonnull @functions_idr, i32 noundef %14) #6
  tail call void @mutex_unlock(ptr noundef nonnull @functions_mutex) #6
  br label %free_group

free_group:                                       ; preds = %remove_idr, %if.end.free_group_crit_edge
  %err.1 = phi i32 [ %err.0, %remove_idr ], [ %call2, %if.end.free_group_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %15 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_group, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %free_group ], [ %call7.i.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_cfs_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -240
  %primary_epc_group1.i = getelementptr i8, ptr %work, i32 -160
  tail call void @config_group_init_type_name(ptr noundef %primary_epc_group1.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @pci_primary_epc_type) #6
  %call.i = tail call i32 @configfs_register_group(ptr noundef %add.ptr, ptr noundef %primary_epc_group1.i) #6
  %cmp.i = icmp ugt ptr %primary_epc_group1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %secondary_epc_group1.i = getelementptr i8, ptr %work, i32 -80
  tail call void @config_group_init_type_name(ptr noundef %secondary_epc_group1.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @pci_secondary_epc_type) #6
  %call.i16 = tail call i32 @configfs_register_group(ptr noundef %add.ptr, ptr noundef %secondary_epc_group1.i) #6
  %cmp.i17 = icmp ugt ptr %secondary_epc_group1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.33, %entry.cleanup.sink.split_crit_edge ], [ @.str.36, %if.end.cleanup.sink.split_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.36.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @functions_mutex, i32 noundef 0) #6
  %index = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call1 = tail call ptr @idr_remove(ptr noundef nonnull @functions_idr, i32 noundef %1) #6
  tail call void @mutex_unlock(ptr noundef nonnull @functions_mutex) #6
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf, align 4
  tail call void @pci_epf_destroy(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %item) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_vepf_link(ptr nocapture noundef readonly %epf_pf_item, ptr nocapture noundef readonly %epf_vf_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %epf_pf_item, i32 0, i32 4
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  %epf2 = getelementptr inbounds %struct.pci_epf_group, ptr %epf_vf_item, i32 0, i32 4
  %2 = ptrtoint ptr %epf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf2, align 4
  %call3 = tail call i32 @pci_epf_add_vepf(ptr noundef %1, ptr noundef %3) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_vepf_unlink(ptr nocapture noundef readonly %epf_pf_item, ptr nocapture noundef readonly %epf_vf_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %epf_pf_item, i32 0, i32 4
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  %epf2 = getelementptr inbounds %struct.pci_epf_group, ptr %epf_vf_item, i32 0, i32 4
  %2 = ptrtoint ptr %epf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf2, align 4
  tail call void @pci_epf_remove_vepf(ptr noundef %1, ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epf_add_vepf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_remove_vepf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pci_epf_type_make(ptr noundef %group, ptr nocapture noundef readnone %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %group, i32 0, i32 4
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  %call1 = tail call ptr @pci_epf_type_add_cfs(ptr noundef %1, ptr noundef %group) #6
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_type_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_type_add_cfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_vendorid_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_vendorid_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_vendorid_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 407, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv = zext i16 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_vendorid_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_vendorid_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_vendorid_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 408, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_deviceid_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_deviceid_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_deviceid_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 410, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %deviceid = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %deviceid, align 2
  %conv = zext i16 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_deviceid_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_deviceid_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_deviceid_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 411, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %deviceid = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %deviceid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %deviceid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_revid_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_revid_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_revid_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 413, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %revid = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revid, align 4
  %conv = zext i8 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_revid_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_revid_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_revid_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 414, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %revid = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %revid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %revid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_progif_code_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_progif_code_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_progif_code_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %progif_code = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %progif_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %progif_code, align 1
  %conv = zext i8 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_progif_code_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_progif_code_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_progif_code_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 417, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %progif_code = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %progif_code to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %progif_code, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_subclass_code_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_subclass_code_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_subclass_code_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 419, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %subclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %subclass_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %subclass_code, align 2
  %conv = zext i8 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_subclass_code_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_subclass_code_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_subclass_code_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 420, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %subclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %subclass_code to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %subclass_code, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_baseclass_code_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_baseclass_code_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_baseclass_code_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 422, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %baseclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %baseclass_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %baseclass_code, align 1
  %conv = zext i8 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_baseclass_code_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_baseclass_code_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_baseclass_code_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 423, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %baseclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %baseclass_code to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %baseclass_code, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_cache_line_size_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_cache_line_size_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_cache_line_size_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cache_line_size = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cache_line_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_line_size, align 4
  %conv = zext i8 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_cache_line_size_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_cache_line_size_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_cache_line_size_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 426, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %cache_line_size = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %cache_line_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %cache_line_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_vendor_id_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_subsys_vendor_id_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_subsys_vendor_id_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 428, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %subsys_vendor_id = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %subsys_vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsys_vendor_id, align 2
  %conv = zext i16 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_vendor_id_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_subsys_vendor_id_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_subsys_vendor_id_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 429, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %subsys_vendor_id = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %subsys_vendor_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %subsys_vendor_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_id_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_subsys_id_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_subsys_id_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %subsys_id = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %subsys_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsys_id, align 4
  %conv = zext i16 %5 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_subsys_id_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_subsys_id_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_subsys_id_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 432, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %subsys_id = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %subsys_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %subsys_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_interrupt_pin_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @pci_epf_interrupt_pin_show.__already_done, align 1
  br i1 %.b46, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_interrupt_pin_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 434, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_pin = getelementptr inbounds %struct.pci_epf_header, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %interrupt_pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interrupt_pin, align 4
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.21, i32 noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_interrupt_pin_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %epf1 = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epf1, align 4
  %header = getelementptr inbounds %struct.pci_epf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @pci_epf_interrupt_pin_store.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !225

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_epf_interrupt_pin_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 435, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call41 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header, align 4
  %interrupt_pin = getelementptr inbounds %struct.pci_epf_header, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %interrupt_pin to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %interrupt_pin, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end43 ], [ -22, %if.then ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_msi_interrupts_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  %msi_interrupts = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %msi_interrupts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msi_interrupts, align 8
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_msi_interrupts_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !226
  %call = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %3 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %epf, align 4
  %msi_interrupts = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %msi_interrupts to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %msi_interrupts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_msix_interrupts_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf, align 4
  %msix_interrupts = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %msix_interrupts to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msix_interrupts, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_msix_interrupts_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !226
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %epf = getelementptr inbounds %struct.pci_epf_group, ptr %item, i32 0, i32 4
  %3 = ptrtoint ptr %epf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %epf, align 4
  %msix_interrupts = getelementptr inbounds %struct.pci_epf, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %msix_interrupts to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %2, ptr %msix_interrupts, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_primary_epc_epf_link(ptr nocapture noundef readonly %epf_item, ptr nocapture noundef readonly %epc_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %epf_item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %epc2 = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 1
  %2 = ptrtoint ptr %epc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc2, align 4
  %epf3 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %epf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epf3, align 4
  %call4 = tail call i32 @pci_epc_add_epf(ptr noundef %3, ptr noundef %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @pci_epf_bind(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_epc_remove_epf(ptr noundef %3, ptr noundef %5, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_primary_epc_epf_unlink(ptr nocapture noundef readonly %epc_item, ptr nocapture noundef readonly %epf_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %epf_item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %start = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 2
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %start, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pci_primary_epc_epf_unlink.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !225

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_primary_epc_epf_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %epc37 = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 1
  %4 = ptrtoint ptr %epc37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epc37, align 4
  %epf38 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %epf38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %epf38, align 4
  tail call void @pci_epf_unbind(ptr noundef %7) #6
  tail call void @pci_epc_remove_epf(ptr noundef %5, ptr noundef %7, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_secondary_epc_epf_link(ptr nocapture noundef readonly %epf_item, ptr nocapture noundef readonly %epc_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %epf_item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %epc2 = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 1
  %2 = ptrtoint ptr %epc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc2, align 4
  %epf3 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %epf3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epf3, align 4
  %call4 = tail call i32 @pci_epc_add_epf(ptr noundef %3, ptr noundef %5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @pci_epf_bind(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_epc_remove_epf(ptr noundef %3, ptr noundef %5, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_secondary_epc_epf_unlink(ptr nocapture noundef readonly %epc_item, ptr nocapture noundef readonly %epf_item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %epf_item, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %start = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 2
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %start, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pci_secondary_epc_epf_unlink.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !225

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pci_secondary_epc_epf_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %epc37 = getelementptr inbounds %struct.pci_epc_group, ptr %epc_item, i32 0, i32 1
  %4 = ptrtoint ptr %epc37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epc37, align 4
  %epf38 = getelementptr inbounds %struct.pci_epf_group, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %epf38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %epf38, align 4
  tail call void @pci_epf_unbind(ptr noundef %7) #6
  tail call void @pci_epc_remove_epf(ptr noundef %5, ptr noundef %7, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !50, !51, !52, !53, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93, !95, !96, !98, !100, !102, !103, !105, !107, !109, !110, !112, !114, !116, !117, !119, !121, !123, !124, !126, !128, !130, !131, !133, !135, !137, !138, !140, !142, !144, !145, !147, !149, !151, !152, !154, !156, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !191, !192, !194, !196, !197, !198, !200, !202, !203, !204, !206, !208, !210, !211, !213}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 277, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pci_ep_cfs_add_epc_group._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pci_ep_cfs_add_epc_group._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_pci_ep_cfs_add_epc_group, !7, !"__ksymtab_pci_ep_cfs_add_epc_group", i1 false, i1 false}
!7 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 300, i32 1}
!8 = !{ptr @__ksymtab_pci_ep_cfs_remove_epc_group, !9, !"__ksymtab_pci_ep_cfs_remove_epc_group", i1 false, i1 false}
!9 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 314, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 637, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pci_ep_cfs_add_epf_group._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @pci_ep_cfs_add_epf_group._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_pci_ep_cfs_add_epf_group, !16, !"__ksymtab_pci_ep_cfs_add_epf_group", i1 false, i1 false}
!16 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 642, i32 1}
!17 = !{ptr @__ksymtab_pci_ep_cfs_remove_epf_group, !18, !"__ksymtab_pci_ep_cfs_remove_epf_group", i1 false, i1 false}
!18 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 651, i32 1}
!19 = !{ptr @__initcall__kmod_pci_ep_cfs__236_719_pci_ep_cfs_init6, !20, !"__initcall__kmod_pci_ep_cfs__236_719_pci_ep_cfs_init6", i1 false, i1 false}
!20 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 719, i32 1}
!21 = !{ptr @__exitcall_pci_ep_cfs_exit, !22, !"__exitcall_pci_ep_cfs_exit", i1 false, i1 false}
!22 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 727, i32 1}
!23 = !{ptr @__UNIQUE_ID_description237, !24, !"__UNIQUE_ID_description237", i1 false, i1 false}
!24 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 729, i32 1}
!25 = !{ptr @__UNIQUE_ID_author238, !26, !"__UNIQUE_ID_author238", i1 false, i1 false}
!26 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 730, i32 1}
!27 = !{ptr @__UNIQUE_ID_file239, !28, !"__UNIQUE_ID_file239", i1 false, i1 false}
!28 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 731, i32 1}
!29 = !{ptr @__UNIQUE_ID_license240, !28, !"__UNIQUE_ID_license240", i1 false, i1 false}
!30 = !{ptr @functions_group, !31, !"functions_group", i1 false, i1 false}
!31 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 19, i32 29}
!32 = !{ptr @controllers_group, !33, !"controllers_group", i1 false, i1 false}
!33 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 20, i32 29}
!34 = !{ptr @pci_epc_type, !35, !"pci_epc_type", i1 false, i1 false}
!35 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 253, i32 38}
!36 = !{ptr @pci_epc_item_ops, !37, !"pci_epc_item_ops", i1 false, i1 false}
!37 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 248, i32 40}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 240, i32 2}
!40 = !{ptr @pci_epc_attrs, !41, !"pci_epc_attrs", i1 false, i1 false}
!41 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 205, i32 35}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 203, i32 1}
!44 = !{ptr @pci_epc_attr_start, !43, !"pci_epc_attr_start", i1 false, i1 false}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 200, i32 26}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 189, i32 3}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pci_epc_start_store._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @pci_epc_start_store._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @pci_epf_group_type, !55, !"pci_epf_group_type", i1 false, i1 false}
!55 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 625, i32 38}
!56 = !{ptr @pci_epf_group_ops, !57, !"pci_epf_group_ops", i1 false, i1 false}
!57 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 620, i32 41}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 576, i32 35}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 585, i32 3}
!62 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pci_epf_make._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @pci_epf_make._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @pci_epf_make.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 595, i32 2}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pci_epf_make.__key.15, !66, !"__key", i1 false, i1 false}
!69 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 18, i32 8}
!72 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @functions_mutex, !71, !"functions_mutex", i1 false, i1 false}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 17, i32 8}
!76 = !{ptr @functions_idr, !75, !"functions_idr", i1 false, i1 false}
!77 = !{ptr @pci_epf_type, !78, !"pci_epf_type", i1 false, i1 false}
!78 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 526, i32 38}
!79 = !{ptr @pci_epf_ops, !80, !"pci_epf_ops", i1 false, i1 false}
!80 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 499, i32 40}
!81 = !{ptr @pci_epf_type_group_ops, !82, !"pci_epf_type_group_ops", i1 false, i1 false}
!82 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 521, i32 41}
!83 = !{ptr @pci_epf_attrs, !84, !"pci_epf_attrs", i1 false, i1 false}
!84 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 450, i32 35}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 437, i32 1}
!87 = !{ptr @pci_epf_attr_vendorid, !86, !"pci_epf_attr_vendorid", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 407, i32 1}
!90 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 408, i32 1}
!93 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 438, i32 1}
!95 = !{ptr @pci_epf_attr_deviceid, !94, !"pci_epf_attr_deviceid", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 410, i32 1}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 411, i32 1}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 439, i32 1}
!102 = !{ptr @pci_epf_attr_revid, !101, !"pci_epf_attr_revid", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 413, i32 1}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 414, i32 1}
!107 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 440, i32 1}
!109 = !{ptr @pci_epf_attr_progif_code, !108, !"pci_epf_attr_progif_code", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 416, i32 1}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 417, i32 1}
!114 = !{ptr @.str.25, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 441, i32 1}
!116 = !{ptr @pci_epf_attr_subclass_code, !115, !"pci_epf_attr_subclass_code", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 419, i32 1}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 420, i32 1}
!121 = !{ptr @.str.26, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 442, i32 1}
!123 = !{ptr @pci_epf_attr_baseclass_code, !122, !"pci_epf_attr_baseclass_code", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 422, i32 1}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 423, i32 1}
!128 = !{ptr @.str.27, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 443, i32 1}
!130 = !{ptr @pci_epf_attr_cache_line_size, !129, !"pci_epf_attr_cache_line_size", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 425, i32 1}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 426, i32 1}
!135 = !{ptr @.str.28, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 444, i32 1}
!137 = !{ptr @pci_epf_attr_subsys_vendor_id, !136, !"pci_epf_attr_subsys_vendor_id", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 428, i32 1}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 429, i32 1}
!142 = !{ptr @.str.29, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 445, i32 1}
!144 = !{ptr @pci_epf_attr_subsys_id, !143, !"pci_epf_attr_subsys_id", i1 false, i1 false}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 431, i32 1}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 432, i32 1}
!149 = !{ptr @.str.30, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 446, i32 1}
!151 = !{ptr @pci_epf_attr_interrupt_pin, !150, !"pci_epf_attr_interrupt_pin", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 434, i32 1}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 435, i32 1}
!156 = !{ptr @.str.31, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 447, i32 1}
!158 = !{ptr @pci_epf_attr_msi_interrupts, !157, !"pci_epf_attr_msi_interrupts", i1 false, i1 false}
!159 = !{ptr @.str.32, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 448, i32 1}
!161 = !{ptr @pci_epf_attr_msix_interrupts, !160, !"pci_epf_attr_msix_interrupts", i1 false, i1 false}
!162 = !{ptr @.str.33, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 541, i32 3}
!164 = !{ptr @.str.34, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @pci_epf_cfs_work._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @pci_epf_cfs_work._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.36, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 547, i32 3}
!169 = !{ptr @pci_epf_cfs_work._entry.35, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @pci_epf_cfs_work._entry_ptr.37, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.38, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 161, i32 49}
!173 = !{ptr @pci_primary_epc_type, !174, !"pci_primary_epc_type", i1 false, i1 false}
!174 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 151, i32 38}
!175 = !{ptr @pci_primary_epc_item_ops, !176, !"pci_primary_epc_item_ops", i1 false, i1 false}
!176 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 146, i32 40}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 138, i32 2}
!179 = !{ptr @.str.39, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 101, i32 51}
!181 = !{ptr @pci_secondary_epc_type, !182, !"pci_secondary_epc_type", i1 false, i1 false}
!182 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 90, i32 38}
!183 = !{ptr @pci_secondary_epc_item_ops, !184, !"pci_secondary_epc_item_ops", i1 false, i1 false}
!184 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 85, i32 40}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 77, i32 2}
!187 = !{ptr @.str.40, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 684, i32 3}
!189 = !{ptr @.str.41, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @pci_ep_cfs_init._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @pci_ep_cfs_init._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.42, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 689, i32 58}
!194 = !{ptr @.str.44, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 693, i32 3}
!196 = !{ptr @pci_ep_cfs_init._entry.43, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @pci_ep_cfs_init._entry_ptr.45, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.46, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 699, i32 41}
!200 = !{ptr @.str.48, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 703, i32 3}
!202 = !{ptr @pci_ep_cfs_init._entry.47, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @pci_ep_cfs_init._entry_ptr.49, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @pci_functions_type, !205, !"pci_functions_type", i1 false, i1 false}
!205 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 653, i32 38}
!206 = !{ptr @pci_controllers_type, !207, !"pci_controllers_type", i1 false, i1 false}
!207 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 657, i32 38}
!208 = !{ptr @.str.50, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 672, i32 14}
!210 = !{ptr @.str.51, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @pci_ep_cfs_subsys, !212, !"pci_ep_cfs_subsys", i1 false, i1 false}
!212 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 665, i32 34}
!213 = !{ptr @pci_ep_type, !214, !"pci_ep_type", i1 false, i1 false}
!214 = !{!"../drivers/pci/endpoint/pci-ep-cfs.c", i32 661, i32 38}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{i8 0, i8 2}
!225 = !{!"branch_weights", i32 2000, i32 1}
!226 = !{!"auto-init"}
