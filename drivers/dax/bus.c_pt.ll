; ModuleID = '/llk/IR_all_yes/drivers/dax/bus.c_pt.bc'
source_filename = "../drivers/dax/bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+static_dev_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_static_dev_dax\09\09\09\09"
module asm "\09.long\09__crc_static_dev_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_dev_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22static_dev_dax\22\09\09\09\09\09"
module asm "__kstrtabns_static_dev_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kill_dev_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_kill_dev_dax\09\09\09\09"
module asm "\09.long\09__crc_kill_dev_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_dev_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_dev_dax\22\09\09\09\09\09"
module asm "__kstrtabns_kill_dev_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_region_put\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_region_put\09\09\09\09"
module asm "\09.long\09__crc_dax_region_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_region_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_region_put\22\09\09\09\09\09"
module asm "__kstrtabns_dax_region_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_dax_region\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_dax_region\09\09\09\09"
module asm "\09.long\09__crc_alloc_dax_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_dax_region:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_dax_region\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_dax_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_create_dev_dax\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_create_dev_dax\09\09\09\09"
module asm "\09.long\09__crc_devm_create_dev_dax\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_create_dev_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_create_dev_dax\22\09\09\09\09\09"
module asm "__kstrtabns_devm_create_dev_dax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__dax_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___dax_driver_register\09\09\09\09"
module asm "\09.long\09__crc___dax_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dax_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__dax_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___dax_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dax_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_dax_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_dax_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dax_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dax_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dax_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.dax_region = type { i32, i32, %struct.kref, ptr, i32, %struct.ida, %struct.resource, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dev_dax = type { ptr, ptr, i32, i32, i32, %struct.ida, %struct.device, ptr, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.range = type { i64, i64 }
%struct.dev_dax_data = type { ptr, ptr, i32, i32 }
%struct.dev_dax_range = type { i32, %struct.range, ptr }
%struct.dax_mapping = type { %struct.device, i32, i32 }
%struct.dax_device_driver = type { %struct.device_driver, %struct.list_head, i32, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dax_id = type { %struct.list_head, [30 x i8] }

@__kstrtab_static_dev_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_dev_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_static_dev_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_dev_dax to i32), ptr @__kstrtab_static_dev_dax, ptr @__kstrtabns_static_dev_dax }, section "___ksymtab_gpl+static_dev_dax", align 4
@__kstrtab_kill_dev_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_dev_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_dev_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_dev_dax to i32), ptr @__kstrtab_kill_dev_dax, ptr @__kstrtabns_kill_dev_dax }, section "___ksymtab_gpl+kill_dev_dax", align 4
@__kstrtab_dax_region_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_region_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_region_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_region_put to i32), ptr @__kstrtab_dax_region_put, ptr @__kstrtabns_dax_region_put }, section "___ksymtab_gpl+dax_region_put", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/dax/bus.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: dax core failed to setup private data\0A\00", [50 x i8] zeroinitializer }, align 32
@dax_region_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dax_region_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_dax_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_dax_region = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_dax_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_dax_region to i32), ptr @__kstrtab_alloc_dax_region, ptr @__kstrtabns_alloc_dax_region }, section "___ksymtab_gpl+alloc_dax_region", align 4
@devm_create_dev_dax.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: dynamic id specified to static region\0A\00", [50 x i8] zeroinitializer }, align 32
@devm_create_dev_dax.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: static id specified to dynamic region\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dax%d.%d\00", [23 x i8] zeroinitializer }, align 32
@devm_create_dev_dax.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s %s: custom dev_pagemap requires a static dax_region\0A\00", [40 x i8] zeroinitializer }, align 32
@dax_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr @dax_drv_groups, ptr @dax_bus_match, ptr @dax_bus_uevent, ptr @dax_bus_probe, ptr null, ptr @dax_bus_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dev_dax_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @dax_attribute_groups, ptr null, ptr null, ptr @dev_dax_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_devm_create_dev_dax = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_create_dev_dax = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_create_dev_dax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_create_dev_dax to i32), ptr @__kstrtab_devm_create_dev_dax, ptr @__kstrtabns_devm_create_dev_dax }, section "___ksymtab_gpl+devm_create_dev_dax", align 4
@dax_bus_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dax_bus_lock, i64 52), ptr getelementptr (i8, ptr @dax_bus_lock, i64 52) }, ptr @dax_bus_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@match_always_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab___dax_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___dax_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___dax_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dax_driver_register to i32), ptr @__kstrtab___dax_driver_register, ptr @__kstrtabns___dax_driver_register }, section "___ksymtab_gpl+__dax_driver_register", align 4
@__kstrtab_dax_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dax_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dax_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dax_driver_unregister to i32), ptr @__kstrtab_dax_driver_unregister, ptr @__kstrtabns_dax_driver_unregister }, section "___ksymtab_gpl+dax_driver_unregister", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@dax_region_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.9, ptr @dax_region_visible, ptr null, ptr @dax_region_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dax_region\00", [21 x i8] zeroinitializer }, align 32
@dax_region_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_available_size, ptr @dev_attr_region_size, ptr @dev_attr_region_align, ptr @dev_attr_create, ptr @dev_attr_seed, ptr @dev_attr_delete, ptr @dev_attr_id, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_available_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_create = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @create_show, ptr @create_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_seed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @seed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_delete = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @delete_store }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"available_size\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/device.h\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"seed\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delete\00", [25 x i8] zeroinitializer }, align 32
@dev_attr_region_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @region_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_region_align = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @region_align_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"align\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@alloc_dev_dax_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s %s: 0-size allocation must be first\0A\00", [56 x i8] zeroinitializer }, align 32
@alloc_dev_dax_range.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str, ptr @.str.26, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alloc_dev_dax_range\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alloc range[%d]: %pa:%pa\0A\00", [38 x i8] zeroinitializer }, align 32
@trim_dev_dax_range.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str, ptr @.str.28, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trim_dev_dax_range\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"delete range[%d]: %#llx:%#llx\0A\00", [33 x i8] zeroinitializer }, align 32
@dax_drv_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dax_drv_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dax_drv_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dax_drv_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dax_drv_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @driver_attr_new_id, ptr @driver_attr_remove_id, ptr null], [20 x i8] zeroinitializer }, align 32
@driver_attr_new_id = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.29, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @new_id_store }, [36 x i8] zeroinitializer }, align 32
@driver_attr_remove_id = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.30, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @remove_id_store }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"new_id\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"remove_id\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MODALIAS=dax:t%d\00", [47 x i8] zeroinitializer }, align 32
@dax_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_dax_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_dax_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @dev_dax_visible, ptr null, ptr @dev_dax_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@dev_dax_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_size, ptr @dev_attr_mapping, ptr @dev_attr_target_node, ptr @dev_attr_align, ptr @dev_attr_resource, ptr @dev_attr_numa_node, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_target_node = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @target_node_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_numa_node = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @numa_node_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mapping = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mapping_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_align = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @align_show, ptr @align_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @size_show, ptr @size_store }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"target_node\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"numa_node\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mapping\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@dev_dax_validate_align.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str, ptr @.str.37, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dev_dax_validate_align\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: align %u invalid for range %d\0A\00", [61 x i8] zeroinitializer }, align 32
@size_store.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.38, ptr @.str, ptr @.str.39, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"size_store\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: size: %lld misaligned\0A\00", [37 x i8] zeroinitializer }, align 32
@dev_dax_resize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s %s: resize of %pa misaligned\0A\00", [63 x i8] zeroinitializer }, align 32
@dev_dax_shrink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s %s: failed to find matching resource\0A\00", [55 x i8] zeroinitializer }, align 32
@unregister_dax_mapping.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.42, ptr @.str, ptr @.str.14, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unregister_dax_mapping\00", [41 x i8] zeroinitializer }, align 32
@adjust_dev_dax_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: deletion is handled by dev_dax_shrink\0A\00", [50 x i8] zeroinitializer }, align 32
@adjust_dev_dax_range.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.44, ptr @.str, ptr @.str.45, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adjust_dev_dax_range\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s range[%d]: %#llx:%#llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shrink\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extend\00", [25 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_resource = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resource_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dax:t%d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resource\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#llx\0A\00", [25 x i8] zeroinitializer }, align 32
@unregister_dev_dax.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.52, ptr @.str, ptr @.str.14, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unregister_dev_dax\00", [45 x i8] zeroinitializer }, align 32
@devm_register_dax_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s %s: region disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@dax_mapping_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @dax_mapping_attribute_groups, ptr null, ptr null, ptr @dax_mapping_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mapping%d\00", [22 x i8] zeroinitializer }, align 32
@dax_mapping_attribute_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dax_mapping_attribute_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dax_mapping_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dax_mapping_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@dax_mapping_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_start, ptr @dev_attr_end, ptr @dev_attr_page_offset, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_start = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @start_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_end = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @end_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_page_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pgoff_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"page_offset\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#lx\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dax_bus_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dax_bus_lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 584, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"dax_region_attribute_groups\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 544, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1314, i32 7 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1322, i32 7 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1337, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1344, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"dax_bus_type\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 206, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"dev_dax_type\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1294, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"dax_bus_lock\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"match_always_count\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1416, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 378, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"dax_region_attribute_group\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 538, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 539, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"dax_region_attributes\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 527, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"dev_attr_available_size\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"dev_attr_create\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"dev_attr_seed\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"dev_attr_delete\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 291, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 289, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"../include/linux/device.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 787, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 379, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 324, i32 20 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 324, i32 60 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 310, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 510, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"dev_attr_region_size\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 251, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"dev_attr_region_align\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 261, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 251, i32 55 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 262, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 259, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 241, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 239, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 797, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 826, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 406, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"dax_drv_groups\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"dax_drv_group\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 126, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"dax_drv_attrs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 121, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"driver_attr_new_id\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [22 x i8] c"driver_attr_remove_id\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 112, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 119, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 27, i32 29 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"dax_attribute_groups\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1276, i32 38 }
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"dev_dax_attribute_group\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1271, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"dev_dax_attributes\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1260, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"dev_attr_target_node\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"dev_attr_numa_node\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"dev_attr_mapping\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"dev_attr_align\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1190, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1064, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1206, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1240, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1125, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1077, i32 23 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1144, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1048, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 983, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 927, i32 7 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 637, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 855, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 867, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [18 x i8] c"dev_attr_resource\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1233, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1231, i32 22 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1222, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1220, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 427, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 750, i32 6 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"dax_mapping_type\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 736, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 768, i32 20 }
@___asan_gen_.313 = private unnamed_addr constant [29 x i8] c"dax_mapping_attribute_groups\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 731, i32 38 }
@___asan_gen_.316 = private unnamed_addr constant [28 x i8] c"dax_mapping_attribute_group\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 727, i32 37 }
@___asan_gen_.319 = private unnamed_addr constant [23 x i8] c"dax_mapping_attributes\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 720, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"dev_attr_start\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [13 x i8] c"dev_attr_end\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"dev_attr_page_offset\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 686, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 702, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 718, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 713, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [21 x i8] c"../drivers/dax/bus.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 13, i32 8 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__ksymtab___dax_driver_register, ptr @__ksymtab_alloc_dax_region, ptr @__ksymtab_dax_driver_unregister, ptr @__ksymtab_dax_region_put, ptr @__ksymtab_devm_create_dev_dax, ptr @__ksymtab_kill_dev_dax, ptr @__ksymtab_static_dev_dax, ptr @dax_bus_exit, ptr @.str, ptr @.str.1, ptr @dax_region_attribute_groups, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @dax_bus_type, ptr @dev_dax_type, ptr @dax_bus_lock, ptr @match_always_count, ptr @xa_init_flags.__key, ptr @.str.8, ptr @dax_region_attribute_group, ptr @.str.9, ptr @dax_region_attributes, ptr @dev_attr_available_size, ptr @dev_attr_create, ptr @dev_attr_seed, ptr @dev_attr_delete, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @dev_attr_region_size, ptr @dev_attr_region_align, ptr @dev_attr_id, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @dax_drv_groups, ptr @dax_drv_group, ptr @dax_drv_attrs, ptr @driver_attr_new_id, ptr @driver_attr_remove_id, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dax_attribute_groups, ptr @dev_dax_attribute_group, ptr @dev_dax_attributes, ptr @dev_attr_target_node, ptr @dev_attr_numa_node, ptr @dev_attr_mapping, ptr @dev_attr_align, ptr @dev_attr_size, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @dev_attr_modalias, ptr @dev_attr_resource, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @dax_mapping_type, ptr @.str.54, ptr @dax_mapping_attribute_groups, ptr @dax_mapping_attribute_group, ptr @dax_mapping_attributes, ptr @dev_attr_start, ptr @dev_attr_end, ptr @dev_attr_page_offset, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_region_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_dax_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_bus_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @match_always_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_region_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_region_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_create to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_seed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_delete to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_region_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_region_align to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_drv_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_drv_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_drv_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_new_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_remove_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_dax_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_dax_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_target_node to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_numa_node to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mapping to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_align to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resource to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_mapping_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_mapping_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_mapping_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_mapping_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_start to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_end to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_page_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @static_dev_dax(ptr nocapture noundef readonly %dev_dax) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_dax, align 8
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kill_dev_dax(ptr nocapture noundef %dev_dax) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dax_dev1 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 1
  %0 = ptrtoint ptr %dax_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dax_dev1, align 4
  %call = tail call ptr @dax_inode(ptr noundef %1) #14
  tail call void @kill_dax(ptr noundef %1) #14
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_range(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1) #14
  %4 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_dax, align 8
  %flags.i.i = getelementptr inbounds %struct.dax_region, ptr %5, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pgmap = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 7
  %8 = ptrtoint ptr %pgmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pgmap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dax_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_dax(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dax_region_put(ptr noundef %dax_region) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.dax_region, ptr %dax_region, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !203
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !204

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !205
  tail call void @kfree(ptr noundef %dax_region) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_dax_region(ptr noundef %parent, i32 noundef %region_id, ptr nocapture noundef readonly %range, i32 noundef %target_node, i32 noundef %align, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end19, label %do.end

do.end:                                           ; preds = %entry
  %call6 = tail call ptr @dev_driver_string(ptr noundef %parent) #14
  %init_name.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call6, ptr noundef %retval.0.i) #14
  br label %cleanup

if.end19:                                         ; preds = %entry
  %6 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %range, align 8
  %conv = zext i32 %align to i64
  %sub = add nsw i64 %conv, -1
  %and = and i64 %7, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %end.i = getelementptr inbounds %struct.range, ptr %range, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %end.i, align 8
  %sub.i = sub i64 1, %7
  %add.i = add i64 %sub.i, %9
  %and24 = and i64 %add.i, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %cmp25 = icmp eq i64 %and24, 0
  br i1 %cmp25, label %if.end28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 112) #17
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %kref = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %12 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %kref, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %region_id, ptr %call7.i.i, align 8
  %align33 = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %align33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %align, ptr %align33, align 8
  %dev = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %parent, ptr %dev, align 4
  %target_node34 = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %target_node34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %target_node, ptr %target_node34, align 4
  %ida = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ida, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.i = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %xa_head.i.i, align 4
  %res = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %range, align 8
  %conv37 = trunc i64 %20 to i32
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %end.i, align 8
  %conv39 = trunc i64 %22 to i32
  %or = or i32 %flags, 512
  %23 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv37, ptr %res, align 8
  %.compoundliteral.sroa.2.0.res.sroa_idx = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %.compoundliteral.sroa.2.0.res.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv39, ptr %.compoundliteral.sroa.2.0.res.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.res.sroa_idx = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %.compoundliteral.sroa.3.0.res.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %.compoundliteral.sroa.3.0.res.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.res.sroa_idx = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %.compoundliteral.sroa.4.0.res.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %.compoundliteral.sroa.4.0.res.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.res.sroa_idx = getelementptr inbounds %struct.dax_region, ptr %call7.i.i, i32 0, i32 6, i32 4
  %27 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.res.sroa_idx, i32 0, i32 16)
  %call42 = tail call i32 @sysfs_create_groups(ptr noundef %parent, ptr noundef nonnull @dax_region_attribute_groups) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  tail call fastcc void @kref_get(ptr noundef %kref)
  %call.i = tail call i32 @devm_add_action(ptr noundef %parent, ptr noundef nonnull @dax_region_unregister, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i76 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i76, label %if.end45.cleanup_crit_edge, label %if.then.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dax_region_unregister(ptr noundef nonnull %call7.i.i) #14, !callees !206
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end45.cleanup_crit_edge, %if.then44, %if.end28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi ptr [ null, %dev_name.exit ], [ null, %if.then44 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ], [ null, %if.end28.cleanup_crit_edge ], [ %call7.i.i, %if.end45.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !207
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !208

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !204

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dax_region_unregister(ptr noundef %region) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dax_region, ptr %region, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @sysfs_remove_groups(ptr noundef %1, ptr noundef nonnull @dax_region_attribute_groups) #14
  %kref.i = getelementptr inbounds %struct.dax_region, ptr %region, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dax_region_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !204

if.end5.i.i.i.i.i.dax_region_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %dax_region_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !205
  tail call void @kfree(ptr noundef %region) #14
  br label %dax_region_put.exit

dax_region_put.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dax_region_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_create_dev_dax(ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1016) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  %id51 = getelementptr inbounds %struct.dev_dax_data, ptr %data, i32 0, i32 3
  %7 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id51, align 4
  br i1 %cmp.i.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %land.rhs, label %if.then5.if.end115_crit_edge

if.then5.if.end115_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

land.rhs:                                         ; preds = %if.then5
  %.b312 = load i1, ptr @devm_create_dev_dax.__already_done, align 1
  br i1 %.b312, label %land.rhs.err_id_crit_edge, label %if.then13, !prof !204

land.rhs.err_id_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_id

if.then13:                                        ; preds = %land.rhs
  store i1 true, ptr @devm_create_dev_dax.__already_done, align 1
  %call23 = tail call ptr @dev_driver_string(ptr noundef %3) #14
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.dev_name.exit_crit_edge

if.then13.dev_name.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.then13.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1315, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call23, ptr noundef %retval.0.i) #14
  br label %err_id

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp52 = icmp sgt i32 %8, -1
  br i1 %cmp52, label %land.rhs59, label %if.end109

land.rhs59:                                       ; preds = %if.else
  %.b308311 = load i1, ptr @devm_create_dev_dax.__already_done.3, align 1
  br i1 %.b308311, label %land.rhs59.err_id_crit_edge, label %if.then70, !prof !204

land.rhs59.err_id_crit_edge:                      ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_id

if.then70:                                        ; preds = %land.rhs59
  store i1 true, ptr @devm_create_dev_dax.__already_done.3, align 1
  %call84 = tail call ptr @dev_driver_string(ptr noundef %3) #14
  %init_name.i315 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i315 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i315, align 8
  %tobool.not.i316 = icmp eq ptr %14, null
  br i1 %tobool.not.i316, label %if.end.i317, label %if.then70.dev_name.exit319_crit_edge

if.then70.dev_name.exit319_crit_edge:             ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit319

if.end.i317:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  br label %dev_name.exit319

dev_name.exit319:                                 ; preds = %if.end.i317, %if.then70.dev_name.exit319_crit_edge
  %retval.0.i318 = phi ptr [ %16, %if.end.i317 ], [ %14, %if.then70.dev_name.exit319_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1323, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %call84, ptr noundef %retval.0.i318) #14
  br label %err_id

if.end109:                                        ; preds = %if.else
  %ida = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp111 = icmp slt i32 %call.i, 0
  br i1 %cmp111, label %if.end109.err_id_crit_edge, label %if.end109.if.end115_crit_edge

if.end109.if.end115_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.end109.err_id_crit_edge:                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_id

if.end115:                                        ; preds = %if.end109.if.end115_crit_edge, %if.then5.if.end115_crit_edge
  %call.i.sink = phi i32 [ %8, %if.then5.if.end115_crit_edge ], [ %call.i, %if.end109.if.end115_crit_edge ]
  %id114 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %id114 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i.sink, ptr %id114, align 8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %call7.i.i, align 8
  %dev116 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 6
  tail call void @device_initialize(ptr noundef %dev116) #14
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %id118 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %id118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id118, align 8
  %call119 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev116, ptr noundef nonnull @.str.5, i32 noundef %20, i32 noundef %22) #14
  %res = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res, align 4
  %conv = zext i32 %24 to i64
  %size = getelementptr inbounds %struct.dev_dax_data, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %call120 = tail call fastcc i32 @alloc_dev_dax_range(ptr noundef nonnull %call7.i.i, i64 noundef %conv, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end115.err_range_crit_edge

if.end115.err_range_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_range

if.end123:                                        ; preds = %if.end115
  %pgmap = getelementptr inbounds %struct.dev_dax_data, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %pgmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pgmap, align 4
  %tobool124.not = icmp eq ptr %28, null
  br i1 %tobool124.not, label %if.end123.if.end192_crit_edge, label %if.then125

if.end123.if.end192_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end192

if.then125:                                       ; preds = %if.end123
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i321 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i321)
  %cmp.i322.not = icmp eq i32 %and.i321, 0
  br i1 %cmp.i322.not, label %land.rhs137, label %if.then125.if.end177_crit_edge

