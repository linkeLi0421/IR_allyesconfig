; ModuleID = '/llk/IR_all_yes/drivers/slimbus/core.c_pt.bc'
source_filename = "../drivers/slimbus/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+slimbus_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_slimbus_bus\09\09\09\09"
module asm "\09.long\09__crc_slimbus_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slimbus_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22slimbus_bus\22\09\09\09\09\09"
module asm "__kstrtabns_slimbus_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__slim_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___slim_driver_register\09\09\09\09"
module asm "\09.long\09__crc___slim_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___slim_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__slim_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___slim_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_slim_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_slim_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_register_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_register_controller\09\09\09\09"
module asm "\09.long\09__crc_slim_register_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_register_controller\22\09\09\09\09\09"
module asm "__kstrtabns_slim_register_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_unregister_controller\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_unregister_controller\09\09\09\09"
module asm "\09.long\09__crc_slim_unregister_controller\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_unregister_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_unregister_controller\22\09\09\09\09\09"
module asm "__kstrtabns_slim_unregister_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_report_absent\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_report_absent\09\09\09\09"
module asm "\09.long\09__crc_slim_report_absent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_report_absent:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_report_absent\22\09\09\09\09\09"
module asm "__kstrtabns_slim_report_absent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_get_device\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_get_device\09\09\09\09"
module asm "\09.long\09__crc_slim_get_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_slim_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_slim_get_device\22, \22a\22\09"
module asm "\09.weak\09__crc_of_slim_get_device\09\09\09\09"
module asm "\09.long\09__crc_of_slim_get_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_slim_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22of_slim_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_of_slim_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_device_report_present\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_device_report_present\09\09\09\09"
module asm "\09.long\09__crc_slim_device_report_present\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_device_report_present:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_device_report_present\22\09\09\09\09\09"
module asm "__kstrtabns_slim_device_report_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_get_logical_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_get_logical_addr\09\09\09\09"
module asm "\09.long\09__crc_slim_get_logical_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_get_logical_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_get_logical_addr\22\09\09\09\09\09"
module asm "__kstrtabns_slim_get_logical_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.slim_device = type { %struct.device, %struct.slim_eaddr, ptr, i32, i8, i8, %struct.list_head, %struct.spinlock }
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
%struct.slim_eaddr = type { i8, i8, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.slim_device_id = type { i16, i16, i16, i16, i32 }
%struct.slim_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.slim_controller = type { ptr, i32, [32 x i8], i32, i32, i32, %struct.ida, ptr, %struct.mutex, %struct.list_head, %struct.idr, %struct.spinlock, %struct.slim_sched, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.slim_sched = type { i32, %struct.completion, %struct.mutex }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slimbus\00", [24 x i8] zeroinitializer }, align 32
@slimbus_bus = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slim_device_match, ptr @slim_device_uevent, ptr @slim_device_probe, ptr null, ptr @slim_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_slimbus_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_slimbus_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_slimbus_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slimbus_bus to i32), ptr @__kstrtab_slimbus_bus, ptr @__kstrtabns_slimbus_bus }, section "___ksymtab_gpl+slimbus_bus", align 4
@__kstrtab___slim_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___slim_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___slim_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__slim_driver_register to i32), ptr @__kstrtab___slim_driver_register, ptr @__kstrtabns___slim_driver_register }, section "___ksymtab_gpl+__slim_driver_register", align 4
@__kstrtab_slim_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_driver_unregister to i32), ptr @__kstrtab_slim_driver_unregister, ptr @__kstrtabns_slim_driver_unregister }, section "___ksymtab_gpl+slim_driver_unregister", align 4
@ctrl_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@slim_register_controller.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctrl->lock\00", [20 x i8] zeroinitializer }, align 32
@slim_register_controller.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ctrl->sched.m_reconf\00", [42 x i8] zeroinitializer }, align 32
@slim_register_controller.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctrl->txn_lock\00", [16 x i8] zeroinitializer }, align 32
@slim_register_controller.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"slim_register_controller\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/slimbus/core.c\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bus [%s] registered:dev:%p\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_slim_register_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_register_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_register_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_register_controller to i32), ptr @__kstrtab_slim_register_controller, ptr @__kstrtabns_slim_register_controller }, section "___ksymtab_gpl+slim_register_controller", align 4
@__kstrtab_slim_unregister_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_unregister_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_unregister_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_unregister_controller to i32), ptr @__kstrtab_slim_unregister_controller, ptr @__kstrtabns_slim_unregister_controller }, section "___ksymtab_gpl+slim_unregister_controller", align 4
@__kstrtab_slim_report_absent = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_report_absent = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_report_absent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_report_absent to i32), ptr @__kstrtab_slim_report_absent, ptr @__kstrtabns_slim_report_absent }, section "___ksymtab_gpl+slim_report_absent", align 4
@__kstrtab_slim_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_get_device to i32), ptr @__kstrtab_slim_get_device, ptr @__kstrtabns_slim_get_device }, section "___ksymtab_gpl+slim_get_device", align 4
@__kstrtab_of_slim_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_slim_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_of_slim_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_slim_get_device to i32), ptr @__kstrtab_of_slim_get_device, ptr @__kstrtabns_of_slim_get_device }, section "___ksymtab_gpl+of_slim_get_device", align 4
@slim_device_report_present._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 498, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"slim ctrl not active,state:%d, ret:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"slim_device_report_present\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@slim_device_report_present._entry_ptr = internal global ptr @slim_device_report_present._entry, section ".printk_index", align 4
@__kstrtab_slim_device_report_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_device_report_present = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_device_report_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_device_report_present to i32), ptr @__kstrtab_slim_device_report_present, ptr @__kstrtabns_slim_device_report_present }, section "___ksymtab_gpl+slim_device_report_present", align 4
@__kstrtab_slim_get_logical_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_get_logical_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_get_logical_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_get_logical_addr to i32), ptr @__kstrtab_slim_get_logical_addr, ptr @__kstrtabns_slim_get_logical_addr }, section "___ksymtab_gpl+slim_get_logical_addr", align 4
@__exitcall_slimbus_exit = internal global ptr @slimbus_exit, section ".exitcall.exit", align 4
@__initcall__kmod_slimbus__186_547_slimbus_init2 = internal global ptr @slimbus_init, section ".initcall2.init", align 4
@__UNIQUE_ID_file187 = internal constant [37 x i8] c"slimbus.file=drivers/slimbus/slimbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [23 x i8] c"slimbus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [33 x i8] c"slimbus.description=SLIMbus core\00", section ".modinfo", align 1
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODALIAS=slim:%s\00", [47 x i8] zeroinitializer }, align 32
@slim_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 77, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get logical address\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slim_device_probe\00", [46 x i8] zeroinitializer }, align 32
@slim_device_probe._entry_ptr = internal global ptr @slim_device_probe._entry, section ".printk_index", align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl_ida.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slim%x,%x\00", [22 x i8] zeroinitializer }, align 32
@of_register_slim_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 218, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Manf ID & Product code not found %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_register_slim_devices\00", [39 x i8] zeroinitializer }, align 32
@of_register_slim_devices._entry_ptr = internal global ptr @of_register_slim_devices._entry, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_register_slim_devices._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.7, i32 225, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Device and Instance id not found:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@of_register_slim_devices._entry_ptr.26 = internal global ptr @of_register_slim_devices._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@slim_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&sbdev->stream_list_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%x:%x:%x:%x\00", [20 x i8] zeroinitializer }, align 32
@slim_device_alloc_laddr.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"slim_device_alloc_laddr\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"setting slimbus l-addr:%x, ea:%x,%x,%x,%x\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 104, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"slimbus_bus\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 103, i32 17 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"ctrl_ida\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 266, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 267, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 269, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 271, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 497, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 100, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 77, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 17, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 378, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 211, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 215, i32 24 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 217, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 222, i32 42 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 224, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 162, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 166, i32 28 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [26 x i8] c"../drivers/slimbus/core.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 464, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_slimbus_exit, ptr @__initcall__kmod_slimbus__186_547_slimbus_init2, ptr @__ksymtab___slim_driver_register, ptr @__ksymtab_of_slim_get_device, ptr @__ksymtab_slim_device_report_present, ptr @__ksymtab_slim_driver_unregister, ptr @__ksymtab_slim_get_device, ptr @__ksymtab_slim_get_logical_addr, ptr @__ksymtab_slim_register_controller, ptr @__ksymtab_slim_report_absent, ptr @__ksymtab_slim_unregister_controller, ptr @__ksymtab_slimbus_bus, ptr @of_register_slim_devices._entry, ptr @of_register_slim_devices._entry.24, ptr @of_register_slim_devices._entry_ptr, ptr @of_register_slim_devices._entry_ptr.26, ptr @slim_device_probe._entry, ptr @slim_device_probe._entry_ptr, ptr @slim_device_report_present._entry, ptr @slim_device_report_present._entry_ptr, ptr @slimbus_exit, ptr @.str, ptr @slimbus_bus, ptr @ctrl_ida, ptr @slim_register_controller.__key, ptr @.str.1, ptr @slim_register_controller.__key.2, ptr @.str.3, ptr @slim_register_controller.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @xa_init_flags.__key, ptr @.str.17, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @slim_add_device.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slimbus_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_register_controller.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_register_controller.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_register_controller.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_device_report_present._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_slim_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_slim_devices._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slim_device_match(ptr noundef %dev, ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_match_table.i = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %of_match_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_match_table.i, align 4
  %call.i = tail call ptr @of_match_device(ptr noundef %1, ptr noundef %dev) #8
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_table = getelementptr i8, ptr %drv, i32 76
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %e_addr.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1
  %manf_id7.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1, i32 3
  %prod_code14.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1, i32 2
  %dev_index21.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.end
  %id.addr.0.i = phi ptr [ %3, %if.end ], [ %incdec.ptr.i, %if.end.i ]
  %4 = ptrtoint ptr %id.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id.addr.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i = icmp eq i16 %5, 0
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %prod_code.i = getelementptr inbounds %struct.slim_device_id, ptr %id.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %prod_code.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %prod_code.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp3.not.i = icmp eq i16 %7, 0
  br i1 %cmp3.not.i, label %lor.rhs.i.slim_match.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

