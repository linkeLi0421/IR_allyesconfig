; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/vibrator.c_pt.bc'
source_filename = "../drivers/staging/greybus/vibrator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
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
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_vibrator_device = type { ptr, ptr, i32, %struct.delayed_work }

@__initcall__kmod_gb_vibrator__229_239_gb_vibrator_init6 = internal global ptr @gb_vibrator_init, section ".initcall6.init", align 4
@gb_vibrator_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_vibrator_probe, ptr @gb_vibrator_disconnect, ptr @gb_vibrator_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@vibrator_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.1, ptr null, ptr null, ptr @vibrator_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@minors = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gb_vibrator_exit = internal global ptr @gb_vibrator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [53 x i8] c"gb_vibrator.file=drivers/staging/greybus/gb-vibrator\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"gb_vibrator.license=GPL v2\00", section ".modinfo", align 1
@gb_vibrator_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb_vibrator\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vibrator\00", [23 x i8] zeroinitializer }, align 32
@gb_vibrator_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 16, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vibrator%d\00", [21 x i8] zeroinitializer }, align 32
@gb_vibrator_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&vib->delayed_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@gb_vibrator_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&vib->delayed_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 54, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@vibrator_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vibrator_group, ptr null], [24 x i8] zeroinitializer }, align 32
@vibrator_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vibrator_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@vibrator_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_timeout, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @timeout_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@timeout_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 87, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not parse timeout value %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timeout_store\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/greybus/vibrator.c\00", [61 x i8] zeroinitializer }, align 32
@timeout_store._entry_ptr = internal global ptr @timeout_store._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"minors.xa_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"gb_vibrator_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 213, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"vibrator_class\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 108, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"minors\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 224, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 228, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 214, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"gb_vibrator_id_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 207, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 163, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 170, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 53, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"vibrator_groups\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"vibrator_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 106, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"vibrator_attrs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 102, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"dev_attr_timeout\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 100, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 87, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [38 x i8] c"../drivers/staging/greybus/vibrator.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 114, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_gb_vibrator_exit, ptr @__initcall__kmod_gb_vibrator__229_239_gb_vibrator_init6, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gb_vibrator_exit, ptr @timeout_store._entry, ptr @timeout_store._entry_ptr, ptr @gb_vibrator_driver, ptr @vibrator_class, ptr @minors, ptr @gb_vibrator_init.__key, ptr @.str, ptr @.str.1, ptr @gb_vibrator_id_table, ptr @.str.2, ptr @gb_vibrator_probe.__key, ptr @.str.3, ptr @gb_vibrator_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @vibrator_groups, ptr @vibrator_group, ptr @vibrator_attrs, ptr @dev_attr_timeout, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_vibrator_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibrator_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minors to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_vibrator_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_vibrator_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_vibrator_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_vibrator_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibrator_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibrator_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibrator_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_vibrator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @vibrator_class, ptr noundef nonnull @gb_vibrator_init.__key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_vibrator_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %err_class_unregister

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_class_unregister:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @class_unregister(ptr noundef nonnull @vibrator_class) #8
  br label %cleanup

cleanup:                                          ; preds = %err_class_unregister, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err_class_unregister ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_vibrator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_vibrator_driver) #8
  tail call void @class_unregister(ptr noundef nonnull @vibrator_class) #8
  tail call void @ida_destroy(ptr noundef nonnull @minors) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_vibrator_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %0 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cport_desc2 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %2 = ptrtoint ptr %cport_desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc2, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %cmp3.not = icmp eq i8 %5, 16
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 112) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %call10 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %9, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call10 to i32
  br label %err_free_vib

if.end14:                                         ; preds = %if.end8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call10, i32 0, i32 17
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %private.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @gb_connection_enable(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.err_connection_destroy_crit_edge

if.end14.err_connection_destroy_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_connection_destroy

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @ida_alloc_range(ptr noundef nonnull @minors, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  %minor = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call20, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %if.end19.err_connection_disable_crit_edge, label %if.end26

if.end19.err_connection_disable_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_connection_disable

if.end26:                                         ; preds = %if.end19
  %call29 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @vibrator_class, ptr noundef %bundle, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, i32 noundef %call20) #8
  %cmp.i87 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minor, align 8
  tail call void @ida_free(ptr noundef nonnull @minors, i32 noundef %16) #8
  br label %err_connection_disable

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %dev33, align 4
  %delayed_work = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %delayed_work, i32 noundef 0) #8
  %18 = ptrtoint ptr %delayed_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %delayed_work, align 4
  %lockdep_map = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @gb_vibrator_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry41 = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry41, ptr %entry41, align 8
  %prev.i = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry41, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gb_vibrator_worker, ptr %func, align 8
  %timer = getelementptr inbounds %struct.gb_vibrator_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @gb_vibrator_probe.__key.4) #8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #8
  br label %cleanup

err_connection_disable:                           ; preds = %if.then31, %if.end19.err_connection_disable_crit_edge
  %retval1.0 = phi i32 [ -22, %if.then31 ], [ %call20, %if.end19.err_connection_disable_crit_edge ]
  tail call void @gb_connection_disable(ptr noundef %call10) #8
  br label %err_connection_destroy

err_connection_destroy:                           ; preds = %err_connection_disable, %if.end14.err_connection_destroy_crit_edge
  %retval1.1 = phi i32 [ %call16, %if.end14.err_connection_destroy_crit_edge ], [ %retval1.0, %err_connection_disable ]
  tail call void @gb_connection_destroy(ptr noundef %call10) #8
  br label %err_free_vib

