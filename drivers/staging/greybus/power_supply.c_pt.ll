; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/power_supply.c_pt.bc'
source_filename = "../drivers/staging/greybus/power_supply.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_power_supply_get_description_request = type { i8 }
%struct.gb_power_supply_get_description_response = type <{ [32 x i8], [32 x i8], [32 x i8], i16, i8 }>
%struct.gb_power_supply_get_supplies_response = type { i8 }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
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
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_power_supplies = type { ptr, i8, ptr, %struct.mutex }
%struct.gb_power_supply = type { i8, i8, ptr, %struct.power_supply_desc, [64 x i8], ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, ptr, ptr, i8, %struct.mutex }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_power_supply_get_property_descriptors_response = type { i8, [0 x %struct.gb_power_supply_props_desc] }
%struct.gb_power_supply_props_desc = type { i8, i8 }
%struct.gb_power_supply_prop = type { i32, i8, i32, i32, i8 }
%struct.gb_power_supply_event_request = type { i8, i8 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gb_power_supply_get_property_request = type { i8, i8 }
%struct.gb_power_supply_get_property_response = type { i32 }
%struct.gb_power_supply_set_property_request = type <{ i8, i8, i32 }>

@__initcall__kmod_gb_power_supply__229_1137_gb_power_supply_driver_init6 = internal global ptr @gb_power_supply_driver_init, section ".initcall6.init", align 4
@gb_power_supply_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_power_supply_probe, ptr @gb_power_supply_disconnect, ptr @gb_power_supply_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gb_power_supply_driver_exit = internal global ptr @gb_power_supply_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [61 x i8] c"gb_power_supply.file=drivers/staging/greybus/gb-power-supply\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [31 x i8] c"gb_power_supply.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gb_power_supply\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_supply\00", [19 x i8] zeroinitializer }, align 32
@gb_power_supply_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 8, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_power_supply_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&supplies->supplies_lock\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_supplies_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1001, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported unsolicited event: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_supplies_request_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/greybus/power_supply.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_supplies_request_handler._entry_ptr = internal global ptr @gb_supplies_request_handler._entry, section ".printk_index", align 4
@gb_supplies_request_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1010, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong event size received (%zu < %zu)\0A\00", [57 x i8] zeroinitializer }, align 32
@gb_supplies_request_handler._entry_ptr.10 = internal global ptr @gb_supplies_request_handler._entry.8, section ".printk_index", align 4
@gb_supplies_request_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1021, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Event received for unconfigured power_supply id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@gb_supplies_request_handler._entry_ptr.13 = internal global ptr @gb_supplies_request_handler._entry.11, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 54, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@gb_power_supply_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Fail to set wake lock for charging state\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_power_supply_state_change\00", [35 x i8] zeroinitializer }, align 32
@gb_power_supply_state_change._entry_ptr = internal global ptr @gb_power_supply_state_change._entry, section ".printk_index", align 4
@gb_power_supply_state_change._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 383, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Fail to set wake unlock for none charging\0A\00", [53 x i8] zeroinitializer }, align 32
@gb_power_supply_state_change._entry_ptr.21 = internal global ptr @gb_power_supply_state_change._entry.19, section ".printk_index", align 4
@gb_power_supplies_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 958, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fail to configure supplies devices\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_power_supplies_setup\00", [40 x i8] zeroinitializer }, align 32
@gb_power_supplies_setup._entry_ptr = internal global ptr @gb_power_supplies_setup._entry, section ".printk_index", align 4
@gb_power_supply_prop_descriptors_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 543, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"greybus property %u it is not supported by this kernel, dropped\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gb_power_supply_prop_descriptors_get\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_power_supply_prop_descriptors_get._entry_ptr = internal global ptr @gb_power_supply_prop_descriptors_get._entry, section ".printk_index", align 4
@gb_power_supplies_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 979, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fail to enable supplies devices\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_power_supplies_register\00", [37 x i8] zeroinitializer }, align 32
@gb_power_supplies_register._entry_ptr = internal global ptr @gb_power_supplies_register._entry, section ".printk_index", align 4
@gb_power_supply_enable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&gbpsy->supply_lock\00", [44 x i8] zeroinitializer }, align 32
@gb_power_supply_enable.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&gbpsy->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@gb_power_supply_enable.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&gbpsy->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%u\00", [26 x i8] zeroinitializer }, align 32
@_gb_power_supply_property_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 674, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get property %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_gb_power_supply_property_get\00", [34 x i8] zeroinitializer }, align 32
@_gb_power_supply_property_get._entry_ptr = internal global ptr @_gb_power_supply_property_get._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 46]
@__sancov_gen_cov_switch_values.37 = internal global [61 x i64] [i64 59, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 73, i64 74, i64 75]
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"gb_power_supply_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1131, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1137, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1132, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"gb_power_supply_id_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1125, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1081, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1000, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1008, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1019, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 53, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 374, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 382, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 957, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 541, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 978, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 917, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 924, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 457, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [42 x i8] c"../drivers/staging/greybus/power_supply.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 674, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_gb_power_supply_driver_exit, ptr @__initcall__kmod_gb_power_supply__229_1137_gb_power_supply_driver_init6, ptr @_gb_power_supply_property_get._entry, ptr @_gb_power_supply_property_get._entry_ptr, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gb_power_supplies_register._entry, ptr @gb_power_supplies_register._entry_ptr, ptr @gb_power_supplies_setup._entry, ptr @gb_power_supplies_setup._entry_ptr, ptr @gb_power_supply_driver_exit, ptr @gb_power_supply_prop_descriptors_get._entry, ptr @gb_power_supply_prop_descriptors_get._entry_ptr, ptr @gb_power_supply_state_change._entry, ptr @gb_power_supply_state_change._entry.19, ptr @gb_power_supply_state_change._entry_ptr, ptr @gb_power_supply_state_change._entry_ptr.21, ptr @gb_supplies_request_handler._entry, ptr @gb_supplies_request_handler._entry.11, ptr @gb_supplies_request_handler._entry.8, ptr @gb_supplies_request_handler._entry_ptr, ptr @gb_supplies_request_handler._entry_ptr.10, ptr @gb_supplies_request_handler._entry_ptr.13, ptr @gb_power_supply_driver, ptr @.str, ptr @.str.1, ptr @gb_power_supply_id_table, ptr @gb_power_supply_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @gb_power_supply_enable.__key, ptr @.str.29, ptr @gb_power_supply_enable.__key.30, ptr @.str.31, ptr @gb_power_supply_enable.__key.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_supplies_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_supplies_request_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_supplies_request_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_state_change._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supplies_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_prop_descriptors_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supplies_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_enable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_enable.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_power_supply_enable.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_gb_power_supply_property_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_power_supply_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_power_supply_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_power_supply_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_power_supply_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_power_supply_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %psp.i.i.i = alloca i32, align 4
  %req.i.i.i = alloca %struct.gb_power_supply_get_description_request, align 1
  %resp.i.i.i = alloca %struct.gb_power_supply_get_description_response, align 1
  %resp.i.i = alloca %struct.gb_power_supply_get_supplies_response, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %0 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cport_desc1 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %2 = ptrtoint ptr %cport_desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport_desc1, align 4
  %protocol_id = getelementptr inbounds %struct.greybus_descriptor_cport, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp2.not = icmp eq i8 %5, 8
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %3, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %call9 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %9, ptr noundef nonnull @gb_supplies_request_handler) #12
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call9 to i32
  br label %out

if.end13:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call9, i32 0, i32 17
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private.i, align 4
  %supplies_lock = getelementptr inbounds %struct.gb_power_supplies, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %supplies_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @gb_power_supply_probe.__key) #12
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call15 = tail call i32 @gb_connection_enable_tx(ptr noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.error_connection_destroy_crit_edge

if.end13.error_connection_destroy_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_connection_destroy

if.end18:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %supplies_lock, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resp.i.i) #12
  %16 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %resp.i.i, align 1, !annotation !95
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %call.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %18, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %resp.i.i, i32 noundef 1, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end18.gb_power_supplies_get_count.exit.thread.i_crit_edge, label %if.end.i.i

if.end18.gb_power_supplies_get_count.exit.thread.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supplies_get_count.exit.thread.i

if.end.i.i:                                       ; preds = %if.end18
  %19 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %resp.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.gb_power_supplies_get_count.exit.thread.i_crit_edge, label %if.end.i

if.end.i.i.gb_power_supplies_get_count.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supplies_get_count.exit.thread.i

gb_power_supplies_get_count.exit.thread.i:        ; preds = %if.end.i.i.gb_power_supplies_get_count.exit.thread.i_crit_edge, %if.end18.gb_power_supplies_get_count.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end.i.i.gb_power_supplies_get_count.exit.thread.i_crit_edge ], [ %call.i.i.i, %if.end18.gb_power_supplies_get_count.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #12
  br label %gb_power_supplies_setup.exit.thread

if.end.i:                                         ; preds = %if.end.i.i
  %supplies_count4.i.i = getelementptr inbounds %struct.gb_power_supplies, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %supplies_count4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %supplies_count4.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resp.i.i) #12
  %conv.i = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %conv.i, 364
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #16
  %supply.i = getelementptr inbounds %struct.gb_power_supplies, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i.i, ptr %supply.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.gb_power_supplies_setup.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.gb_power_supplies_setup.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supplies_setup.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %24 = ptrtoint ptr %supplies_count4.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %supplies_count4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp860.not.i = icmp eq i8 %25, 0
  br i1 %cmp860.not.i, label %for.cond.preheader.i.if.end23_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end23_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %model.i.i.i = getelementptr inbounds %struct.gb_power_supply_get_description_response, ptr %resp.i.i.i, i32 0, i32 1
  %serial_number.i.i.i = getelementptr inbounds %struct.gb_power_supply_get_description_response, ptr %resp.i.i.i, i32 0, i32 2
  %type.i.i.i = getelementptr inbounds %struct.gb_power_supply_get_description_response, ptr %resp.i.i.i, i32 0, i32 3
  %properties_count.i.i.i = getelementptr inbounds %struct.gb_power_supply_get_description_response, ptr %resp.i.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %supply.i, align 8
  %arrayidx.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i
  %supplies1.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 5
  %28 = ptrtoint ptr %supplies1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %supplies1.i.i, align 4
  %conv.i.i = trunc i32 %i.061.i to i8
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req.i.i.i) #12
  call void @llvm.lifetime.start.p0(i64 99, ptr nonnull %resp.i.i.i) #12
  %32 = call ptr @memset(ptr %resp.i.i.i, i32 255, i32 99)
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 4
  %35 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %req.i.i.i, align 1
  %call.i.i.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %31, i32 noundef 3, ptr noundef nonnull %req.i.i.i, i32 noundef 1, ptr noundef nonnull %resp.i.i.i, i32 noundef 99, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.gb_power_supply_config.exit.thread.i_crit_edge, label %if.end.i.i28.i

