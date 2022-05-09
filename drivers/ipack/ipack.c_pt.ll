; ModuleID = '/llk/IR_all_yes/drivers/ipack/ipack.c_pt.bc'
source_filename = "../drivers/ipack/ipack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ipack_bus_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_bus_register\09\09\09\09"
module asm "\09.long\09__crc_ipack_bus_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_bus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_bus_register\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_bus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_bus_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_bus_unregister\09\09\09\09"
module asm "\09.long\09__crc_ipack_bus_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_bus_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_bus_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_bus_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_driver_register\09\09\09\09"
module asm "\09.long\09__crc_ipack_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_ipack_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_device_init\09\09\09\09"
module asm "\09.long\09__crc_ipack_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_device_add\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_device_add\09\09\09\09"
module asm "\09.long\09__crc_ipack_device_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_device_del\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_device_del\09\09\09\09"
module asm "\09.long\09__crc_ipack_device_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_device_del\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_get_device\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_get_device\09\09\09\09"
module asm "\09.long\09__crc_ipack_get_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipack_put_device\22, \22a\22\09"
module asm "\09.weak\09__crc_ipack_put_device\09\09\09\09"
module asm "\09.long\09__crc_ipack_put_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipack_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22ipack_put_device\22\09\09\09\09\09"
module asm "__kstrtabns_ipack_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ipack_bus_device = type { ptr, ptr, i32, i32, ptr }
%struct.ipack_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipack_device = type { i32, ptr, %struct.device, ptr, [5 x %struct.ipack_region], ptr, i32, i32, i32, i8, i8 }
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
%struct.ipack_region = type { i32, i32 }
%struct.ipack_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipack_device_id = type { i8, i32, i32 }
%struct.ipack_driver_ops = type { ptr, ptr }

