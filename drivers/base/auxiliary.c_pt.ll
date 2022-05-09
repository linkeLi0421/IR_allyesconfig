; ModuleID = '/llk/IR_all_yes/drivers/base/auxiliary.c_pt.bc'
source_filename = "../drivers/base/auxiliary.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+auxiliary_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_auxiliary_device_init\09\09\09\09"
module asm "\09.long\09__crc_auxiliary_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_auxiliary_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22auxiliary_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_auxiliary_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__auxiliary_device_add\22, \22a\22\09"
module asm "\09.weak\09__crc___auxiliary_device_add\09\09\09\09"
module asm "\09.long\09__crc___auxiliary_device_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___auxiliary_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22__auxiliary_device_add\22\09\09\09\09\09"
module asm "__kstrtabns___auxiliary_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+auxiliary_find_device\22, \22a\22\09"
module asm "\09.weak\09__crc_auxiliary_find_device\09\09\09\09"
module asm "\09.long\09__crc_auxiliary_find_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_auxiliary_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22auxiliary_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_auxiliary_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__auxiliary_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___auxiliary_driver_register\09\09\09\09"
module asm "\09.long\09__crc___auxiliary_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___auxiliary_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__auxiliary_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___auxiliary_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+auxiliary_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_auxiliary_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_auxiliary_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_auxiliary_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22auxiliary_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_auxiliary_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auxiliary_device_id = type { [32 x i8], i32 }