for.body.i.gb_power_supply_config.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread.i

if.end.i.i28.i:                                   ; preds = %for.body.i
  %call2.i.i.i = call ptr @kstrndup(ptr noundef nonnull %resp.i.i.i, i32 noundef 32, i32 noundef 3264) #12
  %manufacturer3.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 7
  %36 = ptrtoint ptr %manufacturer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call2.i.i.i, ptr %manufacturer3.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i28.i.gb_power_supply_config.exit.thread.i_crit_edge, label %if.end6.i.i.i

if.end.i.i28.i.gb_power_supply_config.exit.thread.i_crit_edge: ; preds = %if.end.i.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i28.i
  %call8.i.i29.i = call ptr @kstrndup(ptr noundef %model.i.i.i, i32 noundef 32, i32 noundef 3264) #12
  %model_name.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 8
  %37 = ptrtoint ptr %model_name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i29.i, ptr %model_name.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %call8.i.i29.i, null
  br i1 %tobool10.not.i.i.i, label %if.end6.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge, label %if.end12.i.i.i

if.end6.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread.i

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  %call14.i.i.i = call ptr @kstrndup(ptr noundef %serial_number.i.i.i, i32 noundef 32, i32 noundef 3264) #12
  %serial_number15.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 9
  %38 = ptrtoint ptr %serial_number15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call14.i.i.i, ptr %serial_number15.i.i.i, align 4
  %tobool17.not.i.i.i = icmp eq ptr %call14.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %if.end12.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge, label %if.end.i30.i

if.end12.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread.i

gb_power_supply_config.exit.thread.i:             ; preds = %if.end12.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge, %if.end6.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge, %if.end.i.i28.i.gb_power_supply_config.exit.thread.i_crit_edge, %for.body.i.gb_power_supply_config.exit.thread.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -12, %if.end12.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge ], [ -12, %if.end6.i.i.i.gb_power_supply_config.exit.thread.i_crit_edge ], [ -12, %if.end.i.i28.i.gb_power_supply_config.exit.thread.i_crit_edge ], [ %call.i.i.i.i, %for.body.i.gb_power_supply_config.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 99, ptr nonnull %resp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i.i.i) #12
  br label %do.end.i

if.end.i30.i:                                     ; preds = %if.end12.i.i.i
  %39 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %type.i.i.i, align 1
  %41 = lshr i16 %40, 8
  %conv.i.i.i = trunc i16 %41 to i8
  %type20.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 10
  %42 = ptrtoint ptr %type20.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i.i.i, ptr %type20.i.i.i, align 4
  %43 = ptrtoint ptr %properties_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %properties_count.i.i.i, align 1
  %properties_count21.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 11
  %45 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %properties_count21.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 99, ptr nonnull %resp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i.i.i) #12
  %46 = ptrtoint ptr %supplies1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %supplies1.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %50 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %properties_count21.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psp.i.i.i) #12
  %52 = ptrtoint ptr %psp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %psp.i.i.i, align 4, !annotation !95
  %conv.i14.i.i = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i15.i.i = icmp eq i8 %51, 0
  br i1 %cmp.i15.i.i, label %gb_power_supply_config.exit.thread48.i, label %if.end.i18.i.i

gb_power_supply_config.exit.thread48.i:           ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psp.i.i.i) #12
  br label %for.inc.i

if.end.i18.i.i:                                   ; preds = %if.end.i30.i
  %53 = shl nuw nsw i32 %conv.i14.i.i, 1
  %54 = or i32 %53, 1
  %call.i.i16.i.i = call ptr @gb_operation_create_flags(ptr noundef %49, i8 noundef zeroext 4, i32 noundef 1, i32 noundef %54, i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i17.i.i = icmp eq ptr %call.i.i16.i.i, null
  br i1 %tobool.not.i17.i.i, label %gb_power_supply_config.exit.thread45.i, label %if.end6.i19.i.i

gb_power_supply_config.exit.thread45.i:           ; preds = %if.end.i18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psp.i.i.i) #12
  br label %do.end.i

if.end6.i19.i.i:                                  ; preds = %if.end.i18.i.i
  %request.i.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i16.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %request.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %request.i.i.i, align 4
  %payload.i.i.i = getelementptr inbounds %struct.gb_message, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %payload.i.i.i, align 4
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %58, align 1
  %call.i133.i.i.i = call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i.i16.i.i, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i.i.i)
  %cmp8.i.i.i = icmp slt i32 %call.i133.i.i.i, 0
  br i1 %cmp8.i.i.i, label %if.end6.i19.i.i.gb_power_supply_config.exit.thread52.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end6.i19.i.i.gb_power_supply_config.exit.thread52.i_crit_edge: ; preds = %if.end6.i19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread52.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end6.i19.i.i
  %response.i.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i16.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %response.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %response.i.i.i, align 4
  %payload12.i.i.i = getelementptr inbounds %struct.gb_message, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %payload12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %payload12.i.i.i, align 4
  %bundle.i.i.i = getelementptr inbounds %struct.gb_connection, ptr %49, i32 0, i32 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0180.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.gb_power_supply_get_property_descriptors_response, ptr %65, i32 0, i32 1, i32 %i.0180.i.i.i
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv16.i.i.i = zext i8 %67 to i32
  %call17.i.i.i = call fastcc i32 @get_psp_from_gb_prop(i32 noundef %conv16.i.i.i, ptr noundef nonnull %psp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %cmp18.i.i.i = icmp slt i32 %call17.i.i.i, 0
  br i1 %cmp18.i.i.i, label %do.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %bundle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bundle.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.24, i32 noundef %conv16.i.i.i) #17
  %70 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %properties_count21.i.i.i, align 1
  %dec.i.i.i = add i8 %71, -1
  store i8 %dec.i.i.i, ptr %properties_count21.i.i.i, align 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.0180.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i14.i.i
  br i1 %exitcond.not.i.i.i, label %if.end7.i.i.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

if.end7.i.i.i.i.i:                                ; preds = %for.inc.i.i.i
  %72 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv28.i.i.i = zext i8 %73 to i32
  %74 = mul nuw nsw i32 %conv28.i.i.i, 20
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #16
  %props30.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 17
  %75 = ptrtoint ptr %props30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call8.i.i.i.i.i, ptr %props30.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool32.not.i.i.i, label %if.end7.i.i.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge, label %if.end7.i.i164.i.i.i

if.end7.i.i.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge: ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread52.i

if.end7.i.i164.i.i.i:                             ; preds = %if.end7.i.i.i.i.i
  %76 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv36.i.i.i = zext i8 %77 to i32
  %78 = shl nuw nsw i32 %conv36.i.i.i, 2
  %call8.i.i163.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #16
  %props_raw.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 18
  %79 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call8.i.i163.i.i.i, ptr %props_raw.i.i.i, align 4
  %tobool39.not.i.i.i = icmp eq ptr %call8.i.i163.i.i.i, null
  br i1 %tobool39.not.i.i.i, label %if.end7.i.i164.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge, label %for.body46.preheader.i.i.i

if.end7.i.i164.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge: ; preds = %if.end7.i.i164.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.thread52.i

for.body46.preheader.i.i.i:                       ; preds = %if.end7.i.i164.i.i.i
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %conv.i14.i.i, i32 1) #12
  br label %for.body46.i.i.i

for.body46.i.i.i:                                 ; preds = %for.inc77.i.i.i.for.body46.i.i.i_crit_edge, %for.body46.preheader.i.i.i
  %r.0184.i.i.i = phi i32 [ %r.1.i.i.i, %for.inc77.i.i.i.for.body46.i.i.i_crit_edge ], [ 0, %for.body46.preheader.i.i.i ]
  %i.1182.i.i.i = phi i32 [ %inc78.i.i.i, %for.inc77.i.i.i.for.body46.i.i.i_crit_edge ], [ 0, %for.body46.preheader.i.i.i ]
  %arrayidx48.i.i.i = getelementptr %struct.gb_power_supply_get_property_descriptors_response, ptr %65, i32 0, i32 1, i32 %i.1182.i.i.i
  %80 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx48.i.i.i, align 1
  %conv50.i.i.i = zext i8 %81 to i32
  %call51.i.i.i = call fastcc i32 @get_psp_from_gb_prop(i32 noundef %conv50.i.i.i, ptr noundef nonnull %psp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i.i)
  %cmp52.i.i.i = icmp slt i32 %call51.i.i.i, 0
  br i1 %cmp52.i.i.i, label %if.then54.i.i.i, label %if.end56.i.i.i