@ipack_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ipack_bus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_bus_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_bus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_bus_register to i32), ptr @__kstrtab_ipack_bus_register, ptr @__kstrtabns_ipack_bus_register }, section "___ksymtab_gpl+ipack_bus_register", align 4
@ipack_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.17, ptr null, ptr null, ptr null, ptr @ipack_groups, ptr null, ptr @ipack_bus_match, ptr @ipack_uevent, ptr @ipack_bus_probe, ptr null, ptr @ipack_bus_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ipack_bus_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_bus_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_bus_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_bus_unregister to i32), ptr @__kstrtab_ipack_bus_unregister, ptr @__kstrtabns_ipack_bus_unregister }, section "___ksymtab_gpl+ipack_bus_unregister", align 4
@__kstrtab_ipack_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_driver_register to i32), ptr @__kstrtab_ipack_driver_register, ptr @__kstrtabns_ipack_driver_register }, section "___ksymtab_gpl+ipack_driver_register", align 4
@__kstrtab_ipack_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_driver_unregister to i32), ptr @__kstrtab_ipack_driver_unregister, ptr @__kstrtabns_ipack_driver_unregister }, section "___ksymtab_gpl+ipack_driver_unregister", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipack-dev.%u.%u\00", [16 x i8] zeroinitializer }, align 32
@ipack_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"failed to switch to 8 MHz operation for reading of device ID.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipack_device_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ipack/ipack.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipack_device_init._entry_ptr = internal global ptr @ipack_device_init._entry, section ".printk_index", align 4
@ipack_device_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to reset potential timeout.\00", [61 x i8] zeroinitializer }, align 32
@ipack_device_init._entry_ptr.8 = internal global ptr @ipack_device_init._entry.6, section ".printk_index", align 4
@ipack_device_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 443, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error reading device id section.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ipack_device_init._entry_ptr.12 = internal global ptr @ipack_device_init._entry.9, section ".printk_index", align 4
@ipack_device_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 451, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to switch to 32 MHz operation.\0A\00", [57 x i8] zeroinitializer }, align 32
@ipack_device_init._entry_ptr.15 = internal global ptr @ipack_device_init._entry.13, section ".printk_index", align 4
@__kstrtab_ipack_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_device_init to i32), ptr @__kstrtab_ipack_device_init, ptr @__kstrtabns_ipack_device_init }, section "___ksymtab_gpl+ipack_device_init", align 4
@__kstrtab_ipack_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_device_add to i32), ptr @__kstrtab_ipack_device_add, ptr @__kstrtabns_ipack_device_add }, section "___ksymtab_gpl+ipack_device_add", align 4
@__kstrtab_ipack_device_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_device_del = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_device_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_device_del to i32), ptr @__kstrtab_ipack_device_del, ptr @__kstrtabns_ipack_device_del }, section "___ksymtab_gpl+ipack_device_del", align 4
@__kstrtab_ipack_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_get_device to i32), ptr @__kstrtab_ipack_get_device, ptr @__kstrtabns_ipack_get_device }, section "___ksymtab_gpl+ipack_get_device", align 4
@__kstrtab_ipack_put_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipack_put_device = external dso_local constant [0 x i8], align 1
@__ksymtab_ipack_put_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipack_put_device to i32), ptr @__kstrtab_ipack_put_device, ptr @__kstrtabns_ipack_put_device }, section "___ksymtab_gpl+ipack_put_device", align 4
@__initcall__kmod_ipack__187_495_ipack_init6 = internal global ptr @ipack_init, section ".initcall6.init", align 4
@__exitcall_ipack_exit = internal global ptr @ipack_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [62 x i8] c"ipack.author=Samuel Iglesias Gonsalvez <siglesias@igalia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [31 x i8] c"ipack.file=drivers/ipack/ipack\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [18 x i8] c"ipack.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [41 x i8] c"ipack.description=Industry-pack bus core\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipack_ida.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipack\00", [26 x i8] zeroinitializer }, align 32
@ipack_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ipack_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ipack_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ipack_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ipack_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_id, ptr @dev_attr_id_device, ptr @dev_attr_id_format, ptr @dev_attr_id_vendor, ptr @dev_attr_modalias, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id_format = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_format_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"id_device\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"id_format\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%hhx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"id_vendor\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%06x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipac:f%02Xv%08Xd%08X\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MODALIAS=ipack:f%02Xv%08Xd%08X\00", [33 x i8] zeroinitializer }, align 32
@ipack_device_read_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 354, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error mapping memory\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipack_device_read_id\00", [43 x i8] zeroinitializer }, align 32
@ipack_device_read_id._entry_ptr = internal global ptr @ipack_device_read_id._entry, section ".printk_index", align 4
@ipack_device_read_id._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid id size\00", [16 x i8] zeroinitializer }, align 32
@ipack_device_read_id._entry_ptr.34 = internal global ptr @ipack_device_read_id._entry.32, section ".printk_index", align 4
@ipack_device_read_id._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ipack_device_read_id._entry_ptr.36 = internal global ptr @ipack_device_read_id._entry.35, section ".printk_index", align 4
@ipack_parse_id1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ID CRC invalid found 0x%x, expected 0x%x.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipack_parse_id1\00", [16 x i8] zeroinitializer }, align 32
@ipack_parse_id1._entry_ptr = internal global ptr @ipack_parse_id1._entry, section ".printk_index", align 4
@ipack_parse_id2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.39, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipack_parse_id2\00", [16 x i8] zeroinitializer }, align 32
@ipack_parse_id2._entry_ptr = internal global ptr @ipack_parse_id2._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"ipack_ida\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"ipack_bus_type\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 190, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 433, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 437, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 439, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 443, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 451, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 18, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 191, i32 15 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"ipack_groups\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"ipack_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 188, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"ipack_attrs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 180, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"dev_attr_id_device\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"dev_attr_id_format\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"dev_attr_id_vendor\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 174, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 128, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 175, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 155, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 157, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 176, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 172, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 177, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 143, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 178, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 168, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 89, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 354, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 370, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 382, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 321, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private constant [25 x i8] c"../drivers/ipack/ipack.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 340, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 378, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_ipack_exit, ptr @__initcall__kmod_ipack__187_495_ipack_init6, ptr @__ksymtab_ipack_bus_register, ptr @__ksymtab_ipack_bus_unregister, ptr @__ksymtab_ipack_device_add, ptr @__ksymtab_ipack_device_del, ptr @__ksymtab_ipack_device_init, ptr @__ksymtab_ipack_driver_register, ptr @__ksymtab_ipack_driver_unregister, ptr @__ksymtab_ipack_get_device, ptr @__ksymtab_ipack_put_device, ptr @ipack_device_init._entry, ptr @ipack_device_init._entry.13, ptr @ipack_device_init._entry.6, ptr @ipack_device_init._entry.9, ptr @ipack_device_init._entry_ptr, ptr @ipack_device_init._entry_ptr.12, ptr @ipack_device_init._entry_ptr.15, ptr @ipack_device_init._entry_ptr.8, ptr @ipack_device_read_id._entry, ptr @ipack_device_read_id._entry.32, ptr @ipack_device_read_id._entry.35, ptr @ipack_device_read_id._entry_ptr, ptr @ipack_device_read_id._entry_ptr.34, ptr @ipack_device_read_id._entry_ptr.36, ptr @ipack_exit, ptr @ipack_parse_id1._entry, ptr @ipack_parse_id1._entry_ptr, ptr @ipack_parse_id2._entry, ptr @ipack_parse_id2._entry_ptr, ptr @ipack_ida, ptr @ipack_bus_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @ipack_groups, ptr @ipack_group, ptr @ipack_attrs, ptr @dev_attr_id, ptr @dev_attr_id_device, ptr @dev_attr_id_format, ptr @dev_attr_id_vendor, ptr @dev_attr_modalias, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @xa_init_flags.__key, ptr @.str.40], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id_format to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_read_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_read_id._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_device_read_id._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_parse_id1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipack_parse_id2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipack_bus_register(ptr noundef %parent, i32 noundef %slots, ptr noundef %ops, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ipack_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bus_nr4 = getelementptr inbounds %struct.ipack_bus_device, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %bus_nr4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %bus_nr4, align 4
  %parent5 = getelementptr inbounds %struct.ipack_bus_device, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %parent5, align 4
  %slots6 = getelementptr inbounds %struct.ipack_bus_device, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %slots6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %slots, ptr %slots6, align 8
  %ops7 = getelementptr inbounds %struct.ipack_bus_device, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %ops7, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %owner, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then2 ], [ %call7.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipack_bus_unregister(ptr noundef %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_for_each_dev(ptr noundef nonnull @ipack_bus_type, ptr noundef null, ptr noundef %bus, ptr noundef nonnull @ipack_unregister_bus_member) #9
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_nr, align 4
  tail call void @ida_free(ptr noundef nonnull @ipack_ida, i32 noundef %1) #9
  tail call void @kfree(ptr noundef %bus) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipack_unregister_bus_member(ptr noundef %dev, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %cmp = icmp eq ptr %1, %data
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_del(ptr noundef %dev) #9
  tail call void @put_device(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipack_driver_register(ptr noundef %edrv, ptr noundef %owner, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ipack_driver, ptr %edrv, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %owner1 = getelementptr inbounds %struct.device_driver, ptr %edrv, i32 0, i32 2
  %4 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %owner, ptr %owner1, align 4
  %5 = ptrtoint ptr %edrv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %edrv, align 4
  %bus = getelementptr inbounds %struct.device_driver, ptr %edrv, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ipack_bus_type, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %edrv) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipack_driver_unregister(ptr noundef %edrv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %edrv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipack_device_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %bus = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipack_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2, i32 35
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ipack_device_release, ptr %release, align 4
  %bus3 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus3, align 4
  %parent = getelementptr inbounds %struct.ipack_bus_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %parent5 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %parent5, align 8
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_nr, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev, align 8
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %8, i32 noundef %10) #9
  tail call void @device_initialize(ptr noundef %dev1) #9
  %11 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus3, align 4
  %ops = getelementptr inbounds %struct.ipack_bus_device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %set_clockrate = getelementptr inbounds %struct.ipack_bus_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %set_clockrate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_clockrate, align 4
  %call10 = tail call i32 %16(ptr noundef %dev, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus3, align 4
  %ops13 = getelementptr inbounds %struct.ipack_bus_device, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops13, align 4
  %reset_timeout = getelementptr inbounds %struct.ipack_bus_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %reset_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset_timeout, align 4
  %call14 = tail call i32 %22(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end.if.end21_crit_edge, label %do.end19

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end.if.end21_crit_edge
  %arrayidx.i = getelementptr %struct.ipack_device, ptr %dev, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.ipack_device, ptr %dev, i32 0, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %call.i = tail call ptr @ioremap(i32 noundef %24, i32 noundef %26) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ipack_device_read_id.exit.thread, label %if.end.i

ipack_device_read_id.exit.thread:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end21
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %27)
  %cmp.i = icmp eq i8 %27, 73
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr6.i = getelementptr i8, ptr %call.i, i32 3
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %28)
  %cmp9.i = icmp eq i8 %28, 80
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %add.ptr12.i = getelementptr i8, ptr %call.i, i32 5
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %29)
  %cmp15.i = icmp eq i8 %29, 65
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true11.i.if.else.i_crit_edge

land.lhs.true11.i.if.else.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true17.i:                                ; preds = %land.lhs.true11.i
  %add.ptr18.i = getelementptr i8, ptr %call.i, i32 7
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %30)
  %cmp21.i = icmp eq i8 %30, 67
  br i1 %cmp21.i, label %land.lhs.true17.i.if.then28.i_crit_edge, label %lor.lhs.false.i

land.lhs.true17.i.if.then28.i_crit_edge:          ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true17.i
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %31)
  %cmp26.i = icmp eq i8 %31, 72
  br i1 %cmp26.i, label %lor.lhs.false.i.if.then28.i_crit_edge, label %lor.lhs.false.i.if.else.i_crit_edge

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

if.then28.i:                                      ; preds = %lor.lhs.false.i.if.then28.i_crit_edge, %land.lhs.true17.i.if.then28.i_crit_edge
  %id_format.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 9
  %32 = ptrtoint ptr %id_format.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %id_format.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %call.i, i32 21
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  %conv31.i = zext i8 %33 to i32
  %id_avail.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %id_avail.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv31.i, ptr %id_avail.i, align 8
  %35 = add i8 %33, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -53, i8 %35)
  %36 = icmp ult i8 %35, -53
  br i1 %36, label %do.end42.i, label %if.then28.i.if.end105.i_crit_edge

if.then28.i.if.end105.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

do.end42.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33) #13
  %37 = ptrtoint ptr %id_avail.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %id_avail.i, align 8
  br label %if.end105.i

if.else.i:                                        ; preds = %lor.lhs.false.i.if.else.i_crit_edge, %land.lhs.true11.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %38)
  %cmp49.i = icmp eq i8 %38, 73
  br i1 %cmp49.i, label %land.lhs.true51.i, label %if.else.i.if.else101.i_crit_edge

if.else.i.if.else101.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else101.i