err_free_vib:                                     ; preds = %err_connection_destroy, %if.then12
  %retval1.2 = phi i32 [ %10, %if.then12 ], [ %retval1.1, %err_connection_destroy ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_vib, %if.end32, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %err_free_vib ], [ 0, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_vibrator_disconnect(ptr noundef %bundle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delayed_work = getelementptr inbounds %struct.gb_vibrator_device, ptr %1, i32 0, i32 3
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work) #8
  br i1 %call2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bundle1.i = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bundle1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle1.i, align 4
  %call.i.i17 = tail call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %call.i1.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.gb_vibrator_device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @device_unregister(ptr noundef %10) #8
  %minor = getelementptr inbounds %struct.gb_vibrator_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor, align 4
  tail call void @ida_free(ptr noundef nonnull @minors, i32 noundef %12) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @gb_connection_disable(ptr noundef %14) #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @gb_connection_destroy(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_vibrator_worker(ptr nocapture noundef readonly %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bundle1.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle1.i, align 4
  %call.i.i = tail call i32 @gb_operation_sync_timeout(ptr noundef %1, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %call.i1.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !64
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %bundle1.i18 = getelementptr inbounds %struct.gb_connection, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bundle1.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bundle1.i18, align 4
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call.i.i.i = call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i

do.end.i.i:                                       ; preds = %if.then3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %call.i.i.i) #12
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.cleanup_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %delayed_work.i = getelementptr inbounds %struct.gb_vibrator_device, ptr %1, i32 0, i32 3
  %call2.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work.i) #8
  br i1 %call2.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %bundle1.i.i = getelementptr inbounds %struct.gb_connection, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bundle1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bundle1.i.i, align 4
  %call.i.i25.i = call i32 @gb_operation_sync_timeout(ptr noundef %11, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i.i.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i.i.i.i, ptr %last_busy.i.i.i.i, align 8
  %call.i1.i.i.i = call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %16, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %if.else.i.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i26.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i.i26.i, ptr %last_busy.i.i.i, align 8
  %call.i1.i.i = call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %4, 65535
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i27.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %delayed_work.i, i32 noundef %call2.i.i) #8
  br label %20

if.end6:                                          ; preds = %if.end
  %call.i.i19 = call i32 @gb_operation_sync_timeout(ptr noundef %6, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 1000) #8
  %call.i.i.i20 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i.i21 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i.i.i21 to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i.i.i20, ptr %last_busy.i.i.i21, align 8
  %call.i1.i.i22 = call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool7.not = icmp eq i32 %call.i.i19, 0
  br i1 %tobool7.not, label %if.end6._crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6._crit_edge:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %20

20:                                               ; preds = %if.end6._crit_edge, %if.else.i.i
  br label %cleanup

cleanup:                                          ; preds = %20, %if.end6.cleanup_crit_edge, %if.then9.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %count, %20 ], [ %call.i.i19, %if.end6.cleanup_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i.i, %do.end.i.i.cleanup_crit_edge ], [ %call.i.i, %if.then9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !39, !41, !42, !44, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_gb_vibrator__229_239_gb_vibrator_init6, !1, !"__initcall__kmod_gb_vibrator__229_239_gb_vibrator_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/vibrator.c", i32 239, i32 1}
!2 = !{ptr @__exitcall_gb_vibrator_exit, !3, !"__exitcall_gb_vibrator_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/greybus/vibrator.c", i32 247, i32 1}
!4 = !{ptr @__UNIQUE_ID_file230, !5, !"__UNIQUE_ID_file230", i1 false, i1 false}
!5 = !{!"../drivers/staging/greybus/vibrator.c", i32 249, i32 1}
!6 = !{ptr @__UNIQUE_ID_license231, !5, !"__UNIQUE_ID_license231", i1 false, i1 false}
!7 = !{ptr @gb_vibrator_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/vibrator.c", i32 224, i32 11}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/vibrator.c", i32 228, i32 11}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/vibrator.c", i32 214, i32 11}
!13 = !{ptr @gb_vibrator_driver, !14, !"gb_vibrator_driver", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/vibrator.c", i32 213, i32 30}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/vibrator.c", i32 163, i32 26}
!17 = !{ptr @gb_vibrator_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/greybus/vibrator.c", i32 170, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gb_vibrator_probe.__key.4, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gb_pm_runtime_get_sync._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @gb_vibrator_id_table, !31, !"gb_vibrator_id_table", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/vibrator.c", i32 207, i32 39}
!32 = !{ptr @vibrator_class, !33, !"vibrator_class", i1 false, i1 false}
!33 = !{!"../drivers/staging/greybus/vibrator.c", i32 108, i32 21}
!34 = !{ptr @vibrator_groups, !35, !"vibrator_groups", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/vibrator.c", i32 106, i32 1}
!36 = !{ptr @vibrator_group, !35, !"vibrator_group", i1 false, i1 false}
!37 = !{ptr @vibrator_attrs, !38, !"vibrator_attrs", i1 false, i1 false}
!38 = !{!"../drivers/staging/greybus/vibrator.c", i32 102, i32 26}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/vibrator.c", i32 100, i32 8}
!41 = !{ptr @dev_attr_timeout, !40, !"dev_attr_timeout", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/greybus/vibrator.c", i32 87, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @timeout_store._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @timeout_store._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/vibrator.c", i32 114, i32 8}
!50 = !{ptr @minors, !49, !"minors", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148212762}
!61 = !{i64 697585, i64 697610, i64 697632, i64 697648, i64 697660, i64 697680, i64 697704, i64 697720, i64 697732}
!62 = !{i64 2148212950}
!63 = !{i64 2148213343, i64 2148213369, i64 2148213398, i64 2148213432, i64 2148213463, i64 2148213486}
!64 = !{!"auto-init"}