if.then54.i.i.i:                                  ; preds = %for.body46.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc55.i.i.i = add i32 %r.0184.i.i.i, 1
  br label %for.inc77.i.i.i

if.end56.i.i.i:                                   ; preds = %for.body46.i.i.i
  %82 = ptrtoint ptr %psp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %psp.i.i.i, align 4
  %84 = ptrtoint ptr %props30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %props30.i.i.i, align 4
  %sub.i.i.i = sub i32 %i.1182.i.i.i, %r.0184.i.i.i
  %arrayidx58.i.i.i = getelementptr %struct.gb_power_supply_prop, ptr %85, i32 %sub.i.i.i
  %86 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %arrayidx58.i.i.i, align 4
  %87 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx48.i.i.i, align 1
  %89 = load ptr, ptr %props30.i.i.i, align 4
  %gb_prop.i.i.i = getelementptr %struct.gb_power_supply_prop, ptr %89, i32 %sub.i.i.i, i32 1
  %90 = ptrtoint ptr %gb_prop.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %88, ptr %gb_prop.i.i.i, align 4
  %91 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %props_raw.i.i.i, align 4
  %arrayidx67.i.i.i = getelementptr i32, ptr %92, i32 %sub.i.i.i
  %93 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %83, ptr %arrayidx67.i.i.i, align 4
  %is_writeable.i.i.i = getelementptr %struct.gb_power_supply_get_property_descriptors_response, ptr %65, i32 0, i32 1, i32 %i.1182.i.i.i, i32 1
  %94 = ptrtoint ptr %is_writeable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_writeable.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool70.not.i.i.i = icmp eq i8 %95, 0
  br i1 %tobool70.not.i.i.i, label %if.end56.i.i.i.for.inc77.i.i.i_crit_edge, label %if.then71.i.i.i

if.end56.i.i.i.for.inc77.i.i.i_crit_edge:         ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc77.i.i.i

if.then71.i.i.i:                                  ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %props30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %props30.i.i.i, align 4
  %is_writeable75.i.i.i = getelementptr %struct.gb_power_supply_prop, ptr %97, i32 %sub.i.i.i, i32 4
  %98 = ptrtoint ptr %is_writeable75.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %is_writeable75.i.i.i, align 4
  br label %for.inc77.i.i.i

for.inc77.i.i.i:                                  ; preds = %if.then71.i.i.i, %if.end56.i.i.i.for.inc77.i.i.i_crit_edge, %if.then54.i.i.i
  %r.1.i.i.i = phi i32 [ %inc55.i.i.i, %if.then54.i.i.i ], [ %r.0184.i.i.i, %if.then71.i.i.i ], [ %r.0184.i.i.i, %if.end56.i.i.i.for.inc77.i.i.i_crit_edge ]
  %inc78.i.i.i = add nuw nsw i32 %i.1182.i.i.i, 1
  %exitcond185.not.i.i.i = icmp eq i32 %inc78.i.i.i, %umax.i.i.i
  br i1 %exitcond185.not.i.i.i, label %for.end79.i.i.i, label %for.inc77.i.i.i.for.body46.i.i.i_crit_edge

for.inc77.i.i.i.for.body46.i.i.i_crit_edge:       ; preds = %for.inc77.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body46.i.i.i

for.end79.i.i.i:                                  ; preds = %for.inc77.i.i.i
  %99 = ptrtoint ptr %manufacturer3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %manufacturer3.i.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %char0.i.i.i.i = load i8, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i8 %char0.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %for.end79.i.i.i.if.end.i.i.i34.i_crit_edge, label %if.then.i.i.i33.i

for.end79.i.i.i.if.end.i.i.i34.i_crit_edge:       ; preds = %for.end79.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i34.i

if.then.i.i.i33.i:                                ; preds = %for.end79.i.i.i
  %properties_count_str.i.i.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 12
  %102 = ptrtoint ptr %properties_count_str.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %properties_count_str.i.i.i.i.i, align 2
  %inc.i.i.i.i.i = add i8 %103, 1
  store i8 %inc.i.i.i.i.i, ptr %properties_count_str.i.i.i.i.i, align 2
  %104 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %props_raw.i.i.i, align 4
  %106 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv.i.i.i.i.i.i = zext i8 %107 to i32
  %conv1.i.i.i.i.i.i = zext i8 %inc.i.i.i.i.i to i32
  %add.i.i.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i.i.i, %conv1.i.i.i.i.i.i
  %mul.i.i.i.i.i = shl nuw nsw i32 %add.i.i.i.i.i.i, 2
  %call1.i.i.i.i31.i = call noalias ptr @krealloc(ptr noundef %105, i32 noundef %mul.i.i.i.i.i, i32 noundef 3264) #18
  %tobool.not.i.i.i.i32.i = icmp eq ptr %call1.i.i.i.i31.i, null
  br i1 %tobool.not.i.i.i.i32.i, label %if.then.i.i.i33.i.if.end.i.i.i34.i_crit_edge, label %if.end.i.i167.i.i.i

if.then.i.i.i33.i.if.end.i.i.i34.i_crit_edge:     ; preds = %if.then.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i34.i

if.end.i.i167.i.i.i:                              ; preds = %if.then.i.i.i33.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call1.i.i.i.i31.i, ptr %props_raw.i.i.i, align 4
  %109 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv.i12.i.i.i.i.i = zext i8 %110 to i32
  %111 = ptrtoint ptr %properties_count_str.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %properties_count_str.i.i.i.i.i, align 2
  %conv1.i14.i.i.i.i.i = zext i8 %112 to i32
  %add.i15.i.i.i.i.i = add nsw i32 %conv.i12.i.i.i.i.i, -1
  %sub.i.i.i.i.i = add nsw i32 %add.i15.i.i.i.i.i, %conv1.i14.i.i.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %call1.i.i.i.i31.i, i32 %sub.i.i.i.i.i
  %113 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 74, ptr %arrayidx.i.i.i.i.i, align 4
  br label %if.end.i.i.i34.i

if.end.i.i.i34.i:                                 ; preds = %if.end.i.i167.i.i.i, %if.then.i.i.i33.i.if.end.i.i.i34.i_crit_edge, %for.end79.i.i.i.if.end.i.i.i34.i_crit_edge
  %114 = ptrtoint ptr %model_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %model_name.i.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %char014.i.i.i.i = load i8, ptr %115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char014.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i8 %char014.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i34.i.if.end4.i.i.i35.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i34.i.if.end4.i.i.i35.i_crit_edge:     ; preds = %if.end.i.i.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i35.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i34.i
  %properties_count_str.i16.i.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 12
  %117 = ptrtoint ptr %properties_count_str.i16.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %properties_count_str.i16.i.i.i.i, align 2
  %inc.i17.i.i.i.i = add i8 %118, 1
  store i8 %inc.i17.i.i.i.i, ptr %properties_count_str.i16.i.i.i.i, align 2
  %119 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %props_raw.i.i.i, align 4
  %121 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv.i.i20.i.i.i.i = zext i8 %122 to i32
  %conv1.i.i21.i.i.i.i = zext i8 %inc.i17.i.i.i.i to i32
  %add.i.i22.i.i.i.i = add nuw nsw i32 %conv.i.i20.i.i.i.i, %conv1.i.i21.i.i.i.i
  %mul.i23.i.i.i.i = shl nuw nsw i32 %add.i.i22.i.i.i.i, 2
  %call1.i24.i.i.i.i = call noalias ptr @krealloc(ptr noundef %120, i32 noundef %mul.i23.i.i.i.i, i32 noundef 3264) #18
  %tobool.not.i25.i.i.i.i = icmp eq ptr %call1.i24.i.i.i.i, null
  br i1 %tobool.not.i25.i.i.i.i, label %if.then3.i.i.i.i.if.end4.i.i.i35.i_crit_edge, label %if.end.i31.i.i.i.i

if.then3.i.i.i.i.if.end4.i.i.i35.i_crit_edge:     ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i35.i

if.end.i31.i.i.i.i:                               ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call1.i24.i.i.i.i, ptr %props_raw.i.i.i, align 4
  %124 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv.i12.i26.i.i.i.i = zext i8 %125 to i32
  %126 = ptrtoint ptr %properties_count_str.i16.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %properties_count_str.i16.i.i.i.i, align 2
  %conv1.i14.i27.i.i.i.i = zext i8 %127 to i32
  %add.i15.i28.i.i.i.i = add nsw i32 %conv.i12.i26.i.i.i.i, -1
  %sub.i29.i.i.i.i = add nsw i32 %add.i15.i28.i.i.i.i, %conv1.i14.i27.i.i.i.i
  %arrayidx.i30.i.i.i.i = getelementptr i32, ptr %call1.i24.i.i.i.i, i32 %sub.i29.i.i.i.i
  %128 = ptrtoint ptr %arrayidx.i30.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 73, ptr %arrayidx.i30.i.i.i.i, align 4
  br label %if.end4.i.i.i35.i

if.end4.i.i.i35.i:                                ; preds = %if.end.i31.i.i.i.i, %if.then3.i.i.i.i.if.end4.i.i.i35.i_crit_edge, %if.end.i.i.i34.i.if.end4.i.i.i35.i_crit_edge
  %129 = ptrtoint ptr %serial_number15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %serial_number15.i.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %131)
  %char015.i.i.i.i = load i8, ptr %130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char015.i.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i8 %char015.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %if.end4.i.i.i35.i.gb_power_supply_config.exit.i_crit_edge, label %if.then7.i.i.i.i

if.end4.i.i.i35.i.gb_power_supply_config.exit.i_crit_edge: ; preds = %if.end4.i.i.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.i