land.lhs.true51.i:                                ; preds = %if.else.i
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 86, i8 %39)
  %cmp55.i = icmp eq i8 %39, 86
  br i1 %cmp55.i, label %land.lhs.true57.i, label %land.lhs.true51.i.if.else101.i_crit_edge

land.lhs.true51.i.if.else101.i_crit_edge:         ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else101.i

land.lhs.true57.i:                                ; preds = %land.lhs.true51.i
  %add.ptr58.i = getelementptr i8, ptr %call.i, i32 2
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %40)
  %cmp61.i = icmp eq i8 %40, 65
  br i1 %cmp61.i, label %land.lhs.true63.i, label %land.lhs.true57.i.if.else101.i_crit_edge

land.lhs.true57.i.if.else101.i_crit_edge:         ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else101.i

land.lhs.true63.i:                                ; preds = %land.lhs.true57.i
  %add.ptr64.i = getelementptr i8, ptr %call.i, i32 3
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %41)
  %cmp67.i = icmp eq i8 %41, 84
  br i1 %cmp67.i, label %land.lhs.true69.i, label %land.lhs.true63.i.if.else101.i_crit_edge

land.lhs.true63.i.if.else101.i_crit_edge:         ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else101.i

land.lhs.true69.i:                                ; preds = %land.lhs.true63.i
  %add.ptr70.i = getelementptr i8, ptr %call.i, i32 4
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr70.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %42)
  %cmp73.i = icmp eq i8 %42, 32
  br i1 %cmp73.i, label %land.lhs.true75.i, label %land.lhs.true69.i.if.else101.i_crit_edge

land.lhs.true69.i.if.else101.i_crit_edge:         ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else101.i

land.lhs.true75.i:                                ; preds = %land.lhs.true69.i
  %add.ptr76.i = getelementptr i8, ptr %call.i, i32 5
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr76.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %43)
  %cmp79.i = icmp eq i8 %43, 52
  br i1 %cmp79.i, label %if.then81.i, label %land.lhs.true75.i.if.else101.i_crit_edge

land.lhs.true75.i.if.else101.i_crit_edge:         ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else101.i

if.then81.i:                                      ; preds = %land.lhs.true75.i
  %id_format82.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 9
  %44 = ptrtoint ptr %id_format82.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %id_format82.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %call.i, i32 22
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr83.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %conv85.i = zext i16 %45 to i32
  %id_avail86.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 6
  %46 = ptrtoint ptr %id_avail86.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv85.i, ptr %id_avail86.i, align 8
  %47 = add i16 %45, -65
  call void @__sanitizer_cov_trace_const_cmp2(i16 -39, i16 %47)
  %48 = icmp ult i16 %47, -39
  br i1 %48, label %do.end97.i, label %if.then81.i.if.end105.i_crit_edge

if.then81.i.if.end105.i_crit_edge:                ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

do.end97.i:                                       ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33) #13
  %49 = ptrtoint ptr %id_avail86.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 26, ptr %id_avail86.i, align 8
  br label %if.end105.i

if.else101.i:                                     ; preds = %land.lhs.true75.i.if.else101.i_crit_edge, %land.lhs.true69.i.if.else101.i_crit_edge, %land.lhs.true63.i.if.else101.i_crit_edge, %land.lhs.true57.i.if.else101.i_crit_edge, %land.lhs.true51.i.if.else101.i_crit_edge, %if.else.i.if.else101.i_crit_edge
  %id_format102.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 9
  %50 = ptrtoint ptr %id_format102.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %id_format102.i, align 4
  %id_avail103.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 6
  %51 = ptrtoint ptr %id_avail103.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %id_avail103.i, align 8
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else101.i, %do.end97.i, %if.then81.i.if.end105.i_crit_edge, %do.end42.i, %if.then28.i.if.end105.i_crit_edge
  %id_avail106.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 6
  %52 = ptrtoint ptr %id_avail106.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id_avail106.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool107.not.i = icmp eq i32 %53, 0
  br i1 %tobool107.not.i, label %if.end105.i.ipack_device_read_id.exit_crit_edge, label %if.end8.i.i

if.end105.i.ipack_device_read_id.exit_crit_edge:  ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_device_read_id.exit

if.end8.i.i:                                      ; preds = %if.end105.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3264) #14
  %id.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 5
  %54 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i, ptr %id.i, align 4
  %tobool113.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool113.not.i, label %if.end8.i.i.ipack_device_read_id.exit_crit_edge, label %for.cond.preheader.i

if.end8.i.i.ipack_device_read_id.exit_crit_edge:  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_device_read_id.exit

for.cond.preheader.i:                             ; preds = %if.end8.i.i
  %55 = ptrtoint ptr %id_avail106.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id_avail106.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp117254.not.i = icmp eq i32 %56, 0
  br i1 %cmp117254.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %id_format119.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0255.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %id_format119.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %id_format119.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp121.i = icmp eq i8 %58, 1
  br i1 %cmp121.i, label %if.then123.i, label %if.else129.i

if.then123.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %i.0255.i, 1
  %add.ptr125.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr125.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  br label %for.inc.i

if.else129.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr130.i = getelementptr i8, ptr %call.i, i32 %i.0255.i
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr130.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else129.i, %if.then123.i
  %.sink.i = phi i8 [ %59, %if.then123.i ], [ %60, %if.else129.i ]
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %id.i, align 4
  %arrayidx128.i = getelementptr i8, ptr %62, i32 %i.0255.i
  %63 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.sink.i, ptr %arrayidx128.i, align 1
  %inc.i = add nuw i32 %i.0255.i, 1
  %64 = ptrtoint ptr %id_avail106.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id_avail106.i, align 8
  %cmp117.i = icmp ult i32 %inc.i, %65
  br i1 %cmp117.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %65, %for.inc.i.for.end.i_crit_edge ]
  %id_format135.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 9
  %66 = ptrtoint ptr %id_format135.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %id_format135.i, align 4
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i8 %67, label %for.end.i.if.end28_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb137.i
  ]

for.end.i.if.end28_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

sw.bb.i:                                          ; preds = %for.end.i
  %69 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %id.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %72 to i32
  %id_vendor.i.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 7
  %73 = ptrtoint ptr %id_vendor.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv.i.i, ptr %id_vendor.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %70, i32 5
  %74 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %75 to i32
  %id_device.i.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 8
  %76 = ptrtoint ptr %id_device.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv3.i.i, ptr %id_device.i.i, align 8
  %speed_8mhz.i.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 10
  %77 = ptrtoint ptr %speed_8mhz.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i.i = load i8, ptr %speed_8mhz.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %speed_8mhz.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %70, i32 7
  %78 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %79)
  %cmp.i189.i = icmp eq i8 %79, 72
  %bf.shl.i.i = select i1 %cmp.i189.i, i8 32, i8 0
  %bf.clear8.i.i = and i8 %bf.set.i.i, -33
  %bf.set9.i.i = or i8 %bf.shl.i.i, %bf.clear8.i.i
  %80 = ptrtoint ptr %speed_8mhz.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %bf.set9.i.i, ptr %speed_8mhz.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %cmp13.not.i.i.i = icmp eq i32 %.lcssa.i, 0
  br i1 %cmp13.not.i.i.i, label %sw.bb.i.ipack_calc_crc1.exit.i.i_crit_edge, label %sw.bb.i.for.body.i.i.i_crit_edge

sw.bb.i.for.body.i.i.i_crit_edge:                 ; preds = %sw.bb.i
  br label %for.body.i.i.i

sw.bb.i.ipack_calc_crc1.exit.i.i_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_calc_crc1.exit.i.i

