; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max77650-charger.c_pt.bc'
source_filename = "../drivers/power/supply/max77650-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.max77650_charger_data = type { ptr, ptr }

@__initcall__kmod_max77650_charger__288_371_max77650_charger_driver_init6 = internal global ptr @max77650_charger_driver_init, section ".initcall6.init", align 4
@max77650_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77650_charger_probe, ptr @max77650_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77650_charger_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77650_charger_driver_exit = internal global ptr @max77650_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [62 x i8] c"max77650_charger.description=MAXIM 77650/77651 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [72 x i8] c"max77650_charger.author=Bartosz Golaszewski <bgolaszewski@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [60 x i8] c"max77650_charger.file=drivers/power/supply/max77650-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"max77650_charger.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [49 x i8] c"max77650_charger.alias=platform:max77650-charger\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77650-charger\00", [47 x i8] zeroinitializer }, align 32
@max77650_charger_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77650-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CHG\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CHGIN\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"chg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chgin\00", [26 x i8] zeroinitializer }, align 32
@max77650_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.20, i32 4, ptr null, i32 0, ptr @max77650_charger_properties, i32 3, ptr @max77650_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"input-voltage-min-microvolt\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"input-current-limit-microamp\00", [35 x i8] zeroinitializer }, align 32
@max77650_charger_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 166, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to read the charger status: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max77650_charger_check_status\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max77650-charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77650_charger_check_status._entry_ptr = internal global ptr @max77650_charger_check_status._entry, section ".printk_index", align 4
@max77650_charger_check_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 172, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"undervoltage lockout detected, disabling charger\0A\00", [46 x i8] zeroinitializer }, align 32
@max77650_charger_check_status._entry_ptr.14 = internal global ptr @max77650_charger_check_status._entry.12, section ".printk_index", align 4
@max77650_charger_check_status._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 176, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"overvoltage lockout detected, disabling charger\0A\00", [47 x i8] zeroinitializer }, align 32
@max77650_charger_check_status._entry_ptr.17 = internal global ptr @max77650_charger_check_status._entry.15, section ".printk_index", align 4
@max77650_charger_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 153, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to disable the charger: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max77650_charger_disable\00", [39 x i8] zeroinitializer }, align 32
@max77650_charger_disable._entry_ptr = internal global ptr @max77650_charger_disable._entry, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max77650\00", [23 x i8] zeroinitializer }, align 32
@max77650_charger_properties = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 1], [20 x i8] zeroinitializer }, align 32
@max77650_charger_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 139, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to enable the charger: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max77650_charger_enable\00", [40 x i8] zeroinitializer }, align 32
@max77650_charger_enable._entry_ptr = internal global ptr @max77650_charger_enable._entry, section ".printk_index", align 4
@switch.table.max77650_charger_get_property = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 0, i32 3, i32 3, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.max77650_charger_get_property.23 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 32, i64 4000000, i64 4100000, i64 4200000, i64 4300000, i64 4400000, i64 4500000, i64 4600000, i64 4700000]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 95000, i64 190000, i64 285000, i64 380000, i64 475000]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"max77650_charger_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 363, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 365, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"max77650_charger_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 357, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 306, i32 42 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 310, i32 44 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 316, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 322, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"max77650_battery_desc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 271, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 332, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 340, i32 7 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 165, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 172, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 176, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 153, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 272, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"max77650_charger_properties\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 74, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [43 x i8] c"../drivers/power/supply/max77650-charger.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 139, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [43 x i8] c"switch.table.max77650_charger_get_property\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [46 x i8] c"switch.table.max77650_charger_get_property.23\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max77650_charger_driver_exit, ptr @__initcall__kmod_max77650_charger__288_371_max77650_charger_driver_init6, ptr @max77650_charger_check_status._entry, ptr @max77650_charger_check_status._entry.12, ptr @max77650_charger_check_status._entry.15, ptr @max77650_charger_check_status._entry_ptr, ptr @max77650_charger_check_status._entry_ptr.14, ptr @max77650_charger_check_status._entry_ptr.17, ptr @max77650_charger_disable._entry, ptr @max77650_charger_disable._entry_ptr, ptr @max77650_charger_driver_exit, ptr @max77650_charger_enable._entry, ptr @max77650_charger_enable._entry_ptr, ptr @max77650_charger_driver, ptr @.str, ptr @max77650_charger_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @max77650_battery_desc, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @max77650_charger_properties, ptr @.str.21, ptr @.str.22, ptr @switch.table.max77650_charger_get_property, ptr @switch.table.max77650_charger_get_property.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_check_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_check_status._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_properties to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_charger_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77650_charger_get_property to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77650_charger_get_property.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77650_charger_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77650_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77650_charger_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pscfg = alloca %struct.power_supply_config, align 4
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pscfg) #5
  %0 = getelementptr inbounds i8, ptr %pscfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #5
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prop, align 4, !annotation !75
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent2, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %call.i, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.max77650_charger_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev8, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %10 = ptrtoint ptr %pscfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pscfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %pscfg, i32 0, i32 2
  %11 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %drv_data, align 4
  %call10 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @devm_request_any_context_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @max77650_charger_check_status, i32 noundef 8192, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @devm_request_any_context_irq(ptr noundef %dev1, i32 noundef %call13, ptr noundef nonnull @max77650_charger_check_status, i32 noundef 8192, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @max77650_battery_desc, ptr noundef nonnull %pscfg) #5
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp32 = icmp sgt i32 %call.i.i, -1
  br i1 %cmp32, label %if.then33, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then33:                                        ; preds = %if.end29
  %15 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prop, align 4
  %call34 = call fastcc i32 @max77650_charger_set_vchgin_min(ptr noundef nonnull %call.i, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call.i.i92 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i92)
  %cmp41 = icmp sgt i32 %call.i.i92, -1
  br i1 %cmp41, label %if.then42, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then42:                                        ; preds = %if.end38
  %19 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prop, align 4
  %call43 = call fastcc i32 @max77650_charger_set_ichgin_lim(ptr noundef nonnull %call.i, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %call48 = call fastcc i32 @max77650_charger_enable(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then42.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.then27, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then27 ], [ %call48, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call34, %if.then33.cleanup_crit_edge ], [ %call43, %if.then42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pscfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 25, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.max77650_charger_disable.exit_crit_edge, label %do.end.i

entry.max77650_charger_disable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %max77650_charger_disable.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.max77650_charger_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call.i.i) #8
  br label %max77650_charger_disable.exit

max77650_charger_disable.exit:                    ; preds = %do.end.i, %entry.max77650_charger_disable.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_charger_check_status(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !75
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77650_charger_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = lshr i32 %6, 2
  %shr = and i32 %and, 3
  %7 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end.cleanup_crit_edge [
    i32 0, label %do.end3
    i32 1, label %do.end9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end3:                                          ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.max77650_charger_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13) #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 25, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end3.cleanup_crit_edge, label %do.end.i

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %call.i.i) #8
  br label %cleanup

do.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.max77650_charger_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16) #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i.i22 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 25, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i23, label %do.end9.cleanup_crit_edge, label %do.end.i25

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i25:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef %call.i.i22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i25, %do.end9.cleanup_crit_edge, %do.end.i, %do.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77650_charger_set_vchgin_min(ptr nocapture noundef readonly %chg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %val, label %entry.cleanup_crit_edge [
    i32 4000000, label %entry.if.then_crit_edge
    i32 4100000, label %if.then.fold.split
    i32 4200000, label %if.then.fold.split12
    i32 4300000, label %if.then.fold.split13
    i32 4400000, label %if.then.fold.split14
    i32 4500000, label %if.then.fold.split15
    i32 4600000, label %if.then.fold.split16
    i32 4700000, label %if.then.fold.split17
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 32, %if.then.fold.split ], [ 64, %if.then.fold.split12 ], [ 96, %if.then.fold.split13 ], [ 128, %if.then.fold.split14 ], [ 160, %if.then.fold.split15 ], [ 192, %if.then.fold.split16 ], [ 224, %if.then.fold.split17 ]
  %1 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 25, i32 noundef 192, i32 noundef %i.010.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77650_charger_set_ichgin_lim(ptr nocapture noundef readonly %chg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %val, label %entry.cleanup_crit_edge [
    i32 95000, label %entry.if.then_crit_edge
    i32 190000, label %if.then.fold.split
    i32 285000, label %if.then.fold.split12
    i32 380000, label %if.then.fold.split13
    i32 475000, label %if.then.fold.split14
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 4, %if.then.fold.split ], [ 8, %if.then.fold.split12 ], [ 12, %if.then.fold.split13 ], [ 16, %if.then.fold.split14 ]
  %1 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 25, i32 noundef 28, i32 noundef %i.010.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77650_charger_enable(ptr nocapture noundef readonly %chg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 25, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.max77650_charger_data, ptr %chg, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !75
  %1 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb8
    i32 1, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %and4 = lshr i32 %5, 4
  %shr = and i32 %and4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %shr)
  %6 = icmp ult i32 %shr, 13
  br i1 %6, label %switch.lookup, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call10 = call i32 @regmap_read(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and14 = lshr i32 %10, 1
  %and14.lobit = and i32 %and14, 1
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %entry
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %call18 = call i32 @regmap_read(ptr noundef %12, i32 noundef 3, ptr noundef nonnull %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %sw.bb16
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and22 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 0
  br i1 %cmp23.not, label %if.end21.cleanup.sink.split_crit_edge, label %if.end26

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end21
  %and27 = lshr i32 %14, 4
  %shr28 = and i32 %and27, 15
  %switch.tableidx = add nsw i32 %shr28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 7
  br i1 %15, label %switch.lookup53, label %if.end26.cleanup.sink.split_crit_edge

if.end26.cleanup.sink.split_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.max77650_charger_get_property, i32 0, i32 %shr
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

switch.lookup53:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep54 = getelementptr inbounds [7 x i32], ptr @switch.table.max77650_charger_get_property.23, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load55 = load i32, ptr %switch.gep54, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup53, %switch.lookup, %if.end26.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge, %if.end13, %if.end3.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %and14.lobit, %if.end13 ], [ 1, %if.end.cleanup.sink.split_crit_edge ], [ 1, %if.end21.cleanup.sink.split_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end3.cleanup.sink.split_crit_edge ], [ %switch.load55, %switch.lookup53 ], [ 0, %if.end26.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb16.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ %call10, %sw.bb8.cleanup_crit_edge ], [ %call18, %sw.bb16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_max77650_charger__288_371_max77650_charger_driver_init6, !1, !"__initcall__kmod_max77650_charger__288_371_max77650_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max77650-charger.c", i32 371, i32 1}
!2 = !{ptr @__exitcall_max77650_charger_driver_exit, !1, !"__exitcall_max77650_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max77650-charger.c", i32 373, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max77650-charger.c", i32 374, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max77650-charger.c", i32 375, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max77650-charger.c", i32 376, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max77650-charger.c", i32 365, i32 11}
!14 = !{ptr @max77650_charger_driver, !15, !"max77650_charger_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max77650-charger.c", i32 363, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/max77650-charger.c", i32 306, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/max77650-charger.c", i32 310, i32 44}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/max77650-charger.c", i32 316, i32 22}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/max77650-charger.c", i32 322, i32 22}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/max77650-charger.c", i32 332, i32 7}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/max77650-charger.c", i32 340, i32 7}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/max77650-charger.c", i32 165, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @max77650_charger_check_status._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @max77650_charger_check_status._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/max77650-charger.c", i32 172, i32 3}
!38 = !{ptr @max77650_charger_check_status._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max77650_charger_check_status._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/max77650-charger.c", i32 176, i32 3}
!42 = !{ptr @max77650_charger_check_status._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max77650_charger_check_status._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/max77650-charger.c", i32 153, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @max77650_charger_disable._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @max77650_charger_disable._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max77650-charger.c", i32 272, i32 11}
!51 = !{ptr @max77650_battery_desc, !52, !"max77650_battery_desc", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/max77650-charger.c", i32 271, i32 39}
!53 = !{ptr @max77650_charger_properties, !54, !"max77650_charger_properties", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/max77650-charger.c", i32 74, i32 35}
!55 = distinct !{null, !56, !"max77650_charger_vchgin_min_table", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/max77650-charger.c", i32 80, i32 27}
!57 = distinct !{null, !58, !"max77650_charger_ichgin_lim_table", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/max77650-charger.c", i32 84, i32 27}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/max77650-charger.c", i32 139, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @max77650_charger_enable._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @max77650_charger_enable._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @max77650_charger_of_match, !65, !"max77650_charger_of_match", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/max77650-charger.c", i32 357, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