if.then7.i.i.i.i:                                 ; preds = %if.end4.i.i.i35.i
  %properties_count_str.i33.i.i.i.i = getelementptr %struct.gb_power_supply, ptr %27, i32 %i.061.i, i32 12
  %132 = ptrtoint ptr %properties_count_str.i33.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %properties_count_str.i33.i.i.i.i, align 2
  %inc.i34.i.i.i.i = add i8 %133, 1
  store i8 %inc.i34.i.i.i.i, ptr %properties_count_str.i33.i.i.i.i, align 2
  %134 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %props_raw.i.i.i, align 4
  %136 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv.i.i37.i.i.i.i = zext i8 %137 to i32
  %conv1.i.i38.i.i.i.i = zext i8 %inc.i34.i.i.i.i to i32
  %add.i.i39.i.i.i.i = add nuw nsw i32 %conv.i.i37.i.i.i.i, %conv1.i.i38.i.i.i.i
  %mul.i40.i.i.i.i = shl nuw nsw i32 %add.i.i39.i.i.i.i, 2
  %call1.i41.i.i.i.i = call noalias ptr @krealloc(ptr noundef %135, i32 noundef %mul.i40.i.i.i.i, i32 noundef 3264) #18
  %tobool.not.i42.i.i.i.i = icmp eq ptr %call1.i41.i.i.i.i, null
  br i1 %tobool.not.i42.i.i.i.i, label %if.then7.i.i.i.i.gb_power_supply_config.exit.i_crit_edge, label %if.end.i48.i.i.i.i

if.then7.i.i.i.i.gb_power_supply_config.exit.i_crit_edge: ; preds = %if.then7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_config.exit.i

if.end.i48.i.i.i.i:                               ; preds = %if.then7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %props_raw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call1.i41.i.i.i.i, ptr %props_raw.i.i.i, align 4
  %139 = ptrtoint ptr %properties_count21.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %properties_count21.i.i.i, align 1
  %conv.i12.i43.i.i.i.i = zext i8 %140 to i32
  %141 = ptrtoint ptr %properties_count_str.i33.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %properties_count_str.i33.i.i.i.i, align 2
  %conv1.i14.i44.i.i.i.i = zext i8 %142 to i32
  %add.i15.i45.i.i.i.i = add nsw i32 %conv.i12.i43.i.i.i.i, -1
  %sub.i46.i.i.i.i = add nsw i32 %add.i15.i45.i.i.i.i, %conv1.i14.i44.i.i.i.i
  %arrayidx.i47.i.i.i.i = getelementptr i32, ptr %call1.i41.i.i.i.i, i32 %sub.i46.i.i.i.i
  %143 = ptrtoint ptr %arrayidx.i47.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 75, ptr %arrayidx.i47.i.i.i.i, align 4
  br label %gb_power_supply_config.exit.i

gb_power_supply_config.exit.thread52.i:           ; preds = %if.end7.i.i164.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge, %if.end7.i.i.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge, %if.end6.i19.i.i.gb_power_supply_config.exit.thread52.i_crit_edge
  %ret.0.i.i.ph.i = phi i32 [ -12, %if.end7.i.i164.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge ], [ -12, %if.end7.i.i.i.i.i.gb_power_supply_config.exit.thread52.i_crit_edge ], [ %call.i133.i.i.i, %if.end6.i19.i.i.gb_power_supply_config.exit.thread52.i_crit_edge ]
  call void @gb_operation_put(ptr noundef nonnull %call.i.i16.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psp.i.i.i) #12
  br label %do.end.i

gb_power_supply_config.exit.i:                    ; preds = %if.end.i48.i.i.i.i, %if.then7.i.i.i.i.gb_power_supply_config.exit.i_crit_edge, %if.end4.i.i.i35.i.gb_power_supply_config.exit.i_crit_edge
  call void @gb_operation_put(ptr noundef nonnull %call.i.i16.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psp.i.i.i) #12
  br label %for.inc.i

do.end.i:                                         ; preds = %gb_power_supply_config.exit.thread52.i, %gb_power_supply_config.exit.thread45.i, %gb_power_supply_config.exit.thread.i
  %retval.0.i3644.i = phi i32 [ %retval.0.i.ph.i.i, %gb_power_supply_config.exit.thread.i ], [ -12, %gb_power_supply_config.exit.thread45.i ], [ %ret.0.i.i.ph.i, %gb_power_supply_config.exit.thread52.i ]
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %15, i32 0, i32 2
  %144 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bundle.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.22) #17
  br label %gb_power_supplies_setup.exit.thread

for.inc.i:                                        ; preds = %gb_power_supply_config.exit.i, %gb_power_supply_config.exit.thread48.i
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %146 = ptrtoint ptr %supplies_count4.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %supplies_count4.i.i, align 4
  %conv7.i = zext i8 %147 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end23_crit_edge

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gb_power_supplies_setup.exit.thread:              ; preds = %do.end.i, %if.end.i.gb_power_supplies_setup.exit.thread_crit_edge, %gb_power_supplies_get_count.exit.thread.i
  %ret.1.i.ph = phi i32 [ %retval.0.i.ph.i, %gb_power_supplies_get_count.exit.thread.i ], [ -12, %if.end.i.gb_power_supplies_setup.exit.thread_crit_edge ], [ %retval.0.i3644.i, %do.end.i ]
  call void @mutex_unlock(ptr noundef %supplies_lock) #12
  br label %error_connection_disable

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %for.cond.preheader.i.if.end23_crit_edge
  call void @mutex_unlock(ptr noundef %supplies_lock) #12
  %call24 = call i32 @gb_connection_enable(ptr noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.error_connection_disable_crit_edge

if.end23.error_connection_disable_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_connection_disable

if.end27:                                         ; preds = %if.end23
  %call28 = call fastcc i32 @gb_power_supplies_register(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.error_connection_disable_crit_edge, label %if.end32

if.end27.error_connection_disable_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_connection_disable

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %148 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i4.i = call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #12
  br label %cleanup

error_connection_disable:                         ; preds = %if.end27.error_connection_disable_crit_edge, %if.end23.error_connection_disable_crit_edge, %gb_power_supplies_setup.exit.thread
  %ret.0 = phi i32 [ %call24, %if.end23.error_connection_disable_crit_edge ], [ %call28, %if.end27.error_connection_disable_crit_edge ], [ %ret.1.i.ph, %gb_power_supplies_setup.exit.thread ]
  call void @gb_connection_disable(ptr noundef %call9) #12
  br label %error_connection_destroy

error_connection_destroy:                         ; preds = %error_connection_disable, %if.end13.error_connection_destroy_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end13.error_connection_destroy_crit_edge ], [ %ret.0, %error_connection_disable ]
  call void @gb_connection_destroy(ptr noundef %call9) #12
  br label %out

out:                                              ; preds = %error_connection_destroy, %if.then11
  %ret.2 = phi i32 [ %10, %if.then11 ], [ %ret.1, %error_connection_destroy ]
  call fastcc void @_gb_power_supplies_release(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end32, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ 0, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_power_supply_disconnect(ptr nocapture noundef readonly %bundle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gb_connection_disable(ptr noundef %3) #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @gb_connection_destroy(ptr noundef %5) #12
  tail call fastcc void @_gb_power_supplies_release(ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_supplies_request_handler(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %type = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp.not = icmp eq i8 %5, 7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %5 to i32
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %conv) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %request5 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %request5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request5, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp6 = icmp ult i32 %11, 2
  br i1 %cmp6, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bundle12 = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bundle12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bundle12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef 2) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %payload16 = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %payload16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %payload16, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %supplies_lock = getelementptr inbounds %struct.gb_power_supplies, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %supplies_lock, i32 noundef 0) #12
  %conv18 = zext i8 %17 to i32
  %supplies_count = getelementptr inbounds %struct.gb_power_supplies, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %supplies_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %supplies_count, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp20.not = icmp ult i8 %17, %19
  br i1 %cmp20.not, label %lor.lhs.false, label %if.end15.do.end25_crit_edge

if.end15.do.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end15
  %supply = getelementptr inbounds %struct.gb_power_supplies, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %supply, align 4
  %arrayidx = getelementptr %struct.gb_power_supply, ptr %21, i32 %conv18
  %registered = getelementptr %struct.gb_power_supply, ptr %21, i32 %conv18, i32 1
  %22 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %registered, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end25_crit_edge, label %if.end29

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end15.do.end25_crit_edge
  %bundle26 = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bundle26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bundle26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %conv18) #17
  br label %out_unlock

if.end29:                                         ; preds = %lor.lhs.false
  %update_interval = getelementptr %struct.gb_power_supply, ptr %21, i32 %conv18, i32 15
  %26 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %update_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool34.not = icmp eq i32 %27, 0
  br i1 %tobool34.not, label %if.end29.out_unlock_crit_edge, label %if.end36

if.end29.out_unlock_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end36:                                         ; preds = %if.end29
  %event30 = getelementptr inbounds %struct.gb_power_supply_event_request, ptr %15, i32 0, i32 1
  %28 = ptrtoint ptr %event30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %event30, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool38.not = icmp eq i8 %30, 0
  br i1 %tobool38.not, label %if.end36.out_unlock_crit_edge, label %if.then39

if.end36.out_unlock_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then39:                                        ; preds = %if.end36
  %cache_invalid = getelementptr %struct.gb_power_supply, ptr %21, i32 %conv18, i32 14
  %31 = ptrtoint ptr %cache_invalid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %cache_invalid, align 4
  tail call fastcc void @gb_power_supply_status_get(ptr noundef %arrayidx) #12
  %changed.i = getelementptr %struct.gb_power_supply, ptr %21, i32 %conv18, i32 16
  %32 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %changed.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.then39.out_unlock_crit_edge, label %if.end.i

if.then39.out_unlock_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 100, ptr %update_interval, align 4
  %psy.i.i = getelementptr %struct.gb_power_supply, ptr %21, i32 %conv18, i32 2
  %35 = ptrtoint ptr %psy.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %psy.i.i, align 4
  tail call void @power_supply_changed(ptr noundef %36) #12
  %37 = ptrtoint ptr %changed.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %changed.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end.i, %if.then39.out_unlock_crit_edge, %if.end36.out_unlock_crit_edge, %if.end29.out_unlock_crit_edge, %do.end25
  %ret.0 = phi i32 [ -22, %do.end25 ], [ 0, %if.end36.out_unlock_crit_edge ], [ -108, %if.end29.out_unlock_crit_edge ], [ 0, %if.then39.out_unlock_crit_edge ], [ 0, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %supplies_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %ret.0, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_power_supplies_register(ptr noundef %supplies) unnamed_addr #2 align 64 {
entry:
  %cfg.i.i = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supplies, align 4
  %supplies_lock = getelementptr inbounds %struct.gb_power_supplies, ptr %supplies, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %supplies_lock, i32 noundef 0) #12
  %supplies_count = getelementptr inbounds %struct.gb_power_supplies, ptr %supplies, i32 0, i32 1
  %2 = ptrtoint ptr %supplies_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supplies_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp24.not = icmp eq i8 %3, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %supply = getelementptr inbounds %struct.gb_power_supplies, ptr %supplies, i32 0, i32 2
  %drv_data.i.i = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %gb_power_supply_enable.exit.thread16.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %gb_power_supply_enable.exit.thread16.for.body_crit_edge ]
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %arrayidx = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025
  %model_name.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 8
  %6 = ptrtoint ptr %model_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %model_name.i, align 4
  %name.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %char0.i.i = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i = icmp eq i8 %char0.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, ptr @.str, ptr %7
  %call1.i.i = call i32 @strscpy(ptr noundef %name.i, ptr noundef %spec.store.select.i.i, i32 noundef 64) #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %for.body
  %i.01.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %call2.i.i = call ptr @power_supply_get_by_name(ptr noundef %name.i) #12
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %__gb_power_supply_set_name.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @power_supply_put(ptr noundef nonnull %call2.i.i) #12
  %inc.i.i = add i32 %i.01.i.i, 1
  %call4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 64, ptr noundef nonnull @.str.34, ptr noundef %spec.store.select.i.i, i32 noundef %inc.i.i) #12
  %cmp.i.i = icmp ult i32 %call4.i.i, 64
  br i1 %cmp.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge, label %while.body.i.i.do.end_crit_edge