if.then125.if.end177_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end177

land.rhs137:                                      ; preds = %if.then125
  %.b309310 = load i1, ptr @devm_create_dev_dax.__already_done.6, align 1
  br i1 %.b309310, label %land.rhs137.if.end177_crit_edge, label %if.then148, !prof !204

land.rhs137.if.end177_crit_edge:                  ; preds = %land.rhs137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end177

if.then148:                                       ; preds = %land.rhs137
  store i1 true, ptr @devm_create_dev_dax.__already_done.6, align 1
  %call162 = tail call ptr @dev_driver_string(ptr noundef %3) #14
  %init_name.i323 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i323 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i323, align 8
  %tobool.not.i324 = icmp eq ptr %32, null
  br i1 %tobool.not.i324, label %if.end.i325, label %if.then148.dev_name.exit327_crit_edge

if.then148.dev_name.exit327_crit_edge:            ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit327

if.end.i325:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  br label %dev_name.exit327

dev_name.exit327:                                 ; preds = %if.end.i325, %if.then148.dev_name.exit327_crit_edge
  %retval.0.i326 = phi ptr [ %34, %if.end.i325 ], [ %32, %if.then148.dev_name.exit327_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1345, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call162, ptr noundef %retval.0.i326) #14
  br label %if.end177

if.end177:                                        ; preds = %dev_name.exit327, %land.rhs137.if.end177_crit_edge, %if.then125.if.end177_crit_edge
  %35 = ptrtoint ptr %pgmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pgmap, align 4
  %call186 = tail call ptr @kmemdup(ptr noundef %36, i32 noundef 128, i32 noundef 3264) #14
  %pgmap187 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %pgmap187 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call186, ptr %pgmap187, align 8
  %tobool189.not = icmp eq ptr %call186, null
  br i1 %tobool189.not, label %if.end177.err_pgmap_crit_edge, label %if.end177.if.end192_crit_edge

if.end177.if.end192_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end192

if.end177.err_pgmap_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pgmap

if.end192:                                        ; preds = %if.end177.if.end192_crit_edge, %if.end123.if.end192_crit_edge
  %call193 = tail call ptr @alloc_dax(ptr noundef nonnull %call7.i.i, ptr noundef null) #14
  %cmp.i328 = icmp ugt ptr %call193, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then195, label %if.end197

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %call193 to i32
  %pgmap225 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %pgmap225 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pgmap225, align 8
  tail call void @kfree(ptr noundef %40) #14
  br label %err_pgmap

if.end197:                                        ; preds = %if.end192
  tail call void @set_dax_synchronous(ptr noundef %call193) #14
  tail call void @set_dax_nocache(ptr noundef %call193) #14
  tail call void @set_dax_nomc(ptr noundef %call193) #14
  tail call void @kill_dax(ptr noundef %call193) #14
  %dax_dev198 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %dax_dev198 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call193, ptr %dax_dev198, align 4
  %target_node = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %target_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %target_node, align 4
  %target_node199 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %target_node199 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %target_node199, align 4
  %align = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %align, align 4
  %align200 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %align200 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %align200, align 8
  %ida201 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %ida201, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i.i = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %49 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %xa_head.i.i, align 4
  %kref = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !207
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end197.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !208

if.end197.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end197
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %51 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %.not.i.i.i.i = icmp sgt i32 %51, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !204

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end197.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end197.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call202 = tail call ptr @dax_inode(ptr noundef %call193) #14
  %i_rdev = getelementptr inbounds %struct.inode, ptr %call202, i32 0, i32 13
  %52 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_rdev, align 8
  %devt = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 6, i32 29
  %54 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %devt, align 8
  %bus = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 6, i32 5
  %55 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @dax_bus_type, ptr %bus, align 8
  %parent203 = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %parent203 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %3, ptr %parent203, align 8
  %type = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 6, i32 4
  %57 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @dev_dax_type, ptr %type, align 4
  %call204 = tail call i32 @device_add(ptr noundef %dev116) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end208, label %if.then206

if.then206:                                       ; preds = %kref_get.exit
  %58 = ptrtoint ptr %dax_dev198 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dax_dev198, align 4
  %call.i329 = tail call ptr @dax_inode(ptr noundef %59) #14
  tail call void @kill_dax(ptr noundef %59) #14
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i329, i32 0, i32 9
  %60 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_mapping.i, align 8
  tail call void @unmap_mapping_range(ptr noundef %61, i64 noundef 0, i64 noundef 0, i32 noundef 1) #14
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.dax_region, ptr %63, i32 0, i32 6, i32 3
  %64 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %if.then.i, label %if.then206.kill_dev_dax.exit_crit_edge

if.then206.kill_dev_dax.exit_crit_edge:           ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #16
  br label %kill_dev_dax.exit

if.then.i:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #16
  %pgmap.i = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %pgmap.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %pgmap.i, align 8
  br label %kill_dev_dax.exit

kill_dev_dax.exit:                                ; preds = %if.then.i, %if.then206.kill_dev_dax.exit_crit_edge
  tail call void @put_device(ptr noundef %dev116) #14
  %67 = inttoptr i32 %call204 to ptr
  br label %cleanup

if.end208:                                        ; preds = %kref_get.exit
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %call.i331 = tail call i32 @devm_add_action(ptr noundef %69, ptr noundef nonnull @unregister_dev_dax, ptr noundef %dev116) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %tobool.not.i332 = icmp eq i32 %call.i331, 0
  br i1 %tobool.not.i332, label %if.end214, label %if.then212

if.then212:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_dev_dax(ptr noundef %dev116) #14, !callees !206
  %70 = inttoptr i32 %call.i331 to ptr
  br label %cleanup

if.end214:                                        ; preds = %if.end208
  %nr_range = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 8
  %71 = ptrtoint ptr %nr_range to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool215.not = icmp eq i32 %72, 0
  br i1 %tobool215.not, label %if.end214.cleanup_crit_edge, label %land.lhs.true

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end214
  %ranges = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 9
  %73 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ranges, align 8
  %range = getelementptr inbounds %struct.dev_dax_range, ptr %74, i32 0, i32 1
  %end.i = getelementptr inbounds %struct.dev_dax_range, ptr %74, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %end.i, align 8
  %77 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %range, align 8
  %sub.i = add i64 %76, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %78)
  %tobool217.not = icmp eq i64 %sub.i, %78
  br i1 %tobool217.not, label %land.lhs.true.cleanup_crit_edge, label %if.then218

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then218:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call219 = tail call fastcc i32 @devm_register_dax_mapping(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  %79 = inttoptr i32 %call219 to ptr
  %spec.select = select i1 %tobool220.not, ptr %call7.i.i, ptr %79
  br label %cleanup

err_pgmap:                                        ; preds = %if.then195, %if.end177.err_pgmap_crit_edge
  %rc.0 = phi i32 [ %38, %if.then195 ], [ -12, %if.end177.err_pgmap_crit_edge ]
  %nr_range.i = getelementptr inbounds %struct.dev_dax, ptr %call7.i.i, i32 0, i32 8
  %80 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not2.i = icmp eq i32 %81, 0
  br i1 %tobool.not2.i, label %err_pgmap.err_range_crit_edge, label %err_pgmap.while.body.i_crit_edge

err_pgmap.while.body.i_crit_edge:                 ; preds = %err_pgmap
  br label %while.body.i

err_pgmap.err_range_crit_edge:                    ; preds = %err_pgmap
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_range

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_pgmap.while.body.i_crit_edge
  tail call fastcc void @trim_dev_dax_range(ptr noundef %call7.i.i) #14
  %82 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_range.i, align 4
  %tobool.not.i335 = icmp eq i32 %83, 0
  br i1 %tobool.not.i335, label %while.body.i.err_range_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.err_range_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_range

err_range:                                        ; preds = %while.body.i.err_range_crit_edge, %err_pgmap.err_range_crit_edge, %if.end115.err_range_crit_edge
  %rc.1 = phi i32 [ %call120, %if.end115.err_range_crit_edge ], [ %rc.0, %err_pgmap.err_range_crit_edge ], [ %rc.0, %while.body.i.err_range_crit_edge ]
  tail call fastcc void @free_dev_dax_id(ptr noundef nonnull %call7.i.i)
  br label %err_id

err_id:                                           ; preds = %err_range, %if.end109.err_id_crit_edge, %dev_name.exit319, %land.rhs59.err_id_crit_edge, %dev_name.exit, %land.rhs.err_id_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_range ], [ %call.i, %if.end109.err_id_crit_edge ], [ -22, %dev_name.exit ], [ -22, %dev_name.exit319 ], [ -22, %land.rhs.err_id_crit_edge ], [ -22, %land.rhs59.err_id_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %84 = inttoptr i32 %rc.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_id, %if.then218, %land.lhs.true.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %if.then212, %kill_dev_dax.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %84, %err_id ], [ %67, %kill_dev_dax.exit ], [ %70, %if.then212 ], [ %call7.i.i, %land.lhs.true.cleanup_crit_edge ], [ %call7.i.i, %if.end214.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.then218 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_dev_dax_range(ptr noundef %dev_dax, i64 noundef %start, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_dax, align 8
  %res1 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6
  %dev2 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.device_lock_assert.exit_crit_edge, label %land.rhs.i

entry.device_lock_assert.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %dev3 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  %dep_map.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.device_lock_assert.exit_crit_edge, !prof !208

land.rhs.i.device_lock_assert.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit

device_lock_assert.exit:                          ; preds = %do.end.i, %land.rhs.i.device_lock_assert.exit_crit_edge, %entry.device_lock_assert.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end45

if.then:                                          ; preds = %device_lock_assert.exit
  %nr_range = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 8
  %5 = ptrtoint ptr %nr_range to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %land.rhs

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs:                                         ; preds = %if.then
  %.b145 = load i1, ptr @alloc_dev_dax_range.__already_done, align 1
  br i1 %.b145, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !204

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  store i1 true, ptr @alloc_dev_dax_range.__already_done, align 1
  %call = tail call ptr @dev_driver_string(ptr noundef %dev2) #14
  %init_name.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i146 = icmp eq ptr %8, null
  br i1 %tobool.not.i146, label %if.end.i, label %if.then12.dev_name.exit_crit_edge

if.then12.dev_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then12.dev_name.exit_crit_edge
  %retval.0.i147 = phi ptr [ %10, %if.end.i ], [ %8, %if.then12.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 798, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call, ptr noundef %retval.0.i147) #14
  br label %cleanup

if.end45:                                         ; preds = %device_lock_assert.exit
  %conv = trunc i64 %start to i32
  %init_name.i148 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %init_name.i148 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i148, align 8
  %tobool.not.i149 = icmp eq ptr %12, null
  br i1 %tobool.not.i149, label %if.end.i150, label %if.end45.dev_name.exit152_crit_edge

if.end45.dev_name.exit152_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit152

if.end.i150:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit152

dev_name.exit152:                                 ; preds = %if.end.i150, %if.end45.dev_name.exit152_crit_edge
  %retval.0.i151 = phi ptr [ %14, %if.end.i150 ], [ %12, %if.end45.dev_name.exit152_crit_edge ]
  %call47 = tail call ptr @__request_region(ptr noundef %res1, i32 noundef %conv, i32 noundef %size, ptr noundef %retval.0.i151, i32 noundef 0) #14
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %dev_name.exit152.cleanup_crit_edge, label %if.end50

dev_name.exit152.cleanup_crit_edge:               ; preds = %dev_name.exit152
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %dev_name.exit152
  %ranges51 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 9
  %15 = ptrtoint ptr %ranges51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ranges51, align 8
  %nr_range52 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 8
  %17 = ptrtoint ptr %nr_range52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_range52, align 4
  %add = shl i32 %18, 5
  %mul = add i32 %add, 32
  %call53 = tail call noalias ptr @krealloc(ptr noundef %16, i32 noundef %mul, i32 noundef 3264) #18
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then55, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end50
  %19 = ptrtoint ptr %nr_range52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_range52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp158 = icmp sgt i32 %20, 0
  br i1 %cmp158, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call47, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call47, i32 0, i32 1
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %22
  %add.i = add i32 %sub.i, %24
  tail call void @__release_region(ptr noundef %res1, i32 noundef %22, i32 noundef %add.i) #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pgoff.0160 = phi i32 [ %add63, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0159 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %range = getelementptr %struct.dev_dax_range, ptr %call53, i32 %i.0159, i32 1
  %end.i153 = getelementptr %struct.dev_dax_range, ptr %call53, i32 %i.0159, i32 1, i32 1
  %25 = ptrtoint ptr %end.i153 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %end.i153, align 8
  %27 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %range, align 8
  %sub.i154 = add i64 %26, 1
  %add.i155 = sub i64 %sub.i154, %28
  %shr = lshr i64 %add.i155, 12
  %conv62 = trunc i64 %shr to i32
  %add63 = add i32 %pgoff.0160, %conv62
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pgoff.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add63, %for.body.for.end_crit_edge ]
  %29 = ptrtoint ptr %ranges51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call53, ptr %ranges51, align 8
  %inc66 = add i32 %20, 1
  %30 = ptrtoint ptr %nr_range52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc66, ptr %nr_range52, align 4
  %arrayidx67 = getelementptr %struct.dev_dax_range, ptr %call53, i32 %20
  %31 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call47, align 4
  %conv72 = zext i32 %32 to i64
  %end73 = getelementptr inbounds %struct.resource, ptr %call47, i32 0, i32 1
  %33 = ptrtoint ptr %end73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end73, align 4
  %conv74 = zext i32 %34 to i64
  %35 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %pgoff.0.lcssa, ptr %arrayidx67, align 8
  %.compoundliteral.sroa.2111.0.arrayidx67.sroa_idx = getelementptr inbounds i8, ptr %arrayidx67, i32 8
  %36 = ptrtoint ptr %.compoundliteral.sroa.2111.0.arrayidx67.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv72, ptr %.compoundliteral.sroa.2111.0.arrayidx67.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.arrayidx67.sroa_idx = getelementptr inbounds i8, ptr %arrayidx67, i32 16
  %37 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx67.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv74, ptr %.compoundliteral.sroa.3.0.arrayidx67.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.arrayidx67.sroa_idx = getelementptr inbounds i8, ptr %arrayidx67, i32 24
  %38 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx67.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %.compoundliteral.sroa.4.0.arrayidx67.sroa_idx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_dev_dax_range.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_dev_dax_range, %if.then86)) #14
          to label %do.end92 [label %if.then86], !srcloc !209

