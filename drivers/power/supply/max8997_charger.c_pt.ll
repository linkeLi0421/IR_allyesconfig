; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max8997_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max8997_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.charger_data = type { ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.work_struct }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_max8997_charger__294_289_max8997_battery_driver_init6 = internal global ptr @max8997_battery_driver_init, section ".initcall6.init", align 4
@max8997_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8997_battery_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8997_battery_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8997_battery_driver_exit = internal global ptr @max8997_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [67 x i8] c"max8997_charger.description=MAXIM 8997/8966 battery control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [63 x i8] c"max8997_charger.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [58 x i8] c"max8997_charger.file=drivers/power/supply/max8997_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"max8997_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8997-battery\00", [16 x i8] zeroinitializer }, align 32
@max8997_battery_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-battery\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No platform data supplied.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max8997_battery_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/max8997_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr = internal global ptr @max8997_battery_probe._entry, section ".printk_index", align 4
@max8997_battery_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot use i2c bus.\0A\00", [43 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.8 = internal global ptr @max8997_battery_probe._entry.6, section ".printk_index", align 4
@max8997_battery_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"incorrect timeout value (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.11 = internal global ptr @max8997_battery_probe._entry.9, section ".printk_index", align 4
@max8997_battery_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.13 = internal global ptr @max8997_battery_probe._entry.12, section ".printk_index", align 4
@max8997_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.33, i32 1, ptr null, i32 0, ptr @max8997_battery_props, i32 3, ptr @max8997_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: power supply register\0A\00", [33 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.16 = internal global ptr @max8997_battery_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charger\00", [24 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get charger regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.21 = internal global ptr @max8997_battery_probe._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8997-muic\00", [19 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 254, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't get extcon device\0A\00", [36 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.25 = internal global ptr @max8997_battery_probe._entry.23, section ".printk_index", align 4
@max8997_battery_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&charger->extcon_work)\00", [55 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to add extcon evt stop action: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.29 = internal global ptr @max8997_battery_probe._entry.27, section ".printk_index", align 4
@max8997_battery_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register extcon notifier\0A\00", [60 x i8] zeroinitializer }, align 32
@max8997_battery_probe._entry_ptr.32 = internal global ptr @max8997_battery_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8997_pmic\00", [19 x i8] zeroinitializer }, align 32
@max8997_battery_props = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 3, i32 4], [20 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8997_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max8997_battery_extcon_evt_worker\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB SDP charger is connected\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB DCP charger is connected\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"USB FAST charger is connected\0A\00", [33 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"USB SLOW charger is connected\0A\00", [33 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.40, i8 0, i8 31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"USB CDP charger is connected\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.3, ptr @.str.41, i8 0, i8 31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB charger is disconnected\0A\00", [35 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set current limit: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker._entry_ptr = internal global ptr @max8997_battery_extcon_evt_worker._entry, section ".printk_index", align 4
@max8997_battery_extcon_evt_worker._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.35, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker._entry_ptr.45 = internal global ptr @max8997_battery_extcon_evt_worker._entry.43, section ".printk_index", align 4
@max8997_battery_extcon_evt_worker._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@max8997_battery_extcon_evt_worker._entry_ptr.48 = internal global ptr @max8997_battery_extcon_evt_worker._entry.46, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.max8997_battery_probe = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p     0@", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"max8997_battery_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 282, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 284, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"max8997_battery_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 276, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 177, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 191, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 213, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 218, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"max8997_battery_desc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 158, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 237, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 243, i32 57 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 248, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 250, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 254, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 258, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 261, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 268, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 159, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"max8997_battery_props\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 42, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 112, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 115, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 118, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 121, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 124, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 127, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 135, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 140, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [42 x i8] c"../drivers/power/supply/max8997_charger.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 145, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [35 x i8] c"switch.table.max8997_battery_probe\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_max8997_battery_driver_exit, ptr @__initcall__kmod_max8997_charger__294_289_max8997_battery_driver_init6, ptr @max8997_battery_driver_exit, ptr @max8997_battery_extcon_evt_worker._entry, ptr @max8997_battery_extcon_evt_worker._entry.43, ptr @max8997_battery_extcon_evt_worker._entry.46, ptr @max8997_battery_extcon_evt_worker._entry_ptr, ptr @max8997_battery_extcon_evt_worker._entry_ptr.45, ptr @max8997_battery_extcon_evt_worker._entry_ptr.48, ptr @max8997_battery_probe._entry, ptr @max8997_battery_probe._entry.12, ptr @max8997_battery_probe._entry.14, ptr @max8997_battery_probe._entry.18, ptr @max8997_battery_probe._entry.23, ptr @max8997_battery_probe._entry.27, ptr @max8997_battery_probe._entry.30, ptr @max8997_battery_probe._entry.6, ptr @max8997_battery_probe._entry.9, ptr @max8997_battery_probe._entry_ptr, ptr @max8997_battery_probe._entry_ptr.11, ptr @max8997_battery_probe._entry_ptr.13, ptr @max8997_battery_probe._entry_ptr.16, ptr @max8997_battery_probe._entry_ptr.21, ptr @max8997_battery_probe._entry_ptr.25, ptr @max8997_battery_probe._entry_ptr.29, ptr @max8997_battery_probe._entry_ptr.32, ptr @max8997_battery_probe._entry_ptr.8, ptr @max8997_battery_driver, ptr @.str, ptr @max8997_battery_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @max8997_battery_desc, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @max8997_battery_probe.__key, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @max8997_battery_props, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @switch.table.max8997_battery_probe], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_extcon_evt_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_extcon_evt_worker._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_battery_extcon_evt_worker._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max8997_battery_probe to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_battery_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8997_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_battery_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %i2c2 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c2, align 4
  %pdata3 = getelementptr inbounds %struct.max8997_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pdata3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %10 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup132

if.end:                                           ; preds = %entry
  %eoc_mA = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 12
  %11 = ptrtoint ptr %eoc_mA to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eoc_mA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end.if.end22_crit_edge, label %if.then6

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then6:                                         ; preds = %if.end
  %sub = add i32 %12, -50
  %div = sdiv i32 %sub, 10
  %13 = tail call i32 @llvm.smax.i32(i32 %div, i32 0)
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 15)
  %conv = trunc i32 %14 to i8
  %call13 = tail call i32 @max8997_update_reg(ptr noundef %7, i8 noundef zeroext 84, i8 noundef zeroext %conv, i8 noundef zeroext 15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end19, label %if.then6.if.end22_crit_edge

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end19:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup132

if.end22:                                         ; preds = %if.then6.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %timeout = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 13
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %switch.hole_check, label %if.end22.do.end32_crit_edge

if.end22.do.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

do.end32:                                         ; preds = %switch.hole_check.do.end32_crit_edge, %if.end22.do.end32_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %16) #9
  br label %cleanup132

switch.hole_check:                                ; preds = %if.end22
  %switch.maskindex = trunc i32 %16 to i8
  %switch.shifted = lshr i8 -31, %switch.maskindex
  %18 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %switch.lobit.not = icmp eq i8 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end32_crit_edge, label %switch.lookup

switch.hole_check.do.end32_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.max8997_battery_probe, i32 0, i32 %16
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %19)
  %switch.load = load i8, ptr %switch.gep, align 1
  %call29 = tail call i32 @max8997_update_reg(ptr noundef %7, i8 noundef zeroext 80, i8 noundef zeroext %switch.load, i8 noundef zeroext 112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp35 = icmp slt i32 %call29, 0
  br i1 %cmp35, label %do.end40, label %if.end42

do.end40:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup132

if.end42:                                         ; preds = %switch.lookup
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #6
  %tobool45.not = icmp eq ptr %call.i, null
  br i1 %tobool45.not, label %if.end42.cleanup132_crit_edge, label %if.end47

if.end42.cleanup132_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

if.end47:                                         ; preds = %if.end42
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %call.i, align 4
  %iodev50 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %iodev50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %iodev50, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %drv_data, align 4
  %call52 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @max8997_battery_desc, ptr noundef nonnull %psy_cfg) #6
  %battery = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call52, ptr %battery, align 4
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end58, label %if.end62

do.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %25 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %battery, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup132

if.end62:                                         ; preds = %if.end47
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %of_node64 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node64, align 8
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %of_node, align 8
  %call68 = call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.17) #6
  %reg = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call68, ptr %reg, align 4
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %5, ptr %of_node, align 8
  %cmp.i205 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.then73, label %if.end62.if.end84_crit_edge

if.end62.if.end84_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then73:                                        ; preds = %if.end62
  %cmp76 = icmp eq ptr %call68, inttoptr (i32 -517 to ptr)
  br i1 %cmp76, label %if.then73.cleanup132_crit_edge, label %do.end82

if.then73.cleanup132_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

do.end82:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %if.end62.if.end84_crit_edge
  %call85 = call ptr @extcon_get_extcon_dev(ptr noundef nonnull @.str.22) #6
  %edev = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call85, ptr %edev, align 4
  %tobool.not.i = icmp eq ptr %call85, null
  %cmp.i206 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i206
  br i1 %spec.select.i, label %if.then88, label %if.end84.if.end97_crit_edge

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then88:                                        ; preds = %if.end84
  br i1 %tobool.not.i, label %if.then88.cleanup132_crit_edge, label %do.end95

if.then88.cleanup132_crit_edge:                   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

do.end95:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.24) #9
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end84.if.end97_crit_edge
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg, align 4
  %cmp.i207 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.end97.cleanup132_crit_edge, label %land.lhs.true