while.body.i.i.do.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

__gb_power_supply_set_name.exit.i:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01.i.i)
  %cmp.i = icmp slt i32 %i.01.i.i, 0
  br i1 %cmp.i, label %__gb_power_supply_set_name.exit.i.do.end_crit_edge, label %do.body.i

__gb_power_supply_set_name.exit.i.do.end_crit_edge: ; preds = %__gb_power_supply_set_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.body.i:                                        ; preds = %__gb_power_supply_set_name.exit.i
  %supply_lock.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 20
  call void @__mutex_init(ptr noundef %supply_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @gb_power_supply_enable.__key) #12
  %supplies.i.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 5
  %9 = ptrtoint ptr %supplies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %supplies.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i.i) #12
  %13 = call ptr @memset(ptr %cfg.i.i, i32 0, i32 24)
  %14 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %drv_data.i.i, align 4
  %desc.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3
  %15 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name.i, ptr %desc.i.i, align 4
  %type.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 10
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type.i.i, align 4
  %conv.i.i = zext i8 %17 to i32
  %type3.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3, i32 1
  %18 = ptrtoint ptr %type3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i.i, ptr %type3.i.i, align 4
  %props_raw.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 18
  %19 = ptrtoint ptr %props_raw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %props_raw.i.i, align 4
  %properties.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3, i32 4
  %21 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %properties.i.i, align 4
  %properties_count.i.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 11
  %22 = ptrtoint ptr %properties_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %properties_count.i.i.i, align 1
  %conv.i.i.i = zext i8 %23 to i32
  %properties_count_str.i.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 12
  %24 = ptrtoint ptr %properties_count_str.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %properties_count_str.i.i.i, align 2
  %conv1.i.i.i = zext i8 %25 to i32
  %add.i.i.i = add nuw nsw i32 %conv1.i.i.i, %conv.i.i.i
  %num_properties.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3, i32 5
  %26 = ptrtoint ptr %num_properties.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i.i.i, ptr %num_properties.i.i, align 4
  %get_property.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3, i32 6
  %27 = ptrtoint ptr %get_property.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @get_property, ptr %get_property.i.i, align 4
  %set_property.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3, i32 7
  %28 = ptrtoint ptr %set_property.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @set_property, ptr %set_property.i.i, align 4
  %property_is_writeable.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 3, i32 8
  %29 = ptrtoint ptr %property_is_writeable.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @property_is_writeable, ptr %property_is_writeable.i.i, align 4
  %bundle.i.i = getelementptr inbounds %struct.gb_connection, ptr %12, i32 0, i32 2
  %30 = ptrtoint ptr %bundle.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bundle.i.i, align 4
  %call11.i.i = call ptr @power_supply_register(ptr noundef %31, ptr noundef %desc.i.i, ptr noundef nonnull %cfg.i.i) #12
  %psy.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 2
  %32 = ptrtoint ptr %psy.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call11.i.i, ptr %psy.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call11.i.i, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i.i) #12
  %cmp247.i = icmp slt ptr %call11.i.i, null
  %cmp2.i = and i1 %cmp.i.i.i.i, %cmp247.i
  br i1 %cmp2.i, label %gb_power_supply_enable.exit, label %gb_power_supply_enable.exit.thread16

gb_power_supply_enable.exit.thread16:             ; preds = %do.body.i
  %update_interval.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 15
  %33 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 100, ptr %update_interval.i, align 4
  %work.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 6
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %34 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 6, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @gb_power_supply_enable.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 6, i32 0, i32 1
  %35 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 6, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry14.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 6, i32 0, i32 2
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gb_power_supply_work, ptr %func.i, align 4
  %timer.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 6, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @gb_power_supply_enable.__key.32) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work.i, i32 noundef 0) #12
  %registered.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.025, i32 1
  %39 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %registered.i, align 1
  %inc = add nuw nsw i32 %i.025, 1
  %40 = ptrtoint ptr %supplies_count to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %supplies_count, align 4
  %conv = zext i8 %41 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %gb_power_supply_enable.exit.thread16.for.body_crit_edge, label %gb_power_supply_enable.exit.thread16.for.end_crit_edge

gb_power_supply_enable.exit.thread16.for.end_crit_edge: ; preds = %gb_power_supply_enable.exit.thread16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

gb_power_supply_enable.exit.thread16.for.body_crit_edge: ; preds = %gb_power_supply_enable.exit.thread16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

gb_power_supply_enable.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %call11.i.i to i32
  br label %do.end

do.end:                                           ; preds = %gb_power_supply_enable.exit, %__gb_power_supply_set_name.exit.i.do.end_crit_edge, %while.body.i.i.do.end_crit_edge
  %retval.0.i15 = phi i32 [ %42, %gb_power_supply_enable.exit ], [ -12, %while.body.i.i.do.end_crit_edge ], [ %i.01.i.i, %__gb_power_supply_set_name.exit.i.do.end_crit_edge ]
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bundle, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.27) #17
  br label %for.end

for.end:                                          ; preds = %do.end, %gb_power_supply_enable.exit.thread16.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i15, %do.end ], [ 0, %entry.for.end_crit_edge ], [ 0, %gb_power_supply_enable.exit.thread16.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %supplies_lock) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_gb_power_supplies_release(ptr noundef %supplies) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supply = getelementptr inbounds %struct.gb_power_supplies, ptr %supplies, i32 0, i32 2
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies_lock = getelementptr inbounds %struct.gb_power_supplies, ptr %supplies, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %supplies_lock, i32 noundef 0) #12
  %supplies_count = getelementptr inbounds %struct.gb_power_supplies, ptr %supplies, i32 0, i32 1
  %2 = ptrtoint ptr %supplies_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supplies_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp14.not = icmp eq i8 %3, 0
  br i1 %cmp14.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %_gb_power_supply_release.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %_gb_power_supply_release.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %update_interval.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 15
  %6 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %update_interval.i, align 4
  %work.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 6
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #12
  %registered.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 1
  %7 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %registered.i, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %for.body._gb_power_supply_release.exit_crit_edge, label %if.then.i

for.body._gb_power_supply_release.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %_gb_power_supply_release.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %psy.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 2
  %9 = ptrtoint ptr %psy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psy.i, align 4
  tail call void @power_supply_unregister(ptr noundef %10) #12
  br label %_gb_power_supply_release.exit

_gb_power_supply_release.exit:                    ; preds = %if.then.i, %for.body._gb_power_supply_release.exit_crit_edge
  %serial_number.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 9
  %11 = ptrtoint ptr %serial_number.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_number.i.i, align 4
  tail call void @kfree(ptr noundef %12) #12
  %model_name.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 8
  %13 = ptrtoint ptr %model_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %model_name.i.i, align 4
  tail call void @kfree(ptr noundef %14) #12
  %manufacturer.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 7
  %15 = ptrtoint ptr %manufacturer.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %manufacturer.i.i, align 4
  tail call void @kfree(ptr noundef %16) #12
  %props_raw.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 18
  %17 = ptrtoint ptr %props_raw.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %props_raw.i.i, align 4
  tail call void @kfree(ptr noundef %18) #12
  %props.i.i = getelementptr %struct.gb_power_supply, ptr %5, i32 %i.015, i32 17
  %19 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %props.i.i, align 4
  tail call void @kfree(ptr noundef %20) #12
  %inc = add nuw nsw i32 %i.015, 1
  %21 = ptrtoint ptr %supplies_count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %supplies_count, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %_gb_power_supply_release.exit.for.body_crit_edge, label %_gb_power_supply_release.exit.for.end_crit_edge