if.then86:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %nr_range52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_range52, align 4
  %sub = add i32 %40, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alloc_dev_dax_range.__UNIQUE_ID_ddebug231, ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %sub, ptr noundef nonnull %call47, ptr noundef %end73) #14
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %for.end
  %state_in_sysfs.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 0, i32 8
  %41 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %42 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool95.not = icmp eq i8 %42, 0
  br i1 %tobool95.not, label %do.end92.cleanup_crit_edge, label %if.end97

do.end92.cleanup_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end97:                                         ; preds = %do.end92
  %43 = ptrtoint ptr %nr_range52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_range52, align 4
  %sub99 = add i32 %44, -1
  %call100 = tail call fastcc i32 @devm_register_dax_mapping(ptr noundef %dev_dax, i32 noundef %sub99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end97.cleanup_crit_edge, label %if.then102

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trim_dev_dax_range(ptr noundef %dev_dax)
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.end97.cleanup_crit_edge, %do.end92.cleanup_crit_edge, %if.then55, %dev_name.exit152.cleanup_crit_edge, %dev_name.exit, %land.rhs.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then55 ], [ -12, %dev_name.exit152.cleanup_crit_edge ], [ 0, %do.end92.cleanup_crit_edge ], [ %call100, %if.then102 ], [ 0, %if.end97.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ -16, %dev_name.exit ], [ -16, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_dax(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dax_synchronous(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dax_nocache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dax_nomc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unregister_dev_dax(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unregister_dev_dax.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unregister_dev_dax, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @unregister_dev_dax.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.52) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dax_dev1.i = getelementptr i8, ptr %dev, i32 -68
  %0 = ptrtoint ptr %dax_dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dax_dev1.i, align 4
  %call.i = tail call ptr @dax_inode(ptr noundef %1) #14
  tail call void @kill_dax(ptr noundef %1) #14
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i, align 8
  tail call void @unmap_mapping_range(ptr noundef %3, i64 noundef 0, i64 noundef 0, i32 noundef 1) #14
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.dax_region, ptr %5, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %if.then.i, label %do.end.kill_dev_dax.exit_crit_edge

do.end.kill_dev_dax.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %kill_dev_dax.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %pgmap.i = getelementptr i8, ptr %dev, i32 928
  %8 = ptrtoint ptr %pgmap.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pgmap.i, align 8
  br label %kill_dev_dax.exit

kill_dev_dax.exit:                                ; preds = %if.then.i, %do.end.kill_dev_dax.exit_crit_edge
  %nr_range.i = getelementptr i8, ptr %dev, i32 932
  %9 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not2.i = icmp eq i32 %10, 0
  br i1 %tobool.not2.i, label %kill_dev_dax.exit.free_dev_dax_ranges.exit_crit_edge, label %kill_dev_dax.exit.while.body.i_crit_edge

kill_dev_dax.exit.while.body.i_crit_edge:         ; preds = %kill_dev_dax.exit
  br label %while.body.i

kill_dev_dax.exit.free_dev_dax_ranges.exit_crit_edge: ; preds = %kill_dev_dax.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dev_dax_ranges.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %kill_dev_dax.exit.while.body.i_crit_edge
  tail call fastcc void @trim_dev_dax_range(ptr noundef %add.ptr.i) #14
  %11 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_range.i, align 4
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %while.body.i.free_dev_dax_ranges.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.free_dev_dax_ranges.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dev_dax_ranges.exit

free_dev_dax_ranges.exit:                         ; preds = %while.body.i.free_dev_dax_ranges.exit_crit_edge, %kill_dev_dax.exit.free_dev_dax_ranges.exit_crit_edge
  tail call void @device_del(ptr noundef %dev) #14
  tail call void @put_device(ptr noundef %dev) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_register_dax_mapping(ptr noundef %dev_dax, i32 noundef %range_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_dax, align 8
  %dev1 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.device_lock_assert.exit_crit_edge, label %land.rhs.i

entry.device_lock_assert.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %dep_map.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.device_lock_assert.exit_crit_edge, !prof !208

land.rhs.i.device_lock_assert.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit

device_lock_assert.exit:                          ; preds = %do.end.i, %land.rhs.i.device_lock_assert.exit_crit_edge, %entry.device_lock_assert.exit_crit_edge
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %driver = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.rhs, label %if.end44

land.rhs:                                         ; preds = %device_lock_assert.exit
  %.b97 = load i1, ptr @devm_register_dax_mapping.__already_done, align 1
  br i1 %.b97, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !204

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @devm_register_dax_mapping.__already_done, align 1
  %dev20 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6
  %call = tail call ptr @dev_driver_string(ptr noundef %dev20) #14
  %init_name.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i99 = icmp eq ptr %10, null
  br i1 %tobool.not.i99, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef %call, ptr noundef %retval.0.i) #14
  br label %cleanup

if.end44:                                         ; preds = %device_lock_assert.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 936) #17
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %range_id49 = getelementptr inbounds %struct.dax_mapping, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %range_id49 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %range_id, ptr %range_id49, align 8
  %ida = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 5
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %id = getelementptr inbounds %struct.dax_mapping, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %ranges = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 9
  %16 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ranges, align 8
  %mapping54 = getelementptr %struct.dev_dax_range, ptr %17, i32 %range_id, i32 2
  %18 = ptrtoint ptr %mapping54 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %mapping54, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #14
  %dev56 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev56, ptr %parent, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dax_mapping_type, ptr %type, align 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %call58 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.54, i32 noundef %22) #14
  %call59 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %call.i100 = tail call i32 @devm_add_action(ptr noundef %24, ptr noundef nonnull @unregister_dax_mapping, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i101, label %if.end62.cleanup_crit_edge, label %if.then.i

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_dax_mapping(ptr noundef nonnull %call7.i.i) #14, !callees !206
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end62.cleanup_crit_edge, %if.then61, %if.then52, %if.end44.cleanup_crit_edge, %dev_name.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then52 ], [ %call59, %if.then61 ], [ -6, %dev_name.exit ], [ -12, %if.end44.cleanup_crit_edge ], [ -6, %land.rhs.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ], [ %call.i100, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_dev_dax_id(ptr noundef %dev_dax) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %0 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_dax, align 8
  %id.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %entry.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

entry.device_lock_assert.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %dep_map.i.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 10, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !208

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %entry.device_lock_assert.exit.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %device_lock_assert.exit.i.__free_dev_dax_id.exit_crit_edge

device_lock_assert.exit.i.__free_dev_dax_id.exit_crit_edge: ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_dev_dax_id.exit

lor.lhs.false.i:                                  ; preds = %device_lock_assert.exit.i
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp slt i32 %6, 0
  br i1 %cmp.i, label %lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_dev_dax_id.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %ida.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 5
  tail call void @ida_free(ptr noundef %ida.i, i32 noundef %6) #14
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %id.i, align 8
  br label %__free_dev_dax_id.exit

__free_dev_dax_id.exit:                           ; preds = %if.end.i, %lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge, %device_lock_assert.exit.i.__free_dev_dax_id.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dax_driver_register(ptr noundef %dax_drv, ptr noundef %module, ptr noundef %mod_name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.dax_device_driver, ptr %dax_drv, i32 0, i32 3
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ids = getelementptr inbounds %struct.dax_device_driver, ptr %dax_drv, i32 0, i32 1
  %2 = ptrtoint ptr %ids to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ids, ptr %ids, align 4
  %prev.i = getelementptr inbounds %struct.dax_device_driver, ptr %dax_drv, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ids, ptr %prev.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %dax_drv, i32 0, i32 2
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %module, ptr %owner, align 4
  %5 = ptrtoint ptr %dax_drv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mod_name, ptr %dax_drv, align 4
  %mod_name2 = getelementptr inbounds %struct.device_driver, ptr %dax_drv, i32 0, i32 3
  %6 = ptrtoint ptr %mod_name2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mod_name, ptr %mod_name2, align 4
  %bus = getelementptr inbounds %struct.device_driver, ptr %dax_drv, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dax_bus_type, ptr %bus, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @dax_bus_lock, i32 noundef 0) #14
  %match_always = getelementptr inbounds %struct.dax_device_driver, ptr %dax_drv, i32 0, i32 2
  %8 = ptrtoint ptr %match_always to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %match_always, align 4
  %10 = load i32, ptr @match_always_count, align 4
  %add = add i32 %10, %9
  store i32 %add, ptr @match_always_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp = icmp sgt i32 %add, 1
  br i1 %cmp, label %if.end21.thread, label %if.end24

if.end21.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add nsw i32 %add, -1
  store i32 %dec, ptr @match_always_count, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1442, i32 noundef 9, ptr noundef null) #14
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  %call = tail call i32 @driver_register(ptr noundef %dax_drv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %land.lhs.true

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end24
  %11 = ptrtoint ptr %match_always to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %match_always, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %land.lhs.true.cleanup_crit_edge, label %if.then28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @dax_bus_lock, i32 noundef 0) #14
  %13 = ptrtoint ptr %match_always to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %match_always, align 4
  %15 = load i32, ptr @match_always_count, align 4
  %sub = sub i32 %15, %14
  store i32 %sub, ptr @match_always_count, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then28, %if.end21.thread
  %retval.0.ph = phi i32 [ -22, %if.end21.thread ], [ %call, %if.then28 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dax_driver_unregister(ptr noundef %dax_drv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dax_bus_lock, i32 noundef 0) #14
  %match_always = getelementptr inbounds %struct.dax_device_driver, ptr %dax_drv, i32 0, i32 2
  %0 = ptrtoint ptr %match_always to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %match_always, align 4
  %2 = load i32, ptr @match_always_count, align 4
  %sub = sub i32 %2, %1
  store i32 %sub, ptr @match_always_count, align 4
  %ids = getelementptr inbounds %struct.dax_device_driver, ptr %dax_drv, i32 0, i32 1
  %3 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ids, align 4
  %cmp.not21 = icmp eq ptr %4, %ids
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %dax_id.022 = phi ptr [ %_id.0, %list_del.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %dax_id.022 to i32
  call void @__asan_load4_noabort(i32 %5)
  %_id.0 = load ptr, ptr %dax_id.022, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dax_id.022) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dax_id.022, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %dax_id.022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dax_id.022, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %dax_id.022 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %dax_id.022, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dax_id.022, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %dax_id.022) #14
  %cmp.not = icmp eq ptr %_id.0, %ids
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  tail call void @driver_unregister(ptr noundef %dax_drv) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dax_bus_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @dax_bus_type) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dax_bus_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bus_unregister(ptr noundef nonnull @dax_bus_type) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dax_region_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %a, @dev_attr_available_size
  %cmp2 = icmp eq ptr %a, @dev_attr_create
  %or.cond = or i1 %cmp, %cmp2
  %cmp4 = icmp eq ptr %a, @dev_attr_seed
  %or.cond14 = or i1 %cmp4, %or.cond
  %cmp6 = icmp eq ptr %a, @dev_attr_delete
  %or.cond15 = or i1 %cmp6, %or.cond14
  br i1 %or.cond15, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end8 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_size_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %res.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i.i, align 4
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %3, 1
  %add.i.i = sub i32 %sub.i.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %entry.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

entry.device_lock_assert.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 10, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !208

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %entry.device_lock_assert.exit.i_crit_edge
  %child.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 7
  %9 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %res1.012.i = load ptr, ptr %child.i, align 4
  %tobool.not13.i = icmp eq ptr %res1.012.i, null
  br i1 %tobool.not13.i, label %device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge, label %device_lock_assert.exit.i.for.body.i_crit_edge

device_lock_assert.exit.i.for.body.i_crit_edge:   ; preds = %device_lock_assert.exit.i
  br label %for.body.i

device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge: ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_avail_size.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %device_lock_assert.exit.i.for.body.i_crit_edge
  %res1.015.i = phi ptr [ %res1.0.i, %for.body.i.for.body.i_crit_edge ], [ %res1.012.i, %device_lock_assert.exit.i.for.body.i_crit_edge ]
  %size.014.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ %add.i.i, %device_lock_assert.exit.i.for.body.i_crit_edge ]
  %end.i9.i = getelementptr inbounds %struct.resource, ptr %res1.015.i, i32 0, i32 1
  %10 = ptrtoint ptr %end.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i9.i, align 4
  %12 = ptrtoint ptr %res1.015.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res1.015.i, align 4
  %sub.i10.neg.i = xor i32 %11, -1
  %add.i11.neg.i = add i32 %size.014.i, %sub.i10.neg.i
  %sub.i = add i32 %add.i11.neg.i, %13
  %sibling.i = getelementptr inbounds %struct.resource, ptr %res1.015.i, i32 0, i32 6
  %14 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %res1.0.i = load ptr, ptr %sibling.i, align 4
  %tobool.not.i = icmp eq ptr %res1.0.i, null
  br i1 %tobool.not.i, label %for.body.i.dax_region_avail_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.dax_region_avail_size.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_avail_size.exit

dax_region_avail_size.exit:                       ; preds = %for.body.i.dax_region_avail_size.exit_crit_edge, %device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge
  %size.0.lcssa.i = phi i32 [ %add.i.i, %device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge ], [ %sub.i, %for.body.i.dax_region_avail_size.exit_crit_edge ]
  %conv.i = zext i32 %size.0.lcssa.i to i64
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %conv.i)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %youngest2 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %youngest2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %youngest2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.true.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.15, %if.end.cond.end_crit_edge ], [ %9, %if.end.i ], [ %7, %cond.true.cond.end_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, ptr noundef %cond)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %data = alloca %struct.dev_dax_data, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !210
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %res.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i.i, align 4
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %8, 1
  %add.i.i = sub i32 %sub.i.i, %10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end6.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

if.end6.device_lock_assert.exit.i_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %if.end6
  %dev.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 10, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !208

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %if.end6.device_lock_assert.exit.i_crit_edge
  %child.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %res1.012.i = load ptr, ptr %child.i, align 4
  %tobool.not13.i = icmp eq ptr %res1.012.i, null
  br i1 %tobool.not13.i, label %device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge, label %device_lock_assert.exit.i.for.body.i_crit_edge

device_lock_assert.exit.i.for.body.i_crit_edge:   ; preds = %device_lock_assert.exit.i
  br label %for.body.i

device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge: ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_avail_size.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %device_lock_assert.exit.i.for.body.i_crit_edge
  %res1.015.i = phi ptr [ %res1.0.i, %for.body.i.for.body.i_crit_edge ], [ %res1.012.i, %device_lock_assert.exit.i.for.body.i_crit_edge ]
  %size.014.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ %add.i.i, %device_lock_assert.exit.i.for.body.i_crit_edge ]
  %end.i9.i = getelementptr inbounds %struct.resource, ptr %res1.015.i, i32 0, i32 1
  %15 = ptrtoint ptr %end.i9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i9.i, align 4
  %17 = ptrtoint ptr %res1.015.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %res1.015.i, align 4
  %sub.i10.neg.i = xor i32 %16, -1
  %add.i11.neg.i = add i32 %size.014.i, %sub.i10.neg.i
  %sub.i = add i32 %add.i11.neg.i, %18
  %sibling.i = getelementptr inbounds %struct.resource, ptr %res1.015.i, i32 0, i32 6
  %19 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %res1.0.i = load ptr, ptr %sibling.i, align 4
  %tobool.not.i = icmp eq ptr %res1.0.i, null
  br i1 %tobool.not.i, label %for.body.i.dax_region_avail_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.dax_region_avail_size.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_avail_size.exit

dax_region_avail_size.exit:                       ; preds = %for.body.i.dax_region_avail_size.exit_crit_edge, %device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge
  %size.0.lcssa.i = phi i32 [ %add.i.i, %device_lock_assert.exit.i.dax_region_avail_size.exit_crit_edge ], [ %sub.i, %for.body.i.dax_region_avail_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa.i)
  %cmp8 = icmp eq i32 %size.0.lcssa.i, 0
  br i1 %cmp8, label %dax_region_avail_size.exit.if.end23_crit_edge, label %if.else