for.body.i.i.i:                                   ; preds = %cond.end.i.i.i.for.body.i.i.i_crit_edge, %sw.bb.i.for.body.i.i.i_crit_edge
  %i.015.i.i.i = phi i32 [ %inc.i.i.i, %cond.end.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %sw.bb.i.for.body.i.i.i_crit_edge ]
  %crc.014.i.i.i = phi i16 [ %xor7.7.i.i.i.i, %cond.end.i.i.i.for.body.i.i.i_crit_edge ], [ -1, %sw.bb.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.015.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %i.015.i.i.i, 11
  br i1 %cmp1.not.i.i.i, label %for.body.i.i.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

for.body.i.i.i.cond.end.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr i8, ptr %70, i32 %i.015.i.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i.i, align 1
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %for.body.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i8 [ %82, %cond.true.i.i.i ], [ 0, %for.body.i.i.i.cond.end.i.i.i_crit_edge ]
  %conv.i.i.i.i = zext i8 %cond.i.i.i to i16
  %shl.i.i.i.i = shl nuw i16 %conv.i.i.i.i, 8
  %xor.i.i.i.i = xor i16 %shl.i.i.i.i, %crc.014.i.i.i
  %shl5.i.i.i.i = shl i16 %xor.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor.i.i.i.i)
  %tobool.not.inv.i.i.i.i = icmp slt i16 %xor.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.inv.i.i.i.i, i16 4129, i16 0
  %xor7.i.i.i.i = xor i16 %cond.i.i.i.i, %shl5.i.i.i.i
  %shl5.1.i.i.i.i = shl i16 %xor7.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.i.i.i.i)
  %tobool.not.inv.1.i.i.i.i = icmp slt i16 %xor7.i.i.i.i, 0
  %cond.1.i.i.i.i = select i1 %tobool.not.inv.1.i.i.i.i, i16 4129, i16 0
  %xor7.1.i.i.i.i = xor i16 %cond.1.i.i.i.i, %shl5.1.i.i.i.i
  %shl5.2.i.i.i.i = shl i16 %xor7.1.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.1.i.i.i.i)
  %tobool.not.inv.2.i.i.i.i = icmp slt i16 %xor7.1.i.i.i.i, 0
  %cond.2.i.i.i.i = select i1 %tobool.not.inv.2.i.i.i.i, i16 4129, i16 0
  %xor7.2.i.i.i.i = xor i16 %cond.2.i.i.i.i, %shl5.2.i.i.i.i
  %shl5.3.i.i.i.i = shl i16 %xor7.2.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.2.i.i.i.i)
  %tobool.not.inv.3.i.i.i.i = icmp slt i16 %xor7.2.i.i.i.i, 0
  %cond.3.i.i.i.i = select i1 %tobool.not.inv.3.i.i.i.i, i16 4129, i16 0
  %xor7.3.i.i.i.i = xor i16 %cond.3.i.i.i.i, %shl5.3.i.i.i.i
  %shl5.4.i.i.i.i = shl i16 %xor7.3.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.3.i.i.i.i)
  %tobool.not.inv.4.i.i.i.i = icmp slt i16 %xor7.3.i.i.i.i, 0
  %cond.4.i.i.i.i = select i1 %tobool.not.inv.4.i.i.i.i, i16 4129, i16 0
  %xor7.4.i.i.i.i = xor i16 %cond.4.i.i.i.i, %shl5.4.i.i.i.i
  %shl5.5.i.i.i.i = shl i16 %xor7.4.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.4.i.i.i.i)
  %tobool.not.inv.5.i.i.i.i = icmp slt i16 %xor7.4.i.i.i.i, 0
  %cond.5.i.i.i.i = select i1 %tobool.not.inv.5.i.i.i.i, i16 4129, i16 0
  %xor7.5.i.i.i.i = xor i16 %cond.5.i.i.i.i, %shl5.5.i.i.i.i
  %shl5.6.i.i.i.i = shl i16 %xor7.5.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.5.i.i.i.i)
  %tobool.not.inv.6.i.i.i.i = icmp slt i16 %xor7.5.i.i.i.i, 0
  %cond.6.i.i.i.i = select i1 %tobool.not.inv.6.i.i.i.i, i16 4129, i16 0
  %xor7.6.i.i.i.i = xor i16 %cond.6.i.i.i.i, %shl5.6.i.i.i.i
  %shl5.7.i.i.i.i = shl i16 %xor7.6.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.6.i.i.i.i)
  %tobool.not.inv.7.i.i.i.i = icmp slt i16 %xor7.6.i.i.i.i, 0
  %cond.7.i.i.i.i = select i1 %tobool.not.inv.7.i.i.i.i, i16 4129, i16 0
  %xor7.7.i.i.i.i = xor i16 %cond.7.i.i.i.i, %shl5.7.i.i.i.i
  %inc.i.i.i = add nuw i32 %i.015.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %.lcssa.i
  br i1 %exitcond.not.i.i.i, label %for.end.loopexit.i.i.i, label %cond.end.i.i.i.for.body.i.i.i_crit_edge

cond.end.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract.t.i.i.i = trunc i16 %xor7.7.i.i.i.i to i8
  %phi.bo.i.i.i = xor i8 %extract.t.i.i.i, -1
  br label %ipack_calc_crc1.exit.i.i

ipack_calc_crc1.exit.i.i:                         ; preds = %for.end.loopexit.i.i.i, %sw.bb.i.ipack_calc_crc1.exit.i.i_crit_edge
  %crc.0.lcssa.off0.i.i.i = phi i8 [ 0, %sw.bb.i.ipack_calc_crc1.exit.i.i_crit_edge ], [ %phi.bo.i.i.i, %for.end.loopexit.i.i.i ]
  %arrayidx11.i.i = getelementptr i8, ptr %70, i32 11
  %83 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx11.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %crc.0.lcssa.off0.i.i.i, i8 %84)
  %cmp13.i.i = icmp eq i8 %crc.0.lcssa.off0.i.i.i, %84
  %bf.shl17.i.i = select i1 %cmp13.i.i, i8 -128, i8 0
  %bf.clear18.i.i = and i8 %bf.set9.i.i, 127
  %bf.set19.i.i = or i8 %bf.shl17.i.i, %bf.clear18.i.i
  %85 = ptrtoint ptr %speed_8mhz.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %bf.set19.i.i, ptr %speed_8mhz.i.i, align 1
  br i1 %cmp13.i.i, label %ipack_calc_crc1.exit.i.i.if.end28_crit_edge, label %do.end.i.i

ipack_calc_crc1.exit.i.i.if.end28_crit_edge:      ; preds = %ipack_calc_crc1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end.i.i:                                       ; preds = %ipack_calc_crc1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv10.i.i = zext i8 %crc.0.lcssa.off0.i.i.i to i32
  %86 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx11.i.i, align 1
  %conv25.i.i = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %conv25.i.i, i32 noundef %conv10.i.i) #13
  br label %if.end28

