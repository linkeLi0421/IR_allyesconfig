; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/kcs_bmc.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kcs_bmc_read_data\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_read_data\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_read_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_read_data:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_read_data\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_read_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_write_data\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_write_data\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_write_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_write_data:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_write_data\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_write_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_read_status\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_read_status\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_read_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_read_status\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_write_status\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_write_status\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_write_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_write_status:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_write_status\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_write_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_update_status\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_update_status\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_update_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_update_status\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_handle_event\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_handle_event\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_handle_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_handle_event:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_handle_event\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_handle_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_enable_device\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_enable_device\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_enable_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_enable_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_disable_device\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_disable_device\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_disable_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_disable_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_add_device\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_add_device\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_add_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_remove_device\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_remove_device\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_remove_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_register_driver\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kcs_bmc_update_event_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_kcs_bmc_update_event_mask\09\09\09\09"
module asm "\09.long\09__crc_kcs_bmc_update_event_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kcs_bmc_update_event_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22kcs_bmc_update_event_mask\22\09\09\09\09\09"
module asm "__kstrtabns_kcs_bmc_update_event_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kcs_bmc_device_ops = type { ptr, ptr, ptr, ptr }
%struct.kcs_bmc_driver = type { %struct.list_head, ptr }
%struct.kcs_bmc_driver_ops = type { ptr, ptr }