dax_region_avail_size.exit.if.end23_crit_edge:    ; preds = %dax_region_avail_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.else:                                          ; preds = %dax_region_avail_size.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #14
  %20 = getelementptr inbounds %struct.dev_dax_data, ptr %data, i32 0, i32 1
  %21 = getelementptr inbounds %struct.dev_dax_data, ptr %data, i32 0, i32 2
  %22 = getelementptr inbounds %struct.dev_dax_data, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %data, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %20, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %21, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %22, align 4
  %call11 = call ptr @devm_create_dev_dax(ptr noundef nonnull %data)
  %cmp.i39 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %call11 to i32
  br label %if.end22

if.else15:                                        ; preds = %if.else
  %seed = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %seed, align 4
  %tobool16.not = icmp eq ptr %29, null
  br i1 %tobool16.not, label %if.then17, label %if.else15.if.end20_crit_edge

if.else15.if.end20_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  %dev18 = getelementptr inbounds %struct.dev_dax, ptr %call11, i32 0, i32 6
  %30 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev18, ptr %seed, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.else15.if.end20_crit_edge
  %dev21 = getelementptr inbounds %struct.dev_dax, ptr %call11, i32 0, i32 6
  %youngest = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %youngest to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev21, ptr %youngest, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.then13
  %rc.0 = phi i32 [ %27, %if.then13 ], [ %len, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %dax_region_avail_size.exit.if.end23_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.end22 ], [ -28, %dax_region_avail_size.exit.if.end23_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seed_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %seed2 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %seed2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seed2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.true.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.15, %if.end.cond.end_crit_edge ], [ %9, %if.end.i ], [ %7, %cond.true.cond.end_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, ptr noundef %cond)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delete_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call3 = tail call ptr @device_find_child_by_name(ptr noundef %5, ptr noundef %buf) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %mutex.i50 = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i50, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %call3, i32 -72
  %driver = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end5.if.end24.thread_crit_edge

if.end5.if.end24.thread_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.thread

lor.lhs.false:                                    ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

lor.lhs.false.device_lock_assert.exit.i_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false
  %dep_map.i.i = getelementptr i8, ptr %call3, i32 324
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !208

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %lor.lhs.false.device_lock_assert.exit.i_crit_edge
  %nr_range.i = getelementptr i8, ptr %call3, i32 932
  %9 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.i = icmp sgt i32 %10, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %device_lock_assert.exit.i.if.else_crit_edge

device_lock_assert.exit.i.if.else_crit_edge:      ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %device_lock_assert.exit.i
  %ranges.i = getelementptr i8, ptr %call3, i32 936
  %11 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ranges.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %size.07.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %range.i = getelementptr %struct.dev_dax_range, ptr %12, i32 %i.08.i, i32 1
  %end.i.i = getelementptr %struct.dev_dax_range, ptr %12, i32 %i.08.i, i32 1, i32 1
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %end.i.i, align 8
  %15 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %range.i, align 8
  %sub.i.i = add i64 %size.07.i, 1
  %add.i.i = add i64 %sub.i.i, %14
  %add.i = sub i64 %add.i.i, %16
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %dev_dax_size.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

dev_dax_size.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %tobool9.not = icmp eq i64 %add.i, 0
  br i1 %tobool9.not, label %dev_dax_size.exit.if.else_crit_edge, label %dev_dax_size.exit.if.end24.thread_crit_edge

dev_dax_size.exit.if.end24.thread_crit_edge:      ; preds = %dev_dax_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.thread

dev_dax_size.exit.if.else_crit_edge:              ; preds = %dev_dax_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %dev_dax_size.exit.if.else_crit_edge, %device_lock_assert.exit.i.if.else_crit_edge
  %id = getelementptr i8, ptr %call3, i32 -56
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then11, label %if.else.if.end24.thread_crit_edge

if.else.if.end24.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.thread

if.then11:                                        ; preds = %if.else
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i51 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i51, label %if.then11.device_lock_assert.exit.i57_crit_edge, label %land.rhs.i.i55

if.then11.device_lock_assert.exit.i57_crit_edge:  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i57

land.rhs.i.i55:                                   ; preds = %if.then11
  %dep_map.i.i52 = getelementptr i8, ptr %call3, i32 324
  %call.i.i.i53 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i52, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i53)
  %cmp.not.i.i54 = icmp eq i32 %call.i.i.i53, 0
  br i1 %cmp.not.i.i54, label %do.end.i.i56, label %land.rhs.i.i55.device_lock_assert.exit.i57_crit_edge, !prof !208

land.rhs.i.i55.device_lock_assert.exit.i57_crit_edge: ; preds = %land.rhs.i.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i57

do.end.i.i56:                                     ; preds = %land.rhs.i.i55
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i57

device_lock_assert.exit.i57:                      ; preds = %do.end.i.i56, %land.rhs.i.i55.device_lock_assert.exit.i57_crit_edge, %if.then11.device_lock_assert.exit.i57_crit_edge
  %flags.i.i = getelementptr inbounds %struct.dax_region, ptr %20, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %device_lock_assert.exit.i57.__free_dev_dax_id.exit_crit_edge

device_lock_assert.exit.i57.__free_dev_dax_id.exit_crit_edge: ; preds = %device_lock_assert.exit.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_dev_dax_id.exit

lor.lhs.false.i:                                  ; preds = %device_lock_assert.exit.i57
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i58 = icmp slt i32 %25, 0
  br i1 %cmp.i58, label %lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__free_dev_dax_id.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  %ida.i = getelementptr inbounds %struct.dax_region, ptr %20, i32 0, i32 5
  tail call void @ida_free(ptr noundef %ida.i, i32 noundef %25) #14
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %id, align 8
  br label %__free_dev_dax_id.exit

__free_dev_dax_id.exit:                           ; preds = %if.end.i, %lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge, %device_lock_assert.exit.i57.__free_dev_dax_id.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end.i ], [ false, %lor.lhs.false.i.__free_dev_dax_id.exit_crit_edge ], [ false, %device_lock_assert.exit.i57.__free_dev_dax_id.exit_crit_edge ]
  %seed = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seed, align 4
  %cmp14 = icmp eq ptr %28, %call3
  br i1 %cmp14, label %if.then15, label %__free_dev_dax_id.exit.if.end17_crit_edge

__free_dev_dax_id.exit.if.end17_crit_edge:        ; preds = %__free_dev_dax_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %__free_dev_dax_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %seed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %__free_dev_dax_id.exit.if.end17_crit_edge
  %youngest = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %youngest to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %youngest, align 4
  %cmp18 = icmp eq ptr %31, %call3
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end17
  %32 = ptrtoint ptr %youngest to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %youngest, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i50) #14
  br i1 %retval.0.i, label %if.then19.if.then26_crit_edge, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then19.if.then26_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.end24.thread:                                  ; preds = %if.else.if.end24.thread_crit_edge, %dev_dax_size.exit.if.end24.thread_crit_edge, %if.end5.if.end24.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i50) #14
  br label %if.end27

if.end24:                                         ; preds = %if.end17
  tail call void @mutex_unlock(ptr noundef %mutex.i50) #14
  br i1 %retval.0.i, label %if.end24.if.then26_crit_edge, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.then19.if.then26_crit_edge
  tail call void @devm_release_action(ptr noundef %dev, ptr noundef nonnull @unregister_dev_dax, ptr noundef nonnull %call3) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge, %if.end24.thread, %if.then19.if.end27_crit_edge
  %rc.065 = phi i32 [ -16, %if.end24.thread ], [ %len, %if.then26 ], [ %len, %if.end24.if.end27_crit_edge ], [ %len, %if.then19.if.end27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  tail call void @put_device(ptr noundef nonnull %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.065, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_release_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @region_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %res = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6
  %end.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %conv = zext i32 %add.i to i64
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @region_align_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %align = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trim_dev_dax_range(ptr noundef %dev_dax) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_range = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 8
  %0 = ptrtoint ptr %nr_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_range, align 4
  %sub = add i32 %1, -1
  %ranges = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 9
  %2 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ranges, align 8
  %range1 = getelementptr %struct.dev_dax_range, ptr %3, i32 %sub, i32 1
  %4 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_dax, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.device_lock_assert.exit_crit_edge, label %land.rhs.i

entry.device_lock_assert.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %dev = getelementptr inbounds %struct.dax_region, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dep_map.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.device_lock_assert.exit_crit_edge, !prof !208

land.rhs.i.device_lock_assert.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit

device_lock_assert.exit:                          ; preds = %do.end.i, %land.rhs.i.device_lock_assert.exit_crit_edge, %entry.device_lock_assert.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trim_dev_dax_range.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trim_dev_dax_range, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %device_lock_assert.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev4 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6
  %9 = ptrtoint ptr %range1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %range1, align 8
  %end = getelementptr %struct.dev_dax_range, ptr %3, i32 %sub, i32 1, i32 1
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %end, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trim_dev_dax_range.__UNIQUE_ID_ddebug228, ptr noundef %dev4, ptr noundef nonnull @.str.28, i32 noundef %sub, i64 noundef %10, i64 noundef %12) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %device_lock_assert.exit
  %res = getelementptr inbounds %struct.dax_region, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %range1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %range1, align 8
  %conv = trunc i64 %14 to i32
  %end.i = getelementptr %struct.dev_dax_range, ptr %3, i32 %sub, i32 1, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %end.i, align 8
  %sub.i = sub i64 1, %14
  %add.i = add i64 %sub.i, %16
  %conv7 = trunc i64 %add.i to i32
  tail call void @__release_region(ptr noundef %res, i32 noundef %conv, i32 noundef %conv7) #14
  %17 = ptrtoint ptr %nr_range to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_range, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %nr_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then10, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ranges, align 8
  tail call void @kfree(ptr noundef %20) #14
  %21 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ranges, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dax_bus_match(ptr nocapture noundef readonly %dev, ptr noundef readonly %drv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %match_always = getelementptr inbounds %struct.dax_device_driver, ptr %drv, i32 0, i32 2
  %0 = ptrtoint ptr %match_always to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %match_always, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @dax_bus_lock, i32 noundef 0) #14
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.dev_name.exit.i_crit_edge

if.end.dev_name.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.end.dev_name.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i3.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i3.i, label %dev_name.exit.i.if.end.i4.i_crit_edge, label %land.rhs.i.i

dev_name.exit.i.if.end.i4.i_crit_edge:            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i4.i

land.rhs.i.i:                                     ; preds = %dev_name.exit.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @dax_bus_lock, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i4.i_crit_edge, !prof !208

land.rhs.i.i.if.end.i4.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i4.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i4.i

if.end.i4.i:                                      ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i4.i_crit_edge, %dev_name.exit.i.if.end.i4.i_crit_edge
  %ids.i.i = getelementptr inbounds %struct.dax_device_driver, ptr %drv, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i4.i
  %dax_id.0.in.i.i = phi ptr [ %ids.i.i, %if.end.i4.i ], [ %dax_id.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %dax_id.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %dax_id.0.i.i = load ptr, ptr %dax_id.0.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %dax_id.0.i.i, %ids.i.i
  br i1 %cmp26.not.i.i, label %for.cond.i.i.dax_match_id.exit_crit_edge, label %for.body.i.i

for.cond.i.i.dax_match_id.exit_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_match_id.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev_name29.i.i = getelementptr inbounds %struct.dax_id, ptr %dax_id.0.i.i, i32 0, i32 1
  %call30.i.i = tail call zeroext i1 @sysfs_streq(ptr noundef %dev_name29.i.i, ptr noundef %retval.0.i.i) #14
  br i1 %call30.i.i, label %for.body.i.i.dax_match_id.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

for.body.i.i.dax_match_id.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_match_id.exit

dax_match_id.exit:                                ; preds = %for.body.i.i.dax_match_id.exit_crit_edge, %for.cond.i.i.dax_match_id.exit_crit_edge
  %retval.0.i5.i = phi ptr [ %dax_id.0.i.i, %for.body.i.i.dax_match_id.exit_crit_edge ], [ null, %for.cond.i.i.dax_match_id.exit_crit_edge ]
  %tobool.i = icmp ne ptr %retval.0.i5.i, null
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %dax_match_id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext.i, %dax_match_id.exit ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dax_bus_uevent(ptr nocapture noundef readnone %dev, ptr noundef %env) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.31, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dax_bus_probe(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %entry.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

entry.device_lock_assert.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %dep_map.i.i = getelementptr i8, ptr %dev, i32 324
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !208

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %entry.device_lock_assert.exit.i_crit_edge
  %nr_range.i = getelementptr i8, ptr %dev, i32 932
  %5 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp sgt i32 %6, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %device_lock_assert.exit.i.cleanup_crit_edge

device_lock_assert.exit.i.cleanup_crit_edge:      ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %device_lock_assert.exit.i
  %ranges.i = getelementptr i8, ptr %dev, i32 936
  %7 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ranges.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %size.07.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %range.i = getelementptr %struct.dev_dax_range, ptr %8, i32 %i.08.i, i32 1
  %end.i.i = getelementptr %struct.dev_dax_range, ptr %8, i32 %i.08.i, i32 1, i32 1
  %9 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %end.i.i, align 8
  %11 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %range.i, align 8
  %sub.i.i = add i64 %size.07.i, 1
  %add.i.i = add i64 %sub.i.i, %10
  %add.i = sub i64 %add.i.i, %12
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %dev_dax_size.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

dev_dax_size.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp = icmp eq i64 %add.i, 0
  br i1 %cmp, label %dev_dax_size.exit.cleanup_crit_edge, label %lor.lhs.false

dev_dax_size.exit.cleanup_crit_edge:              ; preds = %dev_dax_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_dax_size.exit
  %id = getelementptr i8, ptr %dev, i32 -56
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %probe = getelementptr inbounds %struct.dax_device_driver, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %probe, align 4
  %call4 = tail call i32 %16(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lor.lhs.false5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %seed = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %seed, align 4
  %cmp9 = icmp eq ptr %20, %dev
  br i1 %cmp9, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %seed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %dev_dax_size.exit.cleanup_crit_edge, %device_lock_assert.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %dev_dax_size.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false5.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ], [ -6, %device_lock_assert.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dax_bus_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr inbounds %struct.dax_device_driver, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  tail call void %3(ptr noundef %add.ptr.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_id_store(ptr noundef %drv, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_id_store(ptr noundef %drv, ptr noundef %buf, i32 noundef %count, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_id_store(ptr noundef %drv, ptr noundef %buf, i32 noundef %count, i32 noundef %action) unnamed_addr #1 align 64 {
entry:
  %region_id = alloca i32, align 4
  %id = alloca i32, align 4
  %devname = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %region_id) #14
  %0 = ptrtoint ptr %region_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region_id, align 4, !annotation !210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #14
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %id, align 4, !annotation !210
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %devname) #14
  %2 = call ptr @memset(ptr %devname, i32 255, i32 30)
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %region_id, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %region_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %region_id, align 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %devname, ptr noundef nonnull @.str.5, i32 noundef %4, i32 noundef %6)
  %call4 = call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull %devname) #14
  br i1 %call4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @dax_bus_lock, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %land.rhs.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end6
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @dax_bus_lock, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !208

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %ids.i = getelementptr inbounds %struct.dax_device_driver, ptr %drv, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %dax_id.0.in.i = phi ptr [ %ids.i, %if.end.i ], [ %dax_id.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %dax_id.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %dax_id.0.i = load ptr, ptr %dax_id.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %dax_id.0.i, %ids.i
  br i1 %cmp26.not.i, label %for.cond.i.if.then8_crit_edge, label %for.body.i

for.cond.i.if.then8_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

for.body.i:                                       ; preds = %for.cond.i
  %dev_name29.i = getelementptr inbounds %struct.dax_id, ptr %dax_id.0.i, i32 0, i32 1
  %call30.i = call zeroext i1 @sysfs_streq(ptr noundef %dev_name29.i, ptr noundef %buf) #14
  br i1 %call30.i, label %__dax_match_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__dax_match_id.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %dax_id.0.i, null
  br i1 %tobool.not, label %__dax_match_id.exit.if.then8_crit_edge, label %if.else18

__dax_match_id.exit.if.then8_crit_edge:           ; preds = %__dax_match_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %__dax_match_id.exit.if.then8_crit_edge, %for.cond.i.if.then8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp9 = icmp eq i32 %action, 1
  br i1 %cmp9, label %if.then10, label %if.then8.if.end23_crit_edge

if.then8.if.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then10:                                        ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #17
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end23.thread, label %if.then13

if.end23.thread:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  %dev_name = getelementptr inbounds %struct.dax_id, ptr %call7.i.i, i32 0, i32 1
  %call15 = call ptr @strncpy(ptr noundef %dev_name, ptr noundef %buf, i32 noundef 30)
  %10 = ptrtoint ptr %ids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ids.i, align 4
  %call.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %ids.i, ptr noundef %11) #14
  br i1 %call.i.i56, label %if.end.i.i, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ids.i, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %ids.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %ids.i, align 4
  br label %if.end23

if.else18:                                        ; preds = %__dax_match_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp19 = icmp eq i32 %action, 0
  br i1 %cmp19, label %if.then20, label %if.else18.if.end23_crit_edge

if.else18.if.end23_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then20:                                        ; preds = %if.else18
  %call.i.i57 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %dax_id.0.i) #14
  br i1 %call.i.i57, label %if.end.i.i58, label %if.then20.if.end23.thread63_crit_edge

if.then20.if.end23.thread63_crit_edge:            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.thread63

if.end.i.i58:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dax_id.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %dax_id.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dax_id.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.end23.thread63

if.end23:                                         ; preds = %if.else18.if.end23_crit_edge, %if.end.i.i, %if.then13.if.end23_crit_edge, %if.then8.if.end23_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp24 = icmp slt i32 %count, 0
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23.thread63:                                ; preds = %if.end.i.i58, %if.then20.if.end23.thread63_crit_edge
  %22 = ptrtoint ptr %dax_id.0.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %dax_id.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dax_id.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef nonnull %dax_id.0.i) #14
  call void @mutex_unlock(ptr noundef nonnull @dax_bus_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2465 = icmp slt i32 %count, 0
  br i1 %cmp2465, label %if.end23.thread63.cleanup_crit_edge, label %if.end23.thread63.if.end30_crit_edge

if.end23.thread63.if.end30_crit_edge:             ; preds = %if.end23.thread63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end23.thread63.cleanup_crit_edge:              ; preds = %if.end23.thread63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp27 = icmp eq i32 %action, 1
  br i1 %cmp27, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = call i32 @driver_attach(ptr noundef %drv) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge, %if.end23.thread63.if.end30_crit_edge
  %rc.1 = phi i32 [ %call29, %if.then28 ], [ %count, %if.end26.if.end30_crit_edge ], [ %count, %if.end23.thread63.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool31.not = icmp eq i32 %rc.1, 0
  %count.rc.1 = select i1 %tobool31.not, i32 %count, i32 %rc.1
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end23.thread63.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end23.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end23.cleanup_crit_edge ], [ %count.rc.1, %if.end30 ], [ -12, %if.end23.thread ], [ %count, %if.end23.thread63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %devname) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %region_id) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_id_store(ptr noundef %drv, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_id_store(ptr noundef %drv, ptr noundef %buf, i32 noundef %count, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_dax_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %dax_dev1 = getelementptr i8, ptr %dev, i32 -68
  %2 = ptrtoint ptr %dax_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dax_dev1, align 4
  tail call void @put_dax(ptr noundef %3) #14
  tail call fastcc void @free_dev_dax_id(ptr noundef %add.ptr.i)
  %kref.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #14, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dax_region_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !204

if.end5.i.i.i.i.i.dax_region_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #14
  br label %dax_region_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !205
  tail call void @kfree(ptr noundef %1) #14
  br label %dax_region_put.exit

dax_region_put.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dax_region_put.exit_crit_edge
  %pgmap = getelementptr i8, ptr %dev, i32 928
  %5 = ptrtoint ptr %pgmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pgmap, align 8
  tail call void @kfree(ptr noundef %6) #14
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dev_dax_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -72
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %cmp = icmp eq ptr %a, @dev_attr_target_node
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %target_node.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %target_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3.old = icmp eq ptr %a, @dev_attr_numa_node
  br i1 %cmp3.old, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq ptr %a, @dev_attr_mapping
  br i1 %cmp6, label %land.lhs.true7, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true7:                                   ; preds = %if.end5
  %flags.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %land.lhs.true7.if.end10_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true7.if.end10_crit_edge, %if.end5.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %cmp11 = icmp eq ptr %a, @dev_attr_align
  %cmp12 = icmp eq ptr %a, @dev_attr_size
  %or.cond = or i1 %cmp11, %cmp12
  br i1 %or.cond, label %land.lhs.true13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true13:                                  ; preds = %if.end10
  %flags.i27 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i27, align 4
  %and.i28 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %cmp.i29.not = icmp eq i32 %and.i28, 0
  br i1 %cmp.i29.not, label %land.lhs.true13.if.end16_crit_edge, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true13.if.end16_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true13.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %9, %if.end16 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 292, %land.lhs.true13.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_node_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %target_node.i = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %target_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_node.i, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @numa_node_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef -1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mapping_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %addr.i = alloca i64, align 8
  %end.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i) #14
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #14
  %call.i = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %range_parse.exit.thread, label %if.end.i

range_parse.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %end.i, align 4
  %call1.i = call ptr @strsep(ptr noundef nonnull %end.i, ptr noundef nonnull @.str.35) #14
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.range_parse.exit.thread42_crit_edge, label %lor.lhs.false.i

if.end.i.range_parse.exit.thread42_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %range_parse.exit.thread42

lor.lhs.false.i:                                  ; preds = %if.end.i
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.range_parse.exit.thread42_crit_edge, label %if.end5.i

lor.lhs.false.i.range_parse.exit.thread42_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %range_parse.exit.thread42

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %call6.i = call i32 @kstrtoull(ptr noundef nonnull %call1.i, i32 noundef 16, ptr noundef nonnull %addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.range_parse.exit.thread42_crit_edge

if.end5.i.range_parse.exit.thread42_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %range_parse.exit.thread42

if.end9.i:                                        ; preds = %if.end5.i
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr.i, align 8
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %call11.i = call i32 @kstrtoull(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end, label %if.end9.i.range_parse.exit.thread42_crit_edge

if.end9.i.range_parse.exit.thread42_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %range_parse.exit.thread42

range_parse.exit.thread42:                        ; preds = %if.end9.i.range_parse.exit.thread42_crit_edge, %if.end5.i.range_parse.exit.thread42_crit_edge, %lor.lhs.false.i.range_parse.exit.thread42_crit_edge, %if.end.i.range_parse.exit.thread42_crit_edge
  %rc.0.i.ph = phi i32 [ -22, %if.end.i.range_parse.exit.thread42_crit_edge ], [ -22, %lor.lhs.false.i.range_parse.exit.thread42_crit_edge ], [ %call11.i, %if.end9.i.range_parse.exit.thread42_crit_edge ], [ %call6.i, %if.end5.i.range_parse.exit.thread42_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr.i, align 8
  call void @kfree(ptr noundef nonnull %call.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #14
  %dev2 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %mutex.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  %driver = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mutex.i32 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i32) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mutex.i33 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i33, i32 noundef 0) #14
  %sub.i = sub i64 1, %7
  %add.i = add i64 %sub.i, %11
  %conv = trunc i64 %add.i to i32
  %align.i = getelementptr i8, ptr %dev, i32 -64
  %18 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %align.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %19)
  %cmp.i = icmp ugt i32 %19, 4096
  %phi.bo.i = add i32 %19, -1
  %cond.i = select i1 %cmp.i, i32 %phi.bo.i, i32 4095
  %and.i = and i32 %cond.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call fastcc i32 @alloc_dev_dax_range(ptr noundef %add.ptr.i, i64 noundef %7, i32 noundef %conv)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %rc.0 = phi i32 [ %call11, %if.then10 ], [ -6, %if.end7.if.end12_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i33) #14
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 4
  %mutex.i36 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp eq i32 %rc.0, 0
  %spec.select = select i1 %cmp, i32 %len, i32 %rc.0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then5, %range_parse.exit.thread42, %range_parse.exit.thread
  %retval.0 = phi i32 [ -6, %if.then5 ], [ -22, %range_parse.exit.thread ], [ %rc.0.i.ph, %range_parse.exit.thread42 ], [ %spec.select, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @align_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %align = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %align, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @align_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !210
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %4)
  %cmp.i = icmp eq i32 %4, 4096
  br i1 %cmp.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.dax_region, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %mutex.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %7 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev5, align 4
  %driver = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end4.cleanup.sink.split_crit_edge, label %if.end10

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end4
  %mutex.i40 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i40, i32 noundef 0) #14
  %driver11 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %driver11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver11, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_unlock_crit_edge

if.end10.out_unlock_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end14:                                         ; preds = %if.end10
  %align = getelementptr i8, ptr %dev, i32 -64
  %13 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %align, align 8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  store i32 %16, ptr %align, align 8
  %nr_range.i = getelementptr i8, ptr %dev, i32 932
  %17 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.i = icmp sgt i32 %18, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end14.out_unlock_crit_edge

if.end14.out_unlock_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

for.body.lr.ph.i:                                 ; preds = %if.end14
  %ranges.i = getelementptr i8, ptr %dev, i32 936
  %19 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ranges.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %16)
  %cmp.i.i = icmp ugt i32 %16, 4096
  %phi.bo.i.i = add i32 %16, -1
  %cond.i.i = select i1 %cmp.i.i, i32 %phi.bo.i.i, i32 4095
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  %range.i = getelementptr %struct.dev_dax_range, ptr %20, i32 %i.021.i, i32 1
  %end.i.i = getelementptr %struct.dev_dax_range, ptr %20, i32 %i.021.i, i32 1, i32 1
  %21 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %end.i.i, align 8
  %23 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %range.i, align 8
  %sub.i.i = add i64 %22, 1
  %add.i.i = sub i64 %sub.i.i, %24
  %conv.i = trunc i64 %add.i.i to i32
  %and.i.i = and i32 %cond.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %for.inc.critedge.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dev_dax_validate_align.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@align_store, %if.then6.i)) #14
          to label %if.then18 [label %if.then6.i], !srcloc !209

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %align, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dev_dax_validate_align.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %26, i32 noundef %i.021.i) #14
  br label %if.then18

