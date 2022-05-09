; ModuleID = '/llk/IR_all_yes/drivers/mcb/mcb-core.c_pt.bc'
source_filename = "../drivers/mcb/mcb-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__mcb_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___mcb_register_driver\09\09\09\09"
module asm "\09.long\09__crc___mcb_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mcb_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__mcb_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___mcb_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_mcb_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_device_register\09\09\09\09"
module asm "\09.long\09__crc_mcb_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_alloc_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_alloc_bus\09\09\09\09"
module asm "\09.long\09__crc_mcb_alloc_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_alloc_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_alloc_bus\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_alloc_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_release_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_release_bus\09\09\09\09"
module asm "\09.long\09__crc_mcb_release_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_release_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_release_bus\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_release_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_bus_get\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_bus_get\09\09\09\09"
module asm "\09.long\09__crc_mcb_bus_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_bus_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_bus_get\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_bus_get:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_bus_put\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_bus_put\09\09\09\09"
module asm "\09.long\09__crc_mcb_bus_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_bus_put:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_bus_put\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_bus_put:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_alloc_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_alloc_dev\09\09\09\09"
module asm "\09.long\09__crc_mcb_alloc_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_alloc_dev\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_free_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_free_dev\09\09\09\09"
module asm "\09.long\09__crc_mcb_free_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_free_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_free_dev\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_free_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_bus_add_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_bus_add_devices\09\09\09\09"
module asm "\09.long\09__crc_mcb_bus_add_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_bus_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_bus_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_bus_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_get_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_get_resource\09\09\09\09"
module asm "\09.long\09__crc_mcb_get_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_get_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_get_resource\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_get_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_request_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_request_mem\09\09\09\09"
module asm "\09.long\09__crc_mcb_request_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_request_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_request_mem\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_request_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_release_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_release_mem\09\09\09\09"
module asm "\09.long\09__crc_mcb_release_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_release_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_release_mem\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_release_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mcb_get_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_mcb_get_irq\09\09\09\09"
module asm "\09.long\09__crc_mcb_get_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcb_get_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mcb_get_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mcb_get_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mcb_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.mcb_bus = type { %struct.device, ptr, i32, i8, i8, i8, [13 x i8], ptr }
%struct.mcb_device = type { %struct.device, ptr, i8, ptr, i16, i32, i32, i32, i32, i32, %struct.resource, %struct.resource, ptr }
%struct.mcb_device_id = type { i16, i32 }

