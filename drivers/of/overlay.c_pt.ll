; ModuleID = '/llk/IR_all_yes/drivers/of/overlay.c_pt.bc'
source_filename = "../drivers/of/overlay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_overlay_notifier_register\22, \22a\22\09"
module asm "\09.weak\09__crc_of_overlay_notifier_register\09\09\09\09"
module asm "\09.long\09__crc_of_overlay_notifier_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_overlay_notifier_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_of_overlay_notifier_unregister\09\09\09\09"
module asm "\09.long\09__crc_of_overlay_notifier_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_notifier_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_overlay_fdt_apply\22, \22a\22\09"
module asm "\09.weak\09__crc_of_overlay_fdt_apply\09\09\09\09"
module asm "\09.long\09__crc_of_overlay_fdt_apply\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_fdt_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_fdt_apply\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_fdt_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_overlay_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_of_overlay_remove\09\09\09\09"
module asm "\09.long\09__crc_of_overlay_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_remove\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_overlay_remove_all\22, \22a\22\09"
module asm "\09.weak\09__crc_of_overlay_remove_all\09\09\09\09"
module asm "\09.long\09__crc_of_overlay_remove_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_remove_all:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_remove_all\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_remove_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_overlay_notify_data = type { ptr, ptr }
%struct.overlay_changeset = type { i32, %struct.list_head, ptr, ptr, i32, ptr, i8, %struct.of_changeset }
%struct.of_changeset = type { %struct.list_head }
%struct.fragment = type { ptr, ptr }
%struct.of_changeset_entry = type { %struct.list_head, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.target = type { ptr, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }

@of_overlay_phandle_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_overlay_phandle_mutex, i64 52), ptr getelementptr (i8, ptr @of_overlay_phandle_mutex, i64 52) }, ptr @of_overlay_phandle_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@overlay_notify_chain = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @overlay_notify_chain, i64 56), ptr getelementptr (i8, ptr @overlay_notify_chain, i64 56) }, ptr @overlay_notify_chain, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_of_overlay_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_notifier_register to i32), ptr @__kstrtab_of_overlay_notifier_register, ptr @__kstrtabns_of_overlay_notifier_register }, section "___ksymtab_gpl+of_overlay_notifier_register", align 4
@__kstrtab_of_overlay_notifier_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_notifier_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_notifier_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_notifier_unregister to i32), ptr @__kstrtab_of_overlay_notifier_unregister, ptr @__kstrtabns_of_overlay_notifier_unregister }, section "___ksymtab_gpl+of_overlay_notifier_unregister", align 4
@of_overlay_fdt_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013OF: overlay: Invalid overlay_fdt header\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of_overlay_fdt_apply\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/of/overlay.c\00", [43 x i8] zeroinitializer }, align 32
@of_overlay_fdt_apply._entry_ptr = internal global ptr @of_overlay_fdt_apply._entry, section ".printk_index", align 4
@of_overlay_fdt_apply._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013OF: overlay: unable to unflatten overlay_fdt\0A\00", [48 x i8] zeroinitializer }, align 32
@of_overlay_fdt_apply._entry_ptr.5 = internal global ptr @of_overlay_fdt_apply._entry.3, section ".printk_index", align 4
@__kstrtab_of_overlay_fdt_apply = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_fdt_apply = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_fdt_apply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_fdt_apply to i32), ptr @__kstrtab_of_overlay_fdt_apply, ptr @__kstrtabns_of_overlay_fdt_apply }, section "___ksymtab_gpl+of_overlay_fdt_apply", align 4
@of_overlay_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013OF: overlay: suspect devicetree state, refuse to remove overlay\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_overlay_remove\00", [46 x i8] zeroinitializer }, align 32
@of_overlay_remove._entry_ptr = internal global ptr @of_overlay_remove._entry, section ".printk_index", align 4
@of_mutex = external dso_local global %struct.mutex, align 4
@ovcs_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.100, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@of_overlay_remove._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013OF: overlay: remove: Could not find overlay #%d\0A\00", [45 x i8] zeroinitializer }, align 32
@of_overlay_remove._entry_ptr.10 = internal global ptr @of_overlay_remove._entry.8, section ".printk_index", align 4
@of_overlay_remove._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013OF: overlay: overlay changeset pre-remove notify error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@of_overlay_remove._entry_ptr.13 = internal global ptr @of_overlay_remove._entry.11, section ".printk_index", align 4
@devicetree_state_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@of_overlay_remove._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013OF: overlay: overlay remove changeset entry notify error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@of_overlay_remove._entry_ptr.16 = internal global ptr @of_overlay_remove._entry.14, section ".printk_index", align 4
@of_overlay_remove._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013OF: overlay: overlay changeset post-remove notify error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@of_overlay_remove._entry_ptr.19 = internal global ptr @of_overlay_remove._entry.17, section ".printk_index", align 4
@of_overlay_remove.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.7, ptr @.str.2, ptr @.str.21, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() err=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"OF: overlay: %s() err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_of_overlay_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_remove to i32), ptr @__kstrtab_of_overlay_remove, ptr @__kstrtabns_of_overlay_remove }, section "___ksymtab_gpl+of_overlay_remove", align 4
@ovcs_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ovcs_list, ptr @ovcs_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_of_overlay_remove_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_remove_all = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_remove_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_remove_all to i32), ptr @__kstrtab_of_overlay_remove_all, ptr @__kstrtabns_of_overlay_remove_all }, section "___ksymtab_gpl+of_overlay_remove_all", align 4
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_overlay_phandle_mutex.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_overlay_phandle_mutex\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(overlay_notify_chain).rwsem.wait_lock\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(overlay_notify_chain).rwsem\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@of_overlay_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013OF: overlay: devicetree state suspect, refuse to apply overlay\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"of_overlay_apply\00", [47 x i8] zeroinitializer }, align 32
@of_overlay_apply._entry_ptr = internal global ptr @of_overlay_apply._entry, section ".printk_index", align 4
@of_overlay_apply._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013OF: overlay: overlay changeset pre-apply notify error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@of_overlay_apply._entry_ptr.31 = internal global ptr @of_overlay_apply._entry.29, section ".printk_index", align 4
@of_overlay_apply.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"overlay changeset revert error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"OF: overlay: overlay changeset revert error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@of_overlay_apply._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013OF: overlay: overlay apply changeset entry notify error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@of_overlay_apply._entry_ptr.36 = internal global ptr @of_overlay_apply._entry.34, section ".printk_index", align 4
@of_overlay_apply._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013OF: overlay: overlay changeset post-apply notify error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@of_overlay_apply._entry_ptr.39 = internal global ptr @of_overlay_apply._entry.37, section ".printk_index", align 4
@of_overlay_apply.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.28, ptr @.str.2, ptr @.str.21, i8 0, i8 -3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@init_overlay_changeset.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"init_overlay_changeset\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() tree is not dynamic\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"OF: overlay: %s() tree is not dynamic\0A\00", [57 x i8] zeroinitializer }, align 32
@init_overlay_changeset.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() tree is not detached\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"OF: overlay: %s() tree is not detached\0A\00", [56 x i8] zeroinitializer }, align 32
@init_overlay_changeset.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.40, ptr @.str.2, ptr @.str.45, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() tree is not root\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"OF: overlay: %s() tree is not root\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__overlay__\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__symbols__\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"/__symbols__\00", [19 x i8] zeroinitializer }, align 32
@init_overlay_changeset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013OF: overlay: symbols in overlay, but not in live tree\0A\00", [39 x i8] zeroinitializer }, align 32
@init_overlay_changeset._entry_ptr = internal global ptr @init_overlay_changeset._entry, section ".printk_index", align 4
@init_overlay_changeset._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013OF: overlay: no fragments or symbols in overlay\0A\00", [45 x i8] zeroinitializer }, align 32
@init_overlay_changeset._entry_ptr.53 = internal global ptr @init_overlay_changeset._entry.51, section ".printk_index", align 4
@init_overlay_changeset._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.40, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013OF: overlay: %s() failed, ret = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@init_overlay_changeset._entry_ptr.56 = internal global ptr @init_overlay_changeset._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@find_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013OF: overlay: find target, node: %pOF, phandle 0x%x not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"find_target\00", [20 x i8] zeroinitializer }, align 32
@find_target._entry_ptr = internal global ptr @find_target._entry, section ".printk_index", align 4
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"target-path\00", [20 x i8] zeroinitializer }, align 32
@find_target._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013OF: overlay: find target, node: %pOF, path '%s' not found\0A\00", [35 x i8] zeroinitializer }, align 32
@find_target._entry_ptr.63 = internal global ptr @find_target._entry.61, section ".printk_index", align 4
@find_target._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013OF: overlay: find target, node: %pOF, no target property\0A\00", [36 x i8] zeroinitializer }, align 32
@find_target._entry_ptr.66 = internal global ptr @find_target._entry.64, section ".printk_index", align 4
@build_changeset.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"build_changeset\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fragment apply failed '%pOF'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OF: overlay: fragment apply failed '%pOF'\0A\00", [53 x i8] zeroinitializer }, align 32
@build_changeset.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.67, ptr @.str.2, ptr @.str.70, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"symbols fragment apply failed '%pOF'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"OF: overlay: symbols fragment apply failed '%pOF'\0A\00", [45 x i8] zeroinitializer }, align 32
@build_changeset_next_level.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"build_changeset_next_level\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to apply prop @%pOF/%s, err=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"OF: overlay: Failed to apply prop @%pOF/%s, err=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@build_changeset_next_level.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.72, ptr @.str.2, ptr @.str.75, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to apply node @%pOF/%pOFn, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"OF: overlay: Failed to apply node @%pOF/%pOFn, err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phandle\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linux,phandle\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#address-cells\00", [17 x i8] zeroinitializer }, align 32
@add_changeset_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013OF: overlay: ERROR: changing value of #address-cells is not allowed in %pOF\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_changeset_property\00", [41 x i8] zeroinitializer }, align 32
@add_changeset_property._entry_ptr = internal global ptr @add_changeset_property._entry, section ".printk_index", align 4
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#size-cells\00", [20 x i8] zeroinitializer }, align 32
@add_changeset_property._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.82, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013OF: overlay: ERROR: changing value of #size-cells is not allowed in %pOF\0A\00", [52 x i8] zeroinitializer }, align 32
@add_changeset_property._entry_ptr.86 = internal global ptr @add_changeset_property._entry.84, section ".printk_index", align 4
@add_changeset_property._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.82, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013OF: overlay: WARNING: memory leak will occur if overlay removed, property: %pOF/%s\0A\00", [42 x i8] zeroinitializer }, align 32
@add_changeset_property._entry_ptr.89 = internal global ptr @add_changeset_property._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__overlay__/\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<NULL>\00", [25 x i8] zeroinitializer }, align 32
@build_changeset_symbols_node.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"build_changeset_symbols_node\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to apply symbols prop @%pOF/%s, err=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"OF: overlay: Failed to apply symbols prop @%pOF/%s, err=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@find_dup_cset_node_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013OF: overlay: ERROR: multiple fragments add and/or delete node %pOF\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"find_dup_cset_node_entry\00", [39 x i8] zeroinitializer }, align 32
@find_dup_cset_node_entry._entry_ptr = internal global ptr @find_dup_cset_node_entry._entry, section ".printk_index", align 4
@find_dup_cset_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013OF: overlay: ERROR: multiple fragments add, update, and/or delete property %pOF/%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find_dup_cset_prop\00", [45 x i8] zeroinitializer }, align 32
@find_dup_cset_prop._entry_ptr = internal global ptr @find_dup_cset_prop._entry, section ".printk_index", align 4
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ovcs_idr.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@overlay_removal_is_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013OF: overlay: overlay #%d is not topmost\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"overlay_removal_is_ok\00", [42 x i8] zeroinitializer }, align 32
@overlay_removal_is_ok._entry_ptr = internal global ptr @overlay_removal_is_ok._entry, section ".printk_index", align 4
@node_overlaps_later_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013OF: overlay: %s: #%d overlaps with #%d @%pOF\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"node_overlaps_later_cs\00", [41 x i8] zeroinitializer }, align 32
@node_overlaps_later_cs._entry_ptr = internal global ptr @node_overlaps_later_cs._entry, section ".printk_index", align 4
@node_overlaps_later_cs._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@node_overlaps_later_cs._entry_ptr.106 = internal global ptr @node_overlaps_later_cs._entry.105, section ".printk_index", align 4
@overlay_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013OF: overlay: overlay changeset %s notifier error %d, target: %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"overlay_notify\00", [17 x i8] zeroinitializer }, align 32
@overlay_notify._entry_ptr = internal global ptr @overlay_notify._entry, section ".printk_index", align 4
@of_overlay_action_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pre-apply\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"post-apply\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pre-remove\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"post-remove\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 32769]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 32769]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 32769]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 32769]
@___asan_gen_.116 = private unnamed_addr constant [25 x i8] c"of_overlay_phandle_mutex\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"overlay_notify_chain\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1030, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1051, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1198, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [9 x i8] c"ovcs_idr\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1208, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1219, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"devicetree_state_flags\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 79, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1235, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1242, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1254, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [10 x i8] c"ovcs_list\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 119, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 106, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 122, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 928, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 963, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 975, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 984, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 992, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 745, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 748, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 751, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 768, i32 45 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 775, i32 36 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 815, i32 43 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 818, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 827, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 843, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 696, i32 40 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 700, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 705, i32 43 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 709, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 714, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 659, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 673, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 491, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 500, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 312, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 313, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 314, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 323, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 325, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 331, i32 15 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 333, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 365, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 225, i32 55 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 237, i32 39 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 433, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 523, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 556, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 592, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 120, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1150, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1117, i32 5 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1123, i32 5 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 177, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant [23 x i8] c"of_overlay_action_name\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 152, i32 14 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 153, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 154, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 155, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.459 = private constant [24 x i8] c"../drivers/of/overlay.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 156, i32 2 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__ksymtab_of_overlay_fdt_apply, ptr @__ksymtab_of_overlay_notifier_register, ptr @__ksymtab_of_overlay_notifier_unregister, ptr @__ksymtab_of_overlay_remove, ptr @__ksymtab_of_overlay_remove_all, ptr @add_changeset_property._entry, ptr @add_changeset_property._entry.84, ptr @add_changeset_property._entry.87, ptr @add_changeset_property._entry_ptr, ptr @add_changeset_property._entry_ptr.86, ptr @add_changeset_property._entry_ptr.89, ptr @find_dup_cset_node_entry._entry, ptr @find_dup_cset_node_entry._entry_ptr, ptr @find_dup_cset_prop._entry, ptr @find_dup_cset_prop._entry_ptr, ptr @find_target._entry, ptr @find_target._entry.61, ptr @find_target._entry.64, ptr @find_target._entry_ptr, ptr @find_target._entry_ptr.63, ptr @find_target._entry_ptr.66, ptr @init_overlay_changeset._entry, ptr @init_overlay_changeset._entry.51, ptr @init_overlay_changeset._entry.54, ptr @init_overlay_changeset._entry_ptr, ptr @init_overlay_changeset._entry_ptr.53, ptr @init_overlay_changeset._entry_ptr.56, ptr @node_overlaps_later_cs._entry, ptr @node_overlaps_later_cs._entry.105, ptr @node_overlaps_later_cs._entry_ptr, ptr @node_overlaps_later_cs._entry_ptr.106, ptr @of_overlay_apply._entry, ptr @of_overlay_apply._entry.29, ptr @of_overlay_apply._entry.34, ptr @of_overlay_apply._entry.37, ptr @of_overlay_apply._entry_ptr, ptr @of_overlay_apply._entry_ptr.31, ptr @of_overlay_apply._entry_ptr.36, ptr @of_overlay_apply._entry_ptr.39, ptr @of_overlay_fdt_apply._entry, ptr @of_overlay_fdt_apply._entry.3, ptr @of_overlay_fdt_apply._entry_ptr, ptr @of_overlay_fdt_apply._entry_ptr.5, ptr @of_overlay_remove._entry, ptr @of_overlay_remove._entry.11, ptr @of_overlay_remove._entry.14, ptr @of_overlay_remove._entry.17, ptr @of_overlay_remove._entry.8, ptr @of_overlay_remove._entry_ptr, ptr @of_overlay_remove._entry_ptr.10, ptr @of_overlay_remove._entry_ptr.13, ptr @of_overlay_remove._entry_ptr.16, ptr @of_overlay_remove._entry_ptr.19, ptr @overlay_notify._entry, ptr @overlay_notify._entry_ptr, ptr @overlay_removal_is_ok._entry, ptr @overlay_removal_is_ok._entry_ptr, ptr @of_overlay_phandle_mutex, ptr @overlay_notify_chain, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @ovcs_idr, ptr @.str.9, ptr @.str.12, ptr @devicetree_state_flags, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ovcs_list, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @of_overlay_action_name, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_phandle_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlay_notify_chain to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_fdt_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_fdt_apply._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovcs_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_remove._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_remove._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devicetree_state_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_remove._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_remove._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovcs_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_apply._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_apply._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_apply._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_overlay_changeset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_overlay_changeset._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_overlay_changeset._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_target._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_target._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_changeset_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_changeset_property._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_changeset_property._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dup_cset_node_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dup_cset_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlay_removal_is_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_overlaps_later_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_overlaps_later_cs._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @overlay_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_overlay_action_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_overlay_mutex_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_overlay_phandle_mutex, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_overlay_mutex_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @of_overlay_phandle_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_overlay_notifier_register(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @overlay_notify_chain, ptr noundef %nb) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_overlay_notifier_unregister(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @overlay_notify_chain, ptr noundef %nb) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_overlay_fdt_apply(ptr noundef %overlay_fdt, i32 noundef %overlay_fdt_size, ptr nocapture noundef writeonly %ovcs_id) #0 align 64 {
entry:
  %overlay_root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %overlay_root) #12
  %0 = ptrtoint ptr %overlay_root to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %overlay_root, align 4
  %1 = ptrtoint ptr %ovcs_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ovcs_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %overlay_fdt_size)
  %cmp = icmp ult i32 %overlay_fdt_size, 40
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @fdt_check_header(ptr noundef %overlay_fdt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %totalsize = getelementptr inbounds %struct.fdt_header, ptr %overlay_fdt, i32 0, i32 1
  %2 = ptrtoint ptr %totalsize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %totalsize, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %totalsize, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %totalsize, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %totalsize, i32 3
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %9 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or10.i, i32 %overlay_fdt_size)
  %cmp3 = icmp ugt i32 %or10.i, %overlay_fdt_size
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %add = add i32 %or10.i, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  %10 = call ptr @memcpy(ptr %call9.i, ptr %overlay_fdt, i32 %or10.i)
  %call11 = call ptr @of_fdt_unflatten_tree(ptr noundef nonnull %call9.i, ptr noundef null, ptr noundef nonnull %overlay_root) #12
  %11 = ptrtoint ptr %overlay_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %overlay_root, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %out