for.inc.critedge.i:                               ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.inc.critedge.i.out_unlock_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.critedge.i.out_unlock_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then18:                                        ; preds = %if.then6.i, %do.body.i
  %27 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %14, ptr %align, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then18, %for.inc.critedge.i.out_unlock_crit_edge, %if.end14.out_unlock_crit_edge, %if.end10.out_unlock_crit_edge
  %cmp = phi i32 [ %len, %if.end14.out_unlock_crit_edge ], [ -16, %if.end10.out_unlock_crit_edge ], [ -22, %if.then18 ], [ %len, %for.inc.critedge.i.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i40) #14
  %28 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev5, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_unlock, %if.end4.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %29, %out_unlock ], [ %8, %if.end4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %cmp, %out_unlock ], [ -6, %if.end4.cleanup.sink.split_crit_edge ]
  %mutex.i42 = getelementptr inbounds %struct.device, ptr %.sink, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i42) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %entry.device_lock_assert.exit.i_crit_edge, label %land.rhs.i.i

entry.device_lock_assert.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

land.rhs.i.i:                                     ; preds = %entry
  %dep_map.i.i = getelementptr i8, ptr %dev, i32 324
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, !prof !208

land.rhs.i.i.device_lock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i

device_lock_assert.exit.i:                        ; preds = %do.end.i.i, %land.rhs.i.i.device_lock_assert.exit.i_crit_edge, %entry.device_lock_assert.exit.i_crit_edge
  %nr_range.i = getelementptr i8, ptr %dev, i32 932
  %1 = ptrtoint ptr %nr_range.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6.i = icmp sgt i32 %2, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %device_lock_assert.exit.i.dev_dax_size.exit_crit_edge

device_lock_assert.exit.i.dev_dax_size.exit_crit_edge: ; preds = %device_lock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_size.exit

for.body.lr.ph.i:                                 ; preds = %device_lock_assert.exit.i
  %ranges.i = getelementptr i8, ptr %dev, i32 936
  %3 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ranges.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %size.07.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %range.i = getelementptr %struct.dev_dax_range, ptr %4, i32 %i.08.i, i32 1
  %end.i.i = getelementptr %struct.dev_dax_range, ptr %4, i32 %i.08.i, i32 1, i32 1
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %end.i.i, align 8
  %7 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %range.i, align 8
  %sub.i.i = add i64 %size.07.i, 1
  %add.i.i = add i64 %sub.i.i, %6
  %add.i = sub i64 %add.i.i, %8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.body.i.dev_dax_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.dev_dax_size.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_size.exit

dev_dax_size.exit:                                ; preds = %for.body.i.dev_dax_size.exit_crit_edge, %device_lock_assert.exit.i.dev_dax_size.exit_crit_edge
  %size.0.lcssa.i = phi i64 [ 0, %device_lock_assert.exit.i.dev_dax_size.exit_crit_edge ], [ %add.i, %for.body.i.dev_dax_size.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i64 noundef %size.0.lcssa.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %to_alloc.i = alloca i32, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #14
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %val, align 8, !annotation !210
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %call1 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %val, align 8
  %conv = trunc i64 %4 to i32
  %align.i = getelementptr i8, ptr %dev, i32 -64
  %5 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %align.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %6)
  %cmp.i = icmp ugt i32 %6, 4096
  %phi.bo.i = add i32 %6, -1
  %cond.i = select i1 %cmp.i, i32 %phi.bo.i, i32 4095
  %and.i = and i32 %cond.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @size_store.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@size_store, %if.then8)) #14
          to label %cleanup [label %if.then8], !srcloc !209

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %val, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @size_store.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %8) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dev11 = getelementptr inbounds %struct.dax_region, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %mutex.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  %driver = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %mutex.i36 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i36) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %mutex.i37 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i37, i32 noundef 0) #14
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %val, align 8
  %conv17 = trunc i64 %16 to i32
  %res.i.i = getelementptr inbounds %struct.dax_region, ptr %2, i32 0, i32 6
  %end.i.i.i = getelementptr inbounds %struct.dax_region, ptr %2, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i.i.i, align 4
  %19 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res.i.i, align 4
  %sub.i.i.i = add i32 %18, 1
  %add.i.i.i = sub i32 %sub.i.i.i, %20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %if.end16.device_lock_assert.exit.i.i_crit_edge, label %land.rhs.i.i.i

if.end16.device_lock_assert.exit.i.i_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end16
  %22 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 10, i32 5
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.device_lock_assert.exit.i.i_crit_edge, !prof !208

land.rhs.i.i.i.device_lock_assert.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i.i

device_lock_assert.exit.i.i:                      ; preds = %do.end.i.i.i, %land.rhs.i.i.i.device_lock_assert.exit.i.i_crit_edge, %if.end16.device_lock_assert.exit.i.i_crit_edge
  %child.i.i = getelementptr inbounds %struct.dax_region, ptr %2, i32 0, i32 6, i32 7
  %24 = ptrtoint ptr %child.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %res1.012.i.i = load ptr, ptr %child.i.i, align 4
  %tobool.not13.i.i = icmp eq ptr %res1.012.i.i, null
  br i1 %tobool.not13.i.i, label %device_lock_assert.exit.i.i.dax_region_avail_size.exit.i_crit_edge, label %device_lock_assert.exit.i.i.for.body.i.i_crit_edge

device_lock_assert.exit.i.i.for.body.i.i_crit_edge: ; preds = %device_lock_assert.exit.i.i
  br label %for.body.i.i

device_lock_assert.exit.i.i.dax_region_avail_size.exit.i_crit_edge: ; preds = %device_lock_assert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_avail_size.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %device_lock_assert.exit.i.i.for.body.i.i_crit_edge
  %res1.015.i.i = phi ptr [ %res1.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %res1.012.i.i, %device_lock_assert.exit.i.i.for.body.i.i_crit_edge ]
  %size.014.i.i = phi i32 [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.i.i.i, %device_lock_assert.exit.i.i.for.body.i.i_crit_edge ]
  %end.i9.i.i = getelementptr inbounds %struct.resource, ptr %res1.015.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %end.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i9.i.i, align 4
  %27 = ptrtoint ptr %res1.015.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %res1.015.i.i, align 4
  %sub.i10.neg.i.i = xor i32 %26, -1
  %add.i11.neg.i.i = add i32 %size.014.i.i, %sub.i10.neg.i.i
  %sub.i.i = add i32 %add.i11.neg.i.i, %28
  %sibling.i.i = getelementptr inbounds %struct.resource, ptr %res1.015.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %sibling.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %res1.0.i.i = load ptr, ptr %sibling.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %res1.0.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.dax_region_avail_size.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.dax_region_avail_size.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dax_region_avail_size.exit.i

dax_region_avail_size.exit.i:                     ; preds = %for.body.i.i.dax_region_avail_size.exit.i_crit_edge, %device_lock_assert.exit.i.i.dax_region_avail_size.exit.i_crit_edge
  %size.0.lcssa.i.i = phi i32 [ %add.i.i.i, %device_lock_assert.exit.i.i.dax_region_avail_size.exit.i_crit_edge ], [ %sub.i.i, %for.body.i.i.dax_region_avail_size.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_alloc.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i230.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i230.i, label %dax_region_avail_size.exit.i.device_lock_assert.exit.i236.i_crit_edge, label %land.rhs.i.i234.i

dax_region_avail_size.exit.i.device_lock_assert.exit.i236.i_crit_edge: ; preds = %dax_region_avail_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i236.i

land.rhs.i.i234.i:                                ; preds = %dax_region_avail_size.exit.i
  %dep_map.i.i231.i = getelementptr i8, ptr %dev, i32 324
  %call.i.i.i232.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i231.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i232.i)
  %cmp.not.i.i233.i = icmp eq i32 %call.i.i.i232.i, 0
  br i1 %cmp.not.i.i233.i, label %do.end.i.i235.i, label %land.rhs.i.i234.i.device_lock_assert.exit.i236.i_crit_edge, !prof !208

land.rhs.i.i234.i.device_lock_assert.exit.i236.i_crit_edge: ; preds = %land.rhs.i.i234.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i236.i