lor.rhs.i.slim_match.exit_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_match.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %8 = ptrtoint ptr %manf_id7.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %manf_id7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %9)
  %cmp9.i = icmp eq i16 %5, %9
  br i1 %cmp9.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %prod_code11.i = getelementptr inbounds %struct.slim_device_id, ptr %id.addr.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %prod_code11.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %prod_code11.i, align 2
  %12 = ptrtoint ptr %prod_code14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %prod_code14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp16.i = icmp eq i16 %11, %13
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %dev_index.i = getelementptr inbounds %struct.slim_device_id, ptr %id.addr.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev_index.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dev_index.i, align 4
  %16 = ptrtoint ptr %dev_index21.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dev_index21.i, align 1
  %18 = zext i8 %17 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %18)
  %cmp23.i = icmp eq i16 %15, %18
  br i1 %cmp23.i, label %land.lhs.true25.i, label %land.lhs.true18.i.if.end.i_crit_edge

land.lhs.true18.i.if.end.i_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true25.i:                                ; preds = %land.lhs.true18.i
  %instance.i = getelementptr inbounds %struct.slim_device_id, ptr %id.addr.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %instance.i, align 2
  %21 = ptrtoint ptr %e_addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %e_addr.i, align 8
  %23 = zext i8 %22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %23)
  %cmp30.i = icmp eq i16 %20, %23
  br i1 %cmp30.i, label %land.lhs.true25.i.slim_match.exit_crit_edge, label %land.lhs.true25.i.if.end.i_crit_edge