@mcb_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcb_match, ptr @mcb_uevent, ptr @mcb_probe, ptr null, ptr @mcb_remove, ptr @mcb_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___mcb_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___mcb_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___mcb_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mcb_register_driver to i32), ptr @__kstrtab___mcb_register_driver, ptr @__kstrtabns___mcb_register_driver }, section "___ksymtab_gpl+__mcb_register_driver", align 4
@__kstrtab_mcb_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_unregister_driver to i32), ptr @__kstrtab_mcb_unregister_driver, ptr @__kstrtabns_mcb_unregister_driver }, section "___ksymtab_gpl+mcb_unregister_driver", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcb%d-16z%03d-%d:%d:%d\00", [41 x i8] zeroinitializer }, align 32
@mcb_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Failed registering device 16z%03d on bus mcb%d (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcb_device_register\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/mcb/mcb-core.c\00", [41 x i8] zeroinitializer }, align 32
@mcb_device_register._entry_ptr = internal global ptr @mcb_device_register._entry, section ".printk_index", align 4
@__kstrtab_mcb_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_device_register to i32), ptr @__kstrtab_mcb_device_register, ptr @__kstrtabns_mcb_device_register }, section "___ksymtab_gpl+mcb_device_register", align 4
@mcb_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mcb_carrier_device_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.8, ptr @mcb_carrier_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcb:%d\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_mcb_alloc_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_alloc_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_alloc_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_alloc_bus to i32), ptr @__kstrtab_mcb_alloc_bus, ptr @__kstrtabns_mcb_alloc_bus }, section "___ksymtab_gpl+mcb_alloc_bus", align 4
@__kstrtab_mcb_release_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_release_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_release_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_release_bus to i32), ptr @__kstrtab_mcb_release_bus, ptr @__kstrtabns_mcb_release_bus }, section "___ksymtab_gpl+mcb_release_bus", align 4
@__kstrtab_mcb_bus_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_bus_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_bus_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_bus_get to i32), ptr @__kstrtab_mcb_bus_get, ptr @__kstrtabns_mcb_bus_get }, section "___ksymtab_gpl+mcb_bus_get", align 4
@__kstrtab_mcb_bus_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_bus_put = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_bus_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_bus_put to i32), ptr @__kstrtab_mcb_bus_put, ptr @__kstrtabns_mcb_bus_put }, section "___ksymtab_gpl+mcb_bus_put", align 4
@__kstrtab_mcb_alloc_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_alloc_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_alloc_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_alloc_dev to i32), ptr @__kstrtab_mcb_alloc_dev, ptr @__kstrtabns_mcb_alloc_dev }, section "___ksymtab_gpl+mcb_alloc_dev", align 4
@__kstrtab_mcb_free_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_free_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_free_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_free_dev to i32), ptr @__kstrtab_mcb_free_dev, ptr @__kstrtabns_mcb_free_dev }, section "___ksymtab_gpl+mcb_free_dev", align 4
@__kstrtab_mcb_bus_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_bus_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_bus_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_bus_add_devices to i32), ptr @__kstrtab_mcb_bus_add_devices, ptr @__kstrtabns_mcb_bus_add_devices }, section "___ksymtab_gpl+mcb_bus_add_devices", align 4
@__kstrtab_mcb_get_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_get_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_get_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_get_resource to i32), ptr @__kstrtab_mcb_get_resource, ptr @__kstrtabns_mcb_get_resource }, section "___ksymtab_gpl+mcb_get_resource", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@__kstrtab_mcb_request_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_request_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_request_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_request_mem to i32), ptr @__kstrtab_mcb_request_mem, ptr @__kstrtabns_mcb_request_mem }, section "___ksymtab_gpl+mcb_request_mem", align 4
@__kstrtab_mcb_release_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_release_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_release_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_release_mem to i32), ptr @__kstrtab_mcb_release_mem, ptr @__kstrtabns_mcb_release_mem }, section "___ksymtab_gpl+mcb_release_mem", align 4
@__kstrtab_mcb_get_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcb_get_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mcb_get_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcb_get_irq to i32), ptr @__kstrtab_mcb_get_irq, ptr @__kstrtabns_mcb_get_irq }, section "___ksymtab_gpl+mcb_get_irq", align 4
@__initcall__kmod_mcb__183_513_mcb_init5 = internal global ptr @mcb_init, section ".initcall5.init", align 4
@__exitcall_mcb_exit = internal global ptr @mcb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [41 x i8] c"mcb.description=MEN Chameleon Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [58 x i8] c"mcb.author=Johannes Thumshirn <johannes.thumshirn@men.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [25 x i8] c"mcb.file=drivers/mcb/mcb\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [19 x i8] c"mcb.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mcb\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MODALIAS=mcb:16z%03d\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcb_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcb-carrier\00", [20 x i8] zeroinitializer }, align 32
@mcb_carrier_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mcb_carrier_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mcb_carrier_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mcb_bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mcb_bus_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_revision, ptr @dev_attr_model, ptr @dev_attr_minor, ptr @dev_attr_name, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @model_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_minor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @minor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%c\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"minor\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__mcb_bus_add_devices._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 396, ptr @.str.18, ptr @.str.19 }, align 1
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error adding device (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__mcb_bus_add_devices\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__mcb_bus_add_devices._entry_ptr = internal global ptr @__mcb_bus_add_devices._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"mcb_bus_type\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 157, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 234, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 239, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"mcb_ida\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"mcb_carrier_device_type\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 166, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 291, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 158, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 49, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 15, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 167, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"mcb_carrier_groups\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 151, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"mcb_carrier_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 147, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"mcb_bus_attrs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 139, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"dev_attr_model\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"dev_attr_minor\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 110, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 108, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 119, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 117, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 128, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 137, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 135, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [26 x i8] c"../drivers/mcb/mcb-core.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 396, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_mcb_exit, ptr @__initcall__kmod_mcb__183_513_mcb_init5, ptr @__ksymtab___mcb_register_driver, ptr @__ksymtab_mcb_alloc_bus, ptr @__ksymtab_mcb_alloc_dev, ptr @__ksymtab_mcb_bus_add_devices, ptr @__ksymtab_mcb_bus_get, ptr @__ksymtab_mcb_bus_put, ptr @__ksymtab_mcb_device_register, ptr @__ksymtab_mcb_free_dev, ptr @__ksymtab_mcb_get_irq, ptr @__ksymtab_mcb_get_resource, ptr @__ksymtab_mcb_release_bus, ptr @__ksymtab_mcb_release_mem, ptr @__ksymtab_mcb_request_mem, ptr @__ksymtab_mcb_unregister_driver, ptr @__mcb_bus_add_devices._entry, ptr @__mcb_bus_add_devices._entry_ptr, ptr @mcb_device_register._entry, ptr @mcb_device_register._entry_ptr, ptr @mcb_bus_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mcb_ida, ptr @mcb_carrier_device_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mcb_carrier_groups, ptr @mcb_carrier_group, ptr @mcb_bus_attrs, ptr @dev_attr_revision, ptr @dev_attr_model, ptr @dev_attr_minor, ptr @dev_attr_name, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_carrier_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_carrier_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_carrier_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_bus_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_minor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mcb_register_driver(ptr noundef %drv, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.mcb_driver, ptr %drv, i32 0, i32 2
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %remove = getelementptr inbounds %struct.mcb_driver, ptr %drv, i32 0, i32 3
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %owner2 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 2
  %4 = ptrtoint ptr %owner2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %owner, ptr %owner2, align 4
  %bus = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mcb_bus_type, ptr %bus, align 4
  %mod_name5 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 3
  %6 = ptrtoint ptr %mod_name5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mod_name, ptr %mod_name5, align 4
  %call = tail call i32 @driver_register(ptr noundef %drv) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcb_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcb_device_register(ptr noundef %bus, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_initialize(ptr noundef %dev) #6
  %tobool.not.i = icmp eq ptr %bus, null
  br i1 %tobool.not.i, label %entry.mcb_bus_get.exit_crit_edge, label %if.then.i

entry.mcb_bus_get.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcb_bus_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @get_device(ptr noundef nonnull %bus) #6
  br label %mcb_bus_get.exit

mcb_bus_get.exit:                                 ; preds = %if.then.i, %entry.mcb_bus_get.exit_crit_edge
  %bus3 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mcb_bus_type, ptr %bus3, align 8
  %parent = getelementptr inbounds %struct.device, ptr %bus, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %parent6 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent6, align 8
  %release = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mcb_release_dev, ptr %release, align 4
  %carrier = getelementptr inbounds %struct.mcb_bus, ptr %bus, i32 0, i32 1
  %5 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %carrier, align 8
  %dma_dev = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 12
  %7 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dma_dev, align 4
  %id = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id, align 4
  %conv = zext i16 %9 to i32
  %bus_nr = getelementptr inbounds %struct.mcb_bus, ptr %bus, i32 0, i32 2
  %10 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_nr, align 4
  %inst = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inst, align 8
  %group = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %group, align 4
  %var = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 7
  %16 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var, align 8
  %call9 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %conv, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  %call11 = tail call i32 @device_add(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %mcb_bus_get.exit.cleanup_crit_edge

mcb_bus_get.exit.cleanup_crit_edge:               ; preds = %mcb_bus_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %mcb_bus_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_nr, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %19, i32 noundef %call11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mcb_bus_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ 0, %mcb_bus_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mcb_bus_get(ptr noundef returned %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @get_device(ptr noundef nonnull %bus) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %bus
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcb_release_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mcb_bus_put.exit_crit_edge, label %if.then.i

entry.mcb_bus_put.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcb_bus_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %1) #6
  br label %mcb_bus_put.exit

mcb_bus_put.exit:                                 ; preds = %if.then.i, %entry.mcb_bus_put.exit_crit_edge
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mcb_alloc_bus(ptr noundef %carrier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 960) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mcb_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %1 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %bus_nr6 = getelementptr inbounds %struct.mcb_bus, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %bus_nr6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %bus_nr6, align 4
  %call7 = tail call ptr @get_device(ptr noundef %carrier) #6
  %carrier8 = getelementptr inbounds %struct.mcb_bus, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %carrier8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %carrier8, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #6
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %carrier, ptr %parent, align 8
  %bus11 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %bus11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mcb_bus_type, ptr %bus11, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mcb_carrier_device_type, ptr %type, align 4
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %7 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mcb_free_bus, ptr %release, align 4
  %call15 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, i32 noundef %call2) #6
  %call17 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end5.cleanup_crit_edge, label %err_put

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_put:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #6
  %8 = inttoptr i32 %call17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then3 ], [ %8, %err_put ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcb_free_bus(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %carrier = getelementptr inbounds %struct.mcb_bus, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %carrier, align 8
  tail call void @put_device(ptr noundef %1) #6
  %bus_nr = getelementptr inbounds %struct.mcb_bus, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_nr, align 4
  tail call void @ida_free(ptr noundef nonnull @mcb_ida, i32 noundef %3) #6
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcb_release_bus(ptr nocapture readnone %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @bus_for_each_dev(ptr noundef nonnull @mcb_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @__mcb_devices_unregister) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcb_bus_put(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bus, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %bus) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mcb_alloc_dev(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1032) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bus1 = getelementptr inbounds %struct.mcb_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %bus1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bus, ptr %bus1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcb_free_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcb_bus_add_devices(ptr nocapture readnone %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_for_each_dev(ptr noundef nonnull @mcb_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @__mcb_bus_add_devices) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__mcb_bus_add_devices(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_added = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %is_added to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_added, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @device_attach(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call2) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %2 = ptrtoint ptr %is_added to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_added, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mcb_get_resource(ptr noundef readnone %dev, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 512, label %if.then
    i32 1024, label %if.then2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mem = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 11
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 10
  br label %return

return:                                           ; preds = %if.then2, %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %mem, %if.then ], [ %irq, %if.then2 ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mcb_request_mem(ptr nocapture noundef readonly %dev, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name.addr.0 = phi ptr [ %name, %entry.if.end_crit_edge ], [ %3, %if.then ]
  %mem3 = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 11
  %end.i = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %mem3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem3, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  %call5 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef %name.addr.0, i32 noundef 0) #6
  %tobool6.not = icmp eq ptr %call5, null
  %spec.select = select i1 %tobool6.not, ptr inttoptr (i32 -16 to ptr), ptr %call5
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcb_release_mem(ptr nocapture noundef readonly %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.resource, ptr %mem, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcb_get_irq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %get_irq = getelementptr inbounds %struct.mcb_bus, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %get_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_irq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %dev) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i.i = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @mcb_bus_type) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcb_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_destroy(ptr noundef nonnull @mcb_ida) #6
  tail call void @bus_unregister(ptr noundef nonnull @mcb_bus_type) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table = getelementptr inbounds %struct.mcb_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mcb_match_id.exit_crit_edge, label %while.cond.preheader.i

entry.mcb_match_id.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcb_match_id.exit

while.cond.preheader.i:                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not11.i = icmp eq i16 %3, 0
  br i1 %tobool1.not11.i, label %while.cond.preheader.i.mcb_match_id.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.mcb_match_id.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcb_match_id.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %id.i = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi i16 [ %3, %while.body.lr.ph.i ], [ %8, %if.end.i.while.body.i_crit_edge ]
  %ids.addr.012.i = phi ptr [ %1, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %5)
  %cmp.i = icmp eq i16 %6, %5
  br i1 %cmp.i, label %while.body.i.mcb_match_id.exit_crit_edge, label %if.end.i

while.body.i.mcb_match_id.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcb_match_id.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.mcb_device_id, ptr %ids.addr.012.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.mcb_match_id.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.mcb_match_id.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcb_match_id.exit

mcb_match_id.exit:                                ; preds = %if.end.i.mcb_match_id.exit_crit_edge, %while.body.i.mcb_match_id.exit_crit_edge, %while.cond.preheader.i.mcb_match_id.exit_crit_edge, %entry.mcb_match_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mcb_match_id.exit_crit_edge ], [ null, %while.cond.preheader.i.mcb_match_id.exit_crit_edge ], [ null, %if.end.i.mcb_match_id.exit_crit_edge ], [ %ids.addr.012.i, %while.body.i.mcb_match_id.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.6, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool.not, i32 0, i32 -12
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %id_table = getelementptr inbounds %struct.mcb_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %while.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.i:                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not11.i = icmp eq i16 %5, 0
  br i1 %tobool1.not11.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %id.i = getelementptr inbounds %struct.mcb_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi i16 [ %5, %while.body.lr.ph.i ], [ %10, %if.end.i.while.body.i_crit_edge ]
  %ids.addr.012.i = phi ptr [ %3, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %7)
  %cmp.i = icmp eq i16 %8, %7
  br i1 %cmp.i, label %mcb_match_id.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.mcb_device_id, ptr %ids.addr.012.i, i32 1
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq i16 %10, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mcb_match_id.exit:                                ; preds = %while.body.i
  %tobool.not = icmp eq ptr %ids.addr.012.i, null
  br i1 %tobool.not, label %mcb_match_id.exit.cleanup_crit_edge, label %if.end

mcb_match_id.exit.cleanup_crit_edge:              ; preds = %mcb_match_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %mcb_match_id.exit
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %driver4 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver4, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner, align 4
  %call5 = tail call zeroext i1 @try_module_get(ptr noundef %16) #6
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @get_device(ptr noundef %dev) #6
  %probe = getelementptr inbounds %struct.mcb_driver, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %probe, align 4
  %call9 = tail call i32 %18(ptr noundef %dev, ptr noundef nonnull %ids.addr.012.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @module_put(ptr noundef %16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mcb_match_id.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %mcb_match_id.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end7.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %while.cond.preheader.i.cleanup_crit_edge ], [ -19, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcb_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr inbounds %struct.mcb_driver, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  tail call void %3(ptr noundef %dev) #6
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver3, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %9) #6
  tail call void @put_device(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcb_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.mcb_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr inbounds %struct.mcb_bus, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision, align 8
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @model_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.mcb_bus, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %model, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.mcb_bus, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %minor, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mcb_bus, ptr %dev, i32 0, i32 6
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef %name) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__mcb_devices_unregister(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !76, !78, !80, !81, !83, !84, !86, !88, !89, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__ksymtab___mcb_register_driver, !1, !"__ksymtab___mcb_register_driver", i1 false, i1 false}
!1 = !{!"../drivers/mcb/mcb-core.c", i32 192, i32 1}
!2 = !{ptr @__ksymtab_mcb_unregister_driver, !3, !"__ksymtab_mcb_unregister_driver", i1 false, i1 false}
!3 = !{!"../drivers/mcb/mcb-core.c", i32 204, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mcb/mcb-core.c", i32 234, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mcb/mcb-core.c", i32 239, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mcb_device_register._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mcb_device_register._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mcb_device_register, !13, !"__ksymtab_mcb_device_register", i1 false, i1 false}
!13 = !{!"../drivers/mcb/mcb-core.c", i32 250, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mcb/mcb-core.c", i32 291, i32 26}
!16 = !{ptr @__ksymtab_mcb_alloc_bus, !17, !"__ksymtab_mcb_alloc_bus", i1 false, i1 false}
!17 = !{!"../drivers/mcb/mcb-core.c", i32 302, i32 1}
!18 = !{ptr @__ksymtab_mcb_release_bus, !19, !"__ksymtab_mcb_release_bus", i1 false, i1 false}
!19 = !{!"../drivers/mcb/mcb-core.c", i32 324, i32 1}
!20 = !{ptr @__ksymtab_mcb_bus_get, !21, !"__ksymtab_mcb_bus_get", i1 false, i1 false}
!21 = !{!"../drivers/mcb/mcb-core.c", i32 339, i32 1}
!22 = !{ptr @__ksymtab_mcb_bus_put, !23, !"__ksymtab_mcb_bus_put", i1 false, i1 false}
!23 = !{!"../drivers/mcb/mcb-core.c", i32 352, i32 1}
!24 = !{ptr @__ksymtab_mcb_alloc_dev, !25, !"__ksymtab_mcb_alloc_dev", i1 false, i1 false}
!25 = !{!"../drivers/mcb/mcb-core.c", i32 372, i32 1}
!26 = !{ptr @__ksymtab_mcb_free_dev, !27, !"__ksymtab_mcb_free_dev", i1 false, i1 false}
!27 = !{!"../drivers/mcb/mcb-core.c", i32 384, i32 1}
!28 = !{ptr @__ksymtab_mcb_bus_add_devices, !29, !"__ksymtab_mcb_bus_add_devices", i1 false, i1 false}
!29 = !{!"../drivers/mcb/mcb-core.c", i32 413, i32 1}
!30 = !{ptr @__ksymtab_mcb_get_resource, !31, !"__ksymtab_mcb_get_resource", i1 false, i1 false}
!31 = !{!"../drivers/mcb/mcb-core.c", i32 429, i32 1}
!32 = !{ptr @__ksymtab_mcb_request_mem, !33, !"__ksymtab_mcb_request_mem", i1 false, i1 false}
!33 = !{!"../drivers/mcb/mcb-core.c", i32 455, i32 1}
!34 = !{ptr @__ksymtab_mcb_release_mem, !35, !"__ksymtab_mcb_release_mem", i1 false, i1 false}
!35 = !{!"../drivers/mcb/mcb-core.c", i32 470, i32 1}
!36 = !{ptr @__ksymtab_mcb_get_irq, !37, !"__ksymtab_mcb_get_irq", i1 false, i1 false}
!37 = !{!"../drivers/mcb/mcb-core.c", i32 496, i32 1}
!38 = !{ptr @__initcall__kmod_mcb__183_513_mcb_init5, !39, !"__initcall__kmod_mcb__183_513_mcb_init5", i1 false, i1 false}
!39 = !{!"../drivers/mcb/mcb-core.c", i32 513, i32 1}
!40 = !{ptr @__exitcall_mcb_exit, !41, !"__exitcall_mcb_exit", i1 false, i1 false}
!41 = !{!"../drivers/mcb/mcb-core.c", i32 514, i32 1}
!42 = !{ptr @__UNIQUE_ID_description184, !43, !"__UNIQUE_ID_description184", i1 false, i1 false}
!43 = !{!"../drivers/mcb/mcb-core.c", i32 516, i32 1}
!44 = !{ptr @__UNIQUE_ID_author185, !45, !"__UNIQUE_ID_author185", i1 false, i1 false}
!45 = !{!"../drivers/mcb/mcb-core.c", i32 517, i32 1}
!46 = !{ptr @__UNIQUE_ID_file186, !47, !"__UNIQUE_ID_file186", i1 false, i1 false}
!47 = !{!"../drivers/mcb/mcb-core.c", i32 518, i32 1}
!48 = !{ptr @__UNIQUE_ID_license187, !47, !"__UNIQUE_ID_license187", i1 false, i1 false}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mcb/mcb-core.c", i32 158, i32 10}
!51 = !{ptr @mcb_bus_type, !52, !"mcb_bus_type", i1 false, i1 false}
!52 = !{!"../drivers/mcb/mcb-core.c", i32 157, i32 24}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mcb/mcb-core.c", i32 49, i32 28}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mcb/mcb-core.c", i32 15, i32 8}
!57 = !{ptr @mcb_ida, !56, !"mcb_ida", i1 false, i1 false}
!58 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mcb/mcb-core.c", i32 167, i32 10}
!60 = !{ptr @mcb_carrier_device_type, !61, !"mcb_carrier_device_type", i1 false, i1 false}
!61 = !{!"../drivers/mcb/mcb-core.c", i32 166, i32 27}
!62 = !{ptr @mcb_carrier_groups, !63, !"mcb_carrier_groups", i1 false, i1 false}
!63 = !{!"../drivers/mcb/mcb-core.c", i32 151, i32 38}
!64 = !{ptr @mcb_carrier_group, !65, !"mcb_carrier_group", i1 false, i1 false}
!65 = !{!"../drivers/mcb/mcb-core.c", i32 147, i32 37}
!66 = !{ptr @mcb_bus_attrs, !67, !"mcb_bus_attrs", i1 false, i1 false}
!67 = !{!"../drivers/mcb/mcb-core.c", i32 139, i32 26}
!68 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mcb/mcb-core.c", i32 110, i32 8}
!70 = !{ptr @dev_attr_revision, !69, !"dev_attr_revision", i1 false, i1 false}
!71 = !{ptr @.str.10, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mcb/mcb-core.c", i32 108, i32 35}
!73 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mcb/mcb-core.c", i32 119, i32 8}
!75 = !{ptr @dev_attr_model, !74, !"dev_attr_model", i1 false, i1 false}
!76 = !{ptr @.str.12, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mcb/mcb-core.c", i32 117, i32 35}
!78 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mcb/mcb-core.c", i32 128, i32 8}
!80 = !{ptr @dev_attr_minor, !79, !"dev_attr_minor", i1 false, i1 false}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mcb/mcb-core.c", i32 137, i32 8}
!83 = !{ptr @dev_attr_name, !82, !"dev_attr_name", i1 false, i1 false}
!84 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mcb/mcb-core.c", i32 135, i32 35}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mcb/mcb-core.c", i32 396, i32 3}
!88 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__mcb_bus_add_devices._entry, !87, !"_entry", i1 false, i1 false}
!92 = !{ptr @__mcb_bus_add_devices._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