@__kstrtab_kcs_bmc_read_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_read_data = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_read_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_read_data to i32), ptr @__kstrtab_kcs_bmc_read_data, ptr @__kstrtabns_kcs_bmc_read_data }, section "___ksymtab+kcs_bmc_read_data", align 4
@__kstrtab_kcs_bmc_write_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_write_data = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_write_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_write_data to i32), ptr @__kstrtab_kcs_bmc_write_data, ptr @__kstrtabns_kcs_bmc_write_data }, section "___ksymtab+kcs_bmc_write_data", align 4
@__kstrtab_kcs_bmc_read_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_read_status = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_read_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_read_status to i32), ptr @__kstrtab_kcs_bmc_read_status, ptr @__kstrtabns_kcs_bmc_read_status }, section "___ksymtab+kcs_bmc_read_status", align 4
@__kstrtab_kcs_bmc_write_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_write_status = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_write_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_write_status to i32), ptr @__kstrtab_kcs_bmc_write_status, ptr @__kstrtabns_kcs_bmc_write_status }, section "___ksymtab+kcs_bmc_write_status", align 4
@__kstrtab_kcs_bmc_update_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_update_status = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_update_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_update_status to i32), ptr @__kstrtab_kcs_bmc_update_status, ptr @__kstrtabns_kcs_bmc_update_status }, section "___ksymtab+kcs_bmc_update_status", align 4
@__kstrtab_kcs_bmc_handle_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_handle_event = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_handle_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_handle_event to i32), ptr @__kstrtab_kcs_bmc_handle_event, ptr @__kstrtabns_kcs_bmc_handle_event }, section "___ksymtab+kcs_bmc_handle_event", align 4
@__kstrtab_kcs_bmc_enable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_enable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_enable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_enable_device to i32), ptr @__kstrtab_kcs_bmc_enable_device, ptr @__kstrtabns_kcs_bmc_enable_device }, section "___ksymtab+kcs_bmc_enable_device", align 4
@__kstrtab_kcs_bmc_disable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_disable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_disable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_disable_device to i32), ptr @__kstrtab_kcs_bmc_disable_device, ptr @__kstrtabns_kcs_bmc_disable_device }, section "___ksymtab+kcs_bmc_disable_device", align 4
@kcs_bmc_add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&kcs_bmc->lock\00", [17 x i8] zeroinitializer }, align 32
@kcs_bmc_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kcs_bmc_lock, i64 52), ptr getelementptr (i8, ptr @kcs_bmc_lock, i64 52) }, ptr @kcs_bmc_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@kcs_bmc_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kcs_bmc_devices, ptr @kcs_bmc_devices }, [24 x i8] zeroinitializer }, align 32
@kcs_bmc_drivers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kcs_bmc_drivers, ptr @kcs_bmc_drivers }, [24 x i8] zeroinitializer }, align 32
@kcs_bmc_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to add chardev for KCS channel %d: %d\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kcs_bmc_add_device\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/char/ipmi/kcs_bmc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kcs_bmc_add_device._entry_ptr = internal global ptr @kcs_bmc_add_device._entry, section ".printk_index", align 4
@__kstrtab_kcs_bmc_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_add_device to i32), ptr @__kstrtab_kcs_bmc_add_device, ptr @__kstrtabns_kcs_bmc_add_device }, section "___ksymtab+kcs_bmc_add_device", align 4
@kcs_bmc_remove_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to remove chardev for KCS channel %d: %d\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kcs_bmc_remove_device\00", [42 x i8] zeroinitializer }, align 32
@kcs_bmc_remove_device._entry_ptr = internal global ptr @kcs_bmc_remove_device._entry, section ".printk_index", align 4
@__kstrtab_kcs_bmc_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_remove_device to i32), ptr @__kstrtab_kcs_bmc_remove_device, ptr @__kstrtabns_kcs_bmc_remove_device }, section "___ksymtab+kcs_bmc_remove_device", align 4
@kcs_bmc_register_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to add driver for KCS channel %d: %d\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kcs_bmc_register_driver\00", [40 x i8] zeroinitializer }, align 32
@kcs_bmc_register_driver._entry_ptr = internal global ptr @kcs_bmc_register_driver._entry, section ".printk_index", align 4
@__kstrtab_kcs_bmc_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_register_driver to i32), ptr @__kstrtab_kcs_bmc_register_driver, ptr @__kstrtabns_kcs_bmc_register_driver }, section "___ksymtab+kcs_bmc_register_driver", align 4
@kcs_bmc_unregister_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to remove driver for KCS channel %d: %d\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kcs_bmc_unregister_driver\00", [38 x i8] zeroinitializer }, align 32
@kcs_bmc_unregister_driver._entry_ptr = internal global ptr @kcs_bmc_unregister_driver._entry, section ".printk_index", align 4
@__kstrtab_kcs_bmc_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_unregister_driver to i32), ptr @__kstrtab_kcs_bmc_unregister_driver, ptr @__kstrtabns_kcs_bmc_unregister_driver }, section "___ksymtab+kcs_bmc_unregister_driver", align 4
@__kstrtab_kcs_bmc_update_event_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_kcs_bmc_update_event_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_kcs_bmc_update_event_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kcs_bmc_update_event_mask to i32), ptr @__kstrtab_kcs_bmc_update_event_mask, ptr @__kstrtabns_kcs_bmc_update_event_mask }, section "___ksymtab+kcs_bmc_update_event_mask", align 4
@__UNIQUE_ID_file170 = internal constant [39 x i8] c"kcs_bmc.file=drivers/char/ipmi/kcs_bmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [23 x i8] c"kcs_bmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [57 x i8] c"kcs_bmc.author=Haiyue Wang <haiyue.wang@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [48 x i8] c"kcs_bmc.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [76 x i8] c"kcs_bmc.description=KCS BMC to handle the IPMI request from system software\00", section ".modinfo", align 1
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kcs_bmc_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kcs_bmc_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 109, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"kcs_bmc_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"kcs_bmc_devices\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 20, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"kcs_bmc_drivers\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 21, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 119, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 139, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 156, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 173, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [31 x i8] c"../drivers/char/ipmi/kcs_bmc.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 19, i32 8 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__ksymtab_kcs_bmc_add_device, ptr @__ksymtab_kcs_bmc_disable_device, ptr @__ksymtab_kcs_bmc_enable_device, ptr @__ksymtab_kcs_bmc_handle_event, ptr @__ksymtab_kcs_bmc_read_data, ptr @__ksymtab_kcs_bmc_read_status, ptr @__ksymtab_kcs_bmc_register_driver, ptr @__ksymtab_kcs_bmc_remove_device, ptr @__ksymtab_kcs_bmc_unregister_driver, ptr @__ksymtab_kcs_bmc_update_event_mask, ptr @__ksymtab_kcs_bmc_update_status, ptr @__ksymtab_kcs_bmc_write_data, ptr @__ksymtab_kcs_bmc_write_status, ptr @kcs_bmc_add_device._entry, ptr @kcs_bmc_add_device._entry_ptr, ptr @kcs_bmc_register_driver._entry, ptr @kcs_bmc_register_driver._entry_ptr, ptr @kcs_bmc_remove_device._entry, ptr @kcs_bmc_remove_device._entry_ptr, ptr @kcs_bmc_unregister_driver._entry, ptr @kcs_bmc_unregister_driver._entry_ptr, ptr @kcs_bmc_add_device.__key, ptr @.str, ptr @kcs_bmc_lock, ptr @kcs_bmc_devices, ptr @kcs_bmc_drivers, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_remove_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_register_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcs_bmc_unregister_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @kcs_bmc_read_data(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %io_inputb = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_inputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_inputb, align 4
  %ioreg = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 3
  %4 = ptrtoint ptr %ioreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ioreg, align 4
  %call = tail call zeroext i8 %3(ptr noundef %kcs_bmc, i32 noundef %5) #3
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_write_data(ptr noundef %kcs_bmc, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %io_outputb = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_outputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_outputb, align 4
  %odr = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %odr, align 4
  tail call void %3(ptr noundef %kcs_bmc, i32 noundef %5, i8 noundef zeroext %data) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @kcs_bmc_read_status(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %io_inputb = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_inputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_inputb, align 4
  %str = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %str, align 4
  %call = tail call zeroext i8 %3(ptr noundef %kcs_bmc, i32 noundef %5) #3
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_write_status(ptr noundef %kcs_bmc, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %io_outputb = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_outputb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_outputb, align 4
  %str = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %str, align 4
  tail call void %3(ptr noundef %kcs_bmc, i32 noundef %5, i8 noundef zeroext %data) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_update_status(ptr noundef %kcs_bmc, i8 noundef zeroext %mask, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %io_updateb = getelementptr inbounds %struct.kcs_bmc_device_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io_updateb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_updateb, align 4
  %str = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %str, align 4
  tail call void %3(ptr noundef %kcs_bmc, i32 noundef %5, i8 noundef zeroext %mask, i8 noundef zeroext %val) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kcs_bmc_handle_event(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  %client1 = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kcs_bmc_enable_device(ptr noundef %kcs_bmc, ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %client1 = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client1, align 4
  %ops.i = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void %6(ptr noundef %kcs_bmc, i8 noundef zeroext 2, i8 noundef zeroext 2) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.else ], [ -16, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_update_event_mask(ptr noundef %kcs_bmc, i8 noundef zeroext %mask, i8 noundef zeroext %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %kcs_bmc, i8 noundef zeroext %mask, i8 noundef zeroext %events) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_disable_device(ptr noundef %kcs_bmc, ptr noundef readnone %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %client1 = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 6
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %cmp = icmp eq ptr %1, %client
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ops.i = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %kcs_bmc, i8 noundef zeroext 3, i8 noundef zeroext 0) #3
  %6 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %client1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kcs_bmc_add_device(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @kcs_bmc_add_device.__key, i16 noundef signext 3) #3
  %client = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 6
  %0 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %client, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @kcs_bmc_lock, i32 noundef 0) #3
  %1 = load ptr, ptr @kcs_bmc_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %kcs_bmc, ptr noundef nonnull @kcs_bmc_devices, ptr noundef %1) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %kcs_bmc, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %kcs_bmc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %kcs_bmc, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %kcs_bmc, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kcs_bmc_devices, ptr %prev3.i.i, align 4
  store volatile ptr %kcs_bmc, ptr @kcs_bmc_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %drv.020 = load ptr, ptr @kcs_bmc_drivers, align 4
  %cmp.not21 = icmp eq ptr %drv.020, @kcs_bmc_drivers
  br i1 %cmp.not21, label %list_add.exit.for.end_crit_edge, label %for.body.lr.ph

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add.exit
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 1
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %drv.023 = phi ptr [ %drv.020, %for.body.lr.ph ], [ %drv.0, %for.inc.for.body_crit_edge ]
  %error.022 = phi i32 [ 0, %for.body.lr.ph ], [ %error.1, %for.inc.for.body_crit_edge ]
  %ops = getelementptr inbounds %struct.kcs_bmc_driver, ptr %drv.023, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call3 = tail call i32 %8(ptr noundef %kcs_bmc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %12, i32 noundef %call3) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end6, %for.body.for.inc_crit_edge
  %error.1 = phi i32 [ %call3, %do.end6 ], [ %error.022, %for.body.for.inc_crit_edge ]
  %13 = ptrtoint ptr %drv.023 to i32
  call void @__asan_load4_noabort(i32 %13)
  %drv.0 = load ptr, ptr %drv.023, align 4
  %cmp.not = icmp eq ptr %drv.0, @kcs_bmc_drivers
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_add.exit.for.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %list_add.exit.for.end_crit_edge ], [ %error.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret i32 %error.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_remove_device(ptr noundef %kcs_bmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kcs_bmc_lock, i32 noundef 0) #3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %kcs_bmc) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %kcs_bmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kcs_bmc, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %kcs_bmc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %kcs_bmc, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %kcs_bmc, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %drv.013 = load ptr, ptr @kcs_bmc_drivers, align 4
  %cmp.not14 = icmp eq ptr %drv.013, @kcs_bmc_drivers
  br i1 %cmp.not14, label %list_del.exit.for.end_crit_edge, label %for.body.lr.ph

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 1
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %drv.015 = phi ptr [ %drv.013, %for.body.lr.ph ], [ %drv.0, %for.inc.for.body_crit_edge ]
  %ops = getelementptr inbounds %struct.kcs_bmc_driver, ptr %drv.015, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %remove_device = getelementptr inbounds %struct.kcs_bmc_driver_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %remove_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_device, align 4
  %call = tail call i32 %11(ptr noundef %kcs_bmc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %call) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %drv.015 to i32
  call void @__asan_load4_noabort(i32 %16)
  %drv.0 = load ptr, ptr %drv.015, align 4
  %cmp.not = icmp eq ptr %drv.0, @kcs_bmc_drivers
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_register_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kcs_bmc_lock, i32 noundef 0) #3
  %0 = load ptr, ptr @kcs_bmc_drivers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv, ptr noundef nonnull @kcs_bmc_drivers, ptr noundef %0) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drv, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %drv, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @kcs_bmc_drivers, ptr %prev3.i.i, align 4
  store volatile ptr %drv, ptr @kcs_bmc_drivers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %kcs_bmc.013 = load ptr, ptr @kcs_bmc_devices, align 4
  %cmp.not14 = icmp eq ptr %kcs_bmc.013, @kcs_bmc_devices
  br i1 %cmp.not14, label %list_add.exit.for.end_crit_edge, label %for.body.lr.ph

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add.exit
  %ops = getelementptr inbounds %struct.kcs_bmc_driver, ptr %drv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %kcs_bmc.015 = phi ptr [ %kcs_bmc.013, %for.body.lr.ph ], [ %kcs_bmc.0, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %kcs_bmc.015) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc.015, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc.015, i32 0, i32 2
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %call) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %kcs_bmc.015 to i32
  call void @__asan_load4_noabort(i32 %12)
  %kcs_bmc.0 = load ptr, ptr %kcs_bmc.015, align 4
  %cmp.not = icmp eq ptr %kcs_bmc.0, @kcs_bmc_devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_add.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcs_bmc_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kcs_bmc_lock, i32 noundef 0) #3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %drv, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %kcs_bmc.013 = load ptr, ptr @kcs_bmc_devices, align 4
  %cmp.not14 = icmp eq ptr %kcs_bmc.013, @kcs_bmc_devices
  br i1 %cmp.not14, label %list_del.exit.for.end_crit_edge, label %for.body.lr.ph

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit
  %ops = getelementptr inbounds %struct.kcs_bmc_driver, ptr %drv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %kcs_bmc.015 = phi ptr [ %kcs_bmc.013, %for.body.lr.ph ], [ %kcs_bmc.0, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %remove_device = getelementptr inbounds %struct.kcs_bmc_driver_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %remove_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove_device, align 4
  %call = tail call i32 %11(ptr noundef %kcs_bmc.015) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc.015, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc.015, i32 0, i32 2
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %call) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %kcs_bmc.015 to i32
  call void @__asan_load4_noabort(i32 %16)
  %kcs_bmc.0 = load ptr, ptr %kcs_bmc.015, align 4
  %cmp.not = icmp eq ptr %kcs_bmc.0, @kcs_bmc_devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kcs_bmc_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !57, !59, !61, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__ksymtab_kcs_bmc_read_data, !1, !"__ksymtab_kcs_bmc_read_data", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 29, i32 1}