if.end19:                                         ; preds = %if.end9
  %call20 = call fastcc i32 @of_overlay_apply(ptr noundef nonnull %call9.i, ptr noundef nonnull %12, ptr noundef %ovcs_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.out_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end19.out_crit_edge, %do.end16
  %ret.0 = phi i32 [ %call20, %if.end19.out_crit_edge ], [ -22, %do.end16 ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end19.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %overlay_root) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_header(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_fdt_unflatten_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_overlay_apply(ptr noundef %fdt, ptr noundef %tree, ptr nocapture noundef writeonly %ovcs_id) unnamed_addr #0 align 64 {
entry:
  %nd.i = alloca %struct.of_overlay_notify_data, align 4
  %ret_revert = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_revert) #12
  %0 = ptrtoint ptr %ret_revert to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret_revert, align 4, !annotation !231
  %1 = load i32, ptr @devicetree_state_flags, align 4
  %and.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  tail call void @kfree(ptr noundef %fdt) #12
  tail call void @kfree(ptr noundef %tree) #12
  br label %do.body66

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %fdt) #12
  tail call void @kfree(ptr noundef %tree) #12
  br label %do.body66

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_overlay_phandle_mutex, i32 noundef 0) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_mutex, i32 noundef 0) #12
  %call6 = tail call i32 @of_resolve_phandles(ptr noundef %tree) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_free_tree_crit_edge

if.end5.err_free_tree_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tree

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @init_overlay_changeset(ptr noundef nonnull %call7.i.i, ptr noundef %fdt, ptr noundef %tree)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_free_tree_crit_edge

if.end9.err_free_tree_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tree

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nd.i) #12
  %3 = ptrtoint ptr %nd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %nd.i, align 4, !annotation !231
  %4 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %nd.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !231
  %count.i = getelementptr inbounds %struct.overlay_changeset, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26.i = icmp sgt i32 %7, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %if.end13.overlay_notify.exit.thread_crit_edge

if.end13.overlay_notify.exit.thread_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end13
  %fragments.i = getelementptr inbounds %struct.overlay_changeset, ptr %call7.i.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %fragments.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fragments.i, align 8
  %arrayidx.i = getelementptr %struct.fragment, ptr %9, i32 %i.027.i
  %target.i = getelementptr %struct.fragment, ptr %9, i32 %i.027.i, i32 1
  %10 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %target.i, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %4, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %nd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %nd.i, align 4
  %call.i = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef 0, ptr noundef nonnull %nd.i) #12
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %overlay_notify.exit [
    i32 1, label %for.body.i.overlay_notify.exit.thread_crit_edge
    i32 32769, label %for.body.i.overlay_notify.exit.thread_crit_edge123
    i32 0, label %for.inc.i
  ]

for.body.i.overlay_notify.exit.thread_crit_edge123: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.body.i.overlay_notify.exit.thread_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.overlay_notify.exit.thread_crit_edge

for.inc.i.overlay_notify.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

overlay_notify.exit.thread:                       ; preds = %for.inc.i.overlay_notify.exit.thread_crit_edge, %for.body.i.overlay_notify.exit.thread_crit_edge, %for.body.i.overlay_notify.exit.thread_crit_edge123, %if.end13.overlay_notify.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd.i) #12
  br label %if.end22

overlay_notify.exit:                              ; preds = %for.body.i
  %and.i.i = and i32 %call.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.109, i32 noundef %spec.select.i.i, ptr noundef %20) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool15.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool15.not, label %overlay_notify.exit.if.end22_crit_edge, label %do.end19

overlay_notify.exit.if.end22_crit_edge:           ; preds = %overlay_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end19:                                         ; preds = %overlay_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %spec.select.i.i) #15
  br label %err_free_overlay_changeset

if.end22:                                         ; preds = %overlay_notify.exit.if.end22_crit_edge, %overlay_notify.exit.thread
  %call23 = call fastcc i32 @build_changeset(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_free_overlay_changeset_crit_edge

if.end22.err_free_overlay_changeset_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_overlay_changeset

if.end26:                                         ; preds = %if.end22
  %21 = ptrtoint ptr %ret_revert to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ret_revert, align 4
  %cset = getelementptr inbounds %struct.overlay_changeset, ptr %call7.i.i, i32 0, i32 7
  %call27 = call i32 @__of_changeset_apply_entries(ptr noundef %cset, ptr noundef nonnull %ret_revert) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end43, label %if.then29

if.then29:                                        ; preds = %if.end26
  %22 = ptrtoint ptr %ret_revert to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret_revert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %if.then29.err_free_overlay_changeset_crit_edge, label %do.body32

if.then29.err_free_overlay_changeset_crit_edge:   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_overlay_changeset

do.body32:                                        ; preds = %if.then29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_overlay_apply.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_overlay_apply, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !232

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ret_revert to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret_revert, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_overlay_apply.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.33, i32 noundef %25) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  %26 = load i32, ptr @devicetree_state_flags, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr @devicetree_state_flags, align 4
  br label %err_free_overlay_changeset

if.end43:                                         ; preds = %if.end26
  %call45 = call i32 @__of_changeset_apply_notify(ptr noundef %cset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.if.end53_crit_edge, label %do.end50

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call45) #15
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.end43.if.end53_crit_edge
  %ovcs_list = getelementptr inbounds %struct.overlay_changeset, ptr %call7.i.i, i32 0, i32 1
  %27 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ovcs_list, ptr noundef %27, ptr noundef nonnull @ovcs_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end53.list_add_tail.exit_crit_edge

if.end53.list_add_tail.exit_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %ovcs_list, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  %28 = ptrtoint ptr %ovcs_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ovcs_list, ptr %ovcs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.overlay_changeset, ptr %call7.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %prev3.i.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %ovcs_list, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end53.list_add_tail.exit_crit_edge
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call7.i.i, align 8
  %33 = ptrtoint ptr %ovcs_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ovcs_id, align 4
  %call54 = call fastcc i32 @overlay_notify(ptr noundef nonnull %call7.i.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %list_add_tail.exit.out_unlock_crit_edge, label %do.end59

list_add_tail.exit.out_unlock_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.end59:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %call54) #15
  %spec.select = select i1 %tobool46.not, i32 %call54, i32 %call45
  br label %out_unlock

err_free_tree:                                    ; preds = %if.end9.err_free_tree_crit_edge, %if.end5.err_free_tree_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.err_free_tree_crit_edge ], [ %call10, %if.end9.err_free_tree_crit_edge ]
  tail call void @kfree(ptr noundef %fdt) #12
  tail call void @kfree(ptr noundef %tree) #12
  br label %err_free_overlay_changeset

err_free_overlay_changeset:                       ; preds = %err_free_tree, %do.end41, %if.then29.err_free_overlay_changeset_crit_edge, %if.end22.err_free_overlay_changeset_crit_edge, %do.end19
  %ret.1 = phi i32 [ %ret.0, %err_free_tree ], [ %spec.select.i.i, %do.end19 ], [ %call23, %if.end22.err_free_overlay_changeset_crit_edge ], [ %call27, %do.end41 ], [ %call27, %if.then29.err_free_overlay_changeset_crit_edge ]
  call fastcc void @free_overlay_changeset(ptr noundef nonnull %call7.i.i)
  br label %out_unlock