do.end.i.i235.i:                                  ; preds = %land.rhs.i.i234.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i236.i

device_lock_assert.exit.i236.i:                   ; preds = %do.end.i.i235.i, %land.rhs.i.i234.i.device_lock_assert.exit.i236.i_crit_edge, %dax_region_avail_size.exit.i.device_lock_assert.exit.i236.i_crit_edge
  %nr_range.i.i = getelementptr i8, ptr %dev, i32 932
  %31 = ptrtoint ptr %nr_range.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_range.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.i.i = icmp sgt i32 %32, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %device_lock_assert.exit.i236.i.dev_dax_size.exit.i_crit_edge

device_lock_assert.exit.i236.i.dev_dax_size.exit.i_crit_edge: ; preds = %device_lock_assert.exit.i236.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_size.exit.i

for.body.lr.ph.i.i:                               ; preds = %device_lock_assert.exit.i236.i
  %ranges.i.i = getelementptr i8, ptr %dev, i32 936
  %33 = ptrtoint ptr %ranges.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ranges.i.i, align 8
  br label %for.body.i240.i

for.body.i240.i:                                  ; preds = %for.body.i240.i.for.body.i240.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i240.i.for.body.i240.i_crit_edge ]
  %size.07.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i240.i.for.body.i240.i_crit_edge ]
  %range.i.i = getelementptr %struct.dev_dax_range, ptr %34, i32 %i.08.i.i, i32 1
  %end.i.i237.i = getelementptr %struct.dev_dax_range, ptr %34, i32 %i.08.i.i, i32 1, i32 1
  %35 = ptrtoint ptr %end.i.i237.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %end.i.i237.i, align 8
  %37 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %range.i.i, align 8
  %sub.i.i238.i = add i64 %size.07.i.i, 1
  %add.i.i239.i = add i64 %sub.i.i238.i, %36
  %add.i.i = sub i64 %add.i.i239.i, %38
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %32
  br i1 %exitcond.not.i.i, label %dev_dax_size.exit.loopexit.i, label %for.body.i240.i.for.body.i240.i_crit_edge

for.body.i240.i.for.body.i240.i_crit_edge:        ; preds = %for.body.i240.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i240.i

dev_dax_size.exit.loopexit.i:                     ; preds = %for.body.i240.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.le.i = trunc i64 %add.i.i to i32
  br label %dev_dax_size.exit.i

dev_dax_size.exit.i:                              ; preds = %dev_dax_size.exit.loopexit.i, %device_lock_assert.exit.i236.i.dev_dax_size.exit.i_crit_edge
  %size.0.lcssa.i241.off0.i = phi i32 [ 0, %device_lock_assert.exit.i236.i.dev_dax_size.exit.i_crit_edge ], [ %extract.t.le.i, %dev_dax_size.exit.loopexit.i ]
  %driver.i = getelementptr i8, ptr %dev, i32 156
  %39 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i, label %dev_dax_size.exit.i.dev_dax_resize.exit_crit_edge

dev_dax_size.exit.i.dev_dax_resize.exit_crit_edge: ; preds = %dev_dax_size.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end.i:                                         ; preds = %dev_dax_size.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa.i241.off0.i, i32 %conv17)
  %cmp.i38 = icmp eq i32 %size.0.lcssa.i241.off0.i, %conv17
  br i1 %cmp.i38, label %if.end.i.dev_dax_resize.exit_crit_edge, label %if.end7.i

if.end.i.dev_dax_resize.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa.i241.off0.i, i32 %conv17)
  %cmp8.i = icmp ult i32 %size.0.lcssa.i241.off0.i, %conv17
  %sub.i = sub i32 %conv17, %size.0.lcssa.i241.off0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %size.0.lcssa.i.i)
  %cmp10.i = icmp ugt i32 %sub.i, %size.0.lcssa.i.i
  %or.cond.i = select i1 %cmp8.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.end7.i.dev_dax_resize.exit_crit_edge, label %if.end13.i

if.end7.i.dev_dax_resize.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.lcssa.i241.off0.i, i32 %conv17)
  %cmp14.i = icmp ugt i32 %size.0.lcssa.i241.off0.i, %conv17
  br i1 %cmp14.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %41 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i.i, label %if.then16.i.device_lock_assert.exit.i.i.i_crit_edge, label %land.rhs.i.i.i.i

if.then16.i.device_lock_assert.exit.i.i.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then16.i
  %dep_map.i.i.i.i = getelementptr i8, ptr %dev, i32 324
  %call.i.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.device_lock_assert.exit.i.i.i_crit_edge, !prof !208

land.rhs.i.i.i.i.device_lock_assert.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit.i.i.i

device_lock_assert.exit.i.i.i:                    ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.device_lock_assert.exit.i.i.i_crit_edge, %if.then16.i.device_lock_assert.exit.i.i.i_crit_edge
  %42 = ptrtoint ptr %nr_range.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_range.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp6.i.i.i = icmp sgt i32 %43, 0
  br i1 %cmp6.i.i.i, label %for.body.lr.ph.i.i.i, label %device_lock_assert.exit.i.i.i.dev_dax_size.exit.i.i_crit_edge

device_lock_assert.exit.i.i.i.dev_dax_size.exit.i.i_crit_edge: ; preds = %device_lock_assert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_size.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %device_lock_assert.exit.i.i.i
  %ranges.i.i.i = getelementptr i8, ptr %dev, i32 936
  %44 = ptrtoint ptr %ranges.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ranges.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.08.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %size.07.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %add.i.i242.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %range.i.i.i = getelementptr %struct.dev_dax_range, ptr %45, i32 %i.08.i.i.i, i32 1
  %end.i.i.i.i = getelementptr %struct.dev_dax_range, ptr %45, i32 %i.08.i.i.i, i32 1, i32 1
  %46 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %end.i.i.i.i, align 8
  %48 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %range.i.i.i, align 8
  %sub.i.i.i.i = add i64 %size.07.i.i.i, 1
  %add.i.i.i.i = add i64 %sub.i.i.i.i, %47
  %add.i.i242.i = sub i64 %add.i.i.i.i, %49
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %43
  br i1 %exitcond.not.i.i.i, label %dev_dax_size.exit.loopexit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

dev_dax_size.exit.loopexit.i.i:                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.le.i.i = trunc i64 %add.i.i242.i to i32
  br label %dev_dax_size.exit.i.i

dev_dax_size.exit.i.i:                            ; preds = %dev_dax_size.exit.loopexit.i.i, %device_lock_assert.exit.i.i.i.dev_dax_size.exit.i.i_crit_edge
  %size.0.lcssa.i.off0.i.i = phi i32 [ 0, %device_lock_assert.exit.i.i.i.dev_dax_size.exit.i.i_crit_edge ], [ %extract.t.le.i.i, %dev_dax_size.exit.loopexit.i.i ]
  %conv1.i.i = sub i32 %size.0.lcssa.i.off0.i.i, %conv17
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %ranges.i243.i = getelementptr i8, ptr %dev, i32 936
  %dev18.i.i = getelementptr inbounds %struct.dax_region, ptr %51, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.then.i.i.for.cond.i.i_crit_edge, %dev_dax_size.exit.i.i
  %i.0.in.i.i = phi i32 [ %43, %dev_dax_size.exit.i.i ], [ %i.0.i.i, %if.then.i.i.for.cond.i.i_crit_edge ]
  %to_shrink.0.i.i = phi i32 [ %conv1.i.i, %dev_dax_size.exit.i.i ], [ %sub20.i.i, %if.then.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %for.body.i246.i, label %for.cond.i.i.dev_dax_resize.exit_crit_edge

for.cond.i.i.dev_dax_resize.exit_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

for.body.i246.i:                                  ; preds = %for.cond.i.i
  %52 = ptrtoint ptr %ranges.i243.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ranges.i243.i, align 8
  %range5.i.i = getelementptr %struct.dev_dax_range, ptr %53, i32 %i.0.i.i, i32 1
  %conv9.i.i = zext i32 %to_shrink.0.i.i to i64
  %end.i.i244.i = getelementptr %struct.dev_dax_range, ptr %53, i32 %i.0.i.i, i32 1, i32 1
  %54 = ptrtoint ptr %end.i.i244.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %end.i.i244.i, align 8
  %56 = ptrtoint ptr %range5.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %range5.i.i, align 8
  %sub.i.i245.i = add i64 %55, 1
  %add.i135.i.i = sub i64 %sub.i.i245.i, %57
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i135.i.i, i64 %conv9.i.i)
  %cmp11.i.i = icmp ugt i64 %add.i135.i.i, %conv9.i.i
  %extract.t132.i.i = trunc i64 %add.i135.i.i to i32
  %cond.off0.i.i = select i1 %cmp11.i.i, i32 %to_shrink.0.i.i, i32 %extract.t132.i.i
  %conv14.i.i = zext i32 %cond.off0.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i135.i.i, i64 %conv14.i.i)
  %cmp16.not.i.i = icmp ugt i64 %add.i135.i.i, %conv14.i.i
  br i1 %cmp16.not.i.i, label %if.end22.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i246.i
  %mapping8.i.i = getelementptr %struct.dev_dax_range, ptr %53, i32 %i.0.i.i, i32 2
  %58 = ptrtoint ptr %mapping8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mapping8.i.i, align 8
  %60 = ptrtoint ptr %dev18.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev18.i.i, align 4
  call void @devm_release_action(ptr noundef %61, ptr noundef nonnull @unregister_dax_mapping, ptr noundef %59) #14
  call fastcc void @trim_dev_dax_range(ptr noundef %add.ptr.i) #14
  %sub20.i.i = sub i32 %to_shrink.0.i.i, %cond.off0.i.i
  %tobool.not.i247.i = icmp eq i32 %sub20.i.i, 0
  br i1 %tobool.not.i247.i, label %if.then.i.i.dev_dax_resize.exit_crit_edge, label %if.then.i.i.for.cond.i.i_crit_edge

if.then.i.i.for.cond.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then.i.i.dev_dax_resize.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end22.i.i:                                     ; preds = %for.body.i246.i
  %extract.t132.i.i.le = trunc i64 %add.i135.i.i to i32
  %child.i248.i = getelementptr inbounds %struct.dax_region, ptr %51, i32 0, i32 6, i32 7
  %62 = ptrtoint ptr %child.i248.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %res.0159.i.i = load ptr, ptr %child.i248.i, align 4
  %tobool25.not160.i.i = icmp eq ptr %res.0159.i.i, null
  br i1 %tobool25.not160.i.i, label %if.end22.i.i.land.rhs.i.i_crit_edge, label %for.body26.lr.ph.i.i

if.end22.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

for.body26.lr.ph.i.i:                             ; preds = %if.end22.i.i
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %63 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i249.i = icmp eq ptr %64, null
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.inc.i.i.for.body26.i.i_crit_edge, %for.body26.lr.ph.i.i
  %res.0161.i.i = phi ptr [ %res.0159.i.i, %for.body26.lr.ph.i.i ], [ %res.0.i.i, %for.inc.i.i.for.body26.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.resource, ptr %res.0161.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name.i.i, align 4
  br i1 %tobool.not.i.i249.i, label %if.end.i.i.i, label %for.body26.i.i.dev_name.exit.i.i_crit_edge

for.body26.i.i.dev_name.exit.i.i_crit_edge:       ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %for.body26.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %68, %if.end.i.i.i ], [ %64, %for.body26.i.i.dev_name.exit.i.i_crit_edge ]
  %call28.i.i = call i32 @strcmp(ptr noundef %66, ptr noundef %retval.0.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp29.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %cmp29.i.i, label %land.lhs.true.i.i, label %dev_name.exit.i.i.for.inc.i.i_crit_edge

dev_name.exit.i.i.for.inc.i.i_crit_edge:          ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %dev_name.exit.i.i
  %69 = ptrtoint ptr %res.0161.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %res.0161.i.i, align 4
  %conv31.i.i = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %conv31.i.i)
  %cmp33.i.i = icmp eq i64 %57, %conv31.i.i
  br i1 %cmp33.i.i, label %lor.rhs.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %dev_name.exit.i.i.for.inc.i.i_crit_edge
  %sibling.i250.i = getelementptr inbounds %struct.resource, ptr %res.0161.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %sibling.i250.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %res.0.i.i = load ptr, ptr %sibling.i250.i, align 4
  %tobool25.not.i.i = icmp eq ptr %res.0.i.i, null
  br i1 %tobool25.not.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.for.body26.i.i_crit_edge

for.inc.i.i.for.body26.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26.i.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i
  %72 = ptrtoint ptr %nr_range.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_range.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.in.i.i, i32 %73)
  %cmp40.not.i.i = icmp eq i32 %i.0.in.i.i, %73
  br i1 %cmp40.not.i.i, label %if.end85.i.i, label %lor.rhs.i.i.land.rhs.i.i_crit_edge

lor.rhs.i.i.land.rhs.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i.land.rhs.i.i_crit_edge, %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end22.i.i.land.rhs.i.i_crit_edge
  %.b133.i.i = load i1, ptr @dev_dax_shrink.__already_done, align 1
  br i1 %.b133.i.i, label %land.rhs.i.i.dev_dax_resize.exit_crit_edge, label %if.then50.i.i, !prof !204

land.rhs.i.i.dev_dax_resize.exit_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.then50.i.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dev_dax_shrink.__already_done, align 1
  %call60.i.i = call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i139.i.i = getelementptr i8, ptr %dev, i32 144
  %74 = ptrtoint ptr %init_name.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i139.i.i, align 8
  %tobool.not.i140.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i140.i.i, label %if.end.i141.i.i, label %if.then50.i.i.dev_name.exit143.i.i_crit_edge

if.then50.i.i.dev_name.exit143.i.i_crit_edge:     ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit143.i.i

if.end.i141.i.i:                                  ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  br label %dev_name.exit143.i.i

dev_name.exit143.i.i:                             ; preds = %if.end.i141.i.i, %if.then50.i.i.dev_name.exit143.i.i_crit_edge
  %retval.0.i142.i.i = phi ptr [ %77, %if.end.i141.i.i ], [ %75, %if.then50.i.i.dev_name.exit143.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 928, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef %call60.i.i, ptr noundef %retval.0.i142.i.i) #14
  br label %dev_dax_resize.exit

if.end85.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv89.i.i = sub i32 %extract.t132.i.i.le, %cond.off0.i.i
  %call90.i.i = call fastcc i32 @adjust_dev_dax_range(ptr noundef %add.ptr.i, ptr noundef nonnull %res.0161.i.i, i32 noundef %conv89.i.i) #14
  br label %dev_dax_resize.exit

if.end18.i:                                       ; preds = %if.end13.i
  %78 = ptrtoint ptr %to_alloc.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i, ptr %to_alloc.i, align 4
  %79 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %align.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %80)
  %cmp.i251.i = icmp ugt i32 %80, 4096
  %phi.bo.i.i = add i32 %80, -1
  %cond.i.i = select i1 %cmp.i251.i, i32 %phi.bo.i.i, i32 4095
  %and.i.i = and i32 %cond.i.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %retry.preheader.i, label %land.rhs.i

retry.preheader.i:                                ; preds = %if.end18.i
  %init_name.i.i256.i = getelementptr i8, ptr %dev, i32 144
  %ranges.i263.i = getelementptr i8, ptr %dev, i32 936
  br label %retry.i

land.rhs.i:                                       ; preds = %if.end18.i
  %.b228.i = load i1, ptr @dev_dax_resize.__already_done, align 1
  br i1 %.b228.i, label %land.rhs.i.dev_dax_resize.exit_crit_edge, label %if.then30.i, !prof !204

land.rhs.i.dev_dax_resize.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.then30.i:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dev_dax_resize.__already_done, align 1
  %call40.i = call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %81 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i252.i = icmp eq ptr %82, null
  br i1 %tobool.not.i252.i, label %if.end.i.i, label %if.then30.i.dev_name.exit.i_crit_edge

if.then30.i.dev_name.exit.i_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then30.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %84, %if.end.i.i ], [ %82, %if.then30.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 984, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call40.i, ptr noundef %retval.0.i.i, ptr noundef nonnull %to_alloc.i) #14
  br label %dev_dax_resize.exit

retry.i:                                          ; preds = %if.end147.i.retry.i_crit_edge, %retry.preheader.i
  %85 = ptrtoint ptr %child.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %child.i.i, align 4
  %tobool65.not.i = icmp eq ptr %86, null
  br i1 %tobool65.not.i, label %if.then66.i, label %retry.i.for.body.i_crit_edge

retry.i.for.body.i_crit_edge:                     ; preds = %retry.i
  br label %for.body.i

if.then66.i:                                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %res.i.i, align 4
  %conv68.i = zext i32 %88 to i64
  %89 = ptrtoint ptr %to_alloc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %to_alloc.i, align 4
  %call69.i = call fastcc i32 @alloc_dev_dax_range(ptr noundef %add.ptr.i, i64 noundef %conv68.i, i32 noundef %90) #14
  br label %dev_dax_resize.exit