_gb_power_supply_release.exit.for.end_crit_edge:  ; preds = %_gb_power_supply_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

_gb_power_supply_release.exit.for.body_crit_edge: ; preds = %_gb_power_supply_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %_gb_power_supply_release.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %23 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %supply, align 4
  tail call void @kfree(ptr noundef %24) #12
  tail call void @mutex_unlock(ptr noundef %supplies_lock) #12
  tail call void @kfree(ptr noundef %supplies) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_power_supply_status_get(ptr noundef %gbpsy) unnamed_addr #2 align 64 {
entry:
  %req.i = alloca %struct.gb_power_supply_get_property_request, align 1
  %resp.i = alloca %struct.gb_power_supply_get_property_response, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies.i = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 5
  %0 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supplies.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cache_invalid.i = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 14
  %4 = ptrtoint ptr %cache_invalid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_invalid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %cache_invalid.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cache_invalid.i, align 4
  br label %if.end

if.end.i:                                         ; preds = %entry
  %last_update.i = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 13
  %7 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_update.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %8
  %sub.i = add i32 %add.neg.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.i
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bundle, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i1 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i1, label %do.end.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %properties_count = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 11
  %12 = ptrtoint ptr %properties_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %properties_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp21.not = icmp eq i8 %13, 0
  br i1 %cmp21.not, label %for.cond.preheader.if.then14_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then14_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv20 = zext i8 %13 to i32
  %props = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 17
  %14 = getelementptr inbounds %struct.gb_power_supply_get_property_request, ptr %req.i, i32 0, i32 1
  %changed27.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 16
  br label %for.body

do.end.i:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef %call.i.i) #17
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv23 = phi i32 [ %conv20, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %16 = phi i8 [ 1, %for.body.lr.ph ], [ %46, %for.inc.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %props, align 4
  %arrayidx = getelementptr %struct.gb_power_supply_prop, ptr %18, i32 %i.022
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %supplies.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #12
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %resp.i, align 4, !annotation !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp11.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp11.not.i.i, label %for.body.for.end_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv23
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.for.end_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gb_power_supply_prop, ptr %18, i32 %i.012.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %20)
  %cmp2.i.i = icmp eq i32 %27, %20
  br i1 %cmp2.i.i, label %get_psy_prop.exit.i, label %for.cond.i.i

get_psy_prop.exit.i:                              ; preds = %for.body.i.i
  %tobool.not.i3 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i3, label %get_psy_prop.exit.i.for.end_crit_edge, label %if.end.i6

get_psy_prop.exit.i.for.end_crit_edge:            ; preds = %get_psy_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i6:                                        ; preds = %get_psy_prop.exit.i
  %28 = ptrtoint ptr %gbpsy to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gbpsy, align 4
  %30 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %req.i, align 1
  %gb_prop.i = getelementptr %struct.gb_power_supply_prop, ptr %18, i32 %i.012.i.i, i32 1
  %31 = ptrtoint ptr %gb_prop.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gb_prop.i, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %14, align 1
  %call.i.i4 = call i32 @gb_operation_sync_timeout(ptr noundef %24, i32 noundef 5, ptr noundef nonnull %req.i, i32 noundef 2, ptr noundef nonnull %resp.i, i32 noundef 4, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %cmp.i5, label %if.end.i6.for.end_crit_edge, label %if.end4.i

if.end.i6.for.end_crit_edge:                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end4.i:                                        ; preds = %if.end.i6
  %34 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resp.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #12
  %val5.i = getelementptr %struct.gb_power_supply_prop, ptr %18, i32 %i.012.i.i, i32 2
  %37 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp6.i = icmp eq i32 %36, %38
  br i1 %cmp6.i, label %if.end4.i.for.inc_crit_edge, label %if.end8.i

if.end4.i.for.inc_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8.i:                                        ; preds = %if.end4.i
  %previous_val.i = getelementptr %struct.gb_power_supply_prop, ptr %18, i32 %i.012.i.i, i32 3
  %39 = ptrtoint ptr %previous_val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %previous_val.i, align 4
  %40 = ptrtoint ptr %val5.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %val5.i, align 4
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %if.end8.i.for.inc_crit_edge [
    i32 0, label %if.then22.i.i
    i32 46, label %if.else.i.i
    i32 4, label %if.end8.i.if.then26.i.i_crit_edge
  ]

if.end8.i.if.then26.i.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i.i

if.end8.i.for.inc_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp6.i.i = icmp slt i32 %36, %38
  %sub.i.i = sub i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %sub.i.i)
  %cmp8.i.i = icmp ugt i32 %sub.i.i, 500
  %or.cond.i.i = and i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond.i.i, label %if.else.i.i.if.then26.i.i_crit_edge, label %if.else10.i.i

if.else.i.i.if.then26.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i.i

if.else10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp11.i.i = icmp sgt i32 %36, %38
  %sub13.i.i = sub i32 %36, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %sub13.i.i)
  %cmp15.i.i = icmp ugt i32 %sub13.i.i, 500
  %or.cond54.i.i = and i1 %cmp11.i.i, %cmp15.i.i
  br i1 %or.cond54.i.i, label %if.else10.i.i.if.then26.i.i_crit_edge, label %if.else10.i.i.for.inc_crit_edge

if.else10.i.i.for.inc_crit_edge:                  ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else10.i.i.if.then26.i.i_crit_edge:            ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i.i

if.then22.i.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @gb_power_supply_state_change(ptr noundef %gbpsy, ptr noundef nonnull %arrayidx.i.i) #12
  br label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.then22.i.i, %if.else10.i.i.if.then26.i.i_crit_edge, %if.else.i.i.if.then26.i.i_crit_edge, %if.end8.i.if.then26.i.i_crit_edge
  %44 = ptrtoint ptr %changed27.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %changed27.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then26.i.i, %if.else10.i.i.for.inc_crit_edge, %if.end8.i.for.inc_crit_edge, %if.end4.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #12
  %inc = add nuw nsw i32 %i.022, 1
  %45 = ptrtoint ptr %properties_count to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %properties_count, align 1
  %conv = zext i8 %46 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.then14_crit_edge

for.inc.if.then14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.i6.for.end_crit_edge, %get_psy_prop.exit.i.for.end_crit_edge, %for.cond.i.i.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req.i) #12
  br label %if.end15

if.then14:                                        ; preds = %for.inc.if.then14_crit_edge, %for.cond.preheader.if.then14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %last_update = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 13
  %48 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_update, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.end
  %49 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bundle, align 4
  %call.i.i8 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 12, i32 22
  %51 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store volatile i64 %call.i.i8, ptr %last_busy.i.i, align 8
  %call.i4.i = call i32 @__pm_runtime_suspend(ptr noundef %50, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_power_supply_state_change(ptr noundef %gbpsy, ptr nocapture noundef readonly %prop) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies.i = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 5
  %0 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supplies.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %supply_lock = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %supply_lock, i32 noundef 0) #12
  %val = getelementptr inbounds %struct.gb_power_supply_prop, ptr %prop, i32 0, i32 2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else6_crit_edge

entry.if.else6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else6

land.lhs.true:                                    ; preds = %entry
  %pm_acquired = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 19
  %6 = ptrtoint ptr %pm_acquired to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_acquired, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else6_crit_edge

land.lhs.true.if.else6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else6

if.then:                                          ; preds = %land.lhs.true
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bundle, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else

do.end.i:                                         ; preds = %if.then
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.14, i32 noundef %call.i.i) #17
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #12, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %do.end.i.do.end_crit_edge
  %11 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17) #17
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %pm_acquired to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pm_acquired, align 4
  br label %if.end23

if.else6:                                         ; preds = %land.lhs.true.if.else6_crit_edge, %entry.if.else6_crit_edge
  %pm_acquired7 = getelementptr inbounds %struct.gb_power_supply, ptr %gbpsy, i32 0, i32 19
  %14 = ptrtoint ptr %pm_acquired7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pm_acquired7, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.else6.if.end23_crit_edge, label %if.then9

if.else6.if.end23_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then9:                                         ; preds = %if.else6
  %bundle10 = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %bundle10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bundle10, align 4
  %call.i.i35 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i.i35, ptr %last_busy.i.i, align 8
  %call.i4.i = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool12.not = icmp eq i32 %call.i4.i, 0
  br i1 %tobool12.not, label %if.else19, label %do.end16

do.end16:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bundle10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bundle10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20) #17
  br label %if.end23