sw.bb137.i:                                       ; preds = %for.end.i
  %88 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %id.i, align 4
  %arrayidx.i192.i = getelementptr i16, ptr %89, i32 3
  %90 = ptrtoint ptr %arrayidx.i192.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.i192.i, align 2
  %92 = and i16 %91, 255
  %and.i.i = zext i16 %92 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 16
  %arrayidx2.i193.i = getelementptr i16, ptr %89, i32 4
  %93 = ptrtoint ptr %arrayidx2.i193.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx2.i193.i, align 2
  %conv3.i194.i = zext i16 %94 to i32
  %add.i.i = or i32 %shl.i.i, %conv3.i194.i
  %id_vendor.i195.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 7
  %95 = ptrtoint ptr %id_vendor.i195.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i.i, ptr %id_vendor.i195.i, align 4
  %arrayidx4.i196.i = getelementptr i16, ptr %89, i32 5
  %96 = ptrtoint ptr %arrayidx4.i196.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx4.i196.i, align 2
  %conv5.i.i = zext i16 %97 to i32
  %id_device.i197.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 8
  %98 = ptrtoint ptr %id_device.i197.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv5.i.i, ptr %id_device.i197.i, align 8
  %arrayidx6.i198.i = getelementptr i16, ptr %89, i32 10
  %99 = ptrtoint ptr %arrayidx6.i198.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx6.i198.i, align 2
  %speed_8mhz.i199.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 10
  %101 = trunc i16 %100 to i8
  %102 = ptrtoint ptr %speed_8mhz.i199.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i200.i = load i8, ptr %speed_8mhz.i199.i, align 1
  %103 = shl i8 %101, 5
  %bf.shl.i201.i = and i8 %103, 64
  %bf.clear.i.i = and i8 %bf.load.i200.i, -97
  %bf.set.i202.i = or i8 %bf.shl.i201.i, %bf.clear.i.i
  %104 = shl i8 %101, 3
  %bf.shl19.i.i = and i8 %104, 32
  %bf.set21.i.i = or i8 %bf.set.i202.i, %bf.shl19.i.i
  store i8 %bf.set21.i.i, ptr %speed_8mhz.i199.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa.i)
  %cmp13.not.i.i204.i = icmp eq i32 %.lcssa.i, 0
  br i1 %cmp13.not.i.i204.i, label %sw.bb137.i.ipack_calc_crc2.exit.i.i_crit_edge, label %sw.bb137.i.for.body.i.i207.i_crit_edge

sw.bb137.i.for.body.i.i207.i_crit_edge:           ; preds = %sw.bb137.i
  br label %for.body.i.i207.i

sw.bb137.i.ipack_calc_crc2.exit.i.i_crit_edge:    ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_calc_crc2.exit.i.i

for.body.i.i207.i:                                ; preds = %cond.end.i.i248.i.for.body.i.i207.i_crit_edge, %sw.bb137.i.for.body.i.i207.i_crit_edge
  %i.015.i.i205.i = phi i32 [ %inc.i.i246.i, %cond.end.i.i248.i.for.body.i.i207.i_crit_edge ], [ 0, %sw.bb137.i.for.body.i.i207.i_crit_edge ]
  %crc.014.i.i206.i = phi i16 [ %xor7.7.i.i.i245.i, %cond.end.i.i248.i.for.body.i.i207.i_crit_edge ], [ -1, %sw.bb137.i.for.body.i.i207.i_crit_edge ]
  %105 = and i32 %i.015.i.i205.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %105)
  %switch.i.i.i = icmp eq i32 %105, 24
  br i1 %switch.i.i.i, label %for.body.i.i207.i.cond.end.i.i248.i_crit_edge, label %cond.true.i.i209.i

for.body.i.i207.i.cond.end.i.i248.i_crit_edge:    ; preds = %for.body.i.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i248.i

cond.true.i.i209.i:                               ; preds = %for.body.i.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i208.i = getelementptr i8, ptr %89, i32 %i.015.i.i205.i
  %106 = ptrtoint ptr %arrayidx.i.i208.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i208.i, align 1
  br label %cond.end.i.i248.i

cond.end.i.i248.i:                                ; preds = %cond.true.i.i209.i, %for.body.i.i207.i.cond.end.i.i248.i_crit_edge
  %cond.i.i210.i = phi i8 [ %107, %cond.true.i.i209.i ], [ 0, %for.body.i.i207.i.cond.end.i.i248.i_crit_edge ]
  %conv.i.i.i211.i = zext i8 %cond.i.i210.i to i16
  %shl.i.i.i212.i = shl nuw i16 %conv.i.i.i211.i, 8
  %xor.i.i.i213.i = xor i16 %shl.i.i.i212.i, %crc.014.i.i206.i
  %shl5.i.i.i214.i = shl i16 %xor.i.i.i213.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor.i.i.i213.i)
  %tobool.not.inv.i.i.i215.i = icmp slt i16 %xor.i.i.i213.i, 0
  %cond.i.i.i216.i = select i1 %tobool.not.inv.i.i.i215.i, i16 4129, i16 0
  %xor7.i.i.i217.i = xor i16 %cond.i.i.i216.i, %shl5.i.i.i214.i
  %shl5.1.i.i.i218.i = shl i16 %xor7.i.i.i217.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.i.i.i217.i)
  %tobool.not.inv.1.i.i.i219.i = icmp slt i16 %xor7.i.i.i217.i, 0
  %cond.1.i.i.i220.i = select i1 %tobool.not.inv.1.i.i.i219.i, i16 4129, i16 0
  %xor7.1.i.i.i221.i = xor i16 %cond.1.i.i.i220.i, %shl5.1.i.i.i218.i
  %shl5.2.i.i.i222.i = shl i16 %xor7.1.i.i.i221.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.1.i.i.i221.i)
  %tobool.not.inv.2.i.i.i223.i = icmp slt i16 %xor7.1.i.i.i221.i, 0
  %cond.2.i.i.i224.i = select i1 %tobool.not.inv.2.i.i.i223.i, i16 4129, i16 0
  %xor7.2.i.i.i225.i = xor i16 %cond.2.i.i.i224.i, %shl5.2.i.i.i222.i
  %shl5.3.i.i.i226.i = shl i16 %xor7.2.i.i.i225.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.2.i.i.i225.i)
  %tobool.not.inv.3.i.i.i227.i = icmp slt i16 %xor7.2.i.i.i225.i, 0
  %cond.3.i.i.i228.i = select i1 %tobool.not.inv.3.i.i.i227.i, i16 4129, i16 0
  %xor7.3.i.i.i229.i = xor i16 %cond.3.i.i.i228.i, %shl5.3.i.i.i226.i
  %shl5.4.i.i.i230.i = shl i16 %xor7.3.i.i.i229.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.3.i.i.i229.i)
  %tobool.not.inv.4.i.i.i231.i = icmp slt i16 %xor7.3.i.i.i229.i, 0
  %cond.4.i.i.i232.i = select i1 %tobool.not.inv.4.i.i.i231.i, i16 4129, i16 0
  %xor7.4.i.i.i233.i = xor i16 %cond.4.i.i.i232.i, %shl5.4.i.i.i230.i
  %shl5.5.i.i.i234.i = shl i16 %xor7.4.i.i.i233.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.4.i.i.i233.i)
  %tobool.not.inv.5.i.i.i235.i = icmp slt i16 %xor7.4.i.i.i233.i, 0
  %cond.5.i.i.i236.i = select i1 %tobool.not.inv.5.i.i.i235.i, i16 4129, i16 0
  %xor7.5.i.i.i237.i = xor i16 %cond.5.i.i.i236.i, %shl5.5.i.i.i234.i
  %shl5.6.i.i.i238.i = shl i16 %xor7.5.i.i.i237.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.5.i.i.i237.i)
  %tobool.not.inv.6.i.i.i239.i = icmp slt i16 %xor7.5.i.i.i237.i, 0
  %cond.6.i.i.i240.i = select i1 %tobool.not.inv.6.i.i.i239.i, i16 4129, i16 0
  %xor7.6.i.i.i241.i = xor i16 %cond.6.i.i.i240.i, %shl5.6.i.i.i238.i
  %shl5.7.i.i.i242.i = shl i16 %xor7.6.i.i.i241.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor7.6.i.i.i241.i)
  %tobool.not.inv.7.i.i.i243.i = icmp slt i16 %xor7.6.i.i.i241.i, 0
  %cond.7.i.i.i244.i = select i1 %tobool.not.inv.7.i.i.i243.i, i16 4129, i16 0
  %xor7.7.i.i.i245.i = xor i16 %cond.7.i.i.i244.i, %shl5.7.i.i.i242.i
  %inc.i.i246.i = add nuw i32 %i.015.i.i205.i, 1
  %exitcond.not.i.i247.i = icmp eq i32 %inc.i.i246.i, %.lcssa.i
  br i1 %exitcond.not.i.i247.i, label %for.end.loopexit.i.i250.i, label %cond.end.i.i248.i.for.body.i.i207.i_crit_edge

