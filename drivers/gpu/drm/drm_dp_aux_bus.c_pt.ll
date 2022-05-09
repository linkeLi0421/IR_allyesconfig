; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_dp_aux_bus.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dp_aux_bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_dp_aux_depopulate_ep_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dp_aux_depopulate_ep_devices\09\09\09\09"
module asm "\09.long\09__crc_of_dp_aux_depopulate_ep_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dp_aux_depopulate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dp_aux_depopulate_ep_devices\22\09\09\09\09\09"
module asm "__kstrtabns_of_dp_aux_depopulate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_of_dp_aux_populate_ep_devices\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_of_dp_aux_populate_ep_devices\09\09\09\09"
module asm "\09.long\09__crc_devm_of_dp_aux_populate_ep_devices\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_dp_aux_populate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_dp_aux_populate_ep_devices\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_dp_aux_populate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__dp_aux_dp_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___dp_aux_dp_driver_register\09\09\09\09"
module asm "\09.long\09__crc___dp_aux_dp_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dp_aux_dp_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__dp_aux_dp_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___dp_aux_dp_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dp_aux_dp_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_dp_aux_dp_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_dp_aux_dp_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dp_aux_dp_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dp_aux_dp_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dp_aux_dp_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dp_aux_ep_device = type { %struct.device, ptr }
%struct.dp_aux_ep_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_of_dp_aux_depopulate_ep_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dp_aux_depopulate_ep_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dp_aux_depopulate_ep_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dp_aux_depopulate_ep_devices to i32), ptr @__kstrtab_of_dp_aux_depopulate_ep_devices, ptr @__kstrtabns_of_dp_aux_depopulate_ep_devices }, section "___ksymtab_gpl+of_dp_aux_depopulate_ep_devices", align 4
@of_dp_aux_populate_ep_devices.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/drm_dp_aux_bus.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aux-bus\00", [24 x i8] zeroinitializer }, align 32
@dp_aux_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp_aux_ep_match, ptr null, ptr @dp_aux_ep_probe, ptr null, ptr @dp_aux_ep_remove, ptr @dp_aux_ep_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dp_aux_device_type_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @dp_aux_ep_dev_groups, ptr @of_device_uevent_modalias, ptr null, ptr @dp_aux_ep_dev_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aux-%s\00", [25 x i8] zeroinitializer }, align 32
@of_dp_aux_populate_ep_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create AUX EP for %pOF: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_dp_aux_populate_ep_devices\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_dp_aux_populate_ep_devices._entry_ptr = internal global ptr @of_dp_aux_populate_ep_devices._entry, section ".printk_index", align 4
@__kstrtab_devm_of_dp_aux_populate_ep_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_dp_aux_populate_ep_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_dp_aux_populate_ep_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_dp_aux_populate_ep_devices to i32), ptr @__kstrtab_devm_of_dp_aux_populate_ep_devices, ptr @__kstrtabns_devm_of_dp_aux_populate_ep_devices }, section "___ksymtab_gpl+devm_of_dp_aux_populate_ep_devices", align 4
@__kstrtab___dp_aux_dp_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___dp_aux_dp_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___dp_aux_dp_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dp_aux_dp_driver_register to i32), ptr @__kstrtab___dp_aux_dp_driver_register, ptr @__kstrtabns___dp_aux_dp_driver_register }, section "___ksymtab_gpl+__dp_aux_dp_driver_register", align 4
@__kstrtab_dp_aux_dp_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dp_aux_dp_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dp_aux_dp_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dp_aux_dp_driver_unregister to i32), ptr @__kstrtab_dp_aux_dp_driver_unregister, ptr @__kstrtabns_dp_aux_dp_driver_unregister }, section "___ksymtab_gpl+dp_aux_dp_driver_unregister", align 4
@__initcall__kmod_drm_dp_aux_bus__303_318_dp_aux_bus_init4 = internal global ptr @dp_aux_bus_init, section ".initcall4.init", align 4
@__exitcall_dp_aux_bus_exit = internal global ptr @dp_aux_bus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [63 x i8] c"drm_dp_aux_bus.author=Douglas Anderson <dianders@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [51 x i8] c"drm_dp_aux_bus.description=DRM DisplayPort AUX bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [51 x i8] c"drm_dp_aux_bus.file=drivers/gpu/drm/drm_dp_aux_bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [30 x i8] c"drm_dp_aux_bus.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dp-aux\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to attach to PM Domain\0A\00", [33 x i8] zeroinitializer }, align 32
@dp_aux_ep_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dp_aux_ep_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dp_aux_ep_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dp_aux_ep_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dp_aux_ep_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_modalias, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 211, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 216, i32 48 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"dp_aux_bus_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 99, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"dp_aux_device_type_type\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 131, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 233, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 237, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 100, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 55, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"dp_aux_ep_dev_groups\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"dp_aux_ep_dev_group\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 118, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"dp_aux_ep_dev_attrs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 114, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [36 x i8] c"../drivers/gpu/drm/drm_dp_aux_bus.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 112, i32 8 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_dp_aux_bus_exit, ptr @__initcall__kmod_drm_dp_aux_bus__303_318_dp_aux_bus_init4, ptr @__ksymtab___dp_aux_dp_driver_register, ptr @__ksymtab_devm_of_dp_aux_populate_ep_devices, ptr @__ksymtab_dp_aux_dp_driver_unregister, ptr @__ksymtab_of_dp_aux_depopulate_ep_devices, ptr @dp_aux_bus_exit, ptr @of_dp_aux_populate_ep_devices._entry, ptr @of_dp_aux_populate_ep_devices._entry_ptr, ptr @.str, ptr @.str.1, ptr @dp_aux_bus_type, ptr @dp_aux_device_type_type, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dp_aux_ep_dev_groups, ptr @dp_aux_ep_dev_group, ptr @dp_aux_ep_dev_attrs, ptr @dev_attr_modalias, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_aux_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_aux_device_type_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dp_aux_populate_ep_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_aux_ep_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_aux_ep_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_aux_ep_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_dp_aux_depopulate_ep_devices(ptr nocapture noundef readonly %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call i32 @device_for_each_child_reverse(ptr noundef %1, ptr noundef null, ptr noundef nonnull @of_dp_aux_ep_destroy) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_dp_aux_ep_destroy(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp.not = icmp eq ptr %3, @dp_aux_bus_type
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_flags.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  tail call void @of_node_put(ptr noundef %1) #5
  tail call void @device_unregister(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_dp_aux_populate_ep_devices(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b107 = load i1, ptr @of_dp_aux_populate_ep_devices.__already_done, align 1
  br i1 %.b107, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !58

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @of_dp_aux_populate_ep_devices.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool37.not = icmp eq ptr %5, null
  br i1 %tobool37.not, label %if.end29.cleanup_crit_edge, label %if.end39

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %call = tail call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #5
  %tobool42.not = icmp eq ptr %call, null
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %call45 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call, ptr noundef null) #5
  %cmp.not109 = icmp eq ptr %call45, null
  br i1 %cmp.not109, label %if.end44.for.end_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end44.for.body_crit_edge
  %np.0110 = phi ptr [ %call77, %for.inc.for.body_crit_edge ], [ %call45, %if.end44.for.body_crit_edge ]
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np.0110, i32 0, i32 10
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.end49, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end49:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 936) #8
  %tobool51.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool51.not, label %if.end49.for.inc_crit_edge, label %if.end53

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end53:                                         ; preds = %if.end49
  %aux54 = getelementptr inbounds %struct.dp_aux_ep_device, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %aux54 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %aux, ptr %aux54, align 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %parent, align 8
  %bus58 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %bus58 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dp_aux_bus_type, ptr %bus58, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dp_aux_device_type_type, ptr %type, align 4
  %call60 = tail call ptr @of_node_get(ptr noundef nonnull %np.0110) #5
  %of_node62 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %13 = ptrtoint ptr %of_node62 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call60, ptr %of_node62, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.dev_name.exit_crit_edge

if.end53.dev_name.exit_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end53.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.end53.dev_name.exit_crit_edge ]
  %call66 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i) #5
  %call68 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %dev_name.exit.for.inc_crit_edge, label %do.end73