!2 = !{ptr @__ksymtab_kcs_bmc_write_data, !3, !"__ksymtab_kcs_bmc_write_data", i1 false, i1 false}
!3 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 35, i32 1}
!4 = !{ptr @__ksymtab_kcs_bmc_read_status, !5, !"__ksymtab_kcs_bmc_read_status", i1 false, i1 false}
!5 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 41, i32 1}
!6 = !{ptr @__ksymtab_kcs_bmc_write_status, !7, !"__ksymtab_kcs_bmc_write_status", i1 false, i1 false}
!7 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 47, i32 1}
!8 = !{ptr @__ksymtab_kcs_bmc_update_status, !9, !"__ksymtab_kcs_bmc_update_status", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 53, i32 1}
!10 = !{ptr @__ksymtab_kcs_bmc_handle_event, !11, !"__ksymtab_kcs_bmc_handle_event", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 68, i32 1}
!12 = !{ptr @__ksymtab_kcs_bmc_enable_device, !13, !"__ksymtab_kcs_bmc_enable_device", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 88, i32 1}
!14 = !{ptr @__ksymtab_kcs_bmc_disable_device, !15, !"__ksymtab_kcs_bmc_disable_device", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 101, i32 1}
!16 = !{ptr @kcs_bmc_add_device.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 109, i32 2}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 119, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @kcs_bmc_add_device._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @kcs_bmc_add_device._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_kcs_bmc_add_device, !28, !"__ksymtab_kcs_bmc_add_device", i1 false, i1 false}
!28 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 127, i32 1}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 139, i32 4}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @kcs_bmc_remove_device._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @kcs_bmc_remove_device._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_kcs_bmc_remove_device, !35, !"__ksymtab_kcs_bmc_remove_device", i1 false, i1 false}
!35 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 144, i32 1}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 156, i32 4}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @kcs_bmc_register_driver._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @kcs_bmc_register_driver._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_kcs_bmc_register_driver, !42, !"__ksymtab_kcs_bmc_register_driver", i1 false, i1 false}
!42 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 161, i32 1}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 173, i32 4}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @kcs_bmc_unregister_driver._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @kcs_bmc_unregister_driver._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__ksymtab_kcs_bmc_unregister_driver, !49, !"__ksymtab_kcs_bmc_unregister_driver", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 178, i32 1}
!50 = !{ptr @__ksymtab_kcs_bmc_update_event_mask, !51, !"__ksymtab_kcs_bmc_update_event_mask", i1 false, i1 false}
!51 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 184, i32 1}
!52 = !{ptr @__UNIQUE_ID_file170, !53, !"__UNIQUE_ID_file170", i1 false, i1 false}
!53 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 186, i32 1}
!54 = !{ptr @__UNIQUE_ID_license171, !53, !"__UNIQUE_ID_license171", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_author172, !56, !"__UNIQUE_ID_author172", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 187, i32 1}
!57 = !{ptr @__UNIQUE_ID_author173, !58, !"__UNIQUE_ID_author173", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 188, i32 1}
!59 = !{ptr @__UNIQUE_ID_description174, !60, !"__UNIQUE_ID_description174", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 189, i32 1}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 19, i32 8}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @kcs_bmc_lock, !62, !"kcs_bmc_lock", i1 false, i1 false}
!65 = !{ptr @kcs_bmc_devices, !66, !"kcs_bmc_devices", i1 false, i1 false}
!66 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 20, i32 8}
!67 = !{ptr @kcs_bmc_drivers, !68, !"kcs_bmc_drivers", i1 false, i1 false}
!68 = !{!"../drivers/char/ipmi/kcs_bmc.c", i32 21, i32 8}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