if.end97.cleanup132_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

land.lhs.true:                                    ; preds = %if.end97
  %40 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edev, align 4
  %tobool.not.i208 = icmp eq ptr %41, null
  %cmp.i209 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %spec.select.i210 = or i1 %tobool.not.i208, %cmp.i209
  br i1 %spec.select.i210, label %land.lhs.true.cleanup132_crit_edge, label %do.body103

land.lhs.true.cleanup132_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

do.body103:                                       ; preds = %land.lhs.true
  %extcon_work = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %extcon_work, i32 noundef 0) #6
  %42 = ptrtoint ptr %extcon_work to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %extcon_work, align 4
  %lockdep_map = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @max8997_battery_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry107 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %entry107 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry107, ptr %entry107, align 4
  %prev.i = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry107, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @max8997_battery_extcon_evt_worker, ptr %func, align 4
  %call112 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @max8997_battery_extcon_evt_stop_work, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end119, label %do.end117

do.end117:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call112) #9
  br label %cleanup132

if.end119:                                        ; preds = %do.body103
  %extcon_nb = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %extcon_nb to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @max8997_battery_extcon_evt, ptr %extcon_nb, align 4
  %47 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %edev, align 4
  %call123 = call i32 @devm_extcon_register_notifier_all(ptr noundef %dev, ptr noundef %48, ptr noundef %extcon_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end119.cleanup132_crit_edge, label %do.end128

if.end119.cleanup132_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup132

do.end128:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  br label %cleanup132

cleanup132:                                       ; preds = %do.end128, %if.end119.cleanup132_crit_edge, %do.end117, %land.lhs.true.cleanup132_crit_edge, %if.end97.cleanup132_crit_edge, %if.then88.cleanup132_crit_edge, %if.then73.cleanup132_crit_edge, %do.end58, %if.end42.cleanup132_crit_edge, %do.end40, %do.end32, %do.end19, %do.end
  %retval.1 = phi i32 [ -22, %do.end32 ], [ %call29, %do.end40 ], [ %27, %do.end58 ], [ %call112, %do.end117 ], [ %call123, %do.end128 ], [ -22, %do.end ], [ %call13, %do.end19 ], [ -12, %if.end42.cleanup132_crit_edge ], [ -517, %if.then73.cleanup132_crit_edge ], [ -517, %if.then88.cleanup132_crit_edge ], [ 0, %if.end119.cleanup132_crit_edge ], [ 0, %land.lhs.true.cleanup132_crit_edge ], [ 0, %if.end97.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_extcon_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_battery_extcon_evt_worker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -32
  %edev1 = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %call = tail call i32 @extcon_get_state(ptr noundef %1, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_battery_extcon_evt_worker, %if.then125)) #6
          to label %if.then7 [label %if.then125], !srcloc !110

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug288, ptr noundef %3, ptr noundef nonnull @.str.36) #6
  br label %if.then125