for.body.i:                                       ; preds = %for.body.i.backedge, %retry.i.for.body.i_crit_edge
  %res4.0309.i = phi ptr [ %92, %for.body.i.backedge ], [ %86, %retry.i.for.body.i_crit_edge ]
  %sibling.i = getelementptr inbounds %struct.resource, ptr %res4.0309.i, i32 0, i32 6
  %91 = ptrtoint ptr %sibling.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sibling.i, align 4
  %cmp72.i = icmp eq ptr %res4.0309.i, %86
  br i1 %cmp72.i, label %land.lhs.true74.i, label %for.body.i.if.end92.i_crit_edge

for.body.i.if.end92.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

land.lhs.true74.i:                                ; preds = %for.body.i
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %86, align 4
  %95 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %res.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp78.i = icmp ugt i32 %94, %96
  br i1 %cmp78.i, label %if.then80.i, label %land.lhs.true74.i.if.end92.i_crit_edge

land.lhs.true74.i.if.end92.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

if.then80.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub84.i = sub i32 %94, %96
  %97 = ptrtoint ptr %to_alloc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %to_alloc.i, align 4
  %99 = call i32 @llvm.umin.i32(i32 %sub84.i, i32 %98) #14
  %conv90.i = zext i32 %96 to i64
  %call91.i = call fastcc i32 @alloc_dev_dax_range(ptr noundef %add.ptr.i, i64 noundef %conv90.i, i32 noundef %99) #14
  br label %for.end.i

if.end92.i:                                       ; preds = %land.lhs.true74.i.if.end92.i_crit_edge, %for.body.i.if.end92.i_crit_edge
  %tobool93.not.i = icmp eq ptr %92, null
  br i1 %tobool93.not.i, label %land.lhs.true114.i, label %land.lhs.true94.i

land.lhs.true94.i:                                ; preds = %if.end92.i
  %100 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %92, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %res4.0309.i, i32 0, i32 1
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %end.i, align 4
  %add.i = add i32 %103, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %add.i)
  %cmp96.i = icmp ugt i32 %101, %add.i
  br i1 %cmp96.i, label %if.end110.thread.i, label %land.lhs.true94.i.for.body.i.backedge_crit_edge

land.lhs.true94.i.for.body.i.backedge_crit_edge:  ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.backedge

if.end110.thread.i:                               ; preds = %land.lhs.true94.i
  %sub102.i = sub i32 %101, %add.i
  %104 = ptrtoint ptr %to_alloc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %to_alloc.i, align 4
  %106 = call i32 @llvm.umin.i32(i32 %sub102.i, i32 %105) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool111.not276.not.i = icmp eq i32 %106, 0
  br i1 %tobool111.not276.not.i, label %if.end110.thread.i.for.body.i.backedge_crit_edge, label %if.end110.thread.i.if.end133.i_crit_edge

if.end110.thread.i.if.end133.i_crit_edge:         ; preds = %if.end110.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133.i

if.end110.thread.i.for.body.i.backedge_crit_edge: ; preds = %if.end110.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %if.end110.thread.i.for.body.i.backedge_crit_edge, %land.lhs.true94.i.for.body.i.backedge_crit_edge
  br label %for.body.i

land.lhs.true114.i:                               ; preds = %if.end92.i
  %end115.i = getelementptr inbounds %struct.resource, ptr %res4.0309.i, i32 0, i32 1
  %107 = ptrtoint ptr %end115.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end115.i, align 4
  %109 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %108)
  %cmp117.i = icmp ugt i32 %110, %108
  br i1 %cmp117.i, label %if.end130.i, label %land.lhs.true114.i.dev_dax_resize.exit_crit_edge

land.lhs.true114.i.dev_dax_resize.exit_crit_edge: ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end130.i:                                      ; preds = %land.lhs.true114.i
  %sub122.i = sub i32 %110, %108
  %111 = ptrtoint ptr %to_alloc.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %to_alloc.i, align 4
  %113 = call i32 @llvm.umin.i32(i32 %sub122.i, i32 %112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool131.not.i = icmp eq i32 %113, 0
  br i1 %tobool131.not.i, label %if.end130.i.dev_dax_resize.exit_crit_edge, label %if.end130.i.if.end133.i_crit_edge

if.end130.i.if.end133.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133.i

if.end130.i.dev_dax_resize.exit_crit_edge:        ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end133.i:                                      ; preds = %if.end130.i.if.end133.i_crit_edge, %if.end110.thread.i.if.end133.i_crit_edge
  %alloc.3320.i = phi i32 [ %113, %if.end130.i.if.end133.i_crit_edge ], [ %106, %if.end110.thread.i.if.end133.i_crit_edge ]
  %114 = ptrtoint ptr %nr_range.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %nr_range.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i254.i = icmp eq i32 %115, 0
  br i1 %cmp.i254.i, label %if.end133.i.if.end139.i_crit_edge, label %if.end.i258.i

if.end133.i.if.end139.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139.i

if.end.i258.i:                                    ; preds = %if.end133.i
  %name.i255.i = getelementptr inbounds %struct.resource, ptr %res4.0309.i, i32 0, i32 2
  %116 = ptrtoint ptr %name.i255.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name.i255.i, align 4
  %118 = ptrtoint ptr %init_name.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init_name.i.i256.i, align 8
  %tobool.not.i.i257.i = icmp eq ptr %119, null
  br i1 %tobool.not.i.i257.i, label %if.end.i.i260.i, label %if.end.i258.i.dev_name.exit.i262.i_crit_edge

if.end.i258.i.dev_name.exit.i262.i_crit_edge:     ; preds = %if.end.i258.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i262.i

if.end.i.i260.i:                                  ; preds = %if.end.i258.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i262.i

dev_name.exit.i262.i:                             ; preds = %if.end.i.i260.i, %if.end.i258.i.dev_name.exit.i262.i_crit_edge
  %retval.0.i.i261.i = phi ptr [ %121, %if.end.i.i260.i ], [ %119, %if.end.i258.i.dev_name.exit.i262.i_crit_edge ]
  %call1.i.i = call i32 @strcmp(ptr noundef %117, ptr noundef %retval.0.i.i261.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %dev_name.exit.i262.i.if.end139.i_crit_edge

dev_name.exit.i262.i.if.end139.i_crit_edge:       ; preds = %dev_name.exit.i262.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139.i

if.end4.i.i:                                      ; preds = %dev_name.exit.i262.i
  %122 = ptrtoint ptr %ranges.i263.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ranges.i263.i, align 8
  %sub.i264.i = add i32 %115, -1
  %arrayidx.i.i = getelementptr %struct.dev_dax_range, ptr %123, i32 %sub.i264.i
  %range.i265.i = getelementptr %struct.dev_dax_range, ptr %123, i32 %sub.i264.i, i32 1
  %124 = ptrtoint ptr %range.i265.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %range.i265.i, align 8
  %126 = ptrtoint ptr %res4.0309.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %res4.0309.i, align 4
  %conv.i266.i = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %125, i64 %conv.i266.i)
  %cmp7.not.i.i = icmp eq i64 %125, %conv.i266.i
  br i1 %cmp7.not.i.i, label %lor.lhs.false.i.i, label %if.end4.i.i.if.end139.i_crit_edge

if.end4.i.i.if.end139.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139.i

lor.lhs.false.i.i:                                ; preds = %if.end4.i.i
  %end.i.i = getelementptr %struct.dev_dax_range, ptr %123, i32 %sub.i264.i, i32 1, i32 1
  %128 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %end.i.i, align 8
  %end10.i.i = getelementptr inbounds %struct.resource, ptr %res4.0309.i, i32 0, i32 1
  %130 = ptrtoint ptr %end10.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %end10.i.i, align 4
  %conv11.i.i = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %129, i64 %conv11.i.i)
  %cmp12.not.i.i = icmp eq i64 %129, %conv11.i.i
  br i1 %cmp12.not.i.i, label %for.cond.preheader.i.i, label %lor.lhs.false.i.i.if.end139.i_crit_edge

lor.lhs.false.i.i.if.end139.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i264.i)
  %cmp1840.i.i = icmp sgt i32 %sub.i264.i, 0
  br i1 %cmp1840.i.i, label %for.body.lr.ph.i267.i, label %for.cond.preheader.i.i.if.then135.i_crit_edge

for.cond.preheader.i.i.if.then135.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then135.i

for.body.lr.ph.i267.i:                            ; preds = %for.cond.preheader.i.i
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i.i, align 8
  br label %for.body.i270.i

for.body.i270.i:                                  ; preds = %for.body.i270.i.for.body.i270.i_crit_edge, %for.body.lr.ph.i267.i
  %i.041.i.i = phi i32 [ 0, %for.body.lr.ph.i267.i ], [ %inc.i268.i, %for.body.i270.i.for.body.i270.i_crit_edge ]
  %arrayidx21.i.i = getelementptr %struct.dev_dax_range, ptr %123, i32 %i.041.i.i
  %134 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx21.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %133)
  %cmp23.i.i = icmp ugt i32 %135, %133
  %inc.i268.i = add nuw nsw i32 %i.041.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i268.i, i32 %sub.i264.i)
  %exitcond.not.i269.i = icmp eq i32 %inc.i268.i, %sub.i264.i
  %or.cond.i.i = select i1 %cmp23.i.i, i1 true, i1 %exitcond.not.i269.i
  br i1 %or.cond.i.i, label %adjust_ok.exit.i, label %for.body.i270.i.for.body.i270.i_crit_edge

for.body.i270.i.for.body.i270.i_crit_edge:        ; preds = %for.body.i270.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i270.i

adjust_ok.exit.i:                                 ; preds = %for.body.i270.i
  br i1 %cmp23.i.i, label %adjust_ok.exit.i.if.end139.i_crit_edge, label %adjust_ok.exit.i.if.then135.i_crit_edge

adjust_ok.exit.i.if.then135.i_crit_edge:          ; preds = %adjust_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then135.i

adjust_ok.exit.i.if.end139.i_crit_edge:           ; preds = %adjust_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139.i

if.then135.i:                                     ; preds = %adjust_ok.exit.i.if.then135.i_crit_edge, %for.cond.preheader.i.i.if.then135.i_crit_edge
  %sub.i273.i = add i32 %alloc.3320.i, 1
  %add.i274.i = sub i32 %sub.i273.i, %127
  %add137.i = add i32 %add.i274.i, %131
  %call138.i = call fastcc i32 @adjust_dev_dax_range(ptr noundef %add.ptr.i, ptr noundef nonnull %res4.0309.i, i32 noundef %add137.i) #14
  br label %for.end.i

if.end139.i:                                      ; preds = %adjust_ok.exit.i.if.end139.i_crit_edge, %lor.lhs.false.i.i.if.end139.i_crit_edge, %if.end4.i.i.if.end139.i_crit_edge, %dev_name.exit.i262.i.if.end139.i_crit_edge, %if.end133.i.if.end139.i_crit_edge
  %end140.i = getelementptr inbounds %struct.resource, ptr %res4.0309.i, i32 0, i32 1
  %136 = ptrtoint ptr %end140.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %end140.i, align 4
  %add141.i = add i32 %137, 1
  %conv142.i = zext i32 %add141.i to i64
  %call143.i = call fastcc i32 @alloc_dev_dax_range(ptr noundef %add.ptr.i, i64 noundef %conv142.i, i32 noundef %alloc.3320.i) #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end139.i, %if.then135.i, %if.then80.i
  %alloc.5.i = phi i32 [ %alloc.3320.i, %if.end139.i ], [ %alloc.3320.i, %if.then135.i ], [ %99, %if.then80.i ]
  %rc.2.i = phi i32 [ %call143.i, %if.end139.i ], [ %call138.i, %if.then135.i ], [ %call91.i, %if.then80.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool145.not.i = icmp eq i32 %rc.2.i, 0
  br i1 %tobool145.not.i, label %if.end147.i, label %for.end.i.dev_dax_resize.exit_crit_edge

for.end.i.dev_dax_resize.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

if.end147.i:                                      ; preds = %for.end.i
  %138 = ptrtoint ptr %to_alloc.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %to_alloc.i, align 4
  %sub148.i = sub i32 %139, %alloc.5.i
  store i32 %sub148.i, ptr %to_alloc.i, align 4
  %tobool149.not.i = icmp eq i32 %139, %alloc.5.i
  br i1 %tobool149.not.i, label %if.end147.i.dev_dax_resize.exit_crit_edge, label %if.end147.i.retry.i_crit_edge

if.end147.i.retry.i_crit_edge:                    ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry.i

if.end147.i.dev_dax_resize.exit_crit_edge:        ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_dax_resize.exit

dev_dax_resize.exit:                              ; preds = %if.end147.i.dev_dax_resize.exit_crit_edge, %for.end.i.dev_dax_resize.exit_crit_edge, %if.end130.i.dev_dax_resize.exit_crit_edge, %land.lhs.true114.i.dev_dax_resize.exit_crit_edge, %if.then66.i, %dev_name.exit.i, %land.rhs.i.dev_dax_resize.exit_crit_edge, %if.end85.i.i, %dev_name.exit143.i.i, %land.rhs.i.i.dev_dax_resize.exit_crit_edge, %if.then.i.i.dev_dax_resize.exit_crit_edge, %for.cond.i.i.dev_dax_resize.exit_crit_edge, %if.end7.i.dev_dax_resize.exit_crit_edge, %if.end.i.dev_dax_resize.exit_crit_edge, %dev_dax_size.exit.i.dev_dax_resize.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call69.i, %if.then66.i ], [ -16, %dev_dax_size.exit.i.dev_dax_resize.exit_crit_edge ], [ 0, %if.end.i.dev_dax_resize.exit_crit_edge ], [ -28, %if.end7.i.dev_dax_resize.exit_crit_edge ], [ -6, %dev_name.exit.i ], [ -6, %land.rhs.i.dev_dax_resize.exit_crit_edge ], [ -6, %land.rhs.i.i.dev_dax_resize.exit_crit_edge ], [ -6, %dev_name.exit143.i.i ], [ %call90.i.i, %if.end85.i.i ], [ 0, %if.then.i.i.dev_dax_resize.exit_crit_edge ], [ 0, %for.cond.i.i.dev_dax_resize.exit_crit_edge ], [ -28, %land.lhs.true114.i.dev_dax_resize.exit_crit_edge ], [ -28, %if.end130.i.dev_dax_resize.exit_crit_edge ], [ %rc.2.i, %for.end.i.dev_dax_resize.exit_crit_edge ], [ 0, %if.end147.i.dev_dax_resize.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_alloc.i) #14
  call void @mutex_unlock(ptr noundef %mutex.i37) #14
  %140 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev11, align 4
  %mutex.i41 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39)
  %cmp = icmp eq i32 %retval.0.i39, 0
  %spec.select = select i1 %cmp, i32 %len, i32 %retval.0.i39
  br label %cleanup

cleanup:                                          ; preds = %dev_dax_resize.exit, %if.then14, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %if.then14 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ -22, %do.body ], [ %spec.select, %dev_dax_resize.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adjust_dev_dax_range(ptr noundef %dev_dax, ptr noundef %res, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_range = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 8
  %0 = ptrtoint ptr %nr_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_range, align 4
  %sub = add i32 %1, -1
  %ranges = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 9
  %2 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ranges, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %size)
  %cmp = icmp ugt i32 %add.i, %size
  %range1 = getelementptr %struct.dev_dax_range, ptr %3, i32 %sub, i32 1
  %dev2 = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.device_lock_assert.exit_crit_edge, label %land.rhs.i

entry.device_lock_assert.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %9 = ptrtoint ptr %dev_dax to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_dax, align 8
  %dev3 = getelementptr inbounds %struct.dax_region, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  %dep_map.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.device_lock_assert.exit_crit_edge, !prof !208

land.rhs.i.device_lock_assert.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit

device_lock_assert.exit:                          ; preds = %do.end.i, %land.rhs.i.device_lock_assert.exit_crit_edge, %entry.device_lock_assert.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %device_lock_assert.exit
  %.b98 = load i1, ptr @adjust_dev_dax_range.__already_done, align 1
  br i1 %.b98, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !204

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @adjust_dev_dax_range.__already_done, align 1
  %call22 = tail call ptr @dev_driver_string(ptr noundef %dev2) #14
  %init_name.i = getelementptr inbounds %struct.dev_dax, ptr %dev_dax, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i100 = icmp eq ptr %14, null
  br i1 %tobool.not.i100, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i101 = phi ptr [ %16, %if.end.i ], [ %14, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 855, i32 noundef 9, ptr noundef nonnull @.str.43, ptr noundef %call22, ptr noundef %retval.0.i101) #14
  br label %cleanup

if.end45:                                         ; preds = %device_lock_assert.exit
  %17 = ptrtoint ptr %range1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %range1, align 8
  %conv = trunc i64 %18 to i32
  %call46 = tail call i32 @adjust_resource(ptr noundef %res, i32 noundef %conv, i32 noundef %size) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %range1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %range1, align 8
  %conv53 = zext i32 %size to i64
  %add = add nsw i64 %conv53, -1
  %sub54 = add i64 %add, %20
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %range1, i32 8
  %21 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub54, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adjust_dev_dax_range.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adjust_dev_dax_range, %if.then66)) #14
          to label %cleanup [label %if.then66], !srcloc !209