out_unlock:                                       ; preds = %err_free_overlay_changeset, %do.end59, %list_add_tail.exit.out_unlock_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_free_overlay_changeset ], [ %call45, %list_add_tail.exit.out_unlock_crit_edge ], [ %spec.select, %do.end59 ]
  call void @mutex_unlock(ptr noundef nonnull @of_mutex) #12
  call void @mutex_unlock(ptr noundef nonnull @of_overlay_phandle_mutex) #12
  br label %do.body66

do.body66:                                        ; preds = %out_unlock, %if.then4, %do.end
  %ret.3 = phi i32 [ -16, %do.end ], [ %ret.2, %out_unlock ], [ -12, %if.then4 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_overlay_apply.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_overlay_apply, %if.then78)) #12
          to label %do.end81 [label %if.then78], !srcloc !232

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_overlay_apply.__UNIQUE_ID_ddebug192, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.28, i32 noundef %ret.3) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_revert) #12
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_overlay_remove(ptr nocapture noundef %ovcs_id) #0 align 64 {
entry:
  %nd.i86 = alloca %struct.of_overlay_notify_data, align 4
  %nd.i = alloca %struct.of_overlay_notify_data, align 4
  %ret_apply = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret_apply) #12
  %0 = ptrtoint ptr %ret_apply to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret_apply, align 4, !annotation !231
  %1 = load i32, ptr @devicetree_state_flags, align 4
  %and.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %do.body53

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %ovcs_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ovcs_id, align 4
  %call2 = tail call ptr @idr_find(ptr noundef nonnull @ovcs_idr, i32 noundef %3) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %ovcs_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ovcs_id, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %5) #15
  br label %out_unlock

if.end10:                                         ; preds = %if.end
  %cset.i = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 7
  %6 = ptrtoint ptr %cset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %remove_ce.018.i = load ptr, ptr %cset.i, align 4
  %cmp.not19.i = icmp eq ptr %remove_ce.018.i, %cset.i
  br i1 %cmp.not19.i, label %if.end10.if.end14_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.i:                                       ; preds = %node_overlaps_later_cs.exit.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %remove_ce.020.i = phi ptr [ %remove_ce.0.i, %node_overlaps_later_cs.exit.i.for.body.i_crit_edge ], [ %remove_ce.018.i, %if.end10.for.body.i_crit_edge ]
  %np.i = getelementptr inbounds %struct.of_changeset_entry, ptr %remove_ce.020.i, i32 0, i32 2
  %7 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np.i, align 4
  %.pn56.i.i = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  %ovcs.057.i.i = getelementptr i8, ptr %.pn56.i.i, i32 -4
  %cmp.not58.i.i = icmp eq ptr %.pn56.i.i, @ovcs_list
  %cmp159.i.i = icmp eq ptr %ovcs.057.i.i, %call2
  %or.cond60.i.i = or i1 %cmp.not58.i.i, %cmp159.i.i
  br i1 %or.cond60.i.i, label %for.body.i.node_overlaps_later_cs.exit.i_crit_edge, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  br label %if.end.i.i

for.body.i.node_overlaps_later_cs.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %node_overlaps_later_cs.exit.i

if.end.i.i:                                       ; preds = %for.inc33.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %ovcs.062.i.i = phi ptr [ %ovcs.0.i.i, %for.inc33.i.i.if.end.i.i_crit_edge ], [ %ovcs.057.i.i, %for.body.i.if.end.i.i_crit_edge ]
  %.pn61.i.i = phi ptr [ %.pn.i.i, %for.inc33.i.i.if.end.i.i_crit_edge ], [ %.pn56.i.i, %for.body.i.if.end.i.i_crit_edge ]
  %cset.i.i = getelementptr i8, ptr %.pn61.i.i, i32 28
  br label %for.cond5.i.i

for.cond5.i.i:                                    ; preds = %if.end15.i.i.for.cond5.i.i_crit_edge, %if.end.i.i
  %ce.0.in.i.i = phi ptr [ %cset.i.i, %if.end.i.i ], [ %ce.0.i.i, %if.end15.i.i.for.cond5.i.i_crit_edge ]
  %9 = ptrtoint ptr %ce.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ce.0.i.i = load ptr, ptr %ce.0.in.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %ce.0.i.i, %cset.i.i
  br i1 %cmp8.not.i.i, label %for.inc33.i.i, label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.cond5.i.i
  %np.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %np.i.i, align 4
  %call.i.i = tail call fastcc i32 @find_node(ptr noundef %11, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end15.i.i, label %for.body10.i.i.overlay_removal_is_ok.exit_crit_edge

for.body10.i.i.overlay_removal_is_ok.exit_crit_edge: ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_removal_is_ok.exit

if.end15.i.i:                                     ; preds = %for.body10.i.i
  %12 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %np.i.i, align 4
  %call17.i.i = tail call fastcc i32 @find_node(ptr noundef %8, ptr noundef %13) #12
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end15.i.i.for.cond5.i.i_crit_edge, label %if.end15.i.i.overlay_removal_is_ok.exit_crit_edge

if.end15.i.i.overlay_removal_is_ok.exit_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_removal_is_ok.exit

if.end15.i.i.for.cond5.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.i.i

for.inc33.i.i:                                    ; preds = %for.cond5.i.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn61.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %prev.i.i, align 4
  %ovcs.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @ovcs_list
  %cmp1.i.i = icmp eq ptr %ovcs.0.i.i, %call2
  %or.cond.i.i = or i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %for.inc33.i.i.node_overlaps_later_cs.exit.i_crit_edge, label %for.inc33.i.i.if.end.i.i_crit_edge

for.inc33.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.inc33.i.i.node_overlaps_later_cs.exit.i_crit_edge: ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %node_overlaps_later_cs.exit.i

node_overlaps_later_cs.exit.i:                    ; preds = %for.inc33.i.i.node_overlaps_later_cs.exit.i_crit_edge, %for.body.i.node_overlaps_later_cs.exit.i_crit_edge
  %15 = ptrtoint ptr %remove_ce.020.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %remove_ce.0.i = load ptr, ptr %remove_ce.020.i, align 4
  %cmp.not.i = icmp eq ptr %remove_ce.0.i, %cset.i
  br i1 %cmp.not.i, label %node_overlaps_later_cs.exit.i.if.end14_crit_edge, label %node_overlaps_later_cs.exit.i.for.body.i_crit_edge

node_overlaps_later_cs.exit.i.for.body.i_crit_edge: ; preds = %node_overlaps_later_cs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

node_overlaps_later_cs.exit.i.if.end14_crit_edge: ; preds = %node_overlaps_later_cs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

overlay_removal_is_ok.exit:                       ; preds = %if.end15.i.i.overlay_removal_is_ok.exit_crit_edge, %for.body10.i.i.overlay_removal_is_ok.exit_crit_edge
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call2, align 4
  %18 = ptrtoint ptr %ovcs.062.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ovcs.062.i.i, align 4
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef %17, i32 noundef %19, ptr noundef %8) #15
  %20 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call2, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %21) #15
  br label %out_unlock

if.end14:                                         ; preds = %node_overlaps_later_cs.exit.i.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nd.i) #12
  %22 = ptrtoint ptr %nd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %nd.i, align 4, !annotation !231
  %23 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %nd.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !231
  %count.i = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 4
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp26.i = icmp sgt i32 %26, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %if.end14.overlay_notify.exit.thread_crit_edge

if.end14.overlay_notify.exit.thread_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end14
  %fragments.i = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 5
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc.i.for.body.i82_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i82_crit_edge ]
  %27 = ptrtoint ptr %fragments.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fragments.i, align 4
  %arrayidx.i = getelementptr %struct.fragment, ptr %28, i32 %i.027.i
  %target.i = getelementptr %struct.fragment, ptr %28, i32 %i.027.i, i32 1
  %29 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %target.i, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %23, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %34 = ptrtoint ptr %nd.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %nd.i, align 4
  %call.i = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef 2, ptr noundef nonnull %nd.i) #12
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call.i, label %overlay_notify.exit [
    i32 1, label %for.body.i82.overlay_notify.exit.thread_crit_edge
    i32 32769, label %for.body.i82.overlay_notify.exit.thread_crit_edge138
    i32 0, label %for.inc.i
  ]

for.body.i82.overlay_notify.exit.thread_crit_edge138: ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.body.i82.overlay_notify.exit.thread_crit_edge: ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.inc.i:                                        ; preds = %for.body.i82
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %37
  br i1 %cmp.i, label %for.inc.i.for.body.i82_crit_edge, label %for.inc.i.overlay_notify.exit.thread_crit_edge

for.inc.i.overlay_notify.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit.thread

for.inc.i.for.body.i82_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i82

overlay_notify.exit.thread:                       ; preds = %for.inc.i.overlay_notify.exit.thread_crit_edge, %for.body.i82.overlay_notify.exit.thread_crit_edge, %for.body.i82.overlay_notify.exit.thread_crit_edge138, %if.end14.overlay_notify.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd.i) #12
  br label %if.end23

overlay_notify.exit:                              ; preds = %for.body.i82
  %and.i.i = and i32 %call.i, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp sgt i32 %and.i.i, 1
  %sub.i.i = sub i32 1, %and.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 0
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %23, align 4
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.111, i32 noundef %spec.select.i.i, ptr noundef %39) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool16.not = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool16.not, label %overlay_notify.exit.if.end23_crit_edge, label %do.end20

overlay_notify.exit.if.end23_crit_edge:           ; preds = %overlay_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.end20:                                         ; preds = %overlay_notify.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %spec.select.i.i) #15
  br label %out_unlock

if.end23:                                         ; preds = %overlay_notify.exit.if.end23_crit_edge, %overlay_notify.exit.thread
  %ovcs_list = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 1
  %call.i.i83 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ovcs_list) #12
  br i1 %call.i.i83, label %if.end.i.i85, label %if.end23.list_del.exit_crit_edge

if.end23.list_del.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i85:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i84 = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i84, align 4
  %42 = ptrtoint ptr %ovcs_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ovcs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i85, %if.end23.list_del.exit_crit_edge
  %46 = ptrtoint ptr %ovcs_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %ovcs_list, align 4
  %prev.i = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %48 = ptrtoint ptr %ret_apply to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %ret_apply, align 4
  %call24 = call i32 @__of_changeset_revert_entries(ptr noundef %cset.i, ptr noundef nonnull %ret_apply) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30, label %if.then26

if.then26:                                        ; preds = %list_del.exit
  %49 = ptrtoint ptr %ret_apply to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ret_apply, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool27.not = icmp eq i32 %50, 0
  br i1 %tobool27.not, label %if.then26.out_unlock_crit_edge, label %if.then28

if.then26.out_unlock_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %51 = load i32, ptr @devicetree_state_flags, align 4
  %or = or i32 %51, 2
  store i32 %or, ptr @devicetree_state_flags, align 4
  br label %out_unlock

if.end30:                                         ; preds = %list_del.exit
  %call32 = call i32 @__of_changeset_revert_notify(ptr noundef %cset.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.if.end40_crit_edge, label %do.end37

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call32) #15
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end30.if.end40_crit_edge
  %52 = ptrtoint ptr %ovcs_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %ovcs_id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nd.i86) #12
  %53 = ptrtoint ptr %nd.i86 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %nd.i86, align 4, !annotation !231
  %54 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %nd.i86, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %54, align 4, !annotation !231
  %56 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp26.i88 = icmp sgt i32 %57, 0
  br i1 %cmp26.i88, label %for.body.lr.ph.i90, label %if.end40.overlay_notify.exit106.thread_crit_edge

if.end40.overlay_notify.exit106.thread_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit106.thread

for.body.lr.ph.i90:                               ; preds = %if.end40
  %fragments.i89 = getelementptr inbounds %struct.overlay_changeset, ptr %call2, i32 0, i32 5
  br label %for.body.i95

for.body.i95:                                     ; preds = %for.inc.i104.for.body.i95_crit_edge, %for.body.lr.ph.i90
  %i.027.i91 = phi i32 [ 0, %for.body.lr.ph.i90 ], [ %inc.i102, %for.inc.i104.for.body.i95_crit_edge ]
  %58 = ptrtoint ptr %fragments.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fragments.i89, align 4
  %arrayidx.i92 = getelementptr %struct.fragment, ptr %59, i32 %i.027.i91
  %target.i93 = getelementptr %struct.fragment, ptr %59, i32 %i.027.i91, i32 1
  %60 = ptrtoint ptr %target.i93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %target.i93, align 4
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %54, align 4
  %63 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i92, align 4
  %65 = ptrtoint ptr %nd.i86 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %nd.i86, align 4
  %call.i94 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef 3, ptr noundef nonnull %nd.i86) #12
  %66 = zext i32 %call.i94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call.i94, label %overlay_notify.exit106 [
    i32 1, label %for.body.i95.overlay_notify.exit106.thread_crit_edge
    i32 32769, label %for.body.i95.overlay_notify.exit106.thread_crit_edge139
    i32 0, label %for.inc.i104
  ]

for.body.i95.overlay_notify.exit106.thread_crit_edge139: ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit106.thread

for.body.i95.overlay_notify.exit106.thread_crit_edge: ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit106.thread