dev_name.exit.for.inc_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end73:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull %np.0110, i32 noundef %call68) #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  tail call void @of_node_put(ptr noundef nonnull %np.0110) #5
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end73, %dev_name.exit.for.inc_crit_edge, %if.end49.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call77 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call, ptr noundef nonnull %np.0110) #5
  %cmp.not = icmp eq ptr %call77, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end39.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_dp_aux_populate_ep_devices(ptr noundef %aux)
  %dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @of_dp_aux_depopulate_ep_devices_void, ptr noundef %aux) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.devm_add_action_or_reset.exit_crit_edge, label %if.then.i

entry.devm_add_action_or_reset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %devm_add_action_or_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i.i.i = tail call i32 @device_for_each_child_reverse(ptr noundef %3, ptr noundef null, ptr noundef nonnull @of_dp_aux_ep_destroy) #5
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.then.i, %entry.devm_add_action_or_reset.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @of_dp_aux_depopulate_ep_devices_void(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.drm_dp_aux, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %call.i = tail call i32 @device_for_each_child_reverse(ptr noundef %1, ptr noundef null, ptr noundef nonnull @of_dp_aux_ep_destroy) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dp_aux_dp_driver_register(ptr noundef %drv, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %drv, i32 0, i32 3
  %owner1 = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %drv, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %owner, ptr %owner1, align 4
  %bus = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %drv, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dp_aux_bus_type, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_aux_dp_driver_unregister(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %drv, i32 0, i32 3
  tail call void @driver_unregister(ptr noundef %driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dp_aux_bus_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bus_unregister(ptr noundef nonnull @dp_aux_bus_type) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_aux_bus_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @dp_aux_bus_type) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_aux_ep_match(ptr noundef %dev, ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %1, ptr noundef %dev) #5
  %tobool = icmp ne ptr %call, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_aux_ep_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %call2 = tail call i32 @dev_pm_domain_attach(ptr noundef %dev, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call4 = tail call i32 %3(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_aux_ep_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_aux_ep_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %shutdown = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_aux_ep_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_modalias(ptr noundef %dev, ptr noundef %buf, i32 noundef 4096) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_of_dp_aux_depopulate_ep_devices, !1, !"__ksymtab_of_dp_aux_depopulate_ep_devices", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 180, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 211, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 216, i32 48}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 233, i32 30}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 237, i32 4}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @of_dp_aux_populate_ep_devices._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @of_dp_aux_populate_ep_devices._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_devm_of_dp_aux_populate_ep_devices, !17, !"__ksymtab_devm_of_dp_aux_populate_ep_devices", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 285, i32 1}
!18 = !{ptr @__ksymtab___dp_aux_dp_driver_register, !19, !"__ksymtab___dp_aux_dp_driver_register", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 294, i32 1}
!20 = !{ptr @__ksymtab_dp_aux_dp_driver_unregister, !21, !"__ksymtab_dp_aux_dp_driver_unregister", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 300, i32 1}
!22 = !{ptr @__initcall__kmod_drm_dp_aux_bus__303_318_dp_aux_bus_init4, !23, !"__initcall__kmod_drm_dp_aux_bus__303_318_dp_aux_bus_init4", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 318, i32 1}
!24 = !{ptr @__exitcall_dp_aux_bus_exit, !25, !"__exitcall_dp_aux_bus_exit", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 319, i32 1}
!26 = !{ptr @__UNIQUE_ID_author304, !27, !"__UNIQUE_ID_author304", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 321, i32 1}
!28 = !{ptr @__UNIQUE_ID_description305, !29, !"__UNIQUE_ID_description305", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 322, i32 1}
!30 = !{ptr @__UNIQUE_ID_file306, !31, !"__UNIQUE_ID_file306", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 323, i32 1}
!32 = !{ptr @__UNIQUE_ID_license307, !31, !"__UNIQUE_ID_license307", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 100, i32 11}
!35 = !{ptr @dp_aux_bus_type, !36, !"dp_aux_bus_type", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 99, i32 24}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 55, i32 34}
!39 = !{ptr @dp_aux_device_type_type, !40, !"dp_aux_device_type_type", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 131, i32 27}
!41 = !{ptr @dp_aux_ep_dev_groups, !42, !"dp_aux_ep_dev_groups", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 118, i32 1}
!43 = !{ptr @dp_aux_ep_dev_group, !42, !"dp_aux_ep_dev_group", i1 false, i1 false}
!44 = !{ptr @dp_aux_ep_dev_attrs, !45, !"dp_aux_ep_dev_attrs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 114, i32 26}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/drm_dp_aux_bus.c", i32 112, i32 8}
!48 = !{ptr @dev_attr_modalias, !47, !"dev_attr_modalias", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