if.else:                                          ; preds = %entry
  %call8 = tail call i32 @extcon_get_state(ptr noundef %1, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %do.body11, label %if.else30

do.body11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_battery_extcon_evt_worker, %if.then125)) #6
          to label %if.then25 [label %if.then125], !srcloc !110

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.37) #6
  br label %if.then125

if.else30:                                        ; preds = %if.else
  %call31 = tail call i32 @extcon_get_state(ptr noundef %1, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %do.body34, label %if.else53

do.body34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_battery_extcon_evt_worker, %if.then125)) #6
          to label %if.then48 [label %if.then125], !srcloc !110

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.38) #6
  br label %if.then125

if.else53:                                        ; preds = %if.else30
  %call54 = tail call i32 @extcon_get_state(ptr noundef %1, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, 0
  br i1 %cmp55, label %do.body57, label %if.else76

do.body57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_battery_extcon_evt_worker, %if.then125)) #6
          to label %if.then71 [label %if.then125], !srcloc !110

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug291, ptr noundef %9, ptr noundef nonnull @.str.39) #6
  br label %if.then125

if.else76:                                        ; preds = %if.else53
  %call77 = tail call i32 @extcon_get_state(ptr noundef %1, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp sgt i32 %call77, 0
  br i1 %cmp78, label %do.body80, label %do.body100

do.body80:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_battery_extcon_evt_worker, %if.then125)) #6
          to label %if.then94 [label %if.then125], !srcloc !110

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug292, ptr noundef %11, ptr noundef nonnull @.str.40) #6
  br label %if.then125

