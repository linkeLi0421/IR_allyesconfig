; ModuleID = '/llk/IR_all_yes/drivers/vfio/mdev/mdev_core.c_pt.bc'
source_filename = "../drivers/vfio/mdev/mdev_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mdev_parent_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_mdev_parent_dev\09\09\09\09"
module asm "\09.long\09__crc_mdev_parent_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdev_parent_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22mdev_parent_dev\22\09\09\09\09\09"
module asm "__kstrtabns_mdev_parent_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mdev_get_type_group_id\22, \22a\22\09"
module asm "\09.weak\09__crc_mdev_get_type_group_id\09\09\09\09"
module asm "\09.long\09__crc_mdev_get_type_group_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdev_get_type_group_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mdev_get_type_group_id\22\09\09\09\09\09"
module asm "__kstrtabns_mdev_get_type_group_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtype_get_type_group_id\22, \22a\22\09"
module asm "\09.weak\09__crc_mtype_get_type_group_id\09\09\09\09"
module asm "\09.long\09__crc_mtype_get_type_group_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtype_get_type_group_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mtype_get_type_group_id\22\09\09\09\09\09"
module asm "__kstrtabns_mtype_get_type_group_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtype_get_parent_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_mtype_get_parent_dev\09\09\09\09"
module asm "\09.long\09__crc_mtype_get_parent_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtype_get_parent_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22mtype_get_parent_dev\22\09\09\09\09\09"
module asm "__kstrtabns_mtype_get_parent_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mdev_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mdev_register_device\09\09\09\09"
module asm "\09.long\09__crc_mdev_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdev_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mdev_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_mdev_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mdev_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mdev_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_mdev_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdev_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mdev_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_mdev_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.mdev_driver = type { ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mdev_device = type { %struct.device, %struct.guid_t, ptr, %struct.list_head, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.guid_t = type { [16 x i8] }
%struct.mdev_type = type { %struct.kobject, ptr, ptr, %struct.list_head, i32 }
%struct.mdev_parent_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdev_parent = type { ptr, ptr, %struct.kref, %struct.list_head, ptr, %struct.list_head, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_mdev_parent_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdev_parent_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_mdev_parent_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdev_parent_dev to i32), ptr @__kstrtab_mdev_parent_dev, ptr @__kstrtabns_mdev_parent_dev }, section "___ksymtab+mdev_parent_dev", align 4
@__kstrtab_mdev_get_type_group_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdev_get_type_group_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mdev_get_type_group_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdev_get_type_group_id to i32), ptr @__kstrtab_mdev_get_type_group_id, ptr @__kstrtabns_mdev_get_type_group_id }, section "___ksymtab+mdev_get_type_group_id", align 4
@__kstrtab_mtype_get_type_group_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtype_get_type_group_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mtype_get_type_group_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtype_get_type_group_id to i32), ptr @__kstrtab_mtype_get_type_group_id, ptr @__kstrtabns_mtype_get_type_group_id }, section "___ksymtab+mtype_get_type_group_id", align 4
@__kstrtab_mtype_get_parent_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtype_get_parent_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_mtype_get_parent_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtype_get_parent_dev to i32), ptr @__kstrtab_mtype_get_parent_dev, ptr @__kstrtabns_mtype_get_parent_dev }, section "___ksymtab+mtype_get_parent_dev", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MDEV_STATE=registered\00", [42 x i8] zeroinitializer }, align 32
@parent_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @parent_list_lock, i64 52), ptr getelementptr (i8, ptr @parent_list_lock, i64 52) }, ptr @parent_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mdev_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&parent->unreg_sem\00", [45 x i8] zeroinitializer }, align 32
@mdev_bus_compat_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdev_bus\00", [23 x i8] zeroinitializer }, align 32
@mdev_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 177, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to create compatibility class link\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdev_register_device\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/vfio/mdev/mdev_core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdev_register_device._entry_ptr = internal global ptr @mdev_register_device._entry, section ".printk_index", align 4
@parent_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @parent_list, ptr @parent_list }, [24 x i8] zeroinitializer }, align 32
@mdev_register_device._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 182, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MDEV: Registered\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mdev_register_device._entry_ptr.11 = internal global ptr @mdev_register_device._entry.8, section ".printk_index", align 4
@__kstrtab_mdev_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdev_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mdev_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdev_register_device to i32), ptr @__kstrtab_mdev_register_device, ptr @__kstrtabns_mdev_register_device }, section "___ksymtab+mdev_register_device", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MDEV_STATE=unregistered\00", [40 x i8] zeroinitializer }, align 32
@mdev_unregister_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 218, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MDEV: Unregistering\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mdev_unregister_device\00", [41 x i8] zeroinitializer }, align 32
@mdev_unregister_device._entry_ptr = internal global ptr @mdev_unregister_device._entry, section ".printk_index", align 4
@__kstrtab_mdev_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdev_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mdev_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdev_unregister_device to i32), ptr @__kstrtab_mdev_unregister_device, ptr @__kstrtabns_mdev_unregister_device }, section "___ksymtab+mdev_unregister_device", align 4
@mdev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mdev_list_lock, i64 52), ptr getelementptr (i8, ptr @mdev_list_lock, i64 52) }, ptr @mdev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mdev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mdev_list, ptr @mdev_list }, [24 x i8] zeroinitializer }, align 32
@mdev_bus_type = external dso_local global %struct.bus_type, align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@vfio_mdev_driver = external dso_local global %struct.mdev_driver, align 4
@mdev_device_create.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdev\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mdev_device_create\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MDEV: created\0A\00", [17 x i8] zeroinitializer }, align 32
@__initcall__kmod_mdev__185_397_mdev_init4 = internal global ptr @mdev_init, section ".initcall4.init", align 4
@__exitcall_mdev_exit = internal global ptr @mdev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version186 = internal constant [17 x i8] c"mdev.version=0.1\00", section ".modinfo", align 1
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.16, ptr @.str.20 }, section "__modver", align 4
@__UNIQUE_ID_file187 = internal constant [33 x i8] c"mdev.file=drivers/vfio/mdev/mdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [20 x i8] c"mdev.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [31 x i8] c"mdev.author=NVIDIA Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [45 x i8] c"mdev.description=Mediated device Core Driver\00", section ".modinfo", align 1
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parent_list_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parent_list_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mdev_list_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mdev_list_lock\00", [17 x i8] zeroinitializer }, align 32
@mdev_device_release.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mdev_device_release\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MDEV: destroying\0A\00", [46 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mdev_device_remove_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 100, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Remove failed: err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mdev_device_remove_common\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mdev_device_remove_common._entry_ptr = internal global ptr @mdev_device_remove_common._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 128, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"parent_list_lock\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 158, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"mdev_bus_compat_class\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 25, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 164, i32 49 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 177, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"parent_list\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 23, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 182, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 208, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 218, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"mdev_list_lock\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"mdev_list\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 27, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 290, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 321, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 400, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 24, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 28, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 250, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [33 x i8] c"../drivers/vfio/mdev/mdev_core.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 100, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__UNIQUE_ID_version186, ptr @__exitcall_mdev_exit, ptr @__initcall__kmod_mdev__185_397_mdev_init4, ptr @__ksymtab_mdev_get_type_group_id, ptr @__ksymtab_mdev_parent_dev, ptr @__ksymtab_mdev_register_device, ptr @__ksymtab_mdev_unregister_device, ptr @__ksymtab_mtype_get_parent_dev, ptr @__ksymtab_mtype_get_type_group_id, ptr @__modver_attr, ptr @mdev_device_remove_common._entry, ptr @mdev_device_remove_common._entry_ptr, ptr @mdev_exit, ptr @mdev_register_device._entry, ptr @mdev_register_device._entry.8, ptr @mdev_register_device._entry_ptr, ptr @mdev_register_device._entry_ptr.11, ptr @mdev_unregister_device._entry, ptr @mdev_unregister_device._entry_ptr, ptr @.str, ptr @parent_list_lock, ptr @mdev_register_device.__key, ptr @.str.1, ptr @mdev_bus_compat_class, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @parent_list, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mdev_list_lock, ptr @mdev_list, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_bus_compat_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_register_device._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_unregister_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_device_remove_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mdev_parent_dev(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %parent = getelementptr inbounds %struct.mdev_type, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mdev_get_type_group_id(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %type_group_id = getelementptr inbounds %struct.mdev_type, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type_group_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_group_id, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtype_get_type_group_id(ptr nocapture noundef readonly %mtype) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type_group_id = getelementptr inbounds %struct.mdev_type, ptr %mtype, i32 0, i32 4
  %0 = ptrtoint ptr %type_group_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_group_id, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mtype_get_parent_dev(ptr nocapture noundef readonly %mtype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.mdev_type, ptr %mtype, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdev_release_parent(ptr noundef %kref) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %add.ptr) #10
  tail call void @put_device(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdev_register_device(ptr noundef %dev, ptr noundef %ops) #2 align 64 {
entry:
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #10
  %0 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %1 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %envp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  %tobool.not = icmp eq ptr %ops, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %supported_type_groups = getelementptr inbounds %struct.mdev_parent_ops, ptr %ops, i32 0, i32 4
  %3 = ptrtoint ptr %supported_type_groups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %supported_type_groups, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %device_driver = getelementptr inbounds %struct.mdev_parent_ops, ptr %ops, i32 0, i32 1
  %5 = ptrtoint ptr %device_driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_driver, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %create = getelementptr inbounds %struct.mdev_parent_ops, ptr %ops, i32 0, i32 5
  %7 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %create, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %land.lhs.true
  %remove = getelementptr inbounds %struct.mdev_parent_ops, ptr %ops, i32 0, i32 6
  %9 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remove, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.if.end7_crit_edge

lor.lhs.false4.if.end7_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call = tail call ptr @get_device(ptr noundef %dev) #10
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  tail call void @mutex_lock_nested(ptr noundef nonnull @parent_list_lock, i32 noundef 0) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10
  %.pn.in.i = phi ptr [ @parent_list, %if.end10 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @parent_list
  br i1 %cmp.not.i, label %for.cond.i.if.end14_crit_edge, label %for.body.i

for.cond.i.if.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.body.i:                                       ; preds = %for.cond.i
  %parent.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %12 = ptrtoint ptr %parent.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.0.i, align 4
  %cmp2.i = icmp eq ptr %13, %call
  br i1 %cmp2.i, label %__find_parent_device.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

__find_parent_device.exit:                        ; preds = %for.body.i
  %parent.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool12.not = icmp eq ptr %parent.0.i.le, null
  br i1 %tobool12.not, label %__find_parent_device.exit.if.end14_crit_edge, label %__find_parent_device.exit.if.else_crit_edge

__find_parent_device.exit.if.else_crit_edge:      ; preds = %__find_parent_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

__find_parent_device.exit.if.end14_crit_edge:     ; preds = %__find_parent_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %__find_parent_device.exit.if.end14_crit_edge, %for.cond.i.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 128) #13
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.if.else_crit_edge, label %if.end18

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end18:                                         ; preds = %if.end14
  %ref = getelementptr inbounds %struct.mdev_parent, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  %15 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %ref, align 8
  %unreg_sem = getelementptr inbounds %struct.mdev_parent, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_rwsem(ptr noundef %unreg_sem, ptr noundef nonnull @.str.1, ptr noundef nonnull @mdev_register_device.__key) #10
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %call7.i.i, align 8
  %ops20 = getelementptr inbounds %struct.mdev_parent, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ops20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ops, ptr %ops20, align 4
  %18 = load ptr, ptr @mdev_bus_compat_class, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  %call23 = tail call ptr @class_compat_register(ptr noundef nonnull @.str.2) #10
  store ptr %call23, ptr @mdev_bus_compat_class, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then22.if.then44_crit_edge, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22.if.then44_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %call28 = tail call i32 @parent_create_sysfs_files(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.if.then44_crit_edge

if.end27.if.then44_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end31:                                         ; preds = %if.end27
  %19 = load ptr, ptr @mdev_bus_compat_class, align 4
  %call32 = tail call i32 @class_compat_create_link(ptr noundef %19, ptr noundef nonnull %call, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.if.end38_crit_edge, label %do.end37

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.3) #14
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.end31.if.end38_crit_edge
  %next = getelementptr inbounds %struct.mdev_parent, ptr %call7.i.i, i32 0, i32 3
  %20 = load ptr, ptr @parent_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef nonnull @parent_list, ptr noundef %20) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_add.exit_crit_edge

if.end38.list_add.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %next, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %next, align 4
  %prev3.i.i = getelementptr inbounds %struct.mdev_parent, ptr %call7.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @parent_list, ptr %prev3.i.i, align 8
  store volatile ptr %next, ptr @parent_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end38.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @parent_list_lock) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.9) #14
  %call42 = call i32 @kobject_uevent_env(ptr noundef nonnull %call, i32 noundef 2, ptr noundef nonnull %envp) #10
  br label %cleanup