if.else19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %pm_acquired7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pm_acquired7, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %do.end16, %if.else6.if.end23_crit_edge, %if.else, %do.end
  tail call void @mutex_unlock(ptr noundef %supply_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @get_psp_from_gb_prop(i32 noundef %gb_prop, ptr nocapture noundef writeonly %psp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %gb_prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %gb_prop, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge67
    i32 2, label %entry.if.end_crit_edge68
    i32 3, label %entry.if.end_crit_edge69
    i32 4, label %entry.if.end_crit_edge70
    i32 5, label %entry.if.end_crit_edge71
    i32 6, label %entry.if.end_crit_edge72
    i32 7, label %entry.if.end_crit_edge73
    i32 8, label %entry.if.end_crit_edge74
    i32 9, label %entry.if.end_crit_edge75
    i32 10, label %entry.if.end_crit_edge76
    i32 11, label %entry.if.end_crit_edge77
    i32 12, label %entry.if.end_crit_edge78
    i32 13, label %entry.if.end_crit_edge79
    i32 14, label %entry.if.end_crit_edge80
    i32 60, label %sw.bb60
    i32 16, label %entry.if.end_crit_edge81
    i32 17, label %entry.if.end_crit_edge82
    i32 18, label %entry.if.end_crit_edge83
    i32 59, label %sw.bb59
    i32 20, label %entry.if.end_crit_edge84
    i32 21, label %entry.if.end_crit_edge85
    i32 22, label %entry.if.end_crit_edge86
    i32 23, label %entry.if.end_crit_edge87
    i32 24, label %entry.if.end_crit_edge88
    i32 25, label %entry.if.end_crit_edge89
    i32 26, label %entry.if.end_crit_edge90
    i32 27, label %entry.if.end_crit_edge91
    i32 28, label %entry.if.end_crit_edge92
    i32 29, label %entry.if.end_crit_edge93
    i32 30, label %entry.if.end_crit_edge94
    i32 31, label %entry.if.end_crit_edge95
    i32 32, label %entry.if.end_crit_edge96
    i32 33, label %entry.if.end_crit_edge97
    i32 34, label %entry.if.end_crit_edge98
    i32 35, label %sw.bb35
    i32 36, label %sw.bb36
    i32 37, label %sw.bb37
    i32 38, label %sw.bb38
    i32 39, label %sw.bb39
    i32 40, label %sw.bb40
    i32 41, label %sw.bb41
    i32 42, label %sw.bb42
    i32 43, label %sw.bb43
    i32 44, label %sw.bb44
    i32 45, label %sw.bb45
    i32 46, label %sw.bb46
    i32 47, label %sw.bb47
    i32 48, label %sw.bb48
    i32 49, label %sw.bb49
    i32 50, label %sw.bb50
    i32 51, label %sw.bb51
    i32 52, label %sw.bb52
    i32 53, label %sw.bb53
    i32 54, label %sw.bb54
    i32 55, label %sw.bb55
    i32 56, label %sw.bb56
    i32 57, label %sw.bb57
    i32 58, label %sw.bb58
  ]

entry.if.end_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %entry.if.end_crit_edge, %entry.if.end_crit_edge67, %entry.if.end_crit_edge68, %entry.if.end_crit_edge69, %entry.if.end_crit_edge70, %entry.if.end_crit_edge71, %entry.if.end_crit_edge72, %entry.if.end_crit_edge73, %entry.if.end_crit_edge74, %entry.if.end_crit_edge75, %entry.if.end_crit_edge76, %entry.if.end_crit_edge77, %entry.if.end_crit_edge78, %entry.if.end_crit_edge79, %entry.if.end_crit_edge80, %entry.if.end_crit_edge81, %entry.if.end_crit_edge82, %entry.if.end_crit_edge83, %entry.if.end_crit_edge84, %entry.if.end_crit_edge85, %entry.if.end_crit_edge86, %entry.if.end_crit_edge87, %entry.if.end_crit_edge88, %entry.if.end_crit_edge89, %entry.if.end_crit_edge90, %entry.if.end_crit_edge91, %entry.if.end_crit_edge92, %entry.if.end_crit_edge93, %entry.if.end_crit_edge94, %entry.if.end_crit_edge95, %entry.if.end_crit_edge96, %entry.if.end_crit_edge97, %entry.if.end_crit_edge98
  %prop.0.ph = phi i32 [ %gb_prop, %entry.if.end_crit_edge ], [ 38, %sw.bb35 ], [ 41, %sw.bb36 ], [ 42, %sw.bb37 ], [ 43, %sw.bb38 ], [ 44, %sw.bb39 ], [ 45, %sw.bb40 ], [ 46, %sw.bb41 ], [ 47, %sw.bb42 ], [ 48, %sw.bb43 ], [ 49, %sw.bb44 ], [ 51, %sw.bb45 ], [ 52, %sw.bb46 ], [ 53, %sw.bb47 ], [ 54, %sw.bb48 ], [ 55, %sw.bb49 ], [ 56, %sw.bb50 ], [ 57, %sw.bb51 ], [ 58, %sw.bb52 ], [ 59, %sw.bb53 ], [ 60, %sw.bb54 ], [ 61, %sw.bb55 ], [ 62, %sw.bb56 ], [ 63, %sw.bb57 ], [ 64, %sw.bb58 ], [ 66, %sw.bb59 ], [ 68, %sw.bb60 ], [ %gb_prop, %entry.if.end_crit_edge67 ], [ %gb_prop, %entry.if.end_crit_edge68 ], [ %gb_prop, %entry.if.end_crit_edge69 ], [ %gb_prop, %entry.if.end_crit_edge70 ], [ %gb_prop, %entry.if.end_crit_edge71 ], [ %gb_prop, %entry.if.end_crit_edge72 ], [ %gb_prop, %entry.if.end_crit_edge73 ], [ %gb_prop, %entry.if.end_crit_edge74 ], [ %gb_prop, %entry.if.end_crit_edge75 ], [ %gb_prop, %entry.if.end_crit_edge76 ], [ %gb_prop, %entry.if.end_crit_edge77 ], [ %gb_prop, %entry.if.end_crit_edge78 ], [ %gb_prop, %entry.if.end_crit_edge79 ], [ %gb_prop, %entry.if.end_crit_edge80 ], [ %gb_prop, %entry.if.end_crit_edge81 ], [ %gb_prop, %entry.if.end_crit_edge82 ], [ %gb_prop, %entry.if.end_crit_edge83 ], [ %gb_prop, %entry.if.end_crit_edge84 ], [ %gb_prop, %entry.if.end_crit_edge85 ], [ %gb_prop, %entry.if.end_crit_edge86 ], [ %gb_prop, %entry.if.end_crit_edge87 ], [ %gb_prop, %entry.if.end_crit_edge88 ], [ %gb_prop, %entry.if.end_crit_edge89 ], [ %gb_prop, %entry.if.end_crit_edge90 ], [ %gb_prop, %entry.if.end_crit_edge91 ], [ %gb_prop, %entry.if.end_crit_edge92 ], [ %gb_prop, %entry.if.end_crit_edge93 ], [ %gb_prop, %entry.if.end_crit_edge94 ], [ %gb_prop, %entry.if.end_crit_edge95 ], [ %gb_prop, %entry.if.end_crit_edge96 ], [ %gb_prop, %entry.if.end_crit_edge97 ], [ %gb_prop, %entry.if.end_crit_edge98 ]
  %1 = ptrtoint ptr %psp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %prop.0.ph, ptr %psp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_power_supply_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %update_interval = getelementptr i8, ptr %work, i32 124
  %0 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %update_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  tail call fastcc void @gb_power_supply_status_get(ptr noundef %add.ptr) #12
  %changed.i = getelementptr i8, ptr %work, i32 128
  %2 = ptrtoint ptr %changed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %changed.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.gb_power_supply_status_update.exit_crit_edge, label %if.end.i

if.end.gb_power_supply_status_update.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_status_update.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %update_interval, align 4
  %psy.i.i = getelementptr i8, ptr %work, i32 -124
  %5 = ptrtoint ptr %psy.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psy.i.i, align 4
  tail call void @power_supply_changed(ptr noundef %6) #12
  %7 = ptrtoint ptr %changed.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %changed.i, align 4
  br label %gb_power_supply_status_update.exit

gb_power_supply_status_update.exit:               ; preds = %if.end.i, %if.end.gb_power_supply_status_update.exit_crit_edge
  %8 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %update_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %9)
  %cmp.i = icmp eq i32 %9, 3000
  br i1 %cmp.i, label %gb_power_supply_status_update.exit.next_interval.exit_crit_edge, label %if.end.i8

gb_power_supply_status_update.exit.next_interval.exit_crit_edge: ; preds = %gb_power_supply_status_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_interval.exit

if.end.i8:                                        ; preds = %gb_power_supply_status_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = shl i32 %9, 1
  %10 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 3000) #12
  %11 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %update_interval, align 4
  br label %next_interval.exit

next_interval.exit:                               ; preds = %if.end.i8, %gb_power_supply_status_update.exit.next_interval.exit_crit_edge
  %12 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %update_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work, i32 noundef %13) #12
  br label %cleanup

cleanup:                                          ; preds = %next_interval.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_property(ptr noundef %b, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %b) #12
  tail call fastcc void @gb_power_supply_status_get(ptr noundef %call)
  %supplies.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %supplies.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supplies.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %psp)
  %cmp.i.i = icmp ugt i32 %psp, 72
  br i1 %cmp.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %properties_count.i.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %properties_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %properties_count.i.i.i, align 1
  %conv.i.i.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp11.not.i.i.i = icmp eq i8 %5, 0
  br i1 %cmp11.not.i.i.i, label %if.then.i.do.end.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i
  %props.i.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %props.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %props.i.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.012.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.do.end.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.i.i.i.do.end.i_crit_edge:                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.012.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.gb_power_supply_prop, ptr %7, i32 %i.012.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %psp)
  %cmp2.i.i.i = icmp eq i32 %9, %psp
  br i1 %cmp2.i.i.i, label %get_psy_prop.exit.i.i, label %for.cond.i.i.i

get_psy_prop.exit.i.i:                            ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %get_psy_prop.exit.i.i.do.end.i_crit_edge, label %__gb_power_supply_property_get.exit.i

get_psy_prop.exit.i.i.do.end.i_crit_edge:         ; preds = %get_psy_prop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

__gb_power_supply_property_get.exit.i:            ; preds = %get_psy_prop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %val1.i.i = getelementptr %struct.gb_power_supply_prop, ptr %7, i32 %i.012.i.i.i, i32 2
  %10 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val1.i.i, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %_gb_power_supply_property_get.exit

if.else.i:                                        ; preds = %entry
  %13 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %psp, label %if.else.i._gb_power_supply_property_get.exit_crit_edge [
    i32 73, label %sw.bb.i.i
    i32 74, label %sw.bb1.i.i
    i32 75, label %sw.bb2.i.i
  ]