do.body100:                                       ; preds = %if.else76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8997_battery_extcon_evt_worker, %if.else143)) #6
          to label %if.then114 [label %if.else143], !srcloc !110

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug293, ptr noundef %13, ptr noundef nonnull @.str.41) #6
  br label %if.else143

if.then125:                                       ; preds = %if.then94, %do.body80, %if.then71, %do.body57, %if.then48, %do.body34, %if.then25, %do.body11, %if.then7, %do.body
  %current_limit.0.ph = phi i32 [ 650000, %if.then94 ], [ 650000, %if.then71 ], [ 650000, %if.then48 ], [ 650000, %if.then25 ], [ 450000, %if.then7 ], [ 450000, %do.body ], [ 650000, %do.body11 ], [ 650000, %do.body34 ], [ 650000, %do.body57 ], [ 650000, %do.body80 ]
  %reg = getelementptr i8, ptr %work, i32 -20
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %call126 = tail call i32 @regulator_set_current_limit(ptr noundef %15, i32 noundef %current_limit.0.ph, i32 noundef %current_limit.0.ph) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end133, label %do.end131

do.end131:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.42, i32 noundef %call126) #9
  br label %cleanup155

if.end133:                                        ; preds = %if.then125
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  %call135 = tail call i32 @regulator_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end133.cleanup155_crit_edge, label %do.end140

if.end133.cleanup155_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

do.end140:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.44, i32 noundef %call135) #9
  br label %cleanup155

if.else143:                                       ; preds = %if.then114, %do.body100
  %reg145 = getelementptr i8, ptr %work, i32 -20
  %22 = ptrtoint ptr %reg145 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg145, align 4
  %call146 = tail call i32 @regulator_disable(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.else143.cleanup155_crit_edge, label %do.end151

if.else143.cleanup155_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

do.end151:                                        ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.47, i32 noundef %call146) #9
  br label %cleanup155