if.then44:                                        ; preds = %if.end27.if.then44_crit_edge, %if.then22.if.then44_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end27.if.then44_crit_edge ], [ -12, %if.then22.if.then44_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @parent_list_lock) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @put_device(ptr noundef %26) #10
  br label %cleanup

if.else:                                          ; preds = %if.end14.if.else_crit_edge, %__find_parent_device.exit.if.else_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end14.if.else_crit_edge ], [ -17, %__find_parent_device.exit.if.else_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @parent_list_lock) #10
  tail call void @put_device(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %list_add.exit, %if.end7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %ret.0.ph, %if.else ], [ %ret.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i ], [ %ret.0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_compat_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parent_create_sysfs_files(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_compat_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdev_unregister_device(ptr noundef %dev) #2 align 64 {
entry:
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #10
  %0 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %1 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.12, ptr %envp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @parent_list_lock, i32 noundef 0) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @parent_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @parent_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %parent.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %4 = ptrtoint ptr %parent.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.0.i, align 4
  %cmp2.i = icmp eq ptr %5, %dev
  br i1 %cmp2.i, label %__find_parent_device.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

__find_parent_device.exit:                        ; preds = %for.body.i
  %parent.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %parent.0.i.le, null
  br i1 %tobool.not, label %__find_parent_device.exit.if.then_crit_edge, label %do.end

__find_parent_device.exit.if.then_crit_edge:      ; preds = %__find_parent_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %__find_parent_device.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @parent_list_lock) #10
  br label %cleanup