cond.end.i.i248.i.for.body.i.i207.i_crit_edge:    ; preds = %cond.end.i.i248.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i207.i

for.end.loopexit.i.i250.i:                        ; preds = %cond.end.i.i248.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i.i249.i = xor i16 %xor7.7.i.i.i245.i, -1
  br label %ipack_calc_crc2.exit.i.i

ipack_calc_crc2.exit.i.i:                         ; preds = %for.end.loopexit.i.i250.i, %sw.bb137.i.ipack_calc_crc2.exit.i.i_crit_edge
  %crc.0.lcssa.i.i.i = phi i16 [ 0, %sw.bb137.i.ipack_calc_crc2.exit.i.i_crit_edge ], [ %phi.bo.i.i249.i, %for.end.loopexit.i.i250.i ]
  %arrayidx24.i.i = getelementptr i16, ptr %89, i32 12
  %108 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx24.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %crc.0.lcssa.i.i.i, i16 %109)
  %cmp.i251.i = icmp eq i16 %crc.0.lcssa.i.i.i, %109
  %bf.shl29.i.i = select i1 %cmp.i251.i, i8 -128, i8 0
  %bf.clear30.i.i = and i8 %bf.set21.i.i, 127
  %bf.set31.i.i = or i8 %bf.shl29.i.i, %bf.clear30.i.i
  %110 = ptrtoint ptr %speed_8mhz.i199.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %bf.set31.i.i, ptr %speed_8mhz.i199.i, align 1
  br i1 %cmp.i251.i, label %ipack_calc_crc2.exit.i.i.if.end28_crit_edge, label %do.end.i252.i

ipack_calc_crc2.exit.i.i.if.end28_crit_edge:      ; preds = %ipack_calc_crc2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end.i252.i:                                    ; preds = %ipack_calc_crc2.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv23.i.i = zext i16 %crc.0.lcssa.i.i.i to i32
  %arrayidx37.i.i = getelementptr i16, ptr %89, i32 11
  %111 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx37.i.i, align 2
  %conv38.i.i = zext i16 %112 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %conv38.i.i, i32 noundef %conv23.i.i) #13
  br label %if.end28

ipack_device_read_id.exit:                        ; preds = %if.end8.i.i.ipack_device_read_id.exit_crit_edge, %if.end105.i.ipack_device_read_id.exit_crit_edge
  %ret.0.i = phi i32 [ -19, %if.end105.i.ipack_device_read_id.exit_crit_edge ], [ -12, %if.end8.i.i.ipack_device_read_id.exit_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call.i) #9
  br label %cleanup.sink.split