for.inc.i104:                                     ; preds = %for.body.i95
  %inc.i102 = add nuw nsw i32 %i.027.i91, 1
  %67 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count.i, align 4
  %cmp.i103 = icmp slt i32 %inc.i102, %68
  br i1 %cmp.i103, label %for.inc.i104.for.body.i95_crit_edge, label %for.inc.i104.overlay_notify.exit106.thread_crit_edge

for.inc.i104.overlay_notify.exit106.thread_crit_edge: ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %overlay_notify.exit106.thread

for.inc.i104.for.body.i95_crit_edge:              ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i95

overlay_notify.exit106.thread:                    ; preds = %for.inc.i104.overlay_notify.exit106.thread_crit_edge, %for.body.i95.overlay_notify.exit106.thread_crit_edge, %for.body.i95.overlay_notify.exit106.thread_crit_edge139, %if.end40.overlay_notify.exit106.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd.i86) #12
  br label %if.end52

overlay_notify.exit106:                           ; preds = %for.body.i95
  %and.i.i96 = and i32 %call.i94, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i96)
  %cmp.i.i97 = icmp sgt i32 %and.i.i96, 1
  %sub.i.i98 = sub i32 1, %and.i.i96
  %spec.select.i.i99 = select i1 %cmp.i.i97, i32 %sub.i.i98, i32 0
  %69 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %54, align 4
  %call9.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.112, i32 noundef %spec.select.i.i99, ptr noundef %70) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd.i86) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i99)
  %tobool42.not = icmp eq i32 %spec.select.i.i99, 0
  br i1 %tobool42.not, label %overlay_notify.exit106.if.end52_crit_edge, label %do.end46

overlay_notify.exit106.if.end52_crit_edge:        ; preds = %overlay_notify.exit106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

do.end46:                                         ; preds = %overlay_notify.exit106
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %spec.select.i.i99) #15
  %spec.select = select i1 %tobool33.not, i32 %spec.select.i.i99, i32 %call32
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %overlay_notify.exit106.if.end52_crit_edge, %overlay_notify.exit106.thread
  %ret.0 = phi i32 [ %call32, %overlay_notify.exit106.if.end52_crit_edge ], [ %spec.select, %do.end46 ], [ %call32, %overlay_notify.exit106.thread ]
  call fastcc void @free_overlay_changeset(ptr noundef nonnull %call2)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end52, %if.then28, %if.then26.out_unlock_crit_edge, %do.end20, %overlay_removal_is_ok.exit, %if.then4
  %ret.1 = phi i32 [ %spec.select.i.i, %do.end20 ], [ %call24, %if.then28 ], [ %call24, %if.then26.out_unlock_crit_edge ], [ %ret.0, %if.end52 ], [ -19, %if.then4 ], [ -16, %overlay_removal_is_ok.exit ]
  call void @mutex_unlock(ptr noundef nonnull @of_mutex) #12
  br label %do.body53

do.body53:                                        ; preds = %out_unlock, %do.end
  %ret.2 = phi i32 [ -16, %do.end ], [ %ret.1, %out_unlock ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_overlay_remove.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_overlay_remove, %if.then59)) #12
          to label %do.end62 [label %if.then59], !srcloc !232

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_overlay_remove.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.7, i32 noundef %ret.2) #12
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret_apply) #12
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @overlay_notify(ptr nocapture noundef readonly %ovcs, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %nd = alloca %struct.of_overlay_notify_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nd) #12
  %0 = ptrtoint ptr %nd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %nd, align 4, !annotation !231
  %1 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %nd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !231
  %count = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 4
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp26 = icmp sgt i32 %4, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.cleanup11_crit_edge

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

for.body.lr.ph:                                   ; preds = %entry
  %fragments = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fragments, align 4
  %arrayidx = getelementptr %struct.fragment, ptr %6, i32 %i.027
  %target = getelementptr %struct.fragment, ptr %6, i32 %i.027, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %target, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %1, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %nd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %nd, align 4
  %call = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef %action, ptr noundef nonnull %nd) #12
  %13 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call, label %if.then5 [
    i32 1, label %for.body.cleanup11_crit_edge
    i32 32769, label %for.body.cleanup11_crit_edge34
    i32 0, label %for.inc
  ]

for.body.cleanup11_crit_edge34:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

for.body.cleanup11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %call, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %arrayidx7 = getelementptr [4 x ptr], ptr @of_overlay_action_name, i32 0, i32 %action
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %15, i32 noundef %spec.select.i, ptr noundef %17) #15
  br label %cleanup11

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.027, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup11_crit_edge

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %if.then5, %for.body.cleanup11_crit_edge, %for.body.cleanup11_crit_edge34, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ %spec.select.i, %if.then5 ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %for.body.cleanup11_crit_edge ], [ 0, %for.body.cleanup11_crit_edge34 ], [ 0, %for.inc.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nd) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_revert_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_revert_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_overlay_changeset(ptr noundef %ovcs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cset = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 7
  %0 = ptrtoint ptr %cset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cset, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_changeset_destroy(ptr noundef %cset) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %ovcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ovcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @idr_remove(ptr noundef nonnull @ovcs_idr, i32 noundef %3) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %count = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22 = icmp sgt i32 %5, 0
  br i1 %cmp22, label %for.body.lr.ph, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %fragments = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fragments, align 4
  %target = getelementptr %struct.fragment, ptr %7, i32 %i.023, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target, align 4
  tail call void @of_node_put(ptr noundef %9) #12
  %10 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fragments, align 4
  %arrayidx7 = getelementptr %struct.fragment, ptr %11, i32 %i.023
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  tail call void @of_node_put(ptr noundef %13) #12
  %inc = add nuw nsw i32 %i.023, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %fragments8 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  %16 = ptrtoint ptr %fragments8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fragments8, align 4
  tail call void @kfree(ptr noundef %17) #12
  %overlay_tree = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 3
  %18 = ptrtoint ptr %overlay_tree to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %overlay_tree, align 4
  tail call void @kfree(ptr noundef %19) #12
  %fdt = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 2
  %20 = ptrtoint ptr %fdt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fdt, align 4
  tail call void @kfree(ptr noundef %21) #12
  tail call void @kfree(ptr noundef %ovcs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_overlay_remove_all() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn16 = phi ptr [ %0, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %.pn16, @ovcs_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %.pn16, i32 0, i32 1
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %ovcs.0 = getelementptr i8, ptr %.pn16, i32 -4
  %call = tail call i32 @of_overlay_remove(ptr noundef %ovcs.0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_resolve_phandles(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_overlay_changeset(ptr noundef %ovcs, ptr noundef %fdt, ptr noundef %tree) unnamed_addr #0 align 64 {
entry:
  %path.i = alloca ptr, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %tree, i32 0, i32 10
  %0 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %_flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_overlay_changeset.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_overlay_changeset, %if.then5)) #12
          to label %if.end6 [label %if.then5], !srcloc !232

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_overlay_changeset.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %3 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_flags.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %do.body10, label %if.end6.if.end26_crit_edge

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_overlay_changeset.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_overlay_changeset, %if.then22)) #12
          to label %if.end26 [label %if.then22], !srcloc !232

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_overlay_changeset.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.40) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body10, %if.end6.if.end26_crit_edge
  %tobool.not.i = icmp eq ptr %tree, null
  br i1 %tobool.not.i, label %if.end26.do.body29_crit_edge, label %of_node_is_root.exit

if.end26.do.body29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

of_node_is_root.exit:                             ; preds = %if.end26
  %parent.i = getelementptr inbounds %struct.device_node, ptr %tree, i32 0, i32 6
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %of_node_is_root.exit.if.end45_crit_edge, label %of_node_is_root.exit.do.body29_crit_edge

of_node_is_root.exit.do.body29_crit_edge:         ; preds = %of_node_is_root.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

of_node_is_root.exit.if.end45_crit_edge:          ; preds = %of_node_is_root.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body29:                                        ; preds = %of_node_is_root.exit.do.body29_crit_edge, %if.end26.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_overlay_changeset.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_overlay_changeset, %if.then41)) #12
          to label %if.end45 [label %if.then41], !srcloc !232

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_overlay_changeset.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.40) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %do.body29, %of_node_is_root.exit.if.end45_crit_edge
  %overlay_tree = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 3
  %8 = ptrtoint ptr %overlay_tree to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tree, ptr %overlay_tree, align 4
  %fdt46 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 2
  %9 = ptrtoint ptr %fdt46 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fdt, ptr %fdt46, align 4
  %ovcs_list = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 1
  %10 = ptrtoint ptr %ovcs_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ovcs_list, ptr %ovcs_list, align 4
  %prev.i = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ovcs_list, ptr %prev.i, align 4
  %cset = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 7
  tail call void @of_changeset_init(ptr noundef %cset) #12
  %call47 = tail call i32 @idr_alloc(ptr noundef nonnull @ovcs_idr, ptr noundef %ovcs, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp = icmp slt i32 %call47, 1
  br i1 %cmp, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call50 = tail call ptr @of_get_next_child(ptr noundef %tree, ptr noundef null) #12
  %cmp51.not213 = icmp eq ptr %call50, null
  br i1 %cmp51.not213, label %if.end49.for.end_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  br label %for.body

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end49.for.body_crit_edge
  %node.0215 = phi ptr [ %call56, %for.inc.for.body_crit_edge ], [ %call50, %if.end49.for.body_crit_edge ]
  %cnt.0214 = phi i32 [ %cnt.1, %for.inc.for.body_crit_edge ], [ 0, %if.end49.for.body_crit_edge ]
  %call52 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %node.0215, ptr noundef nonnull @.str.47) #12
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %for.body.for.inc_crit_edge, label %if.then54

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then54:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %cnt.0214, 1
  tail call void @of_node_put(ptr noundef nonnull %call52) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then54, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %inc, %if.then54 ], [ %cnt.0214, %for.body.for.inc_crit_edge ]
  %call56 = tail call ptr @of_get_next_child(ptr noundef %tree, ptr noundef nonnull %node.0215) #12
  %cmp51.not = icmp eq ptr %call56, null
  br i1 %cmp51.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end49.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %if.end49.for.end_crit_edge ], [ %cnt.1, %for.inc.for.end_crit_edge ]
  %call57 = tail call ptr @of_get_child_by_name(ptr noundef %tree, ptr noundef nonnull @.str.48) #12
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %for.end.if.end61_crit_edge, label %if.then59

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc60 = add i32 %cnt.0.lcssa, 1
  tail call void @of_node_put(ptr noundef nonnull %call57) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.end.if.end61_crit_edge
  %cnt.2 = phi i32 [ %inc60, %if.then59 ], [ %cnt.0.lcssa, %for.end.if.end61_crit_edge ]
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cnt.2, i32 8) #12
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end61.err_free_idr_crit_edge, label %if.end7.i.i, !prof !233

if.end61.err_free_idr_crit_edge:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_idr

if.end7.i.i:                                      ; preds = %if.end61
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #16
  %tobool63.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool63.not, label %if.end7.i.i.err_free_idr_crit_edge, label %if.end65

if.end7.i.i.err_free_idr_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_idr

if.end65:                                         ; preds = %if.end7.i.i
  %call66 = tail call ptr @of_get_next_child(ptr noundef %tree, ptr noundef null) #12
  %cmp68.not216 = icmp eq ptr %call66, null
  br i1 %cmp68.not216, label %if.end65.for.end83_crit_edge, label %if.end65.for.body69_crit_edge

if.end65.for.body69_crit_edge:                    ; preds = %if.end65
  br label %for.body69

if.end65.for.end83_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

for.body69:                                       ; preds = %for.inc81.for.body69_crit_edge, %if.end65.for.body69_crit_edge
  %node.1219 = phi ptr [ %call82, %for.inc81.for.body69_crit_edge ], [ %call66, %if.end65.for.body69_crit_edge ]
  %cnt.3217 = phi i32 [ %cnt.4, %for.inc81.for.body69_crit_edge ], [ 0, %if.end65.for.body69_crit_edge ]
  %call70 = call ptr @of_get_child_by_name(ptr noundef nonnull %node.1219, ptr noundef nonnull @.str.47) #12
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %for.body69.for.inc81_crit_edge, label %if.end73

for.body69.for.inc81_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc81

if.end73:                                         ; preds = %for.body69
  %arrayidx = getelementptr %struct.fragment, ptr %call8.i.i, i32 %cnt.3217
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call70, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path.i) #12
  %16 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i, align 4, !annotation !231
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.1219, ptr noundef nonnull @.str.57, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i186 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i186, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end73
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %call1.i = call ptr @of_find_node_by_phandle(i32 noundef %19) #12
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.then.i.if.end79_crit_edge

if.then.i.if.end79_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %node.1219, i32 noundef %21) #15
  br label %if.then77

if.end5.i:                                        ; preds = %if.end73
  %call6.i = call i32 @of_property_read_string(ptr noundef nonnull %node.1219, ptr noundef nonnull @.str.60, ptr noundef nonnull %path.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %do.end21.i

if.then8.i:                                       ; preds = %if.end5.i
  %22 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path.i, align 4
  %call.i.i = call ptr @of_find_node_opts_by_path(ptr noundef %23, ptr noundef null) #12
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %do.end14.i, label %if.then8.i.if.end79_crit_edge

if.then8.i.if.end79_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end14.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path.i, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull %node.1219, ptr noundef %25) #15
  br label %if.then77