do.end:                                           ; preds = %__find_parent_device.exit
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @parent_list_lock) #10
  %unreg_sem = getelementptr i8, ptr %.pn.i, i32 20
  tail call void @down_write(ptr noundef %unreg_sem) #10
  %14 = load ptr, ptr @mdev_bus_compat_class, align 4
  tail call void @class_compat_remove_link(ptr noundef %14, ptr noundef %dev, ptr noundef null) #10
  %call1 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @mdev_device_remove_cb) #10
  tail call void @parent_remove_sysfs_files(ptr noundef nonnull %parent.0.i.le) #10
  tail call void @up_write(ptr noundef %unreg_sem) #10
  %ref.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mdev_put_parent.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !97

if.end5.i.i.i.i.i.mdev_put_parent.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mdev_put_parent.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #10
  br label %mdev_put_parent.exit

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  %16 = ptrtoint ptr %parent.0.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.0.i.le, align 4
  tail call void @kfree(ptr noundef nonnull %parent.0.i.le) #10
  tail call void @put_device(ptr noundef %17) #10
  br label %mdev_put_parent.exit

mdev_put_parent.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mdev_put_parent.exit_crit_edge
  %call3 = call i32 @kobject_uevent_env(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %envp) #10
  br label %cleanup

cleanup:                                          ; preds = %mdev_put_parent.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_compat_remove_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_device_remove_cb(ptr noundef %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp ne ptr %1, @mdev_bus_type
  %tobool.not2 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not2, %cmp.i
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mdev_device_remove_common(ptr noundef nonnull %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parent_remove_sysfs_files(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdev_device_create(ptr noundef %type, ptr noundef %uuid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.mdev_type, ptr %type, i32 0, i32 2
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %ops = getelementptr inbounds %struct.mdev_parent, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %device_driver = getelementptr inbounds %struct.mdev_parent_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_driver, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mdev_list_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @mdev_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @mdev_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %uuid3 = getelementptr i8, ptr %.pn, i32 -20
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid3, ptr noundef dereferenceable(16) %uuid, i32 16) #15
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 968) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  br label %cleanup

if.end11:                                         ; preds = %for.end
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %parent14 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %parent14, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mdev_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mdev_device_release, ptr %release, align 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %mdev_attr_groups = getelementptr inbounds %struct.mdev_parent_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mdev_attr_groups to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev_attr_groups, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %groups, align 8
  %type19 = getelementptr inbounds %struct.mdev_device, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %type, ptr %type19, align 4
  %call20 = tail call ptr @kobject_get(ptr noundef %type) #10
  %uuid21 = getelementptr inbounds %struct.mdev_device, ptr %call7.i.i, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %uuid21, ptr %uuid, i32 16)
  %next22 = getelementptr inbounds %struct.mdev_device, ptr %call7.i.i, i32 0, i32 3
  %20 = load ptr, ptr @mdev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next22, ptr noundef nonnull @mdev_list, ptr noundef %20) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add.exit_crit_edge