land.lhs.true25.i.if.end.i_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true25.i.slim_match.exit_crit_edge:      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_match.exit

if.end.i:                                         ; preds = %land.lhs.true25.i.if.end.i_crit_edge, %land.lhs.true18.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.slim_device_id, ptr %id.addr.0.i, i32 1
  br label %while.cond.i

slim_match.exit:                                  ; preds = %land.lhs.true25.i.slim_match.exit_crit_edge, %lor.rhs.i.slim_match.exit_crit_edge
  %retval.0.i = phi ptr [ %id.addr.0.i, %land.lhs.true25.i.slim_match.exit_crit_edge ], [ null, %lor.rhs.i.slim_match.exit_crit_edge ]
  %tobool5 = icmp ne ptr %retval.0.i, null
  %lnot.ext = zext i1 %tobool5 to i32
  br label %cleanup

cleanup:                                          ; preds = %slim_match.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %slim_match.exit ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slim_device_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slim_device_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 4
  %call = tail call i32 %3(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_laddr_valid.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %is_laddr_valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_laddr_valid.i, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %slim_get_logical_addr.exit, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

slim_get_logical_addr.exit:                       ; preds = %if.end
  %call.i = tail call fastcc i32 @slim_device_alloc_laddr(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %slim_get_logical_addr.exit.if.then6_crit_edge, label %do.end

slim_get_logical_addr.exit.if.then6_crit_edge:    ; preds = %slim_get_logical_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %slim_get_logical_addr.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %status1.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %status1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %8 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %status1.i, align 4
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %tobool.not.i18 = icmp eq ptr %10, null
  br i1 %tobool.not.i18, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %device_status.i = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %device_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_status.i, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.end4.i.cleanup_crit_edge, label %if.then8.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i19 = tail call i32 %12(ptr noundef %dev, i32 noundef 1) #8
  br label %cleanup

do.end:                                           ; preds = %slim_get_logical_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -517, %do.end ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ], [ 0, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slim_device_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %remove = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then.if.end8_crit_edge, label %if.then6

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %dev) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__slim_driver_register(ptr noundef %drv, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.slim_driver, ptr %drv, i32 0, i32 4
  %of_match_table = getelementptr inbounds %struct.slim_driver, ptr %drv, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_match_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.lor.lhs.false2_crit_edge

entry.lor.lhs.false2_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2

lor.lhs.false:                                    ; preds = %entry
  %id_table = getelementptr inbounds %struct.slim_driver, ptr %drv, i32 0, i32 5
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.lor.lhs.false2_crit_edge

lor.lhs.false.lor.lhs.false2_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false.lor.lhs.false2_crit_edge, %entry.lor.lhs.false2_crit_edge
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %bus = getelementptr inbounds %struct.slim_driver, ptr %drv, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @slimbus_bus, ptr %bus, align 4
  %owner6 = getelementptr inbounds %struct.slim_driver, ptr %drv, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %owner6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %owner, ptr %owner6, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false2.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @slim_driver_unregister(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.slim_driver, ptr %drv, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_register_controller(ptr noundef %ctrl) #0 align 64 {
entry:
  %e_addr.i = alloca %struct.slim_eaddr, align 1
  %reg.i = alloca [2 x i32], align 4
  %manf_id.i = alloca i32, align 4
  %prod_code.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @ctrl_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id1 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %id1, align 4
  %min_cg = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 3
  %1 = ptrtoint ptr %min_cg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %min_cg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %min_cg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %min_cg, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %max_cg = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 4
  %4 = ptrtoint ptr %max_cg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %max_cg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %max_cg, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %laddr_ida = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %laddr_ida, ptr noundef nonnull @.str.17, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 6, i32 0, i32 2
  %8 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i, align 4
  %tid_idr = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %tid_idr, ptr noundef nonnull @.str.17, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10, i32 0, i32 1
  %9 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10, i32 0, i32 2
  %10 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idr_next.i.i, align 4
  %lock = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @slim_register_controller.__key) #8
  %m_reconf = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 2
  tail call void @__mutex_init(ptr noundef %m_reconf, ptr noundef nonnull @.str.3, ptr noundef nonnull @slim_register_controller.__key.2) #8
  %pause_comp = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %pause_comp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pause_comp, align 4
  %wait.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #8
  %txn_lock = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %txn_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @slim_register_controller.__key.4, i16 noundef signext 3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slim_register_controller.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slim_register_controller, %if.then22)) #8
          to label %do.end26 [label %if.then22], !srcloc !104

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl, align 4
  %name = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slim_register_controller.__UNIQUE_ID_ddebug184, ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %15) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %if.end8
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.end26.cleanup_crit_edge, label %if.end.i

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end26
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %19, ptr noundef null) #8
  %cmp.not56.i = icmp eq ptr %call.i, null
  br i1 %cmp.not56.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %20 = getelementptr inbounds %struct.slim_eaddr, ptr %e_addr.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.slim_eaddr, ptr %e_addr.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.slim_eaddr, ptr %e_addr.i, i32 0, i32 3
  %23 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.057.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call38.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %e_addr.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #8
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %reg.i, align 4, !annotation !105
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %23, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %manf_id.i) #8
  %26 = ptrtoint ptr %manf_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %manf_id.i, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prod_code.i) #8
  %27 = ptrtoint ptr %prod_code.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %prod_code.i, align 4, !annotation !105
  %call5.i = call ptr @of_get_property(ptr noundef nonnull %node.057.i, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end8.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end8.i:                                        ; preds = %for.body.i
  %call9.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %manf_id.i, ptr noundef nonnull %prod_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 2
  br i1 %cmp10.not.i, label %if.end12.i, label %do.end.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, ptr noundef nonnull %call5.i) #11
  br label %cleanup.i