do.end21.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull %node.1219) #15
  br label %if.then77

if.then77:                                        ; preds = %do.end21.i, %do.end14.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path.i) #12
  %target200 = getelementptr %struct.fragment, ptr %call8.i.i, i32 %cnt.3217, i32 1
  %26 = ptrtoint ptr %target200 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %target200, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 8
  call void @of_node_put(ptr noundef %28) #12
  call void @of_node_put(ptr noundef nonnull %node.1219) #12
  br label %err_free_fragments

if.end79:                                         ; preds = %if.then8.i.if.end79_crit_edge, %if.then.i.if.end79_crit_edge
  %retval.0.i187 = phi ptr [ %call1.i, %if.then.i.if.end79_crit_edge ], [ %call.i.i, %if.then8.i.if.end79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path.i) #12
  %target = getelementptr %struct.fragment, ptr %call8.i.i, i32 %cnt.3217, i32 1
  %29 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i187, ptr %target, align 4
  %inc80 = add i32 %cnt.3217, 1
  br label %for.inc81

for.inc81:                                        ; preds = %if.end79, %for.body69.for.inc81_crit_edge
  %cnt.4 = phi i32 [ %inc80, %if.end79 ], [ %cnt.3217, %for.body69.for.inc81_crit_edge ]
  %call82 = call ptr @of_get_next_child(ptr noundef %tree, ptr noundef nonnull %node.1219) #12
  %cmp68.not = icmp eq ptr %call82, null
  br i1 %cmp68.not, label %for.inc81.for.end83_crit_edge, label %for.inc81.for.body69_crit_edge

for.inc81.for.body69_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body69

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end83

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %if.end65.for.end83_crit_edge
  %cnt.3.lcssa = phi i32 [ 0, %if.end65.for.end83_crit_edge ], [ %cnt.4, %for.inc81.for.end83_crit_edge ]
  %call84 = call ptr @of_get_child_by_name(ptr noundef %tree, ptr noundef nonnull @.str.48) #12
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %for.end83.if.end101_crit_edge, label %if.then86

for.end83.if.end101_crit_edge:                    ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then86:                                        ; preds = %for.end83
  %symbols_fragment = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 6
  %30 = ptrtoint ptr %symbols_fragment to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %symbols_fragment, align 4
  %arrayidx87 = getelementptr %struct.fragment, ptr %call8.i.i, i32 %cnt.3.lcssa
  %31 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call84, ptr %arrayidx87, align 8
  %call.i = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.49, ptr noundef null) #12
  %target90 = getelementptr %struct.fragment, ptr %call8.i.i, i32 %cnt.3.lcssa, i32 1
  %32 = ptrtoint ptr %target90 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %target90, align 4
  %tobool92.not = icmp eq ptr %call.i, null
  br i1 %tobool92.not, label %do.end96, label %if.end99

do.end96:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %err_free_fragments

if.end99:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  %inc100 = add i32 %cnt.3.lcssa, 1
  br label %if.end101

if.end101:                                        ; preds = %if.end99, %for.end83.if.end101_crit_edge
  %cnt.5 = phi i32 [ %inc100, %if.end99 ], [ %cnt.3.lcssa, %for.end83.if.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.5)
  %tobool102.not = icmp eq i32 %cnt.5, 0
  br i1 %tobool102.not, label %do.end106, label %if.end109

do.end106:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #15
  br label %err_free_fragments

if.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %ovcs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call47, ptr %ovcs, align 4
  %count = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 4
  %34 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cnt.5, ptr %count, align 4
  %fragments111 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  %35 = ptrtoint ptr %fragments111 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call8.i.i, ptr %fragments111, align 4
  br label %cleanup

err_free_fragments:                               ; preds = %do.end106, %do.end96, %if.then77
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %err_free_idr

err_free_idr:                                     ; preds = %err_free_fragments, %if.end7.i.i.err_free_idr_crit_edge, %if.end61.err_free_idr_crit_edge
  %ret.1 = phi i32 [ -22, %err_free_fragments ], [ -12, %if.end7.i.i.err_free_idr_crit_edge ], [ -12, %if.end61.err_free_idr_crit_edge ]
  %call112 = call ptr @idr_remove(ptr noundef nonnull @ovcs_idr, i32 noundef %call47) #12
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.40, i32 noundef %ret.1) #15
  br label %cleanup

cleanup:                                          ; preds = %err_free_idr, %if.end109, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_idr ], [ 0, %if.end109 ], [ %call47, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_changeset(ptr noundef %ovcs) unnamed_addr #0 align 64 {
entry:
  %target = alloca %struct.target, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target) #12
  %0 = ptrtoint ptr %target to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %target, align 8, !annotation !231
  %symbols_fragment = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 6
  %1 = ptrtoint ptr %symbols_fragment to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %symbols_fragment, align 4, !range !234
  %count1 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 4
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count1, align 4
  %sext = sub nsw i8 0, %2
  %sub = sext i8 %sext to i32
  %fragments_count.0 = add i32 %4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fragments_count.0)
  %cmp82 = icmp sgt i32 %fragments_count.0, 0
  br i1 %cmp82, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fragments = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  %in_livetree = getelementptr inbounds %struct.target, ptr %target, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %fragments_count.0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %5 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fragments, align 4
  %arrayidx = getelementptr %struct.fragment, ptr %6, i32 %i.083
  %target2 = getelementptr %struct.fragment, ptr %6, i32 %i.083, i32 1
  %7 = ptrtoint ptr %target2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %target2, align 4
  %9 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %target, align 8
  %10 = ptrtoint ptr %in_livetree to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %in_livetree, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call = call fastcc i32 @build_changeset_next_level(ptr noundef %ovcs, ptr noundef nonnull %target, ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.cond, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_changeset.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_changeset, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !232

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %target2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_changeset.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.69, ptr noundef %14) #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %symbols_fragment to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %symbols_fragment, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %for.end.if.end45_crit_edge, label %if.then15

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then15:                                        ; preds = %for.end
  %fragments16 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  %17 = ptrtoint ptr %fragments16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fragments16, align 4
  %count17 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 4
  %19 = ptrtoint ptr %count17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count17, align 4
  %sub18 = add i32 %20, -1
  %arrayidx19 = getelementptr %struct.fragment, ptr %18, i32 %sub18
  %target20 = getelementptr %struct.fragment, ptr %18, i32 %sub18, i32 1
  %21 = ptrtoint ptr %target20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %target20, align 4
  %23 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %target, align 8
  %in_livetree22 = getelementptr inbounds %struct.target, ptr %target, i32 0, i32 1
  %24 = ptrtoint ptr %in_livetree22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %in_livetree22, align 4
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx19, align 4
  %properties.i = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %prop.016.i = load ptr, ptr %properties.i, align 4
  %cmp.not17.i = icmp eq ptr %prop.016.i, null
  br i1 %cmp.not17.i, label %if.then15.if.end45_crit_edge, label %if.then15.for.body.i_crit_edge

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

if.then15.if.end45_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %prop.018.i = phi ptr [ %prop.0.i, %for.inc.i.for.body.i_crit_edge ], [ %prop.016.i, %if.then15.for.body.i_crit_edge ]
  %call.i = call fastcc i32 @add_changeset_property(ptr noundef %ovcs, ptr noundef nonnull %target, ptr noundef nonnull %prop.018.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_changeset_symbols_node.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_changeset, %if.then5.i)) #12
          to label %do.body27 [label %if.then5.i], !srcloc !232

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prop.018.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prop.018.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_changeset_symbols_node.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.95, ptr noundef %22, ptr noundef %29, i32 noundef %call.i) #12
  br label %do.body27

for.inc.i:                                        ; preds = %for.body.i
  %next.i = getelementptr inbounds %struct.property, ptr %prop.018.i, i32 0, i32 3
  %30 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %prop.0.i = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %prop.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end45_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end45_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body27:                                        ; preds = %if.then5.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_changeset.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_changeset, %if.then39)) #12
          to label %cleanup [label %if.then39], !srcloc !232

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %target20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %target20, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_changeset.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.71, ptr noundef %32) #12
  br label %cleanup

if.end45:                                         ; preds = %for.inc.i.if.end45_crit_edge, %if.then15.if.end45_crit_edge, %for.end.if.end45_crit_edge
  %cset.i = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 7
  %33 = ptrtoint ptr %cset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %ce_1.034.i = load ptr, ptr %cset.i, align 4
  %cmp.not35.i = icmp eq ptr %ce_1.034.i, %cset.i
  br i1 %cmp.not35.i, label %if.end45.cleanup_crit_edge, label %if.end45.for.body.i74_crit_edge

if.end45.for.body.i74_crit_edge:                  ; preds = %if.end45
  br label %for.body.i74

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i74:                                     ; preds = %find_dup_cset_prop.exit.i.for.body.i74_crit_edge, %if.end45.for.body.i74_crit_edge
  %ce_1.037.i = phi ptr [ %ce_1.0.i, %find_dup_cset_prop.exit.i.for.body.i74_crit_edge ], [ %ce_1.034.i, %if.end45.for.body.i74_crit_edge ]
  %dup_entry.036.i = phi i32 [ %or4.i, %find_dup_cset_prop.exit.i.for.body.i74_crit_edge ], [ 0, %if.end45.for.body.i74_crit_edge ]
  %action.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_1.037.i, i32 0, i32 1
  %34 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %action.i.i, align 4
  %.off.i.i = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %for.cond.preheader.i.i, label %for.body.i74.find_dup_cset_node_entry.exit.i_crit_edge

for.body.i74.find_dup_cset_node_entry.exit.i_crit_edge: ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_dup_cset_node_entry.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body.i74
  %36 = ptrtoint ptr %ce_1.037.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %ce_2.051.i.i = load ptr, ptr %ce_1.037.i, align 4
  %cmp4.not52.i.i = icmp eq ptr %ce_2.051.i.i, %cset.i
  br i1 %cmp4.not52.i.i, label %for.cond.preheader.i.i.find_dup_cset_node_entry.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.find_dup_cset_node_entry.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_dup_cset_node_entry.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %np.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_1.037.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ce_2.053.i.i = phi ptr [ %ce_2.051.i.i, %for.body.lr.ph.i.i ], [ %ce_2.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %action5.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_2.053.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %action5.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %action5.i.i, align 4
  %.off49.i.i = add i32 %38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off49.i.i)
  %switch50.i.i = icmp ult i32 %.off49.i.i, 2
  br i1 %switch50.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %39 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %np.i.i, align 4
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %full_name.i.i, align 4
  %np10.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_2.053.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %np10.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %np10.i.i, align 4
  %full_name11.i.i = getelementptr inbounds %struct.device_node, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %full_name11.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %full_name11.i.i, align 4
  %call.i.i = tail call i32 @strcasecmp(ptr noundef %42, ptr noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end13.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %lor.lhs.false.i.i
  %call15.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.91, ptr noundef %40) #12
  %47 = ptrtoint ptr %np10.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %np10.i.i, align 4
  %call17.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.91, ptr noundef %48) #12
  %call18.i.i = tail call i32 @strcmp(ptr noundef %call15.i.i, ptr noundef %call17.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  tail call void @kfree(ptr noundef %call15.i.i) #12
  tail call void @kfree(ptr noundef %call17.i.i) #12
  br i1 %tobool19.not.i.i, label %do.end.i.i, label %if.end13.i.i.for.inc.i.i_crit_edge

if.end13.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %np.i.i, align 4
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %50) #15
  br label %find_dup_cset_node_entry.exit.i

for.inc.i.i:                                      ; preds = %if.end13.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %51 = ptrtoint ptr %ce_2.053.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %ce_2.0.i.i = load ptr, ptr %ce_2.053.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %ce_2.0.i.i, %cset.i
  br i1 %cmp4.not.i.i, label %for.inc.i.i.find_dup_cset_node_entry.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.find_dup_cset_node_entry.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_dup_cset_node_entry.exit.i

find_dup_cset_node_entry.exit.i:                  ; preds = %for.inc.i.i.find_dup_cset_node_entry.exit.i_crit_edge, %do.end.i.i, %for.cond.preheader.i.i.find_dup_cset_node_entry.exit.i_crit_edge, %for.body.i74.find_dup_cset_node_entry.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ 0, %for.body.i74.find_dup_cset_node_entry.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.i.find_dup_cset_node_entry.exit.i_crit_edge ], [ 0, %for.inc.i.i.find_dup_cset_node_entry.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i.i, %dup_entry.036.i
  %52 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %action.i.i, align 4
  %.off.i19.i = add i32 %53, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i19.i)
  %switch.i20.i = icmp ult i32 %.off.i19.i, 3
  br i1 %switch.i20.i, label %for.cond.preheader.i22.i, label %find_dup_cset_node_entry.exit.i.find_dup_cset_prop.exit.i_crit_edge

find_dup_cset_node_entry.exit.i.find_dup_cset_prop.exit.i_crit_edge: ; preds = %find_dup_cset_node_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_dup_cset_prop.exit.i