@auxiliary_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s:%s: auxiliary_device has a NULL dev->parent\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"auxiliary_device_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/base/auxiliary.c\00", [39 x i8] zeroinitializer }, align 32
@auxiliary_device_init._entry_ptr = internal global ptr @auxiliary_device_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"auxiliary\00", [22 x i8] zeroinitializer }, align 32
@auxiliary_device_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%s: auxiliary_device has a NULL name\0A\00", [53 x i8] zeroinitializer }, align 32
@auxiliary_device_init._entry_ptr.6 = internal global ptr @auxiliary_device_init._entry.4, section ".printk_index", align 4
@auxiliary_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @auxiliary_match, ptr @auxiliary_uevent, ptr @auxiliary_bus_probe, ptr null, ptr @auxiliary_bus_remove, ptr @auxiliary_bus_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @auxiliary_dev_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_auxiliary_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_auxiliary_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_auxiliary_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @auxiliary_device_init to i32), ptr @__kstrtab_auxiliary_device_init, ptr @__kstrtabns_auxiliary_device_init }, section "___ksymtab_gpl+auxiliary_device_init", align 4
@__auxiliary_device_add._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 319, ptr @.str.9, ptr @.str.10 }, align 1
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"auxiliary device modname is NULL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__auxiliary_device_add\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__auxiliary_device_add._entry_ptr = internal global ptr @__auxiliary_device_add._entry, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s.%s.%d\00", [23 x i8] zeroinitializer }, align 32
@__auxiliary_device_add._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 325, ptr @.str.9, ptr @.str.10 }, align 1
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"auxiliary device dev_set_name failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__auxiliary_device_add._entry_ptr.14 = internal global ptr @__auxiliary_device_add._entry.12, section ".printk_index", align 4
@__auxiliary_device_add._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 331, ptr @.str.9, ptr @.str.10 }, align 1
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"adding auxiliary device failed!: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__auxiliary_device_add._entry_ptr.17 = internal global ptr @__auxiliary_device_add._entry.15, section ".printk_index", align 4
@__kstrtab___auxiliary_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns___auxiliary_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab___auxiliary_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__auxiliary_device_add to i32), ptr @__kstrtab___auxiliary_device_add, ptr @__kstrtabns___auxiliary_device_add }, section "___ksymtab_gpl+__auxiliary_device_add", align 4
@__kstrtab_auxiliary_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_auxiliary_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_auxiliary_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @auxiliary_find_device to i32), ptr @__kstrtab_auxiliary_find_device, ptr @__kstrtabns_auxiliary_find_device }, section "___ksymtab_gpl+auxiliary_find_device", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab___auxiliary_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___auxiliary_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___auxiliary_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__auxiliary_driver_register to i32), ptr @__kstrtab___auxiliary_driver_register, ptr @__kstrtabns___auxiliary_driver_register }, section "___ksymtab_gpl+__auxiliary_driver_register", align 4
@__kstrtab_auxiliary_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_auxiliary_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_auxiliary_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @auxiliary_driver_unregister to i32), ptr @__kstrtab_auxiliary_driver_unregister, ptr @__kstrtabns_auxiliary_driver_unregister }, section "___ksymtab_gpl+auxiliary_driver_unregister", align 4
@auxiliary_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MODALIAS=%s%.*s\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"auxiliary:\00", [21 x i8] zeroinitializer }, align 32
@auxiliary_bus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 212, ptr @.str.24, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to attach to PM Domain : %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"auxiliary_bus_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@auxiliary_bus_probe._entry_ptr = internal global ptr @auxiliary_bus_probe._entry, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 279, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 284, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"auxiliary_bus_type\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 247, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 319, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 323, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 325, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 331, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 386, i32 47 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 389, i32 47 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"auxiliary_dev_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 199, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 195, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 195, i32 48 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [28 x i8] c"../drivers/base/auxiliary.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 212, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__auxiliary_device_add._entry, ptr @__auxiliary_device_add._entry.12, ptr @__auxiliary_device_add._entry.15, ptr @__auxiliary_device_add._entry_ptr, ptr @__auxiliary_device_add._entry_ptr.14, ptr @__auxiliary_device_add._entry_ptr.17, ptr @__ksymtab___auxiliary_device_add, ptr @__ksymtab___auxiliary_driver_register, ptr @__ksymtab_auxiliary_device_init, ptr @__ksymtab_auxiliary_driver_unregister, ptr @__ksymtab_auxiliary_find_device, ptr @auxiliary_bus_probe._entry, ptr @auxiliary_bus_probe._entry_ptr, ptr @auxiliary_device_init._entry, ptr @auxiliary_device_init._entry.4, ptr @auxiliary_device_init._entry_ptr, ptr @auxiliary_device_init._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @auxiliary_bus_type, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @auxiliary_dev_pm_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxiliary_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxiliary_device_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxiliary_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxiliary_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxiliary_bus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @auxiliary_device_init(ptr noundef %auxdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %auxdev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %auxdev, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bus = getelementptr inbounds %struct.device, ptr %auxdev, i32 0, i32 5
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @auxiliary_bus_type, ptr %bus, align 8
  tail call void @device_initialize(ptr noundef %auxdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.end6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__auxiliary_device_add(ptr noundef %auxdev, ptr noundef %modname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %modname, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %auxdev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.auxiliary_device, ptr %auxdev, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.auxiliary_device, ptr %auxdev, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %auxdev, ptr noundef nonnull @.str.11, ptr noundef nonnull %modname, ptr noundef %1, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %auxdev, ptr noundef nonnull @.str.13, i32 noundef %call) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @device_add(ptr noundef %auxdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %auxdev, ptr noundef nonnull @.str.16, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end6 ], [ -22, %do.end ], [ %call8, %do.end13 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @auxiliary_find_device(ptr noundef %start, ptr noundef %data, ptr noundef %match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bus_find_device(ptr noundef nonnull @auxiliary_bus_type, ptr noundef %start, ptr noundef %data, ptr noundef %match) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__auxiliary_driver_register(ptr noundef %auxdrv, ptr noundef %owner, ptr noundef %modname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %auxdrv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auxdrv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !65

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 382, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %id_table = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 7
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %tobool23.not = icmp eq ptr %3, null
  br i1 %tobool23.not, label %do.end41, label %if.end57, !prof !65

do.end41:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 382, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false.critedge
  %name = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 5
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool58.not = icmp eq ptr %5, null
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.18, ptr noundef %modname, ptr noundef nonnull %5) #6
  br label %if.end65

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %modname) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then59
  %call.sink = phi ptr [ %call62, %if.else ], [ %call, %if.then59 ]
  %6 = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.sink, ptr %6, align 4
  %tobool68.not = icmp eq ptr %call.sink, null
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %if.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %owner72 = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %owner72 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %owner, ptr %owner72, align 4
  %bus = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @auxiliary_bus_type, ptr %bus, align 4
  %mod_name = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %modname, ptr %mod_name, align 4
  %call76 = tail call i32 @driver_register(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end70.cleanup_crit_edge, label %if.then78

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end70.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end41 ], [ -22, %do.end ], [ -12, %if.end65.cleanup_crit_edge ], [ %call76, %if.then78 ], [ 0, %if.end70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @auxiliary_driver_unregister(ptr noundef %auxdrv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.auxiliary_driver, ptr %auxdrv, i32 0, i32 6
  tail call void @driver_unregister(ptr noundef %driver) #6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @auxiliary_bus_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @auxiliary_bus_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !66

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 418, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @auxiliary_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table = getelementptr i8, ptr %drv, i32 76
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %call2 = tail call fastcc ptr @auxiliary_match_id(ptr noundef %1, ptr noundef %dev)
  %tobool = icmp ne ptr %call2, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxiliary_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @strrchr(ptr noundef %retval.0.i, i32 noundef 46)
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %sub.ptr.sub, ptr noundef %retval.0.i) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auxiliary_bus_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %call2 = tail call i32 @dev_pm_domain_attach(ptr noundef %dev, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %id_table = getelementptr i8, ptr %1, i32 76
  %4 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_table, align 4
  %call3 = tail call fastcc ptr @auxiliary_match_id(ptr noundef %5, ptr noundef %dev)
  %call4 = tail call i32 %3(ptr noundef %dev, ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @auxiliary_bus_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -20
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @auxiliary_bus_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -24
  %tobool3.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %shutdown = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %dev) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @auxiliary_match_id(ptr noundef readonly %id, ptr nocapture noundef readonly %auxdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not56 = icmp eq i8 %1, 0
  br i1 %tobool.not56, label %entry.return_crit_edge, label %for.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.body.lr.ph:                                   ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %auxdev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.addr.057 = phi ptr [ %id, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not.i, label %dev_name.exit, label %dev_name.exit.thread

dev_name.exit:                                    ; preds = %for.body
  %4 = ptrtoint ptr %auxdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %auxdev, align 4
  %call1 = tail call ptr @strrchr(ptr noundef %5, i32 noundef 46)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %dev_name.exit.for.inc_crit_edge, label %dev_name.exit28.thread

dev_name.exit.for.inc_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

dev_name.exit.thread:                             ; preds = %for.body
  %call135 = tail call ptr @strrchr(ptr noundef nonnull %3, i32 noundef 46)
  %tobool2.not36 = icmp eq ptr %call135, null
  br i1 %tobool2.not36, label %dev_name.exit.thread.for.inc_crit_edge, label %dev_name.exit28

dev_name.exit.thread.for.inc_crit_edge:           ; preds = %dev_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

dev_name.exit28:                                  ; preds = %dev_name.exit.thread
  %sub.ptr.lhs.cast = ptrtoint ptr %call135 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call6 = tail call i32 @strlen(ptr noundef %id.addr.057) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %sub.ptr.sub)
  %cmp = icmp eq i32 %call6, %sub.ptr.sub
  br i1 %cmp, label %dev_name.exit28.dev_name.exit33_crit_edge, label %dev_name.exit28.for.inc_crit_edge

dev_name.exit28.for.inc_crit_edge:                ; preds = %dev_name.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

dev_name.exit28.dev_name.exit33_crit_edge:        ; preds = %dev_name.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit33

dev_name.exit28.thread:                           ; preds = %dev_name.exit
  %6 = ptrtoint ptr %auxdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auxdev, align 4
  %sub.ptr.lhs.cast42 = ptrtoint ptr %call1 to i32
  %sub.ptr.rhs.cast43 = ptrtoint ptr %7 to i32
  %sub.ptr.sub44 = sub i32 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43
  %call645 = tail call i32 @strlen(ptr noundef %id.addr.057) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call645, i32 %sub.ptr.sub44)
  %cmp46 = icmp eq i32 %call645, %sub.ptr.sub44
  br i1 %cmp46, label %if.end.i31, label %dev_name.exit28.thread.for.inc_crit_edge

dev_name.exit28.thread.for.inc_crit_edge:         ; preds = %dev_name.exit28.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i31:                                       ; preds = %dev_name.exit28.thread
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %auxdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %auxdev, align 4
  br label %dev_name.exit33

dev_name.exit33:                                  ; preds = %if.end.i31, %dev_name.exit28.dev_name.exit33_crit_edge
  %sub.ptr.sub4749 = phi i32 [ %sub.ptr.sub44, %if.end.i31 ], [ %sub.ptr.sub, %dev_name.exit28.dev_name.exit33_crit_edge ]
  %retval.0.i32 = phi ptr [ %9, %if.end.i31 ], [ %3, %dev_name.exit28.dev_name.exit33_crit_edge ]
  %call11 = tail call i32 @strncmp(ptr noundef %retval.0.i32, ptr noundef %id.addr.057, i32 noundef %sub.ptr.sub4749)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %dev_name.exit33.return_crit_edge, label %dev_name.exit33.for.inc_crit_edge

dev_name.exit33.for.inc_crit_edge:                ; preds = %dev_name.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

dev_name.exit33.return_crit_edge:                 ; preds = %dev_name.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

for.inc:                                          ; preds = %dev_name.exit33.for.inc_crit_edge, %dev_name.exit28.thread.for.inc_crit_edge, %dev_name.exit28.for.inc_crit_edge, %dev_name.exit.thread.for.inc_crit_edge, %dev_name.exit.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.auxiliary_device_id, ptr %id.addr.057, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %dev_name.exit33.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi ptr [ null, %entry.return_crit_edge ], [ %id.addr.057, %dev_name.exit33.return_crit_edge ], [ null, %for.inc.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/auxiliary.c", i32 279, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @auxiliary_device_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @auxiliary_device_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/base/auxiliary.c", i32 284, i32 3}
!9 = !{ptr @auxiliary_device_init._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @auxiliary_device_init._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_auxiliary_device_init, !12, !"__ksymtab_auxiliary_device_init", i1 false, i1 false}
!12 = !{!"../drivers/base/auxiliary.c", i32 292, i32 1}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/auxiliary.c", i32 319, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__auxiliary_device_add._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @__auxiliary_device_add._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/base/auxiliary.c", i32 323, i32 26}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/base/auxiliary.c", i32 325, i32 3}
!24 = !{ptr @__auxiliary_device_add._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__auxiliary_device_add._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/auxiliary.c", i32 331, i32 3}
!28 = !{ptr @__auxiliary_device_add._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @__auxiliary_device_add._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab___auxiliary_device_add, !31, !"__ksymtab___auxiliary_device_add", i1 false, i1 false}
!31 = !{!"../drivers/base/auxiliary.c", i32 335, i32 1}
!32 = !{ptr @__ksymtab_auxiliary_find_device, !33, !"__ksymtab_auxiliary_find_device", i1 false, i1 false}
!33 = !{!"../drivers/base/auxiliary.c", i32 364, i32 1}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/base/auxiliary.c", i32 386, i32 47}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/base/auxiliary.c", i32 389, i32 47}
!38 = !{ptr @__ksymtab___auxiliary_driver_register, !39, !"__ksymtab___auxiliary_driver_register", i1 false, i1 false}
!39 = !{!"../drivers/base/auxiliary.c", i32 403, i32 1}
!40 = !{ptr @__ksymtab_auxiliary_driver_unregister, !41, !"__ksymtab_auxiliary_driver_unregister", i1 false, i1 false}
!41 = !{!"../drivers/base/auxiliary.c", i32 414, i32 1}
!42 = !{ptr @auxiliary_bus_type, !43, !"auxiliary_bus_type", i1 false, i1 false}
!43 = !{!"../drivers/base/auxiliary.c", i32 247, i32 24}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/base/auxiliary.c", i32 195, i32 29}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/base/auxiliary.c", i32 195, i32 48}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/base/auxiliary.c", i32 212, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @auxiliary_bus_probe._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @auxiliary_bus_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @auxiliary_dev_pm_ops, !55, !"auxiliary_dev_pm_ops", i1 false, i1 false}
!55 = !{!"../drivers/base/auxiliary.c", i32 199, i32 32}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"branch_weights", i32 2000, i32 1}