if.end28:                                         ; preds = %do.end.i252.i, %ipack_calc_crc2.exit.i.i.if.end28_crit_edge, %do.end.i.i, %ipack_calc_crc1.exit.i.i.if.end28_crit_edge, %for.end.i.if.end28_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call.i) #9
  %speed_32mhz = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 10
  %113 = ptrtoint ptr %speed_32mhz to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load = load i8, ptr %speed_32mhz, align 1
  %114 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool29.not = icmp eq i8 %114, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  %115 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus3, align 4
  %ops32 = getelementptr inbounds %struct.ipack_bus_device, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %ops32 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops32, align 4
  %set_clockrate33 = getelementptr inbounds %struct.ipack_bus_ops, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %set_clockrate33 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_clockrate33, align 4
  %call34 = tail call i32 %120(ptr noundef %dev, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then30.cleanup.sink.split_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30.cleanup.sink.split_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then30.cleanup.sink.split_crit_edge, %ipack_device_read_id.exit, %ipack_device_read_id.exit.thread
  %.str.14.sink = phi ptr [ @.str.10, %ipack_device_read_id.exit ], [ @.str.10, %ipack_device_read_id.exit.thread ], [ @.str.14, %if.then30.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0.i, %ipack_device_read_id.exit ], [ -12, %ipack_device_read_id.exit.thread ], [ 0, %if.then30.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.14.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then30.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then30.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipack_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %id = getelementptr i8, ptr %dev, i32 972
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  tail call void @kfree(ptr noundef %1) #9
  %release = getelementptr i8, ptr %dev, i32 928
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 8
  tail call void %3(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipack_device_add(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %call = tail call i32 @device_add(ptr noundef %dev1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipack_device_del(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void @device_del(ptr noundef %dev1) #9
  tail call void @put_device(ptr noundef %dev1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipack_put_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  tail call void @put_device(ptr noundef %dev1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipack_get_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %call = tail call ptr @get_device(ptr noundef %dev1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipack_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bus_unregister(ptr noundef nonnull @ipack_bus_type) #9
  tail call void @ida_destroy(ptr noundef nonnull @ipack_ida) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipack_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @ipack_ida, ptr noundef nonnull @.str.40, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  store i32 67108869, ptr getelementptr inbounds (%struct.ida, ptr @ipack_ida, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.ida, ptr @ipack_ida, i32 0, i32 0, i32 2), align 4
  %call = tail call i32 @bus_register(ptr noundef nonnull @ipack_bus_type) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ipack_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_table = getelementptr inbounds %struct.ipack_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ipack_match_id.exit_crit_edge, label %while.cond.preheader.i

entry.ipack_match_id.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_match_id.exit

while.cond.preheader.i:                           ; preds = %entry
  %id_format.i.i = getelementptr i8, ptr %dev, i32 988
  %id_vendor.i.i = getelementptr i8, ptr %dev, i32 980
  %id_device.i.i = getelementptr i8, ptr %dev, i32 984
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %while.cond.preheader.i
  %ids.addr.0.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %1, %while.cond.preheader.i ]
  %vendor.i = getelementptr inbounds %struct.ipack_device_id, ptr %ids.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %device.i = getelementptr inbounds %struct.ipack_device_id, ptr %ids.addr.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %lor.rhs.i.ipack_match_id.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

lor.rhs.i.ipack_match_id.exit_crit_edge:          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_match_id.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %6 = ptrtoint ptr %ids.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ids.addr.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i.i = icmp eq i8 %7, -1
  br i1 %cmp.i.i, label %while.body.i.land.lhs.true.i.i_crit_edge, label %lor.lhs.false.i.i

while.body.i.land.lhs.true.i.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i
  %8 = ptrtoint ptr %id_format.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id_format.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp5.i.i = icmp eq i8 %7, %9
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, label %lor.lhs.false.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i.land.lhs.true.i.i_crit_edge, %while.body.i.land.lhs.true.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp7.i.i = icmp eq i32 %3, -1
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge, label %lor.lhs.false9.i.i

land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true13.i.i

lor.lhs.false9.i.i:                               ; preds = %land.lhs.true.i.i
  %10 = ptrtoint ptr %id_vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id_vendor.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp11.i.i = icmp eq i32 %3, %11
  br i1 %cmp11.i.i, label %lor.lhs.false9.i.i.land.lhs.true13.i.i_crit_edge, label %lor.lhs.false9.i.i.if.end.i_crit_edge

lor.lhs.false9.i.i.if.end.i_crit_edge:            ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false9.i.i.land.lhs.true13.i.i_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true13.i.i

land.lhs.true13.i.i:                              ; preds = %lor.lhs.false9.i.i.land.lhs.true13.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true13.i.i_crit_edge
  %device14.i.i = getelementptr inbounds %struct.ipack_device_id, ptr %ids.addr.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %device14.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp15.i.i = icmp eq i32 %13, -1
  br i1 %cmp15.i.i, label %ipack_match_one_device.exit.i, label %lor.lhs.false17.i.i

lor.lhs.false17.i.i:                              ; preds = %land.lhs.true13.i.i
  %14 = ptrtoint ptr %id_device.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id_device.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp19.i.i = icmp ne i32 %13, %15
  %tobool3.not.i = icmp eq ptr %ids.addr.0.i, null
  %or.cond.i = select i1 %cmp19.i.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %lor.lhs.false17.i.i.if.end.i_crit_edge, label %lor.lhs.false17.i.i.ipack_match_id.exit_crit_edge

lor.lhs.false17.i.i.ipack_match_id.exit_crit_edge: ; preds = %lor.lhs.false17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_match_id.exit

lor.lhs.false17.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

ipack_match_one_device.exit.i:                    ; preds = %land.lhs.true13.i.i
  %tobool3.not.old.i = icmp eq ptr %ids.addr.0.i, null
  br i1 %tobool3.not.old.i, label %ipack_match_one_device.exit.i.if.end.i_crit_edge, label %ipack_match_one_device.exit.i.ipack_match_id.exit_crit_edge

ipack_match_one_device.exit.i.ipack_match_id.exit_crit_edge: ; preds = %ipack_match_one_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipack_match_id.exit

ipack_match_one_device.exit.i.if.end.i_crit_edge: ; preds = %ipack_match_one_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %ipack_match_one_device.exit.i.if.end.i_crit_edge, %lor.lhs.false17.i.i.if.end.i_crit_edge, %lor.lhs.false9.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ipack_device_id, ptr %ids.addr.0.i, i32 1
  br label %while.cond.i

ipack_match_id.exit:                              ; preds = %ipack_match_one_device.exit.i.ipack_match_id.exit_crit_edge, %lor.lhs.false17.i.i.ipack_match_id.exit_crit_edge, %lor.rhs.i.ipack_match_id.exit_crit_edge, %entry.ipack_match_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.ipack_match_id.exit_crit_edge ], [ %ids.addr.0.i, %ipack_match_one_device.exit.i.ipack_match_id.exit_crit_edge ], [ null, %lor.rhs.i.ipack_match_id.exit_crit_edge ], [ %ids.addr.0.i, %lor.lhs.false17.i.i.ipack_match_id.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipack_uevent(ptr noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id_format = getelementptr i8, ptr %dev, i32 988
  %0 = ptrtoint ptr %id_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id_format, align 4
  %conv = zext i8 %1 to i32
  %id_vendor = getelementptr i8, ptr %dev, i32 980
  %2 = ptrtoint ptr %id_vendor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id_vendor, align 4
  %id_device = getelementptr i8, ptr %dev, i32 984
  %4 = ptrtoint ptr %id_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id_device, align 8
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %3, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %. = select i1 %tobool1.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipack_bus_probe(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -8
  %driver = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %ops = getelementptr inbounds %struct.ipack_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipack_bus_remove(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %ops = getelementptr inbounds %struct.ipack_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %remove = getelementptr inbounds %struct.ipack_driver_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %device, i32 -8
  tail call void %5(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_format = getelementptr i8, ptr %dev, i32 988
  %0 = ptrtoint ptr %id_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id_format, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %l.0 = phi i32 [ 15, %sw.bb1 ], [ 7, %entry.sw.epilog_crit_edge ]
  %s.0 = phi i32 [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %id_avail = getelementptr i8, ptr %dev, i32 976
  %3 = ptrtoint ptr %id_avail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id_avail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp41.not = icmp eq i32 %4, 0
  br i1 %cmp41.not, label %sw.epilog.for.end_crit_edge, label %if.end15.peel

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.peel:                                    ; preds = %sw.epilog
  %id = getelementptr i8, ptr %dev, i32 972
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv18.peel = zext i8 %8 to i32
  %call.peel = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv18.peel)
  %9 = ptrtoint ptr %id_avail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id_avail, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.peel = icmp ugt i32 %10, 1
  br i1 %cmp.peel, label %if.end15.peel.if.then_crit_edge, label %if.end15.peel.for.end_crit_edge

if.end15.peel.for.end_crit_edge:                  ; preds = %if.end15.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.peel.if.then_crit_edge:                  ; preds = %if.end15.peel
  br label %if.then

if.then:                                          ; preds = %if.end15.if.then_crit_edge, %if.end15.peel.if.then_crit_edge
  %i.043 = phi i32 [ %inc19, %if.end15.if.then_crit_edge ], [ 1, %if.end15.peel.if.then_crit_edge ]
  %c.042 = phi i32 [ %add, %if.end15.if.then_crit_edge ], [ 2, %if.end15.peel.if.then_crit_edge ]
  %and = and i32 %i.043, %l.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then.if.end15.sink.split_crit_edge, label %if.else

if.then.if.end15.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split

if.else:                                          ; preds = %if.then
  %and8 = and i32 %i.043, %s.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.else.if.end15.sink.split_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else.if.end15.sink.split_crit_edge, %if.then.if.end15.sink.split_crit_edge
  %.sink = phi i8 [ 10, %if.then.if.end15.sink.split_crit_edge ], [ 32, %if.else.if.end15.sink.split_crit_edge ]
  %inc = add i32 %c.042, 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %c.042
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %arrayidx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  %c.1 = phi i32 [ %c.042, %if.else.if.end15_crit_edge ], [ %inc, %if.end15.sink.split ]
  %arrayidx16 = getelementptr i8, ptr %buf, i32 %c.1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %id, align 4
  %arrayidx17 = getelementptr i8, ptr %13, i32 %i.043
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx16, ptr noundef nonnull @.str.19, i32 noundef %conv18)
  %add = add i32 %c.1, 2
  %inc19 = add nuw i32 %i.043, 1
  %16 = ptrtoint ptr %id_avail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id_avail, align 8
  %cmp = icmp ult i32 %inc19, %17
  br i1 %cmp, label %if.end15.if.then_crit_edge, label %if.end15.for.end_crit_edge, !llvm.loop !130

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.if.then_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.end15.peel.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %c.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ 2, %if.end15.peel.for.end_crit_edge ], [ %add, %if.end15.for.end_crit_edge ]
  %inc20 = add i32 %c.0.lcssa, 1
  %arrayidx21 = getelementptr i8, ptr %buf, i32 %c.0.lcssa
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx21, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc20, %for.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_format = getelementptr i8, ptr %dev, i32 988
  %0 = ptrtoint ptr %id_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id_format, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 1, label %entry.cleanup.sink.split_crit_edge
    i8 2, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %sw.bb1 ], [ @.str.21, %entry.cleanup.sink.split_crit_edge ]
  %id_device2 = getelementptr i8, ptr %dev, i32 984
  %3 = ptrtoint ptr %id_device2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id_device2, align 8
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.22.sink, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_format_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_format = getelementptr i8, ptr %dev, i32 988
  %0 = ptrtoint ptr %id_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id_format, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_format = getelementptr i8, ptr %dev, i32 988
  %0 = ptrtoint ptr %id_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id_format, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 1, label %entry.cleanup.sink.split_crit_edge
    i8 2, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.26, %sw.bb1 ], [ @.str.21, %entry.cleanup.sink.split_crit_edge ]
  %id_vendor2 = getelementptr i8, ptr %dev, i32 980
  %3 = ptrtoint ptr %id_vendor2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id_vendor2, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.26.sink, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_format = getelementptr i8, ptr %dev, i32 988
  %0 = ptrtoint ptr %id_format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id_format, align 4
  %conv = zext i8 %1 to i32
  %id_vendor = getelementptr i8, ptr %dev, i32 980
  %2 = ptrtoint ptr %id_vendor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id_vendor, align 4
  %id_device = getelementptr i8, ptr %dev, i32 984
  %4 = ptrtoint ptr %id_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id_device, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %3, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !55, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !78, !79, !81, !83, !84, !86, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__ksymtab_ipack_bus_register, !1, !"__ksymtab_ipack_bus_register", i1 false, i1 false}
!1 = !{!"../drivers/ipack/ipack.c", i32 223, i32 1}
!2 = !{ptr @__ksymtab_ipack_bus_unregister, !3, !"__ksymtab_ipack_bus_unregister", i1 false, i1 false}
!3 = !{!"../drivers/ipack/ipack.c", i32 244, i32 1}
!4 = !{ptr @__ksymtab_ipack_driver_register, !5, !"__ksymtab_ipack_driver_register", i1 false, i1 false}
!5 = !{!"../drivers/ipack/ipack.c", i32 257, i32 1}
!6 = !{ptr @__ksymtab_ipack_driver_unregister, !7, !"__ksymtab_ipack_driver_unregister", i1 false, i1 false}
!7 = !{!"../drivers/ipack/ipack.c", i32 263, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/ipack/ipack.c", i32 433, i32 8}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ipack/ipack.c", i32 437, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ipack_device_init._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @ipack_device_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ipack/ipack.c", i32 439, i32 3}
!20 = !{ptr @ipack_device_init._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ipack_device_init._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ipack/ipack.c", i32 443, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ipack_device_init._entry.9, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ipack_device_init._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/ipack/ipack.c", i32 451, i32 4}
!29 = !{ptr @ipack_device_init._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ipack_device_init._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_ipack_device_init, !32, !"__ksymtab_ipack_device_init", i1 false, i1 false}
!32 = !{!"../drivers/ipack/ipack.c", i32 456, i32 1}
!33 = !{ptr @__ksymtab_ipack_device_add, !34, !"__ksymtab_ipack_device_add", i1 false, i1 false}
!34 = !{!"../drivers/ipack/ipack.c", i32 462, i32 1}
!35 = !{ptr @__ksymtab_ipack_device_del, !36, !"__ksymtab_ipack_device_del", i1 false, i1 false}
!36 = !{!"../drivers/ipack/ipack.c", i32 469, i32 1}
!37 = !{ptr @__ksymtab_ipack_get_device, !38, !"__ksymtab_ipack_get_device", i1 false, i1 false}
!38 = !{!"../drivers/ipack/ipack.c", i32 475, i32 1}
!39 = !{ptr @__ksymtab_ipack_put_device, !40, !"__ksymtab_ipack_put_device", i1 false, i1 false}
!40 = !{!"../drivers/ipack/ipack.c", i32 481, i32 1}
!41 = !{ptr @__initcall__kmod_ipack__187_495_ipack_init6, !42, !"__initcall__kmod_ipack__187_495_ipack_init6", i1 false, i1 false}
!42 = !{!"../drivers/ipack/ipack.c", i32 495, i32 1}
!43 = !{ptr @__exitcall_ipack_exit, !44, !"__exitcall_ipack_exit", i1 false, i1 false}
!44 = !{!"../drivers/ipack/ipack.c", i32 496, i32 1}
!45 = !{ptr @__UNIQUE_ID_author188, !46, !"__UNIQUE_ID_author188", i1 false, i1 false}
!46 = !{!"../drivers/ipack/ipack.c", i32 498, i32 1}
!47 = !{ptr @__UNIQUE_ID_file189, !48, !"__UNIQUE_ID_file189", i1 false, i1 false}
!48 = !{!"../drivers/ipack/ipack.c", i32 499, i32 1}
!49 = !{ptr @__UNIQUE_ID_license190, !48, !"__UNIQUE_ID_license190", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_description191, !51, !"__UNIQUE_ID_description191", i1 false, i1 false}
!51 = !{!"../drivers/ipack/ipack.c", i32 500, i32 1}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ipack/ipack.c", i32 18, i32 8}
!54 = !{ptr @ipack_ida, !53, !"ipack_ida", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ipack/ipack.c", i32 191, i32 15}
!57 = !{ptr @ipack_bus_type, !58, !"ipack_bus_type", i1 false, i1 false}
!58 = !{!"../drivers/ipack/ipack.c", i32 190, i32 24}
!59 = !{ptr @ipack_groups, !60, !"ipack_groups", i1 false, i1 false}
!60 = !{!"../drivers/ipack/ipack.c", i32 188, i32 1}
!61 = !{ptr @ipack_group, !60, !"ipack_group", i1 false, i1 false}
!62 = !{ptr @ipack_attrs, !63, !"ipack_attrs", i1 false, i1 false}
!63 = !{!"../drivers/ipack/ipack.c", i32 180, i32 26}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ipack/ipack.c", i32 174, i32 8}
!66 = !{ptr @dev_attr_id, !65, !"dev_attr_id", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ipack/ipack.c", i32 128, i32 20}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ipack/ipack.c", i32 175, i32 8}
!71 = !{ptr @dev_attr_id_device, !70, !"dev_attr_id_device", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ipack/ipack.c", i32 155, i32 23}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ipack/ipack.c", i32 157, i32 23}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ipack/ipack.c", i32 176, i32 8}
!78 = !{ptr @dev_attr_id_format, !77, !"dev_attr_id_format", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ipack/ipack.c", i32 172, i32 1}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ipack/ipack.c", i32 177, i32 8}
!83 = !{ptr @dev_attr_id_vendor, !82, !"dev_attr_id_vendor", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ipack/ipack.c", i32 143, i32 23}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ipack/ipack.c", i32 178, i32 8}
!88 = !{ptr @dev_attr_modalias, !87, !"dev_attr_modalias", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ipack/ipack.c", i32 168, i32 22}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/ipack/ipack.c", i32 89, i32 7}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ipack/ipack.c", i32 354, i32 3}
!95 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ipack_device_read_id._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ipack_device_read_id._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/ipack/ipack.c", i32 370, i32 4}
!100 = !{ptr @ipack_device_read_id._entry.32, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ipack_device_read_id._entry_ptr.34, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ipack_device_read_id._entry.35, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/ipack/ipack.c", i32 382, i32 4}
!104 = !{ptr @ipack_device_read_id._entry_ptr.36, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ipack/ipack.c", i32 321, i32 3}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ipack_parse_id1._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ipack_parse_id1._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ipack/ipack.c", i32 340, i32 3}
!112 = !{ptr @ipack_parse_id2._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ipack_parse_id2._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @xa_init_flags.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!116 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 4942976}
!127 = !{i64 2152482321}
!128 = !{i64 4942358}
!129 = !{i64 2153040376}
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.peeled.count", i32 1}