for.cond.preheader.i22.i:                         ; preds = %find_dup_cset_node_entry.exit.i
  %54 = ptrtoint ptr %ce_1.037.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %ce_2.069.i.i = load ptr, ptr %ce_1.037.i, align 4
  %cmp7.not70.i.i = icmp eq ptr %ce_2.069.i.i, %cset.i
  br i1 %cmp7.not70.i.i, label %for.cond.preheader.i22.i.find_dup_cset_prop.exit.i_crit_edge, label %for.body.lr.ph.i24.i

for.cond.preheader.i22.i.find_dup_cset_prop.exit.i_crit_edge: ; preds = %for.cond.preheader.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_dup_cset_prop.exit.i

for.body.lr.ph.i24.i:                             ; preds = %for.cond.preheader.i22.i
  %np.i23.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_1.037.i, i32 0, i32 2
  %prop.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_1.037.i, i32 0, i32 3
  br label %for.body.i25.i

for.body.i25.i:                                   ; preds = %for.inc.i32.i.for.body.i25.i_crit_edge, %for.body.lr.ph.i24.i
  %ce_2.071.i.i = phi ptr [ %ce_2.069.i.i, %for.body.lr.ph.i24.i ], [ %ce_2.0.i31.i, %for.inc.i32.i.for.body.i25.i_crit_edge ]
  %action8.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_2.071.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %action8.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %action8.i.i, align 4
  %.off67.i.i = add i32 %56, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off67.i.i)
  %switch68.i.i = icmp ult i32 %.off67.i.i, 3
  br i1 %switch68.i.i, label %lor.lhs.false.i29.i, label %for.body.i25.i.for.inc.i32.i_crit_edge

for.body.i25.i.for.inc.i32.i_crit_edge:           ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32.i

lor.lhs.false.i29.i:                              ; preds = %for.body.i25.i
  %57 = ptrtoint ptr %np.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %np.i23.i, align 4
  %full_name.i26.i = getelementptr inbounds %struct.device_node, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %full_name.i26.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %full_name.i26.i, align 4
  %np16.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_2.071.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %np16.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %np16.i.i, align 4
  %full_name17.i.i = getelementptr inbounds %struct.device_node, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %full_name17.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %full_name17.i.i, align 4
  %call.i27.i = tail call i32 @strcasecmp(ptr noundef %60, ptr noundef %64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool.not.i28.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.end19.i.i, label %lor.lhs.false.i29.i.for.inc.i32.i_crit_edge

lor.lhs.false.i29.i.for.inc.i32.i_crit_edge:      ; preds = %lor.lhs.false.i29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32.i

if.end19.i.i:                                     ; preds = %lor.lhs.false.i29.i
  %call21.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.91, ptr noundef %58) #12
  %65 = ptrtoint ptr %np16.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %np16.i.i, align 4
  %call23.i.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.91, ptr noundef %66) #12
  %call24.i.i = tail call i32 @strcmp(ptr noundef %call21.i.i, ptr noundef %call23.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  tail call void @kfree(ptr noundef %call21.i.i) #12
  tail call void @kfree(ptr noundef %call23.i.i) #12
  br i1 %tobool25.not.i.i, label %land.lhs.true28.i.i, label %if.end19.i.i.for.inc.i32.i_crit_edge

if.end19.i.i.for.inc.i32.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32.i

land.lhs.true28.i.i:                              ; preds = %if.end19.i.i
  %67 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prop.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %prop29.i.i = getelementptr inbounds %struct.of_changeset_entry, ptr %ce_2.071.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %prop29.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prop29.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call31.i.i = tail call i32 @strcmp(ptr noundef %70, ptr noundef %74) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %do.end.i30.i, label %land.lhs.true28.i.i.for.inc.i32.i_crit_edge

land.lhs.true28.i.i.for.inc.i32.i_crit_edge:      ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i32.i

do.end.i30.i:                                     ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %np.i23.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %np.i23.i, align 4
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %76, ptr noundef %70) #15
  br label %find_dup_cset_prop.exit.i

for.inc.i32.i:                                    ; preds = %land.lhs.true28.i.i.for.inc.i32.i_crit_edge, %if.end19.i.i.for.inc.i32.i_crit_edge, %lor.lhs.false.i29.i.for.inc.i32.i_crit_edge, %for.body.i25.i.for.inc.i32.i_crit_edge
  %77 = ptrtoint ptr %ce_2.071.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %ce_2.0.i31.i = load ptr, ptr %ce_2.071.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %ce_2.0.i31.i, %cset.i
  br i1 %cmp7.not.i.i, label %for.inc.i32.i.find_dup_cset_prop.exit.i_crit_edge, label %for.inc.i32.i.for.body.i25.i_crit_edge

for.inc.i32.i.for.body.i25.i_crit_edge:           ; preds = %for.inc.i32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i25.i

for.inc.i32.i.find_dup_cset_prop.exit.i_crit_edge: ; preds = %for.inc.i32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_dup_cset_prop.exit.i

find_dup_cset_prop.exit.i:                        ; preds = %for.inc.i32.i.find_dup_cset_prop.exit.i_crit_edge, %do.end.i30.i, %for.cond.preheader.i22.i.find_dup_cset_prop.exit.i_crit_edge, %find_dup_cset_node_entry.exit.i.find_dup_cset_prop.exit.i_crit_edge
  %retval.0.i33.i = phi i32 [ -22, %do.end.i30.i ], [ 0, %find_dup_cset_node_entry.exit.i.find_dup_cset_prop.exit.i_crit_edge ], [ 0, %for.cond.preheader.i22.i.find_dup_cset_prop.exit.i_crit_edge ], [ 0, %for.inc.i32.i.find_dup_cset_prop.exit.i_crit_edge ]
  %or4.i = or i32 %or.i, %retval.0.i33.i
  %78 = ptrtoint ptr %ce_1.037.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %ce_1.0.i = load ptr, ptr %ce_1.037.i, align 4
  %cmp.not.i75 = icmp eq ptr %ce_1.0.i, %cset.i
  br i1 %cmp.not.i75, label %for.end.loopexit.i, label %find_dup_cset_prop.exit.i.for.body.i74_crit_edge

find_dup_cset_prop.exit.i.for.body.i74_crit_edge: ; preds = %find_dup_cset_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i74

for.end.loopexit.i:                               ; preds = %find_dup_cset_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i)
  %phi.cmp.i = icmp eq i32 %or4.i, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.end.loopexit.i, %if.end45.cleanup_crit_edge, %if.then39, %do.body27, %if.then9, %do.body
  %retval.0 = phi i32 [ %call, %if.then9 ], [ %call.i, %if.then39 ], [ %call, %do.body ], [ %call.i, %do.body27 ], [ 0, %if.end45.cleanup_crit_edge ], [ %phi.sel.i, %for.end.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_apply_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_apply_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_changeset_next_level(ptr noundef %ovcs, ptr nocapture noundef readonly %target, ptr noundef %overlay_node) unnamed_addr #0 align 64 {
entry:
  %target_child.i = alloca %struct.target, align 8
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %properties = getelementptr inbounds %struct.device_node, ptr %overlay_node, i32 0, i32 4
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %prop.078 = load ptr, ptr %properties, align 4
  %cmp.not79 = icmp eq ptr %prop.078, null
  br i1 %cmp.not79, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %prop.080 = phi ptr [ %prop.0, %for.inc.for.body_crit_edge ], [ %prop.078, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @add_changeset_property(ptr noundef %ovcs, ptr noundef %target, ptr noundef nonnull %prop.080, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_changeset_next_level.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_changeset_next_level, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !232

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %target, align 4
  %3 = ptrtoint ptr %prop.080 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prop.080, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_changeset_next_level.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.74, ptr noundef %2, ptr noundef %4, i32 noundef %call) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.080, i32 0, i32 3
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %prop.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %prop.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = tail call ptr @of_get_next_child(ptr noundef %overlay_node, ptr noundef null) #12
  %cmp9.not83 = icmp eq ptr %call7, null
  br i1 %cmp9.not83, label %for.end.cleanup_crit_edge, label %for.body10.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body10.lr.ph:                                 ; preds = %for.end
  %in_livetree41.i = getelementptr inbounds %struct.target, ptr %target, i32 0, i32 1
  %in_livetree43.i = getelementptr inbounds %struct.target, ptr %target_child.i, i32 0, i32 1
  %cset.i = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 7
  br label %for.body10

for.body10:                                       ; preds = %for.inc32.for.body10_crit_edge, %for.body10.lr.ph
  %child.084 = phi ptr [ %call7, %for.body10.lr.ph ], [ %call33, %for.inc32.for.body10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_child.i) #12
  %6 = ptrtoint ptr %target_child.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %target_child.i, align 8, !annotation !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #12
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %size.i, align 4, !annotation !231
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %child.084, i32 0, i32 2
  %8 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_name.i, align 4
  %call.i62 = call ptr @strrchr(ptr noundef %9, i32 noundef 47) #12
  %tobool.not.i63 = icmp eq ptr %call.i62, null
  %add.ptr.i64 = getelementptr i8, ptr %call.i62, i32 1
  %cond.i65 = select i1 %tobool.not.i63, ptr %9, ptr %add.ptr.i64
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %target, align 4
  %call1.i = call ptr @of_get_next_child(ptr noundef %11, ptr noundef null) #12
  %cmp.not.i81 = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i81, label %for.body10.if.then8.critedge.i_crit_edge, label %for.body10.for.body.i_crit_edge

for.body10.for.body.i_crit_edge:                  ; preds = %for.body10
  br label %for.body.i

for.body10.if.then8.critedge.i_crit_edge:         ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.critedge.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body10.for.body.i_crit_edge
  %tchild.0.i82 = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %for.body10.for.body.i_crit_edge ]
  %full_name2.i = getelementptr inbounds %struct.device_node, ptr %tchild.0.i82, i32 0, i32 2
  %12 = ptrtoint ptr %full_name2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %full_name2.i, align 4
  %call.i60 = call ptr @strrchr(ptr noundef %13, i32 noundef 47) #12
  %tobool.not.i61 = icmp eq ptr %call.i60, null
  %add.ptr.i = getelementptr i8, ptr %call.i60, i32 1
  %cond.i = select i1 %tobool.not.i61, ptr %13, ptr %add.ptr.i
  %call4.i = call i32 @strcasecmp(ptr noundef %cond.i65, ptr noundef %cond.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end33.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %target, align 4
  %call6.i = call ptr @of_get_next_child(ptr noundef %15, ptr noundef nonnull %tchild.0.i82) #12
  %cmp.not.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.then8.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then8.critedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.critedge.i

if.then8.critedge.i:                              ; preds = %for.inc.i.if.then8.critedge.i_crit_edge, %for.body10.if.then8.critedge.i_crit_edge
  %call9.i = call ptr @__of_node_dup(ptr noundef null, ptr noundef %cond.i65) #12
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then8.critedge.i.add_changeset_node.exit.thread_crit_edge, label %if.end12.i

if.then8.critedge.i.add_changeset_node.exit.thread_crit_edge: ; preds = %if.then8.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_changeset_node.exit.thread

if.end12.i:                                       ; preds = %if.then8.critedge.i
  %16 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %target, align 4
  %parent.i = getelementptr inbounds %struct.device_node, ptr %call9.i, i32 0, i32 6
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %parent.i, align 4
  %call14.i = call ptr @__of_get_property(ptr noundef nonnull %child.084, ptr noundef nonnull @.str.77, ptr noundef null) #12
  %tobool16.not.i = icmp eq ptr %call14.i, null
  %spec.select.i = select i1 %tobool16.not.i, ptr @.str.92, ptr %call14.i
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.select.i, ptr %call9.i, align 4
  %call20.i = call ptr @__of_get_property(ptr noundef nonnull %child.084, ptr noundef nonnull @.str.78, ptr noundef nonnull %size.i) #12
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.end12.i.if.end26.i_crit_edge, label %land.lhs.true.i

if.end12.i.if.end26.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp22.i = icmp eq i32 %21, 4
  br i1 %cmp22.i, label %if.then23.i, label %land.lhs.true.i.if.end26.i_crit_edge

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call20.i, align 4
  %phandle25.i = getelementptr inbounds %struct.device_node, ptr %call9.i, i32 0, i32 1
  %24 = ptrtoint ptr %phandle25.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %phandle25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true.i.if.end26.i_crit_edge, %if.end12.i.if.end26.i_crit_edge
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %call9.i, i32 0, i32 10
  call void @_set_bit(i32 noundef 5, ptr noundef %_flags.i) #12
  %call.i59 = call i32 @of_changeset_action(ptr noundef %cset.i, i32 noundef 1, ptr noundef nonnull %call9.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool28.not.i = icmp eq i32 %call.i59, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.add_changeset_node.exit.thread_crit_edge

if.end26.i.add_changeset_node.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %add_changeset_node.exit.thread

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %target_child.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i, ptr %target_child.i, align 8
  br label %add_changeset_node.exit

if.end33.i:                                       ; preds = %for.body.i
  %phandle34.i = getelementptr inbounds %struct.device_node, ptr %child.084, i32 0, i32 1
  %26 = ptrtoint ptr %phandle34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phandle34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool35.not.i = icmp eq i32 %27, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.else.i_crit_edge, label %land.lhs.true36.i

if.end33.i.if.else.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true36.i:                                ; preds = %if.end33.i
  %phandle37.i = getelementptr inbounds %struct.device_node, ptr %tchild.0.i82, i32 0, i32 1
  %28 = ptrtoint ptr %phandle37.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phandle37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool38.not.i = icmp eq i32 %29, 0
  br i1 %tobool38.not.i, label %land.lhs.true36.i.if.else.i_crit_edge, label %add_changeset_node.exit.thread101

land.lhs.true36.i.if.else.i_crit_edge:            ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

add_changeset_node.exit.thread101:                ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @of_node_put(ptr noundef nonnull %tchild.0.i82) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_child.i) #12
  br label %do.body14

if.else.i:                                        ; preds = %land.lhs.true36.i.if.else.i_crit_edge, %if.end33.i.if.else.i_crit_edge
  %30 = ptrtoint ptr %target_child.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tchild.0.i82, ptr %target_child.i, align 8
  %31 = ptrtoint ptr %in_livetree41.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %in_livetree41.i, align 4, !range !234
  br label %add_changeset_node.exit

add_changeset_node.exit.thread:                   ; preds = %if.end26.i.add_changeset_node.exit.thread_crit_edge, %if.then8.critedge.i.add_changeset_node.exit.thread_crit_edge
  %retval.0.i58.ph = phi i32 [ %call.i59, %if.end26.i.add_changeset_node.exit.thread_crit_edge ], [ -12, %if.then8.critedge.i.add_changeset_node.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_child.i) #12
  br label %do.body14

add_changeset_node.exit:                          ; preds = %if.else.i, %if.end30.i
  %.sink = phi i8 [ %32, %if.else.i ], [ 0, %if.end30.i ]
  %call9.i.sink.ph = phi ptr [ %tchild.0.i82, %if.else.i ], [ %call9.i, %if.end30.i ]
  %33 = ptrtoint ptr %in_livetree43.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %in_livetree43.i, align 4
  %call44.i = call fastcc i32 @build_changeset_next_level(ptr noundef %ovcs, ptr noundef nonnull %target_child.i, ptr noundef nonnull %child.084) #12
  call void @of_node_put(ptr noundef nonnull %call9.i.sink.ph) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_child.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool12.not = icmp eq i32 %call44.i, 0
  br i1 %tobool12.not, label %for.inc32, label %add_changeset_node.exit.do.body14_crit_edge

add_changeset_node.exit.do.body14_crit_edge:      ; preds = %add_changeset_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

do.body14:                                        ; preds = %add_changeset_node.exit.do.body14_crit_edge, %add_changeset_node.exit.thread, %add_changeset_node.exit.thread101
  %retval.0.i5869 = phi i32 [ %retval.0.i58.ph, %add_changeset_node.exit.thread ], [ -22, %add_changeset_node.exit.thread101 ], [ %call44.i, %add_changeset_node.exit.do.body14_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_changeset_next_level.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_changeset_next_level, %if.then26)) #12
          to label %do.end30 [label %if.then26], !srcloc !232

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %target, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_changeset_next_level.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.76, ptr noundef %35, ptr noundef nonnull %child.084, i32 noundef %retval.0.i5869) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  call void @of_node_put(ptr noundef nonnull %child.084) #12
  br label %cleanup