cleanup155:                                       ; preds = %do.end151, %if.else143.cleanup155_crit_edge, %do.end140, %if.end133.cleanup155_crit_edge, %do.end131
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_battery_extcon_evt_stop_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon_work = getelementptr inbounds %struct.charger_data, ptr %data, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %extcon_work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_battery_extcon_evt(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon_work = getelementptr i8, ptr %nb, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %extcon_work) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %iodev = getelementptr inbounds %struct.charger_data, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iodev, align 4
  %i2c1 = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #6
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %reg, align 1, !annotation !111
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb12
    i32 4, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %call2 = call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext 16, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool7.not, i32 2, i32 1
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %val, align 4
  %call13 = call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext 16, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg, align 1
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp19 = icmp eq i8 %12, 0
  br i1 %cmp19, label %if.end16.cleanup.sink.split_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %entry
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val, align 4
  %call24 = call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext 16, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %sw.bb23
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end27.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.else, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.end.cleanup.sink.split_crit_edge ], [ %., %if.else ], [ 1, %if.end16.cleanup.sink.split_crit_edge ], [ 1, %if.end27.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb.cleanup_crit_edge ], [ %call13, %sw.bb12.cleanup_crit_edge ], [ %call24, %sw.bb23.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_max8997_charger__294_289_max8997_battery_driver_init6, !1, !"__initcall__kmod_max8997_charger__294_289_max8997_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max8997_charger.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_max8997_battery_driver_exit, !1, !"__exitcall_max8997_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max8997_charger.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max8997_charger.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max8997_charger.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max8997_charger.c", i32 284, i32 11}
!12 = !{ptr @max8997_battery_driver, !13, !"max8997_battery_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max8997_charger.c", i32 282, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max8997_charger.c", i32 177, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max8997_battery_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max8997_battery_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/max8997_charger.c", i32 191, i32 4}
!24 = !{ptr @max8997_battery_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max8997_battery_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/max8997_charger.c", i32 213, i32 3}
!28 = !{ptr @max8997_battery_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @max8997_battery_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @max8997_battery_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/max8997_charger.c", i32 218, i32 3}
!32 = !{ptr @max8997_battery_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max8997_charger.c", i32 237, i32 3}
!35 = !{ptr @max8997_battery_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max8997_battery_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/max8997_charger.c", i32 243, i32 57}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/max8997_charger.c", i32 248, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @max8997_battery_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @max8997_battery_probe._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/max8997_charger.c", i32 250, i32 40}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/max8997_charger.c", i32 254, i32 3}
!48 = !{ptr @max8997_battery_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @max8997_battery_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @max8997_battery_probe.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/max8997_charger.c", i32 258, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/max8997_charger.c", i32 261, i32 4}
!55 = !{ptr @max8997_battery_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @max8997_battery_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/max8997_charger.c", i32 268, i32 4}
!59 = !{ptr @max8997_battery_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @max8997_battery_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/max8997_charger.c", i32 159, i32 11}
!63 = !{ptr @max8997_battery_desc, !64, !"max8997_battery_desc", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/max8997_charger.c", i32 158, i32 39}
!65 = !{ptr @max8997_battery_props, !66, !"max8997_battery_props", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/max8997_charger.c", i32 42, i32 35}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/max8997_charger.c", i32 112, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug288, !68, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/max8997_charger.c", i32 115, i32 3}
!74 = !{ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug289, !73, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/max8997_charger.c", i32 118, i32 3}
!77 = !{ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug290, !76, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/max8997_charger.c", i32 121, i32 3}
!80 = !{ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug291, !79, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/max8997_charger.c", i32 124, i32 3}
!83 = !{ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug292, !82, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/max8997_charger.c", i32 127, i32 3}
!86 = !{ptr @max8997_battery_extcon_evt_worker.__UNIQUE_ID_ddebug293, !85, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/max8997_charger.c", i32 135, i32 4}
!89 = !{ptr @max8997_battery_extcon_evt_worker._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @max8997_battery_extcon_evt_worker._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/max8997_charger.c", i32 140, i32 4}
!93 = !{ptr @max8997_battery_extcon_evt_worker._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @max8997_battery_extcon_evt_worker._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/max8997_charger.c", i32 145, i32 4}
!97 = !{ptr @max8997_battery_extcon_evt_worker._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @max8997_battery_extcon_evt_worker._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @max8997_battery_id, !100, !"max8997_battery_id", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/max8997_charger.c", i32 276, i32 40}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 2148304603, i64 2148304608, i64 2148304621, i64 2148304665, i64 2148304699, i64 2148304720}
!111 = !{!"auto-init"}