if.end11.list_add.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %next22, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %next22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %next22, align 4
  %prev3.i.i = getelementptr inbounds %struct.mdev_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mdev_list, ptr %prev3.i.i, align 8
  store volatile ptr %next22, ptr @mdev_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end11.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  %call24 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.15, ptr noundef %uuid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %list_add.exit.out_put_device_crit_edge

list_add.exit.out_put_device_crit_edge:           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put_device

if.end27:                                         ; preds = %list_add.exit
  %unreg_sem = getelementptr inbounds %struct.mdev_parent, ptr %1, i32 0, i32 6
  %call28 = tail call i32 @down_read_trylock(ptr noundef %unreg_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.out_put_device_crit_edge, label %if.end31

if.end27.out_put_device_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put_device

if.end31:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %create = getelementptr inbounds %struct.mdev_parent_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %create to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %create, align 4
  %tobool33.not = icmp eq ptr %27, null
  br i1 %tobool33.not, label %if.end31.if.end41_crit_edge, label %if.then34

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then34:                                        ; preds = %if.end31
  %call37 = tail call i32 %27(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then34.if.end41_crit_edge, label %if.then34.out_unlock_crit_edge

if.then34.out_unlock_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.then34.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %call43 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.out_remove_crit_edge

if.end41.out_remove_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_remove

if.end46:                                         ; preds = %if.end41
  %tobool47.not = icmp eq ptr %5, null
  %spec.store.select = select i1 %tobool47.not, ptr @vfio_mdev_driver, ptr %5
  %driver = getelementptr inbounds %struct.mdev_driver, ptr %spec.store.select, i32 0, i32 2
  %call51 = tail call i32 @device_driver_attach(ptr noundef %driver, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end46.out_del_crit_edge

if.end46.out_del_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_del

if.end54:                                         ; preds = %if.end46
  %call55 = tail call i32 @mdev_create_sysfs_files(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.out_del_crit_edge

if.end54.out_del_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_del

if.end58:                                         ; preds = %if.end54
  %active = getelementptr inbounds %struct.mdev_device, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %active, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdev_device_create.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdev_device_create, %if.then65)) #10
          to label %do.end [label %if.then65], !srcloc !99

if.then65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdev_device_create.__UNIQUE_ID_ddebug184, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.18) #10
  br label %do.end

do.end:                                           ; preds = %if.then65, %if.end58
  tail call void @up_read(ptr noundef %unreg_sem) #10
  br label %cleanup

out_del:                                          ; preds = %if.end54.out_del_crit_edge, %if.end46.out_del_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end46.out_del_crit_edge ], [ %call55, %if.end54.out_del_crit_edge ]
  tail call void @device_del(ptr noundef nonnull %call7.i.i) #10
  br label %out_remove