for.inc32:                                        ; preds = %add_changeset_node.exit
  %call33 = call ptr @of_get_next_child(ptr noundef %overlay_node, ptr noundef nonnull %child.084) #12
  %cmp9.not = icmp eq ptr %call33, null
  br i1 %cmp9.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.body10_crit_edge

for.inc32.for.body10_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %do.end30, %for.end.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %retval.0.i5869, %do.end30 ], [ %call, %if.then5 ], [ %call, %do.body ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_changeset_property(ptr noundef %ovcs, ptr nocapture noundef readonly %target, ptr noundef %overlay_prop, i1 noundef zeroext %is_symbols_prop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %in_livetree = getelementptr inbounds %struct.target, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %in_livetree to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_livetree, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end46.thread, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %overlay_prop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %overlay_prop, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(5) @.str.77) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(8) @.str.78) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(14) @.str.79) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end16

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false5
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  %6 = ptrtoint ptr %overlay_prop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %overlay_prop, align 4
  %call15 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef %7, ptr noundef null) #12
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end46, label %if.then18

if.then18:                                        ; preds = %if.end16
  %8 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call15, align 4
  %call20 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(15) @.str.80) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.then18
  %length.i = getelementptr inbounds %struct.property, ptr %call15, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %length1.i = getelementptr inbounds %struct.property, ptr %overlay_prop, i32 0, i32 1
  %12 = ptrtoint ptr %length1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp eq i32 %11, %13
  br i1 %cmp.i, label %of_prop_val_eq.exit, label %if.then22.do.end_crit_edge

if.then22.do.end_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

of_prop_val_eq.exit:                              ; preds = %if.then22
  %value.i = getelementptr inbounds %struct.property, ptr %call15, i32 0, i32 2
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value.i, align 4
  %value2.i = getelementptr inbounds %struct.property, ptr %overlay_prop, i32 0, i32 2
  %16 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value2.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %15, ptr %17, i32 %11) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %of_prop_val_eq.exit.cleanup_crit_edge, label %of_prop_val_eq.exit.do.end_crit_edge

of_prop_val_eq.exit.do.end_crit_edge:             ; preds = %of_prop_val_eq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

of_prop_val_eq.exit.cleanup_crit_edge:            ; preds = %of_prop_val_eq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %of_prop_val_eq.exit.do.end_crit_edge, %if.then22.do.end_crit_edge
  %18 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %target, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %19) #15
  br label %cleanup

if.else29:                                        ; preds = %if.then18
  %call31 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(12) @.str.83) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end46.thread166

if.then33:                                        ; preds = %if.else29
  %length.i130 = getelementptr inbounds %struct.property, ptr %call15, i32 0, i32 1
  %20 = ptrtoint ptr %length.i130 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i130, align 4
  %length1.i131 = getelementptr inbounds %struct.property, ptr %overlay_prop, i32 0, i32 1
  %22 = ptrtoint ptr %length1.i131 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length1.i131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i132 = icmp eq i32 %21, %23
  br i1 %cmp.i132, label %of_prop_val_eq.exit139, label %if.then33.do.end39_crit_edge

if.then33.do.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

of_prop_val_eq.exit139:                           ; preds = %if.then33
  %value.i133 = getelementptr inbounds %struct.property, ptr %call15, i32 0, i32 2
  %24 = ptrtoint ptr %value.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value.i133, align 4
  %value2.i134 = getelementptr inbounds %struct.property, ptr %overlay_prop, i32 0, i32 2
  %26 = ptrtoint ptr %value2.i134 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value2.i134, align 4
  %bcmp.i135 = tail call i32 @bcmp(ptr %25, ptr %27, i32 %21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i135)
  %tobool.not.i136.not = icmp eq i32 %bcmp.i135, 0
  br i1 %tobool.not.i136.not, label %of_prop_val_eq.exit139.cleanup_crit_edge, label %of_prop_val_eq.exit139.do.end39_crit_edge

of_prop_val_eq.exit139.do.end39_crit_edge:        ; preds = %of_prop_val_eq.exit139
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

of_prop_val_eq.exit139.cleanup_crit_edge:         ; preds = %of_prop_val_eq.exit139
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end39:                                         ; preds = %of_prop_val_eq.exit139.do.end39_crit_edge, %if.then33.do.end39_crit_edge
  %28 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %target, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %29) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end16
  br i1 %is_symbols_prop, label %if.end46.if.end51_crit_edge, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end46.thread166:                               ; preds = %if.else29
  br i1 %is_symbols_prop, label %if.end46.thread166.cleanup_crit_edge, label %if.end46.thread166.if.end55_crit_edge

if.end46.thread166.if.end55_crit_edge:            ; preds = %if.end46.thread166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end46.thread166.cleanup_crit_edge:             ; preds = %if.end46.thread166
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46.thread:                                  ; preds = %entry
  br i1 %is_symbols_prop, label %if.end46.thread.if.end51_crit_edge, label %if.end46.thread.if.end55_crit_edge

if.end46.thread.if.end55_crit_edge:               ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end46.thread.if.end51_crit_edge:               ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end51:                                         ; preds = %if.end46.thread.if.end51_crit_edge, %if.end46.if.end51_crit_edge
  %value.i140 = getelementptr inbounds %struct.property, ptr %overlay_prop, i32 0, i32 2
  %30 = ptrtoint ptr %value.i140 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value.i140, align 4
  %tobool.not.i141 = icmp eq ptr %31, null
  br i1 %tobool.not.i141, label %if.end51.cleanup_crit_edge, label %if.end.i

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end51
  %length.i142 = getelementptr inbounds %struct.property, ptr %overlay_prop, i32 0, i32 1
  %32 = ptrtoint ptr %length.i142 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i142, align 4
  %call.i = tail call i32 @strnlen(ptr noundef nonnull %31, i32 noundef %33) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %33)
  %cmp.not.i = icmp ult i32 %call.i, %33
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @strlen(ptr noundef nonnull %31) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 1
  br i1 %cmp7.i, label %if.end4.i.cleanup_crit_edge, label %if.end9.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  %overlay_tree.i = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 3
  %34 = ptrtoint ptr %overlay_tree.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %overlay_tree.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 1
  %call10.i = tail call ptr @__of_find_node_by_path(ptr noundef %35, ptr noundef %add.ptr.i) #12
  %call11.i = tail call ptr @__of_find_node_by_path(ptr noundef %call10.i, ptr noundef nonnull @.str.90) #12
  tail call void @of_node_put(ptr noundef %call10.i) #12
  tail call void @of_node_put(ptr noundef %call11.i) #12
  %count.i = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 4
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp12109.i = icmp sgt i32 %37, 0
  br i1 %cmp12109.i, label %for.body.lr.ph.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %fragments.i = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 5
  %38 = ptrtoint ptr %fragments.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fragments.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.0110.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fragment, ptr %39, i32 %k.0110.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %cmp13.i = icmp eq ptr %41, %call11.i
  br i1 %cmp13.i, label %if.end19.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %k.0110.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %37
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19.i:                                       ; preds = %for.body.i
  %call21.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.91, ptr noundef %call11.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.i, i32 %call6.i)
  %cmp22.i = icmp sgt i32 %call21.i, %call6.i
  br i1 %cmp22.i, label %if.end19.i.cleanup_crit_edge, label %if.end24.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24.i:                                       ; preds = %if.end19.i
  %add.ptr25.i = getelementptr i8, ptr %31, i32 %call21.i
  %call26.i = tail call i32 @strlen(ptr noundef %add.ptr25.i) #18
  %target.i = getelementptr %struct.fragment, ptr %39, i32 %k.0110.i, i32 1
  %42 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %target.i, align 4
  %call27.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.91, ptr noundef %43) #12
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.end24.i.cleanup_crit_edge, label %if.end30.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30.i:                                       ; preds = %if.end24.i
  %call31.i = tail call i32 @strlen(ptr noundef nonnull %call27.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 64) #17
  %tobool33.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool33.not.i, label %if.end30.i.if.end55.thread.thread_crit_edge, label %if.end35.i

if.end30.i.if.end55.thread.thread_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.thread.thread

if.end35.i:                                       ; preds = %if.end30.i
  %45 = ptrtoint ptr %overlay_prop to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %overlay_prop, align 4
  %call36.i = tail call noalias ptr @kstrdup(ptr noundef %46, i32 noundef 3264) #12
  %47 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call36.i, ptr %call7.i.i.i, align 8
  %add.i = add i32 %call31.i, %call26.i
  %add38.i = add i32 %add.i, 1
  %length39.i = getelementptr inbounds %struct.property, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %length39.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add38.i, ptr %length39.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add38.i, i32 noundef 3520) #16
  %value42.i = getelementptr inbounds %struct.property, ptr %call7.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %value42.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i.i.i, ptr %value42.i, align 8
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i.i, align 8
  %tobool44.not.i = icmp eq ptr %51, null
  %tobool46.not.i = icmp eq ptr %call9.i.i.i, null
  %or.cond.i = select i1 %tobool44.not.i, i1 true, i1 %tobool46.not.i
  br i1 %or.cond.i, label %err_free_new_prop.i, label %if.end58.thread

err_free_new_prop.i:                              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %51) #12
  %52 = ptrtoint ptr %value42.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value42.i, align 8
  tail call void @kfree(ptr noundef %53) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end55.thread.thread

if.end55:                                         ; preds = %if.end46.thread.if.end55_crit_edge, %if.end46.thread166.if.end55_crit_edge, %if.end46.if.end55_crit_edge
  %tobool17.not147153 = phi i1 [ true, %if.end46.thread.if.end55_crit_edge ], [ %tobool17.not, %if.end46.if.end55_crit_edge ], [ false, %if.end46.thread166.if.end55_crit_edge ]
  %call54 = tail call ptr @__of_prop_dup(ptr noundef %overlay_prop, i32 noundef 3264) #12
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end55.cleanup_crit_edge, label %if.end58

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55.thread.thread:                           ; preds = %err_free_new_prop.i, %if.end30.i.if.end55.thread.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call27.i) #12
  br label %cleanup