if.else.i._gb_power_supply_property_get.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_gb_power_supply_property_get.exit

sw.bb.i.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %model_name.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 8
  br label %sw.epilog.sink.split.i.i

sw.bb1.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %manufacturer.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 7
  br label %sw.epilog.sink.split.i.i

sw.bb2.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %serial_number.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 9
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %serial_number.sink.i.i = phi ptr [ %serial_number.i.i, %sw.bb2.i.i ], [ %manufacturer.i.i, %sw.bb1.i.i ], [ %model_name.i.i, %sw.bb.i.i ]
  %14 = ptrtoint ptr %serial_number.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_number.sink.i.i, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %val, align 4
  br label %_gb_power_supply_property_get.exit

do.end.i:                                         ; preds = %get_psy_prop.exit.i.i.do.end.i_crit_edge, %for.cond.i.i.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bundle.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.35, i32 noundef %psp) #17
  br label %_gb_power_supply_property_get.exit

_gb_power_supply_property_get.exit:               ; preds = %do.end.i, %sw.epilog.sink.split.i.i, %if.else.i._gb_power_supply_property_get.exit_crit_edge, %__gb_power_supply_property_get.exit.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_property(ptr noundef %b, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %req.i = alloca %struct.gb_power_supply_set_property_request, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %b) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %supplies.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %supplies.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supplies.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req.i) #12
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %req.i, align 1, !annotation !95
  %7 = getelementptr inbounds %struct.gb_power_supply_set_property_request, ptr %req.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !95
  %9 = getelementptr inbounds %struct.gb_power_supply_set_property_request, ptr %req.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 -1, ptr %9, align 1, !annotation !95
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bundle.i, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i

do.end.i.i:                                       ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, i32 noundef %call.i.i.i) #17
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #12, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i.i.gb_power_supply_property_set.exit_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i.i.gb_power_supply_property_set.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gb_power_supply_property_set.exit

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  br label %gb_power_supply_property_set.exit

if.end.i:                                         ; preds = %entry
  %properties_count.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 11
  %14 = ptrtoint ptr %properties_count.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %properties_count.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp11.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp11.not.i.i, label %if.end.i.out.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %props.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %props.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.out.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.out.i_crit_edge:                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gb_power_supply_prop, ptr %17, i32 %i.012.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %psp)
  %cmp2.i.i = icmp eq i32 %19, %psp
  br i1 %cmp2.i.i, label %get_psy_prop.exit.i, label %for.cond.i.i

get_psy_prop.exit.i:                              ; preds = %for.body.i.i
  %tobool3.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool3.not.i, label %get_psy_prop.exit.i.out.i_crit_edge, label %if.end5.i

get_psy_prop.exit.i.out.i_crit_edge:              ; preds = %get_psy_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end5.i:                                        ; preds = %get_psy_prop.exit.i
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call, align 4
  %22 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %req.i, align 1
  %gb_prop.i = getelementptr %struct.gb_power_supply_prop, ptr %17, i32 %i.012.i.i, i32 1
  %23 = ptrtoint ptr %gb_prop.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gb_prop.i, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %7, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %9, align 1
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %req.i, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end5.i.out.i_crit_edge, label %if.end8.i

if.end5.i.out.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %val9.i = getelementptr %struct.gb_power_supply_prop, ptr %17, i32 %i.012.i.i, i32 2
  %28 = ptrtoint ptr %val9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %1, ptr %val9.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end8.i, %if.end5.i.out.i_crit_edge, %get_psy_prop.exit.i.out.i_crit_edge, %for.cond.i.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.end5.i.out.i_crit_edge ], [ %call.i.i, %if.end8.i ], [ -22, %get_psy_prop.exit.i.out.i_crit_edge ], [ -22, %if.end.i.out.i_crit_edge ], [ -22, %for.cond.i.i.out.i_crit_edge ]
  %29 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bundle.i, align 4
  %call.i.i26.i = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i.i26.i, ptr %last_busy.i.i.i, align 8
  %call.i4.i.i = call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #12
  br label %gb_power_supply_property_set.exit

gb_power_supply_property_set.exit:                ; preds = %out.i, %do.end11.i.i.i.i.i.i, %do.end.i.i.gb_power_supply_property_set.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ %call.i.i.i, %do.end.i.i.gb_power_supply_property_set.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @property_is_writeable(ptr noundef %b, i32 noundef %psp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %b) #12
  %properties_count.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %properties_count.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %properties_count.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp11.not.i.i = icmp eq i8 %1, 0
  br i1 %cmp11.not.i.i, label %entry.is_psy_prop_writeable.exit_crit_edge, label %for.body.lr.ph.i.i

entry.is_psy_prop_writeable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_psy_prop_writeable.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %props.i.i = getelementptr inbounds %struct.gb_power_supply, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %props.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %props.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.is_psy_prop_writeable.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.is_psy_prop_writeable.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_psy_prop_writeable.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gb_power_supply_prop, ptr %3, i32 %i.012.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %psp)
  %cmp2.i.i = icmp eq i32 %5, %psp
  br i1 %cmp2.i.i, label %get_psy_prop.exit.i, label %for.cond.i.i

get_psy_prop.exit.i:                              ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %get_psy_prop.exit.i.is_psy_prop_writeable.exit_crit_edge, label %if.end.i

get_psy_prop.exit.i.is_psy_prop_writeable.exit_crit_edge: ; preds = %get_psy_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_psy_prop_writeable.exit

if.end.i:                                         ; preds = %get_psy_prop.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %is_writeable.i = getelementptr %struct.gb_power_supply_prop, ptr %3, i32 %i.012.i.i, i32 4
  %6 = ptrtoint ptr %is_writeable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_writeable.i, align 4, !range !96
  %8 = zext i8 %7 to i32
  br label %is_psy_prop_writeable.exit

is_psy_prop_writeable.exit:                       ; preds = %if.end.i, %get_psy_prop.exit.i.is_psy_prop_writeable.exit_crit_edge, %for.cond.i.i.is_psy_prop_writeable.exit_crit_edge, %entry.is_psy_prop_writeable.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ -2, %get_psy_prop.exit.i.is_psy_prop_writeable.exit_crit_edge ], [ -2, %entry.is_psy_prop_writeable.exit_crit_edge ], [ -2, %for.cond.i.i.is_psy_prop_writeable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_gb_power_supply__229_1137_gb_power_supply_driver_init6, !1, !"__initcall__kmod_gb_power_supply__229_1137_gb_power_supply_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/power_supply.c", i32 1137, i32 1}
!2 = !{ptr @__exitcall_gb_power_supply_driver_exit, !1, !"__exitcall_gb_power_supply_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file230, !4, !"__UNIQUE_ID_file230", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/power_supply.c", i32 1139, i32 1}
!5 = !{ptr @__UNIQUE_ID_license231, !4, !"__UNIQUE_ID_license231", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/power_supply.c", i32 1132, i32 11}
!9 = !{ptr @gb_power_supply_driver, !10, !"gb_power_supply_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/power_supply.c", i32 1131, i32 30}
!11 = !{ptr @gb_power_supply_probe.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/power_supply.c", i32 1081, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/greybus/power_supply.c", i32 1000, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gb_supplies_request_handler._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gb_supplies_request_handler._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/greybus/power_supply.c", i32 1008, i32 3}
!24 = !{ptr @gb_supplies_request_handler._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gb_supplies_request_handler._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/greybus/power_supply.c", i32 1019, i32 3}
!28 = !{ptr @gb_supplies_request_handler._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gb_supplies_request_handler._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"cache_time", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/power_supply.c", i32 73, i32 21}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gb_pm_runtime_get_sync._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"psy_props_changes", i1 false, i1 false}
!39 = !{!"../drivers/staging/greybus/power_supply.c", i32 91, i32 45}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/greybus/power_supply.c", i32 374, i32 4}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gb_power_supply_state_change._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @gb_power_supply_state_change._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/power_supply.c", i32 382, i32 5}
!47 = !{ptr @gb_power_supply_state_change._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gb_power_supply_state_change._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"update_interval_init", i1 false, i1 false}
!50 = !{!"../drivers/staging/greybus/power_supply.c", i32 78, i32 21}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/greybus/power_supply.c", i32 957, i32 4}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gb_power_supplies_setup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @gb_power_supplies_setup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/greybus/power_supply.c", i32 541, i32 4}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @gb_power_supply_prop_descriptors_get._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @gb_power_supply_prop_descriptors_get._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/greybus/power_supply.c", i32 978, i32 4}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gb_power_supplies_register._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @gb_power_supplies_register._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @gb_power_supply_enable.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/staging/greybus/power_supply.c", i32 917, i32 2}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gb_power_supply_enable.__key.30, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/staging/greybus/power_supply.c", i32 924, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @gb_power_supply_enable.__key.32, !71, !"__key", i1 false, i1 false}
!74 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/greybus/power_supply.c", i32 457, i32 29}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/power_supply.c", i32 674, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @_gb_power_supply_property_get._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @_gb_power_supply_property_get._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"update_interval_max", i1 false, i1 false}
!83 = !{!"../drivers/staging/greybus/power_supply.c", i32 79, i32 21}
!84 = !{ptr @gb_power_supply_id_table, !85, !"gb_power_supply_id_table", i1 false, i1 false}
!85 = !{!"../drivers/staging/greybus/power_supply.c", i32 1125, i32 39}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
!96 = !{i8 0, i8 2}
!97 = !{i64 2148236363}
!98 = !{i64 721186, i64 721211, i64 721233, i64 721249, i64 721261, i64 721281, i64 721305, i64 721321, i64 721333}
!99 = !{i64 2148236551}