out_remove:                                       ; preds = %out_del, %if.end41.out_remove_crit_edge
  %ret.1 = phi i32 [ %call43, %if.end41.out_remove_crit_edge ], [ %ret.0, %out_del ]
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.mdev_parent_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remove, align 4
  %tobool71.not = icmp eq ptr %32, null
  br i1 %tobool71.not, label %out_remove.out_unlock_crit_edge, label %if.then72

out_remove.out_unlock_crit_edge:                  ; preds = %out_remove
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then72:                                        ; preds = %out_remove
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 %32(ptr noundef nonnull %call7.i.i) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.then72, %out_remove.out_unlock_crit_edge, %if.then34.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call37, %if.then34.out_unlock_crit_edge ], [ %ret.1, %if.then72 ], [ %ret.1, %out_remove.out_unlock_crit_edge ]
  tail call void @up_read(ptr noundef %unreg_sem) #10
  br label %out_put_device

out_put_device:                                   ; preds = %out_unlock, %if.end27.out_put_device_crit_edge, %list_add.exit.out_put_device_crit_edge
  %ret.3 = phi i32 [ %call24, %list_add.exit.out_put_device_crit_edge ], [ %ret.2, %out_unlock ], [ -19, %if.end27.out_put_device_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_put_device, %do.end, %if.then10, %if.then
  %retval.0 = phi i32 [ -17, %if.then ], [ %ret.3, %out_put_device ], [ 0, %do.end ], [ -12, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdev_device_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdev_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  tail call void @kobject_put(ptr noundef %1) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @mdev_list_lock, i32 noundef 0) #10
  %next = getelementptr inbounds %struct.mdev_device, ptr %dev, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.mdev_device, ptr %dev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.mdev_device, ptr %dev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdev_device_release.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdev_device_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdev_device_release.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %list_del.exit
  tail call void @kfree(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_driver_attach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_create_sysfs_files(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdev_device_remove(ptr noundef %mdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %parent1 = getelementptr inbounds %struct.mdev_type, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mdev_list_lock, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @mdev_list, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %tmp.0 = getelementptr i8, ptr %.pn, i32 -948
  %cmp.not = icmp eq ptr %.pn, @mdev_list
  %cmp3 = icmp eq ptr %tmp.0, %mdev
  %or.cond = or i1 %cmp.not, %cmp3
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp3, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %active = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 5
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active, align 8, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %active, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @mdev_list_lock) #10
  %unreg_sem = getelementptr inbounds %struct.mdev_parent, ptr %3, i32 0, i32 6
  %call = tail call i32 @down_read_trylock(ptr noundef %unreg_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mdev_device_remove_common(ptr noundef %mdev)
  tail call void @up_read(ptr noundef %unreg_sem) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.then12, %if.then10
  %retval.0 = phi i32 [ -19, %if.then10 ], [ 0, %if.end17 ], [ -11, %if.then12 ], [ -19, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdev_device_remove_common(ptr noundef %mdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %parent1 = getelementptr inbounds %struct.mdev_type, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 4
  tail call void @mdev_remove_sysfs_files(ptr noundef %mdev) #10
  tail call void @device_del(ptr noundef %mdev) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mdev_parent, ptr %3, i32 0, i32 6, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !101

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 96, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.mdev_parent, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.mdev_parent_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remove, align 4
  %tobool25.not = icmp eq ptr %8, null
  br i1 %tobool25.not, label %if.end.if.end37_crit_edge, label %if.then26

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then26:                                        ; preds = %if.end
  %call29 = tail call i32 %8(ptr noundef %mdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then26.if.end37_crit_edge, label %do.end34

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end34:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.27, i32 noundef %call29) #14
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.then26.if.end37_crit_edge, %if.end.if.end37_crit_edge
  tail call void @put_device(ptr noundef %mdev) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdev_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mdev_unregister_driver(ptr noundef nonnull @vfio_mdev_driver) #10
  %0 = load ptr, ptr @mdev_bus_compat_class, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @class_compat_unregister(ptr noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mdev_bus_unregister() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_unregister_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_compat_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_bus_unregister() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdev_bus_register() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mdev_register_driver(ptr noundef nonnull @vfio_mdev_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_bus

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_bus:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mdev_bus_unregister() #10
  br label %cleanup

cleanup:                                          ; preds = %err_bus, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_bus ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_remove_sysfs_files(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_bus_register() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_register_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !83, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__ksymtab_mdev_parent_dev, !1, !"__ksymtab_mdev_parent_dev", i1 false, i1 false}
!1 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 34, i32 1}
!2 = !{ptr @__ksymtab_mdev_get_type_group_id, !3, !"__ksymtab_mdev_get_type_group_id", i1 false, i1 false}
!3 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 44, i32 1}
!4 = !{ptr @__ksymtab_mtype_get_type_group_id, !5, !"__ksymtab_mtype_get_type_group_id", i1 false, i1 false}
!5 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 54, i32 1}
!6 = !{ptr @__ksymtab_mtype_get_parent_dev, !7, !"__ksymtab_mtype_get_parent_dev", i1 false, i1 false}
!7 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 64, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 128, i32 21}
!10 = !{ptr @mdev_register_device.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 158, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 164, i32 49}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 177, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mdev_register_device._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @mdev_register_device._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 182, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mdev_register_device._entry.8, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mdev_register_device._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_mdev_register_device, !29, !"__ksymtab_mdev_register_device", i1 false, i1 false}
!29 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 195, i32 1}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 208, i32 21}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 218, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mdev_unregister_device._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mdev_unregister_device._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_mdev_unregister_device, !38, !"__ksymtab_mdev_unregister_device", i1 false, i1 false}
!38 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 237, i32 1}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 290, i32 33}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 321, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mdev_device_create.__UNIQUE_ID_ddebug184, !42, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!46 = !{ptr @__initcall__kmod_mdev__185_397_mdev_init4, !47, !"__initcall__kmod_mdev__185_397_mdev_init4", i1 false, i1 false}
!47 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 397, i32 1}
!48 = !{ptr @__exitcall_mdev_exit, !49, !"__exitcall_mdev_exit", i1 false, i1 false}
!49 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 398, i32 1}
!50 = !{ptr @__UNIQUE_ID_version186, !51, !"__UNIQUE_ID_version186", i1 false, i1 false}
!51 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 400, i32 1}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__modver_attr, !51, !"__modver_attr", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_file187, !56, !"__UNIQUE_ID_file187", i1 false, i1 false}
!56 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 401, i32 1}
!57 = !{ptr @__UNIQUE_ID_license188, !56, !"__UNIQUE_ID_license188", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_author189, !59, !"__UNIQUE_ID_author189", i1 false, i1 false}
!59 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 402, i32 1}
!60 = !{ptr @__UNIQUE_ID_description190, !61, !"__UNIQUE_ID_description190", i1 false, i1 false}
!61 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 403, i32 1}
!62 = !{ptr @mdev_bus_compat_class, !63, !"mdev_bus_compat_class", i1 false, i1 false}
!63 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 25, i32 29}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 24, i32 8}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @parent_list_lock, !65, !"parent_list_lock", i1 false, i1 false}
!68 = !{ptr @parent_list, !69, !"parent_list", i1 false, i1 false}
!69 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 23, i32 8}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 28, i32 8}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mdev_list_lock, !71, !"mdev_list_lock", i1 false, i1 false}
!74 = !{ptr @mdev_list, !75, !"mdev_list", i1 false, i1 false}
!75 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 27, i32 8}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 250, i32 2}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mdev_device_release.__UNIQUE_ID_ddebug183, !77, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/vfio/mdev/mdev_core.c", i32 100, i32 4}
!82 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mdev_device_remove_common._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @mdev_device_remove_common._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148436569}
!96 = !{i64 2148351009, i64 2148351041, i64 2148351070, i64 2148351104, i64 2148351135, i64 2148351158}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2149312683}
!99 = !{i64 2148960391, i64 2148960396, i64 2148960409, i64 2148960453, i64 2148960487, i64 2148960508}
!100 = !{i8 0, i8 2}
!101 = !{!"branch_weights", i32 1, i32 2000}