if.end58.thread:                                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call50.i = tail call ptr @strcpy(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %call27.i) #18
  %add.ptr52.i = getelementptr i8, ptr %call9.i.i.i, i32 %call31.i
  %call53.i = tail call ptr @strcpy(ptr noundef %add.ptr52.i, ptr noundef %add.ptr25.i) #18
  %_flags.i.i = getelementptr inbounds %struct.property, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %_flags.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call27.i) #12
  br label %if.then60

if.end58:                                         ; preds = %if.end55
  br i1 %tobool17.not147153, label %if.end58.if.then60_crit_edge, label %if.else70

if.end58.if.then60_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60

if.then60:                                        ; preds = %if.end58.if.then60_crit_edge, %if.end58.thread
  %new_prop.0171177 = phi ptr [ %call7.i.i.i, %if.end58.thread ], [ %call54, %if.end58.if.then60_crit_edge ]
  %54 = ptrtoint ptr %in_livetree to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %in_livetree, align 4, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool62.not = icmp eq i8 %55, 0
  br i1 %tobool62.not, label %if.then63, label %if.then60.if.end67_crit_edge

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %target, align 4
  %deadprops = getelementptr inbounds %struct.device_node, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %deadprops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %deadprops, align 4
  %next = getelementptr inbounds %struct.property, ptr %new_prop.0171177, i32 0, i32 3
  %60 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %next, align 4
  %61 = load ptr, ptr %target, align 4
  %deadprops66 = getelementptr inbounds %struct.device_node, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %deadprops66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %new_prop.0171177, ptr %deadprops66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.then60.if.end67_crit_edge
  %cset = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 7
  %63 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %target, align 4
  %call.i143 = tail call i32 @of_changeset_action(ptr noundef %cset, i32 noundef 3, ptr noundef %64, ptr noundef nonnull %new_prop.0171177) #12
  br label %if.end74

if.else70:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %cset71 = getelementptr inbounds %struct.overlay_changeset, ptr %ovcs, i32 0, i32 7
  %65 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %target, align 4
  %call.i144 = tail call i32 @of_changeset_action(ptr noundef %cset71, i32 noundef 5, ptr noundef %66, ptr noundef nonnull %call54) #12
  br label %if.end74

if.end74:                                         ; preds = %if.else70, %if.end67
  %new_prop.0173 = phi ptr [ %call54, %if.else70 ], [ %new_prop.0171177, %if.end67 ]
  %ret.2 = phi i32 [ %call.i144, %if.else70 ], [ %call.i143, %if.end67 ]
  %67 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %target, align 4
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %_flags.i, align 4
  %71 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool77.not = icmp eq i32 %71, 0
  br i1 %tobool77.not, label %do.end81, label %if.end74.if.end86_crit_edge

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %new_prop.0173 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %new_prop.0173, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %68, ptr noundef %73) #15
  br label %if.end86

if.end86:                                         ; preds = %do.end81, %if.end74.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool87.not = icmp eq i32 %ret.2, 0
  br i1 %tobool87.not, label %if.end86.cleanup_crit_edge, label %if.then88

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %new_prop.0173 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %new_prop.0173, align 4
  tail call void @kfree(ptr noundef %75) #12
  %value = getelementptr inbounds %struct.property, ptr %new_prop.0173, i32 0, i32 2
  %76 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %value, align 4
  tail call void @kfree(ptr noundef %77) #12
  tail call void @kfree(ptr noundef nonnull %new_prop.0173) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end86.cleanup_crit_edge, %if.end55.thread.thread, %if.end55.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.thread166.cleanup_crit_edge, %do.end39, %of_prop_val_eq.exit139.cleanup_crit_edge, %do.end, %of_prop_val_eq.exit.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %of_prop_val_eq.exit.cleanup_crit_edge ], [ -22, %do.end ], [ 0, %of_prop_val_eq.exit139.cleanup_crit_edge ], [ -22, %do.end39 ], [ -12, %if.end55.cleanup_crit_edge ], [ %ret.2, %if.then88 ], [ 0, %if.end86.cleanup_crit_edge ], [ -12, %if.end51.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end4.i.cleanup_crit_edge ], [ -12, %if.end19.i.cleanup_crit_edge ], [ -12, %if.end24.i.cleanup_crit_edge ], [ -12, %if.end9.i.cleanup_crit_edge ], [ -22, %if.end46.thread166.cleanup_crit_edge ], [ -12, %if.end55.thread.thread ], [ -12, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_prop_dup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_find_node_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_node_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_node(ptr noundef %tree, ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tree, %np
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_next_child(ptr noundef %tree, ptr noundef null) #12
  %cmp1.not13 = icmp eq ptr %call, null
  br i1 %cmp1.not13, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.014 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %call2 = tail call fastcc i32 @find_node(ptr noundef nonnull %child.014, ptr noundef %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_node_put(ptr noundef nonnull %child.014) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call5 = tail call ptr @of_get_next_child(ptr noundef %tree, ptr noundef nonnull %child.014) #12
  %cmp1.not = icmp eq ptr %call5, null
  br i1 %cmp1.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !162, !163, !164, !166, !167, !168, !170, !172, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !207, !208, !209, !210, !212, !214, !216, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__ksymtab_of_overlay_notifier_register, !1, !"__ksymtab_of_overlay_notifier_register", i1 false, i1 false}
!1 = !{!"../drivers/of/overlay.c", i32 140, i32 1}
!2 = !{ptr @__ksymtab_of_overlay_notifier_unregister, !3, !"__ksymtab_of_overlay_notifier_unregister", i1 false, i1 false}
!3 = !{!"../drivers/of/overlay.c", i32 150, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/of/overlay.c", i32 1030, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_overlay_fdt_apply._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_overlay_fdt_apply._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/of/overlay.c", i32 1051, i32 3}
!12 = !{ptr @of_overlay_fdt_apply._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_overlay_fdt_apply._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_of_overlay_fdt_apply, !15, !"__ksymtab_of_overlay_fdt_apply", i1 false, i1 false}
!15 = !{!"../drivers/of/overlay.c", i32 1075, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/of/overlay.c", i32 1198, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @of_overlay_remove._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @of_overlay_remove._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/of/overlay.c", i32 1208, i32 3}
!23 = !{ptr @of_overlay_remove._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @of_overlay_remove._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/of/overlay.c", i32 1219, i32 3}
!27 = !{ptr @of_overlay_remove._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @of_overlay_remove._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/of/overlay.c", i32 1235, i32 3}
!31 = !{ptr @of_overlay_remove._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @of_overlay_remove._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/of/overlay.c", i32 1242, i32 3}
!35 = !{ptr @of_overlay_remove._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @of_overlay_remove._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/of/overlay.c", i32 1254, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @of_overlay_remove.__UNIQUE_ID_ddebug193, !38, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!41 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__ksymtab_of_overlay_remove, !43, !"__ksymtab_of_overlay_remove", i1 false, i1 false}
!43 = !{!"../drivers/of/overlay.c", i32 1258, i32 1}
!44 = !{ptr @__ksymtab_of_overlay_remove_all, !45, !"__ksymtab_of_overlay_remove_all", i1 false, i1 false}
!45 = !{!"../drivers/of/overlay.c", i32 1281, i32 1}
!46 = !{ptr @devicetree_state_flags, !47, !"devicetree_state_flags", i1 false, i1 false}
!47 = !{!"../drivers/of/overlay.c", i32 79, i32 12}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/of/overlay.c", i32 106, i32 8}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @of_overlay_phandle_mutex, !49, !"of_overlay_phandle_mutex", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/of/overlay.c", i32 122, i32 8}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @overlay_notify_chain, !53, !"overlay_notify_chain", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/of/overlay.c", i32 928, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @of_overlay_apply._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @of_overlay_apply._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/of/overlay.c", i32 963, i32 3}
!63 = !{ptr @of_overlay_apply._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @of_overlay_apply._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/of/overlay.c", i32 975, i32 4}
!67 = !{ptr @of_overlay_apply.__UNIQUE_ID_ddebug191, !66, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!68 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/of/overlay.c", i32 984, i32 3}
!71 = !{ptr @of_overlay_apply._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @of_overlay_apply._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/of/overlay.c", i32 992, i32 3}
!75 = !{ptr @of_overlay_apply._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @of_overlay_apply._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @of_overlay_apply.__UNIQUE_ID_ddebug192, !78, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!78 = !{!"../drivers/of/overlay.c", i32 1012, i32 2}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/of/overlay.c", i32 745, i32 3}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @init_overlay_changeset.__UNIQUE_ID_ddebug188, !80, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!83 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/of/overlay.c", i32 748, i32 3}
!86 = !{ptr @init_overlay_changeset.__UNIQUE_ID_ddebug189, !85, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!87 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/of/overlay.c", i32 751, i32 3}
!90 = !{ptr @init_overlay_changeset.__UNIQUE_ID_ddebug190, !89, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!91 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/of/overlay.c", i32 768, i32 45}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/of/overlay.c", i32 775, i32 36}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/of/overlay.c", i32 815, i32 43}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/of/overlay.c", i32 818, i32 4}
!100 = !{ptr @init_overlay_changeset._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @init_overlay_changeset._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/of/overlay.c", i32 827, i32 3}
!104 = !{ptr @init_overlay_changeset._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @init_overlay_changeset._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/of/overlay.c", i32 843, i32 2}
!108 = !{ptr @init_overlay_changeset._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @init_overlay_changeset._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/of/overlay.c", i32 696, i32 40}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/of/overlay.c", i32 700, i32 4}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @find_target._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @find_target._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/of/overlay.c", i32 705, i32 43}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/of/overlay.c", i32 709, i32 4}
!121 = !{ptr @find_target._entry.61, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @find_target._entry_ptr.63, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/of/overlay.c", i32 714, i32 2}
!125 = !{ptr @find_target._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @find_target._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/of/overlay.c", i32 659, i32 4}
!129 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @build_changeset.__UNIQUE_ID_ddebug186, !128, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!131 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/of/overlay.c", i32 673, i32 4}
!134 = !{ptr @build_changeset.__UNIQUE_ID_ddebug187, !133, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!135 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/of/overlay.c", i32 491, i32 4}
!138 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @build_changeset_next_level.__UNIQUE_ID_ddebug183, !137, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!140 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/of/overlay.c", i32 500, i32 4}
!143 = !{ptr @build_changeset_next_level.__UNIQUE_ID_ddebug184, !142, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!144 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/of/overlay.c", i32 312, i32 8}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/of/overlay.c", i32 313, i32 8}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/of/overlay.c", i32 314, i32 8}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/of/overlay.c", i32 323, i32 8}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/of/overlay.c", i32 325, i32 5}
!155 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @add_changeset_property._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @add_changeset_property._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/of/overlay.c", i32 331, i32 15}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/of/overlay.c", i32 333, i32 5}
!162 = !{ptr @add_changeset_property._entry.84, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @add_changeset_property._entry_ptr.86, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/of/overlay.c", i32 365, i32 3}
!166 = !{ptr @add_changeset_property._entry.87, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @add_changeset_property._entry_ptr.89, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/of/overlay.c", i32 225, i32 55}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/of/overlay.c", i32 237, i32 39}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/of/overlay.c", i32 433, i32 19}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/of/overlay.c", i32 523, i32 4}
!176 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @build_changeset_symbols_node.__UNIQUE_ID_ddebug185, !175, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!178 = !{ptr @.str.95, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/of/overlay.c", i32 556, i32 4}
!181 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @find_dup_cset_node_entry._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @find_dup_cset_node_entry._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/of/overlay.c", i32 592, i32 4}
!186 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @find_dup_cset_prop._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @find_dup_cset_prop._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/of/overlay.c", i32 120, i32 8}
!191 = !{ptr @ovcs_idr, !190, !"ovcs_idr", i1 false, i1 false}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/of/overlay.c", i32 1150, i32 4}
!194 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @overlay_removal_is_ok._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @overlay_removal_is_ok._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/of/overlay.c", i32 1117, i32 5}
!199 = !{ptr @.str.104, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @node_overlaps_later_cs._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @node_overlaps_later_cs._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @node_overlaps_later_cs._entry.105, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/of/overlay.c", i32 1123, i32 5}
!204 = !{ptr @node_overlaps_later_cs._entry_ptr.106, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/of/overlay.c", i32 177, i32 4}
!207 = !{ptr @.str.108, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @overlay_notify._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @overlay_notify._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/of/overlay.c", i32 153, i32 2}
!212 = !{ptr @.str.110, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/of/overlay.c", i32 154, i32 2}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/of/overlay.c", i32 155, i32 2}
!216 = !{ptr @.str.112, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/of/overlay.c", i32 156, i32 2}
!218 = !{ptr @of_overlay_action_name, !219, !"of_overlay_action_name", i1 false, i1 false}
!219 = !{!"../drivers/of/overlay.c", i32 152, i32 14}
!220 = !{ptr @ovcs_list, !221, !"ovcs_list", i1 false, i1 false}
!221 = !{!"../drivers/of/overlay.c", i32 119, i32 8}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"auto-init"}
!232 = !{i64 2148724662, i64 2148724667, i64 2148724680, i64 2148724724, i64 2148724758, i64 2148724779}
!233 = !{!"branch_weights", i32 1, i32 2000}
!234 = !{i8 0, i8 2}