if.end12.i:                                       ; preds = %if.end8.i
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.057.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %reg.i, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool14.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool14.not.i, label %if.end19.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #11
  br label %cleanup.i

if.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg.i, align 4
  %conv.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %20, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %23, align 4
  %conv21.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %e_addr.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv21.i, ptr %e_addr.i, align 1
  %34 = ptrtoint ptr %manf_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %manf_id.i, align 4
  %conv22.i = trunc i32 %35 to i16
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv22.i, ptr %22, align 1
  %37 = ptrtoint ptr %prod_code.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prod_code.i, align 4
  %conv24.i = trunc i32 %38 to i16
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv24.i, ptr %21, align 1
  %call26.i = call fastcc ptr @slim_alloc_device(ptr noundef %ctrl, ptr noundef nonnull %e_addr.i, ptr noundef nonnull %node.057.i) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end19.i, %do.end18.i, %do.end.i, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prod_code.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %manf_id.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %e_addr.i) #8
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl, align 4
  %of_node37.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %of_node37.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node37.i, align 8
  %call38.i = call ptr @of_get_next_child(ptr noundef %43, ptr noundef nonnull %node.057.i) #8
  %cmp.not.i = icmp eq ptr %call38.i, null
  br i1 %cmp.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end26.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_unregister_controller(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %call = tail call i32 @device_for_each_child(ptr noundef %1, ptr noundef null, ptr noundef nonnull @slim_ctrl_remove_device) #8
  %id = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @ctrl_ida, i32 noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slim_ctrl_remove_device(ptr noundef %dev, ptr nocapture noundef readnone %null) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  tail call void @of_node_put(ptr noundef %1) #8
  tail call void @device_unregister(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @slim_report_absent(ptr noundef %sbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %is_laddr_valid = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 5
  %2 = ptrtoint ptr %is_laddr_valid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_laddr_valid, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %get_laddr = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %get_laddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_laddr, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %laddr_ida = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 6
  %laddr = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 4
  %5 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %laddr, align 8
  %conv = zext i8 %6 to i32
  tail call void @ida_free(ptr noundef %laddr_ida, i32 noundef %conv) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %status1.i = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 3
  %7 = ptrtoint ptr %status1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.end.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status1.i, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %sbdev, i32 0, i32 6
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %device_status.i = getelementptr i8, ptr %11, i32 -4
  %12 = ptrtoint ptr %device_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_status.i, align 4
  %tobool7.not.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i, label %if.end4.i.cleanup_crit_edge, label %if.then8.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %13(ptr noundef %sbdev, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @slim_get_device(ptr noundef %ctrl, ptr noundef %e_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %call.i = tail call ptr @device_find_child(ptr noundef %1, ptr noundef %e_addr, ptr noundef nonnull @slim_match_dev) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc ptr @slim_alloc_device(ptr noundef %ctrl, ptr noundef %e_addr, ptr noundef null)
  %tobool2.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool2.not, ptr inttoptr (i32 -12 to ptr), ptr %call1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %entry.cleanup_crit_edge ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @slim_alloc_device(ptr noundef %ctrl, ptr nocapture noundef readonly %eaddr, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1000) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %e_addr = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %e_addr, ptr %eaddr, i32 6)
  %bus.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @slimbus_bus, ptr %bus.i, align 8
  %3 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @slim_dev_release, ptr %release.i, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %driver.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver.i, align 4
  %ctrl5.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl, ptr %ctrl5.i, align 8
  %stream_list.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %stream_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %stream_list.i, ptr %stream_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %stream_list.i, ptr %prev.i.i, align 8
  %stream_list_lock.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %stream_list_lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @slim_add_device.__key, i16 noundef signext 3) #8
  %call6.i = tail call ptr @of_node_get(ptr noundef %node) #8
  %of_node.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6.i, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %node, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %fwnode.i
  %fwnode9.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 28
  %12 = ptrtoint ptr %fwnode9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select.i, ptr %fwnode9.i, align 4
  %manf_id.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %manf_id.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %manf_id.i, align 4
  %conv.i = zext i16 %14 to i32
  %prod_code.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %prod_code.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %prod_code.i, align 2
  %conv12.i = zext i16 %16 to i32
  %dev_index.i = getelementptr inbounds %struct.slim_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dev_index.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dev_index.i, align 1
  %conv14.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %e_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %e_addr, align 8
  %conv16.i = zext i8 %20 to i32
  %call17.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.28, i32 noundef %conv.i, i32 noundef %conv12.i, i32 noundef %conv14.i, i32 noundef %conv16.i) #8
  %call19.i = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool2.not = icmp eq i32 %call19.i, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_slim_get_device(ptr nocapture noundef readonly %ctrl, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %call.i = tail call ptr @device_find_child(ptr noundef %1, ptr noundef %np, ptr noundef nonnull @of_slim_match_dev) #8
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_device_report_present(ptr noundef %ctrl, ptr noundef %e_addr, ptr nocapture noundef writeonly %laddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %sched = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %call.i) #11
  br label %slimbus_not_active

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @device_find_child(ptr noundef %5, ptr noundef %e_addr, ptr noundef nonnull @slim_match_dev) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.slim_get_device.exit_crit_edge

if.end.slim_get_device.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_get_device.exit

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call fastcc ptr @slim_alloc_device(ptr noundef %ctrl, ptr noundef %e_addr, ptr noundef null) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.slim_get_device.exit_crit_edge

if.then.i.slim_get_device.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_get_device.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

slim_get_device.exit:                             ; preds = %if.then.i.slim_get_device.exit_crit_edge, %if.end.slim_get_device.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.end.slim_get_device.exit_crit_edge ], [ %call1.i, %if.then.i.slim_get_device.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %slim_get_device.exit.cleanup_crit_edge, label %if.end7

slim_get_device.exit.cleanup_crit_edge:           ; preds = %slim_get_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %slim_get_device.exit
  %is_laddr_valid = getelementptr inbounds %struct.slim_device, ptr %retval.0.i, i32 0, i32 5
  %6 = ptrtoint ptr %is_laddr_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_laddr_valid, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %laddr9 = getelementptr inbounds %struct.slim_device, ptr %retval.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %laddr9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %laddr9, align 8
  %10 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %laddr, align 1
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call fastcc i32 @slim_device_alloc_laddr(ptr noundef nonnull %retval.0.i, i1 noundef zeroext true)
  br label %slimbus_not_active

slimbus_not_active:                               ; preds = %if.end10, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call11, %if.end10 ]
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl, align 4
  %call.i26 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i26, ptr %last_busy.i, align 8
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl, align 4
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %slimbus_not_active, %if.then8, %slim_get_device.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %slimbus_not_active ], [ 0, %if.then8 ], [ -19, %slim_get_device.exit.cleanup_crit_edge ], [ -19, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @slim_device_alloc_laddr(ptr noundef %sbdev, i1 noundef zeroext %report_present) unnamed_addr #0 align 64 {
entry:
  %laddr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %laddr) #8
  %2 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %laddr, align 1, !annotation !105
  %lock = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %get_laddr = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %get_laddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_laddr, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %e_addr = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 1
  %call = call i32 %4(ptr noundef %1, ptr noundef %e_addr, ptr noundef nonnull %laddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.err_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.else:                                          ; preds = %entry
  br i1 %report_present, label %if.then5, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then5:                                         ; preds = %if.else
  %laddr_ida = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 6
  %call6 = tail call i32 @ida_alloc_range(ptr noundef %laddr_ida, i32 noundef 0, i32 noundef 253, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then5.err_crit_edge, label %if.end9

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %call6 to i8
  %5 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %laddr, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.then.if.end12_crit_edge
  %set_laddr = getelementptr inbounds %struct.slim_controller, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %set_laddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_laddr, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end12.if.end21_crit_edge, label %if.then14

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %if.end12
  %e_addr16 = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 1
  %8 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %laddr, align 1
  %call17 = call i32 %7(ptr noundef %1, ptr noundef %e_addr16, i8 noundef zeroext %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.if.end21_crit_edge, label %if.then14.err_crit_edge

if.then14.err_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %10 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %laddr, align 1
  %laddr22 = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 4
  %12 = ptrtoint ptr %laddr22 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %laddr22, align 8
  %is_laddr_valid = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 5
  %13 = ptrtoint ptr %is_laddr_valid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_laddr_valid, align 1
  call void @mutex_unlock(ptr noundef %lock) #8
  %status1.i = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 3
  %14 = ptrtoint ptr %status1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %if.end21.slim_device_update_status.exit_crit_edge, label %if.end.i

if.end21.slim_device_update_status.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_device_update_status.exit

if.end.i:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %status1.i, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %sbdev, i32 0, i32 6
  %17 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i.slim_device_update_status.exit_crit_edge, label %if.end4.i

if.end.i.slim_device_update_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_device_update_status.exit

if.end4.i:                                        ; preds = %if.end.i
  %device_status.i = getelementptr i8, ptr %18, i32 -4
  %19 = ptrtoint ptr %device_status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_status.i, align 4
  %tobool7.not.i = icmp eq ptr %20, null
  br i1 %tobool7.not.i, label %if.end4.i.slim_device_update_status.exit_crit_edge, label %if.then8.i

if.end4.i.slim_device_update_status.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_device_update_status.exit

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %20(ptr noundef %sbdev, i32 noundef 1) #8
  br label %slim_device_update_status.exit

slim_device_update_status.exit:                   ; preds = %if.then8.i, %if.end4.i.slim_device_update_status.exit_crit_edge, %if.end.i.slim_device_update_status.exit_crit_edge, %if.end21.slim_device_update_status.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slim_device_alloc_laddr.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slim_device_alloc_laddr, %if.then29)) #8
          to label %cleanup [label %if.then29], !srcloc !104

if.then29:                                        ; preds = %slim_device_update_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %laddr, align 1
  %conv30 = zext i8 %24 to i32
  %e_addr31 = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 1
  %manf_id = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %manf_id, align 4
  %conv32 = zext i16 %26 to i32
  %prod_code = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %prod_code to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %prod_code, align 2
  %conv34 = zext i16 %28 to i32
  %dev_index = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %dev_index to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dev_index, align 1
  %conv36 = zext i8 %30 to i32
  %31 = ptrtoint ptr %e_addr31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %e_addr31, align 8
  %conv38 = zext i8 %32 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slim_device_alloc_laddr.__UNIQUE_ID_ddebug185, ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %conv38) #8
  br label %cleanup

err:                                              ; preds = %if.then14.err_crit_edge, %if.then5.err_crit_edge, %if.else.err_crit_edge, %if.then.err_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.err_crit_edge ], [ %call6, %if.then5.err_crit_edge ], [ -22, %if.else.err_crit_edge ], [ -22, %if.then14.err_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then29, %slim_device_update_status.exit
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then29 ], [ 0, %slim_device_update_status.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %laddr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_get_logical_addr(ptr noundef %sbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_laddr_valid = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 5
  %0 = ptrtoint ptr %is_laddr_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_laddr_valid, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @slim_device_alloc_laddr(ptr noundef %sbdev, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @slimbus_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bus_unregister(ptr noundef nonnull @slimbus_bus) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @slimbus_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @slimbus_bus) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slim_match_dev(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %e_addr1 = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1
  %manf_id.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %manf_id.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %manf_id.i, align 1
  %manf_id1.i = getelementptr inbounds %struct.slim_eaddr, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %manf_id1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %manf_id1.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.i = icmp eq i16 %1, %3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.slim_eaddr_equal.exit_crit_edge

entry.slim_eaddr_equal.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_eaddr_equal.exit

land.lhs.true.i:                                  ; preds = %entry
  %prod_code.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %prod_code.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %prod_code.i, align 1
  %prod_code5.i = getelementptr inbounds %struct.slim_eaddr, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %prod_code5.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %prod_code5.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp7.i = icmp eq i16 %5, %7
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.slim_eaddr_equal.exit_crit_edge

land.lhs.true.i.slim_eaddr_equal.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_eaddr_equal.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %dev_index.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %dev_index.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev_index.i, align 1
  %dev_index11.i = getelementptr inbounds %struct.slim_eaddr, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %dev_index11.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_index11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp13.i = icmp eq i8 %9, %11
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true9.i.slim_eaddr_equal.exit_crit_edge

land.lhs.true9.i.slim_eaddr_equal.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slim_eaddr_equal.exit

land.rhs.i:                                       ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %e_addr1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %e_addr1, align 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp18.i = icmp eq i8 %13, %15
  %phi.cast = zext i1 %cmp18.i to i32
  br label %slim_eaddr_equal.exit

slim_eaddr_equal.exit:                            ; preds = %land.rhs.i, %land.lhs.true9.i.slim_eaddr_equal.exit_crit_edge, %land.lhs.true.i.slim_eaddr_equal.exit_crit_edge, %entry.slim_eaddr_equal.exit_crit_edge
  %16 = phi i32 [ 0, %land.lhs.true9.i.slim_eaddr_equal.exit_crit_edge ], [ 0, %land.lhs.true.i.slim_eaddr_equal.exit_crit_edge ], [ 0, %entry.slim_eaddr_equal.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slim_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @of_slim_match_dev(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !88, !90, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/slimbus/core.c", i32 104, i32 11}
!2 = !{ptr @slimbus_bus, !3, !"slimbus_bus", i1 false, i1 false}
!3 = !{!"../drivers/slimbus/core.c", i32 103, i32 17}
!4 = !{ptr @__ksymtab_slimbus_bus, !5, !"__ksymtab_slimbus_bus", i1 false, i1 false}
!5 = !{!"../drivers/slimbus/core.c", i32 110, i32 1}
!6 = !{ptr @__ksymtab___slim_driver_register, !7, !"__ksymtab___slim_driver_register", i1 false, i1 false}
!7 = !{!"../drivers/slimbus/core.c", i32 132, i32 1}
!8 = !{ptr @__ksymtab_slim_driver_unregister, !9, !"__ksymtab_slim_driver_unregister", i1 false, i1 false}
!9 = !{!"../drivers/slimbus/core.c", i32 143, i32 1}
!10 = !{ptr @slim_register_controller.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/slimbus/core.c", i32 266, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @slim_register_controller.__key.2, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/slimbus/core.c", i32 267, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @slim_register_controller.__key.4, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/slimbus/core.c", i32 269, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/slimbus/core.c", i32 271, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @slim_register_controller.__UNIQUE_ID_ddebug184, !20, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!24 = !{ptr @__ksymtab_slim_register_controller, !25, !"__ksymtab_slim_register_controller", i1 false, i1 false}
!25 = !{!"../drivers/slimbus/core.c", i32 278, i32 1}
!26 = !{ptr @__ksymtab_slim_unregister_controller, !27, !"__ksymtab_slim_unregister_controller", i1 false, i1 false}
!27 = !{!"../drivers/slimbus/core.c", i32 306, i32 1}
!28 = !{ptr @__ksymtab_slim_report_absent, !29, !"__ksymtab_slim_report_absent", i1 false, i1 false}
!29 = !{!"../drivers/slimbus/core.c", i32 329, i32 1}
!30 = !{ptr @__ksymtab_slim_get_device, !31, !"__ksymtab_slim_get_device", i1 false, i1 false}
!31 = !{!"../drivers/slimbus/core.c", i32 385, i32 1}
!32 = !{ptr @__ksymtab_of_slim_get_device, !33, !"__ksymtab_of_slim_get_device", i1 false, i1 false}
!33 = !{!"../drivers/slimbus/core.c", i32 424, i32 1}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/slimbus/core.c", i32 497, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @slim_device_report_present._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @slim_device_report_present._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_slim_device_report_present, !42, !"__ksymtab_slim_device_report_present", i1 false, i1 false}
!42 = !{!"../drivers/slimbus/core.c", i32 518, i32 1}
!43 = !{ptr @__ksymtab_slim_get_logical_addr, !44, !"__ksymtab_slim_get_logical_addr", i1 false, i1 false}
!44 = !{!"../drivers/slimbus/core.c", i32 535, i32 1}
!45 = !{ptr @__exitcall_slimbus_exit, !46, !"__exitcall_slimbus_exit", i1 false, i1 false}
!46 = !{!"../drivers/slimbus/core.c", i32 541, i32 1}
!47 = !{ptr @__initcall__kmod_slimbus__186_547_slimbus_init2, !48, !"__initcall__kmod_slimbus__186_547_slimbus_init2", i1 false, i1 false}
!48 = !{!"../drivers/slimbus/core.c", i32 547, i32 1}
!49 = !{ptr @__UNIQUE_ID_file187, !50, !"__UNIQUE_ID_file187", i1 false, i1 false}
!50 = !{!"../drivers/slimbus/core.c", i32 549, i32 1}
!51 = !{ptr @__UNIQUE_ID_license188, !50, !"__UNIQUE_ID_license188", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_description189, !53, !"__UNIQUE_ID_description189", i1 false, i1 false}
!53 = !{!"../drivers/slimbus/core.c", i32 550, i32 1}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/slimbus/core.c", i32 100, i32 29}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/slimbus/core.c", i32 77, i32 3}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @slim_device_probe._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @slim_device_probe._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/slimbus/core.c", i32 17, i32 8}
!63 = !{ptr @ctrl_ida, !62, !"ctrl_ida", i1 false, i1 false}
!64 = !{ptr @xa_init_flags.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @init_completion.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/completion.h", i32 87, i32 2}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/slimbus/core.c", i32 211, i32 34}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/slimbus/core.c", i32 215, i32 24}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/slimbus/core.c", i32 217, i32 4}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @of_register_slim_devices._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @of_register_slim_devices._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/slimbus/core.c", i32 222, i32 42}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/slimbus/core.c", i32 224, i32 4}
!83 = !{ptr @of_register_slim_devices._entry.24, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @of_register_slim_devices._entry_ptr.26, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @slim_add_device.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/slimbus/core.c", i32 162, i32 2}
!87 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/slimbus/core.c", i32 166, i32 28}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/slimbus/core.c", i32 464, i32 2}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @slim_device_alloc_laddr.__UNIQUE_ID_ddebug185, !91, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
!104 = !{i64 2148702806, i64 2148702811, i64 2148702824, i64 2148702868, i64 2148702902, i64 2148702923}
!105 = !{!"auto-init"}