if.then66:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %cond = select i1 %cmp, ptr @.str.46, ptr @.str.47
  %22 = ptrtoint ptr %range1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %range1, align 8
  %end70 = getelementptr %struct.dev_dax_range, ptr %3, i32 %sub, i32 1, i32 1
  %24 = ptrtoint ptr %end70 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %end70, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adjust_dev_dax_range.__UNIQUE_ID_ddebug232, ptr noundef %dev2, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond, i32 noundef %sub, i64 noundef %23, i64 noundef %25) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end49, %if.end45.cleanup_crit_edge, %dev_name.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ %call46, %if.end45.cleanup_crit_edge ], [ 0, %if.then66 ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unregister_dax_mapping(ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unregister_dax_mapping.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unregister_dax_mapping, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @unregister_dax_mapping.__UNIQUE_ID_ddebug230, ptr noundef %data, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.42) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end.device_lock_assert.exit_crit_edge, label %land.rhs.i

do.end.device_lock_assert.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

land.rhs.i:                                       ; preds = %do.end
  %dev5 = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %dep_map.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.device_lock_assert.exit_crit_edge, !prof !208

land.rhs.i.device_lock_assert.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %device_lock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 787, i32 noundef 9, ptr noundef null) #14
  br label %device_lock_assert.exit

device_lock_assert.exit:                          ; preds = %do.end.i, %land.rhs.i.device_lock_assert.exit_crit_edge, %do.end.device_lock_assert.exit_crit_edge
  %ranges = getelementptr i8, ptr %1, i32 936
  %7 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ranges, align 8
  %range_id = getelementptr inbounds %struct.dax_mapping, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %range_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %range_id, align 8
  %mapping6 = getelementptr %struct.dev_dax_range, ptr %8, i32 %10, i32 2
  %11 = ptrtoint ptr %mapping6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mapping6, align 8
  store i32 -1, ptr %range_id, align 8
  tail call void @device_del(ptr noundef %data) #14
  tail call void @put_device(ptr noundef %data) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resource_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_range = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %nr_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -72
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %res = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res, align 4
  %conv = zext i32 %5 to i64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ranges = getelementptr i8, ptr %dev, i32 936
  %6 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ranges, align 8
  %range = getelementptr inbounds %struct.dev_dax_range, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %range, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %start.0 = phi i64 [ %conv, %if.then ], [ %9, %if.else ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i64 noundef %start.0)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_dax(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dax_mapping_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %ida = getelementptr i8, ptr %1, i32 -52
  %id = getelementptr inbounds %struct.dax_mapping, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef %ida, i32 noundef %3) #14
  tail call void @kfree(ptr noundef %dev) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %dev2.i = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #14
  %range_id.i = getelementptr inbounds %struct.dax_mapping, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %range_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %get_dax_range.exit

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

get_dax_range.exit:                               ; preds = %entry
  %ranges.i = getelementptr i8, ptr %1, i32 936
  %8 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ranges.i, align 8
  %arrayidx.i = getelementptr %struct.dev_dax_range, ptr %9, i32 %7
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_dax_range.exit.cleanup_crit_edge, label %if.end

get_dax_range.exit.cleanup_crit_edge:             ; preds = %get_dax_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %get_dax_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  %range = getelementptr %struct.dev_dax_range, ptr %9, i32 %7, i32 1
  %10 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %range, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i64 noundef %11)
  %mapping1.i = getelementptr %struct.dev_dax_range, ptr %9, i32 %7, i32 2
  %12 = ptrtoint ptr %mapping1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping1.i, align 8
  %parent.i5 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i5, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %15, i32 -72
  %16 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i6, align 8
  %dev2.i7 = getelementptr inbounds %struct.dax_region, ptr %17, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %dev2.i.sink = phi ptr [ %dev2.i7, %if.end ], [ %dev2.i, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %if.end ], [ -6, %entry.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %dev2.i.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i.sink, align 4
  %mutex.i11.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i11.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_dax_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %get_dax_range.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @end_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %dev2.i = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #14
  %range_id.i = getelementptr inbounds %struct.dax_mapping, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %range_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %get_dax_range.exit

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

get_dax_range.exit:                               ; preds = %entry
  %ranges.i = getelementptr i8, ptr %1, i32 936
  %8 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ranges.i, align 8
  %arrayidx.i = getelementptr %struct.dev_dax_range, ptr %9, i32 %7
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_dax_range.exit.cleanup_crit_edge, label %if.end

get_dax_range.exit.cleanup_crit_edge:             ; preds = %get_dax_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %get_dax_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  %end = getelementptr %struct.dev_dax_range, ptr %9, i32 %7, i32 1, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %end, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i64 noundef %11)
  %mapping1.i = getelementptr %struct.dev_dax_range, ptr %9, i32 %7, i32 2
  %12 = ptrtoint ptr %mapping1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping1.i, align 8
  %parent.i5 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i5, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %15, i32 -72
  %16 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i6, align 8
  %dev2.i7 = getelementptr inbounds %struct.dax_region, ptr %17, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %dev2.i.sink = phi ptr [ %dev2.i7, %if.end ], [ %dev2.i, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %if.end ], [ -6, %entry.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %dev2.i.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i.sink, align 4
  %mutex.i11.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i11.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_dax_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %get_dax_range.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pgoff_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %dev2.i = getelementptr inbounds %struct.dax_region, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 4
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #14
  %range_id.i = getelementptr inbounds %struct.dax_mapping, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %range_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %get_dax_range.exit

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

get_dax_range.exit:                               ; preds = %entry
  %ranges.i = getelementptr i8, ptr %1, i32 936
  %8 = ptrtoint ptr %ranges.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ranges.i, align 8
  %arrayidx.i = getelementptr %struct.dev_dax_range, ptr %9, i32 %7
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %get_dax_range.exit.cleanup_crit_edge, label %if.end

get_dax_range.exit.cleanup_crit_edge:             ; preds = %get_dax_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %get_dax_range.exit
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef %11)
  %mapping1.i = getelementptr %struct.dev_dax_range, ptr %9, i32 %7, i32 2
  %12 = ptrtoint ptr %mapping1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping1.i, align 8
  %parent.i5 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i5, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %15, i32 -72
  %16 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i6, align 8
  %dev2.i7 = getelementptr inbounds %struct.dax_region, ptr %17, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %dev2.i.sink = phi ptr [ %dev2.i7, %if.end ], [ %dev2.i, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %if.end ], [ -6, %entry.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %dev2.i.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2.i.sink, align 4
  %mutex.i11.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i11.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_dax_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %get_dax_range.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !93, !95, !97, !98, !100, !101, !103, !105, !107, !109, !111, !112, !114, !115, !117, !118, !120, !122, !124, !125, !126, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !149, !150, !152, !154, !155, !157, !159, !160, !162, !164, !165, !167, !168, !170, !172, !174, !176, !178, !180, !181, !183, !184, !186, !187, !189, !191, !192}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @__ksymtab_static_dev_dax, !1, !"__ksymtab_static_dev_dax", i1 false, i1 false}
!1 = !{!"../drivers/dax/bus.c", i32 157, i32 1}
!2 = !{ptr @__ksymtab_kill_dev_dax, !3, !"__ksymtab_kill_dev_dax", i1 false, i1 false}
!3 = !{!"../drivers/dax/bus.c", i32 397, i32 1}
!4 = !{ptr @__ksymtab_dax_region_put, !5, !"__ksymtab_dax_region_put", i1 false, i1 false}
!5 = !{!"../drivers/dax/bus.c", i32 561, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dax/bus.c", i32 584, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_alloc_dax_region, !10, !"__ksymtab_alloc_dax_region", i1 false, i1 false}
!10 = !{!"../drivers/dax/bus.c", i32 619, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/dax/bus.c", i32 1314, i32 7}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/dax/bus.c", i32 1322, i32 7}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dax/bus.c", i32 1337, i32 20}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/dax/bus.c", i32 1344, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_devm_create_dev_dax, !23, !"__ksymtab_devm_create_dev_dax", i1 false, i1 false}
!23 = !{!"../drivers/dax/bus.c", i32 1414, i32 1}
!24 = !{ptr @__ksymtab___dax_driver_register, !25, !"__ksymtab___dax_driver_register", i1 false, i1 false}
!25 = !{!"../drivers/dax/bus.c", i32 1458, i32 1}
!26 = !{ptr @__ksymtab_dax_driver_unregister, !27, !"__ksymtab_dax_driver_unregister", i1 false, i1 false}
!27 = !{!"../drivers/dax/bus.c", i32 1474, i32 1}
!28 = !{ptr @match_always_count, !29, !"match_always_count", i1 false, i1 false}
!29 = !{!"../drivers/dax/bus.c", i32 1416, i32 12}
!30 = !{ptr @xa_init_flags.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dax_region_attribute_groups, !34, !"dax_region_attribute_groups", i1 false, i1 false}
!34 = !{!"../drivers/dax/bus.c", i32 544, i32 38}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dax/bus.c", i32 539, i32 10}
!37 = !{ptr @dax_region_attribute_group, !38, !"dax_region_attribute_group", i1 false, i1 false}
!38 = !{!"../drivers/dax/bus.c", i32 538, i32 37}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dax/bus.c", i32 291, i32 8}
!41 = !{ptr @dev_attr_available_size, !40, !"dev_attr_available_size", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dax/bus.c", i32 289, i32 22}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/device.h", i32 787, i32 2}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dax/bus.c", i32 379, i32 8}
!48 = !{ptr @dev_attr_create, !47, !"dev_attr_create", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dax/bus.c", i32 324, i32 20}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dax/bus.c", i32 324, i32 60}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dax/bus.c", i32 310, i32 8}
!55 = !{ptr @dev_attr_seed, !54, !"dev_attr_seed", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dax/bus.c", i32 510, i32 8}
!58 = !{ptr @dev_attr_delete, !57, !"dev_attr_delete", i1 false, i1 false}
!59 = !{ptr @dax_region_attributes, !60, !"dax_region_attributes", i1 false, i1 false}
!60 = !{!"../drivers/dax/bus.c", i32 527, i32 26}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dax/bus.c", i32 251, i32 55}
!63 = !{ptr @dev_attr_region_size, !64, !"dev_attr_region_size", i1 false, i1 false}
!64 = !{!"../drivers/dax/bus.c", i32 251, i32 32}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dax/bus.c", i32 262, i32 3}
!67 = !{ptr @dev_attr_region_align, !68, !"dev_attr_region_align", i1 false, i1 false}
!68 = !{!"../drivers/dax/bus.c", i32 261, i32 32}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dax/bus.c", i32 259, i32 22}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dax/bus.c", i32 241, i32 8}
!73 = !{ptr @dev_attr_id, !72, !"dev_attr_id", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dax/bus.c", i32 239, i32 22}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/dax/bus.c", i32 797, i32 7}
!78 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dax/bus.c", i32 826, i32 2}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @alloc_dev_dax_range.__UNIQUE_ID_ddebug231, !80, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dax/bus.c", i32 406, i32 2}
!86 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @trim_dev_dax_range.__UNIQUE_ID_ddebug228, !85, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!88 = !{ptr @dax_bus_type, !89, !"dax_bus_type", i1 false, i1 false}
!89 = !{!"../drivers/dax/bus.c", i32 206, i32 24}
!90 = !{ptr @dax_drv_groups, !91, !"dax_drv_groups", i1 false, i1 false}
!91 = !{!"../drivers/dax/bus.c", i32 126, i32 1}
!92 = !{ptr @dax_drv_group, !91, !"dax_drv_group", i1 false, i1 false}
!93 = !{ptr @dax_drv_attrs, !94, !"dax_drv_attrs", i1 false, i1 false}
!94 = !{!"../drivers/dax/bus.c", i32 121, i32 26}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dax/bus.c", i32 112, i32 8}
!97 = !{ptr @driver_attr_new_id, !96, !"driver_attr_new_id", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dax/bus.c", i32 119, i32 8}
!100 = !{ptr @driver_attr_remove_id, !99, !"driver_attr_remove_id", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dax/bus.c", i32 27, i32 29}
!103 = !{ptr @dev_dax_type, !104, !"dev_dax_type", i1 false, i1 false}
!104 = !{!"../drivers/dax/bus.c", i32 1294, i32 33}
!105 = !{ptr @dax_attribute_groups, !106, !"dax_attribute_groups", i1 false, i1 false}
!106 = !{!"../drivers/dax/bus.c", i32 1276, i32 38}
!107 = !{ptr @dev_dax_attribute_group, !108, !"dev_dax_attribute_group", i1 false, i1 false}
!108 = !{!"../drivers/dax/bus.c", i32 1271, i32 37}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dax/bus.c", i32 1206, i32 8}
!111 = !{ptr @dev_attr_target_node, !110, !"dev_attr_target_node", i1 false, i1 false}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dax/bus.c", i32 1240, i32 8}
!114 = !{ptr @dev_attr_numa_node, !113, !"dev_attr_numa_node", i1 false, i1 false}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dax/bus.c", i32 1125, i32 8}
!117 = !{ptr @dev_attr_mapping, !116, !"dev_attr_mapping", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dax/bus.c", i32 1077, i32 23}
!120 = !{ptr @dev_attr_align, !121, !"dev_attr_align", i1 false, i1 false}
!121 = !{!"../drivers/dax/bus.c", i32 1190, i32 8}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dax/bus.c", i32 1144, i32 4}
!124 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @dev_dax_validate_align.__UNIQUE_ID_ddebug244, !123, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!126 = !{ptr @dev_attr_size, !127, !"dev_attr_size", i1 false, i1 false}
!127 = !{!"../drivers/dax/bus.c", i32 1064, i32 8}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dax/bus.c", i32 1048, i32 3}
!130 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @size_store.__UNIQUE_ID_ddebug243, !129, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../drivers/dax/bus.c", i32 983, i32 6}
!134 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../drivers/dax/bus.c", i32 927, i32 7}
!137 = !{ptr @.str.41, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dax/bus.c", i32 637, i32 2}
!140 = !{ptr @unregister_dax_mapping.__UNIQUE_ID_ddebug230, !139, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../drivers/dax/bus.c", i32 855, i32 6}
!143 = !{ptr @.str.43, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/dax/bus.c", i32 867, i32 2}
!146 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @adjust_dev_dax_range.__UNIQUE_ID_ddebug232, !145, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!148 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @dev_dax_attributes, !151, !"dev_dax_attributes", i1 false, i1 false}
!151 = !{!"../drivers/dax/bus.c", i32 1260, i32 26}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/dax/bus.c", i32 1233, i32 8}
!154 = !{ptr @dev_attr_modalias, !153, !"dev_attr_modalias", i1 false, i1 false}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/dax/bus.c", i32 1231, i32 22}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dax/bus.c", i32 1222, i32 8}
!159 = !{ptr @dev_attr_resource, !158, !"dev_attr_resource", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/dax/bus.c", i32 1220, i32 22}
!162 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/dax/bus.c", i32 427, i32 2}
!164 = !{ptr @unregister_dev_dax.__UNIQUE_ID_ddebug229, !163, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/dax/bus.c", i32 750, i32 6}
!167 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.54, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/dax/bus.c", i32 768, i32 20}
!170 = !{ptr @dax_mapping_type, !171, !"dax_mapping_type", i1 false, i1 false}
!171 = !{!"../drivers/dax/bus.c", i32 736, i32 27}
!172 = !{ptr @dax_mapping_attribute_groups, !173, !"dax_mapping_attribute_groups", i1 false, i1 false}
!173 = !{!"../drivers/dax/bus.c", i32 731, i32 38}
!174 = !{ptr @dax_mapping_attribute_group, !175, !"dax_mapping_attribute_group", i1 false, i1 false}
!175 = !{!"../drivers/dax/bus.c", i32 727, i32 37}
!176 = !{ptr @dax_mapping_attributes, !177, !"dax_mapping_attributes", i1 false, i1 false}
!177 = !{!"../drivers/dax/bus.c", i32 720, i32 26}
!178 = !{ptr @.str.55, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/dax/bus.c", i32 686, i32 8}
!180 = !{ptr @dev_attr_start, !179, !"dev_attr_start", i1 false, i1 false}
!181 = !{ptr @.str.56, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/dax/bus.c", i32 702, i32 8}
!183 = !{ptr @dev_attr_end, !182, !"dev_attr_end", i1 false, i1 false}
!184 = !{ptr @.str.57, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dax/bus.c", i32 718, i32 8}
!186 = !{ptr @dev_attr_page_offset, !185, !"dev_attr_page_offset", i1 false, i1 false}
!187 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/dax/bus.c", i32 713, i32 20}
!189 = !{ptr @.str.59, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/dax/bus.c", i32 13, i32 8}
!191 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @dax_bus_lock, !190, !"dax_bus_lock", i1 false, i1 false}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 2148290669}
!203 = !{i64 2148205121, i64 2148205153, i64 2148205182, i64 2148205216, i64 2148205247, i64 2148205270}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2149973768}
!206 = !{ptr @dax_region_unregister, ptr @unregister_dax_mapping, ptr @unregister_dev_dax}
!207 = !{i64 2148202656, i64 2148202688, i64 2148202717, i64 2148202751, i64 2148202782, i64 2148202805}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{i64 2148648441, i64 2148648446, i64 2148648459, i64 2148648503, i64 2148648537, i64 2148648558}
!210 = !{!"auto-init"}
