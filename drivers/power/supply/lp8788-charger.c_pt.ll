; ModuleID = '/llk/IR_all_yes/drivers/power/supply/lp8788-charger.c_pt.bc'
source_filename = "../drivers/power/supply/lp8788-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_charger = type { ptr, ptr, ptr, %struct.work_struct, [2 x ptr], [11 x %struct.lp8788_chg_irq], i32, ptr }
%struct.lp8788_chg_irq = type { i32, i32 }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lp8788_charger_platform_data = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.lp8788_chg_param = type { i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lp8788_charger__233_736_lp8788_charger_driver_init6 = internal global ptr @lp8788_charger_driver_init, section ".initcall6.init", align 4
@lp8788_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_charger_probe, ptr @lp8788_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_charger_driver_exit = internal global ptr @lp8788_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [52 x i8] c"lp8788_charger.description=TI LP8788 Charger Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [31 x i8] c"lp8788_charger.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [56 x i8] c"lp8788_charger.file=drivers/power/supply/lp8788-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [27 x i8] c"lp8788_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias238 = internal constant [45 x i8] c"lp8788_charger.alias=platform:lp8788-charger\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lp8788-charger\00", [17 x i8] zeroinitializer }, align 32
@lp8788_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register charger irq: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lp8788_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/lp8788-charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_charger_probe._entry_ptr = internal global ptr @lp8788_charger_probe._entry, section ".printk_index", align 4
@lp8788_update_charger_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 375, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"skip updating charger parameters\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lp8788_update_charger_params\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lp8788_update_charger_params._entry_ptr = internal global ptr @lp8788_update_charger_params._entry, section ".printk_index", align 4
@lp8788_charger_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lp8788_charger_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@battery_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@lp8788_psy_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.42, i32 3, ptr null, i32 0, ptr @lp8788_charger_prop, i32 2, ptr @lp8788_charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@lp8788_psy_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.41, i32 1, ptr null, i32 0, ptr @lp8788_battery_prop, i32 8, ptr @lp8788_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@lp8788_charger_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lp8788_charger_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lp8788_charger_sysfs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_charger_status, ptr @dev_attr_eoc_time, ptr @dev_attr_eoc_level, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_charger_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp8788_show_charger_status, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eoc_time = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp8788_show_eoc_time, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eoc_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lp8788_show_eoc_level, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"charger_status\00", [17 x i8] zeroinitializer }, align 32
@lp8788_show_charger_status.desc = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.10, ptr @.str.11, ptr null, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null, ptr null, ptr null, ptr @.str.18, ptr null, ptr null, ptr @.str.19], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CHARGER OFF\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WARM UP\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOW INPUT STATE\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CHARGING - PRECHARGE\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CHARGING - CC\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CHARGING - CV\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NO CHARGING - MAINTENANCE\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BATTERY FAULT\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SYSTEM SUPPORT\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HIGH CURRENT\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eoc_time\00", [23 x i8] zeroinitializer }, align 32
@lp8788_show_eoc_time.stime = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400ms\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5min\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"10min\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"15min\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20min\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"25min\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"30min\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No timeout\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"End Of Charge Time: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eoc_level\00", [22 x i8] zeroinitializer }, align 32
@lp8788_show_eoc_level.abs_level = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25mA\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"49mA\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"75mA\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"98mA\00", [27 x i8] zeroinitializer }, align 32
@lp8788_show_eoc_level.relative_level = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5%\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"10%\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"15%\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20%\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"End Of Charge Level: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"main_batt\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charger\00", [24 x i8] zeroinitializer }, align 32
@lp8788_charger_prop = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 16], [24 x i8] zeroinitializer }, align 32
@lp8788_battery_prop = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 2, i32 3, i32 12, i32 47, i32 29, i32 32, i32 52], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHG_IRQ\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PRSW_IRQ\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BATT_IRQ\00", [23 x i8] zeroinitializer }, align 32
@lp8788_irq_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&pchg->charger_work)\00", [57 x i8] zeroinitializer }, align 32
@lp8788_irq_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq setup failed: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lp8788_irq_register\00", [44 x i8] zeroinitializer }, align 32
@lp8788_irq_register._entry_ptr = internal global ptr @lp8788_irq_register._entry, section ".printk_index", align 4
@lp8788_irq_register._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 542, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid total number of irqs: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lp8788_irq_register._entry_ptr.52 = internal global ptr @lp8788_irq_register._entry.49, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.53 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 3, i64 12, i64 29, i64 32, i64 47, i64 52]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 5, i64 6, i64 7, i64 15]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 9, i64 10, i64 21, i64 22]
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"lp8788_charger_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 729, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 733, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 713, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 375, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [28 x i8] c"lp8788_charger_sysfs_groups\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"battery_supplied_to\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 113, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"lp8788_psy_charger_desc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 393, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"lp8788_psy_battery_desc\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 401, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"lp8788_charger_sysfs_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 659, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"lp8788_charger_sysfs_attrs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 652, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"dev_attr_charger_status\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"dev_attr_eoc_time\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"dev_attr_eoc_level\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 648, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 588, i32 28 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 589, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 590, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 591, i32 24 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 592, i32 24 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 593, i32 17 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 594, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 595, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 596, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 597, i32 29 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 598, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 605, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 649, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"stime\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 612, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 613, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 613, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 613, i32 20 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 613, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 614, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 614, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 614, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 614, i32 30 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 621, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 650, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant [10 x i8] c"abs_level\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 629, i32 28 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 630, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 630, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 630, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 630, i32 28 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"relative_level\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 632, i32 28 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 633, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 633, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 633, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 633, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 645, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 114, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 394, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"lp8788_charger_prop\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 117, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"lp8788_battery_prop\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 122, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 524, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 524, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 524, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 529, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 535, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [41 x i8] c"../drivers/power/supply/lp8788-charger.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 541, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_lp8788_charger_driver_exit, ptr @__initcall__kmod_lp8788_charger__233_736_lp8788_charger_driver_init6, ptr @lp8788_charger_driver_exit, ptr @lp8788_charger_probe._entry, ptr @lp8788_charger_probe._entry_ptr, ptr @lp8788_irq_register._entry, ptr @lp8788_irq_register._entry.49, ptr @lp8788_irq_register._entry_ptr, ptr @lp8788_irq_register._entry_ptr.52, ptr @lp8788_update_charger_params._entry, ptr @lp8788_update_charger_params._entry_ptr, ptr @lp8788_charger_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @lp8788_charger_sysfs_groups, ptr @battery_supplied_to, ptr @lp8788_psy_charger_desc, ptr @lp8788_psy_battery_desc, ptr @lp8788_charger_sysfs_group, ptr @lp8788_charger_sysfs_attrs, ptr @dev_attr_charger_status, ptr @dev_attr_eoc_time, ptr @dev_attr_eoc_level, ptr @.str.9, ptr @lp8788_show_charger_status.desc, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @lp8788_show_eoc_time.stime, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @lp8788_show_eoc_level.abs_level, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @lp8788_show_eoc_level.relative_level, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @lp8788_charger_prop, ptr @lp8788_battery_prop, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @lp8788_irq_register.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_update_charger_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_charger_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_psy_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_psy_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_charger_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_charger_sysfs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_charger_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eoc_time to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eoc_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_show_charger_status.desc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_show_eoc_time.stime to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_show_eoc_level.abs_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_show_eoc_level.relative_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_charger_prop to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_battery_prop to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_irq_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_irq_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_irq_register._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp8788_charger_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp8788_charger_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %charger_cfg.i = alloca %struct.power_supply_config, align 4
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdata757 = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %pdata757 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pdata757, align 4
  %driver_data.i.i58 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i58 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i58, align 4
  br label %do.end.i

cond.end:                                         ; preds = %if.end
  %chg_pdata = getelementptr inbounds %struct.lp8788_platform_data, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %chg_pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chg_pdata, align 4
  %pdata7 = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %pdata7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pdata7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %cond.end.do.end.i_crit_edge, label %lor.lhs.false.i

cond.end.do.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %cond.end
  %chg_params.i = getelementptr inbounds %struct.lp8788_charger_platform_data, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %chg_params.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chg_params.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %num_chg_params.i = getelementptr inbounds %struct.lp8788_charger_platform_data, ptr %10, i32 0, i32 4
  %15 = ptrtoint ptr %num_chg_params.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_chg_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25.i = icmp sgt i32 %16, 0
  br i1 %cmp25.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end11_crit_edge

for.cond.preheader.i.if.end11_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %cond.end.do.end.i_crit_edge, %cond.end.thread
  %pdata761 = phi ptr [ %pdata757, %cond.end.thread ], [ %pdata7, %lor.lhs.false.i.do.end.i_crit_edge ], [ %pdata7, %cond.end.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %if.end11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %chg_params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chg_params.i, align 4
  %add.ptr.i = getelementptr %struct.lp8788_chg_param, ptr %18, i32 %i.026.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  %21 = add i8 %20, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %21)
  %22 = icmp ult i8 %21, 12
  br i1 %22, label %if.then5.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i
  %val.i = getelementptr %struct.lp8788_chg_param, ptr %18, i32 %i.026.i, i32 1
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  %call7.i = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %20, i8 noundef zeroext %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.for.inc.i_crit_edge, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %25 = ptrtoint ptr %num_chg_params.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_chg_params.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %26
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end11_crit_edge

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %do.end.i, %for.cond.preheader.i.if.end11_crit_edge
  %pdata760.ph = phi ptr [ %pdata7, %for.cond.preheader.i.if.end11_crit_edge ], [ %pdata761, %do.end.i ], [ %pdata7, %for.inc.i.if.end11_crit_edge ]
  %27 = ptrtoint ptr %pdata760.ph to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata760.ph, align 4
  %tobool.not.i45 = icmp eq ptr %28, null
  br i1 %tobool.not.i45, label %if.end11.lp8788_setup_adc_channel.exit_crit_edge, label %if.end.i

if.end11.lp8788_setup_adc_channel.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_setup_adc_channel.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i46 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef %30) #6
  %cmp.i.i = icmp ugt ptr %call.i46, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i46
  %chan3.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %chan3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spec.select.i, ptr %chan3.i, align 4
  %adc_batt_temp.i = getelementptr inbounds %struct.lp8788_charger_platform_data, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %adc_batt_temp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adc_batt_temp.i, align 4
  %call4.i = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef %33) #6
  %cmp.i21.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  %cond9.i = select i1 %cmp.i21.i, ptr null, ptr %call4.i
  %arrayidx11.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cond9.i, ptr %arrayidx11.i, align 4
  br label %lp8788_setup_adc_channel.exit

lp8788_setup_adc_channel.exit:                    ; preds = %if.end.i, %if.end11.lp8788_setup_adc_channel.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %charger_cfg.i) #6
  %35 = call ptr @memset(ptr %charger_cfg.i, i32 0, i32 12)
  %attr_grp.i = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg.i, i32 0, i32 3
  %36 = ptrtoint ptr %attr_grp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @lp8788_charger_sysfs_groups, ptr %attr_grp.i, align 4
  %supplied_to.i = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg.i, i32 0, i32 4
  %37 = ptrtoint ptr %supplied_to.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @battery_supplied_to, ptr %supplied_to.i, align 4
  %num_supplicants.i = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg.i, i32 0, i32 5
  %38 = ptrtoint ptr %num_supplicants.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %num_supplicants.i, align 4
  %call.i48 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @lp8788_psy_charger_desc, ptr noundef nonnull %charger_cfg.i) #6
  %charger.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %charger.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i48, ptr %charger.i, align 4
  %cmp.i.i49 = icmp ugt ptr %call.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i49, label %lp8788_setup_adc_channel.exit.lp8788_psy_register.exit.thread_crit_edge, label %if.end.i51

lp8788_setup_adc_channel.exit.lp8788_psy_register.exit.thread_crit_edge: ; preds = %lp8788_setup_adc_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_psy_register.exit.thread

if.end.i51:                                       ; preds = %lp8788_setup_adc_channel.exit
  %call4.i50 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @lp8788_psy_battery_desc, ptr noundef null) #6
  %battery.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call4.i50, ptr %battery.i, align 4
  %cmp.i15.i = icmp ugt ptr %call4.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.then7.i, label %if.end16

if.then7.i:                                       ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %charger.i, align 4
  call void @power_supply_unregister(ptr noundef %42) #6
  br label %lp8788_psy_register.exit.thread

lp8788_psy_register.exit.thread:                  ; preds = %if.then7.i, %lp8788_setup_adc_channel.exit.lp8788_psy_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %charger_cfg.i) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end.i51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %charger_cfg.i) #6
  %charger_work.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %charger_work.i, i32 noundef 0) #6
  %43 = ptrtoint ptr %charger_work.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %charger_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @lp8788_irq_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @lp8788_charger_event, ptr %func.i, align 4
  %num_irqs.i = getelementptr inbounds %struct.lp8788_charger, ptr %call.i, i32 0, i32 6
  %47 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %num_irqs.i, align 4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %irqdm1.i.i = getelementptr inbounds %struct.lp8788, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %irqdm1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irqdm1.i.i, align 4
  %call.i.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.43) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.for.inc.i54_crit_edge, label %if.end.i.i

if.end16.for.inc.i54_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i54

if.end.i.i:                                       ; preds = %if.end16
  %52 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp.not57.i.i = icmp sgt i32 %53, %55
  br i1 %cmp.not57.i.i, label %if.end.i.i.for.inc.i54_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.inc.i54_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i54

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc11.i.i = add i32 %i.058.i.i, 1
  %cmp.not.i.i = icmp sgt i32 %inc11.i.i, %55
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.inc.i54_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.for.inc.i54_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i54

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.058.i.i = phi i32 [ %inc11.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %53, %if.end.i.i.for.body.i.i_crit_edge ]
  %56 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_irqs.i, align 4
  %call.i.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %51, i32 noundef %i.058.i.i, ptr noundef null) #6
  %arrayidx.i.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %57
  %virq3.i.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %57, i32 1
  %58 = ptrtoint ptr %virq3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i.i.i, ptr %virq3.i.i, align 4
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.058.i.i, ptr %arrayidx.i.i, align 4
  %60 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_irqs.i, align 4
  %inc.i.i = add i32 %61, 1
  store i32 %inc.i.i, ptr %num_irqs.i, align 4
  %call7.i.i = call i32 @request_threaded_irq(i32 noundef %call.i.i.i, ptr noundef null, ptr noundef nonnull @lp8788_charger_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.43, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %for.cond.i.i, label %for.body.i.i.for.cond15.preheader.i.i_crit_edge

for.body.i.i.for.cond15.preheader.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15.preheader.i.i

for.cond15.preheader.i.i:                         ; preds = %for.body.i.2.i.for.cond15.preheader.i.i_crit_edge, %for.body.i.1.i.for.cond15.preheader.i.i_crit_edge, %for.body.i.i.for.cond15.preheader.i.i_crit_edge
  %.lcssa.i = phi ptr [ @.str.45, %for.body.i.2.i.for.cond15.preheader.i.i_crit_edge ], [ @.str.44, %for.body.i.1.i.for.cond15.preheader.i.i_crit_edge ], [ @.str.43, %for.body.i.i.for.cond15.preheader.i.i_crit_edge ]
  %call7.i.lcssa.i = phi i32 [ %call7.i.2.i, %for.body.i.2.i.for.cond15.preheader.i.i_crit_edge ], [ %call7.i.1.i, %for.body.i.1.i.for.cond15.preheader.i.i_crit_edge ], [ %call7.i.i, %for.body.i.i.for.cond15.preheader.i.i_crit_edge ]
  %62 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp1759.i.i = icmp sgt i32 %63, 0
  br i1 %cmp1759.i.i, label %for.cond15.preheader.i.i.for.body18.i.i_crit_edge, label %lp8788_irq_register.exit.thread74

for.cond15.preheader.i.i.for.body18.i.i_crit_edge: ; preds = %for.cond15.preheader.i.i
  br label %for.body18.i.i

lp8788_irq_register.exit.thread74:                ; preds = %for.cond15.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %.lcssa.i) #9
  br label %do.end

for.body18.i.i:                                   ; preds = %for.body18.i.i.for.body18.i.i_crit_edge, %for.cond15.preheader.i.i.for.body18.i.i_crit_edge
  %i.160.i.i = phi i32 [ %inc24.i.i, %for.body18.i.i.for.body18.i.i_crit_edge ], [ 0, %for.cond15.preheader.i.i.for.body18.i.i_crit_edge ]
  %virq21.i.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %i.160.i.i, i32 1
  %64 = ptrtoint ptr %virq21.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %virq21.i.i, align 4
  %call22.i.i = call ptr @free_irq(i32 noundef %65, ptr noundef %call.i) #6
  %inc24.i.i = add nuw nsw i32 %i.160.i.i, 1
  %66 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_irqs.i, align 4
  %cmp17.i.i = icmp slt i32 %inc24.i.i, %67
  br i1 %cmp17.i.i, label %for.body18.i.i.for.body18.i.i_crit_edge, label %lp8788_irq_register.exit

for.body18.i.i.for.body18.i.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i.i

for.inc.i54:                                      ; preds = %for.cond.i.i.for.inc.i54_crit_edge, %if.end.i.i.for.inc.i54_crit_edge, %if.end16.for.inc.i54_crit_edge
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %irqdm1.i.1.i = getelementptr inbounds %struct.lp8788, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %irqdm1.i.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %irqdm1.i.1.i, align 4
  %call.i.1.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.44) #6
  %tobool.not.i.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.i.1.i, label %for.inc.i54.for.inc.1.i_crit_edge, label %if.end.i.1.i

for.inc.i54.for.inc.1.i_crit_edge:                ; preds = %for.inc.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i54
  %72 = ptrtoint ptr %call.i.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call.i.1.i, align 4
  %end.i.1.i = getelementptr inbounds %struct.resource, ptr %call.i.1.i, i32 0, i32 1
  %74 = ptrtoint ptr %end.i.1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %end.i.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp.not57.i.1.i = icmp sgt i32 %73, %75
  br i1 %cmp.not57.i.1.i, label %if.end.i.1.i.for.inc.1.i_crit_edge, label %if.end.i.1.i.for.body.i.1.i_crit_edge

if.end.i.1.i.for.body.i.1.i_crit_edge:            ; preds = %if.end.i.1.i
  br label %for.body.i.1.i

if.end.i.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

for.body.i.1.i:                                   ; preds = %for.cond.i.1.i.for.body.i.1.i_crit_edge, %if.end.i.1.i.for.body.i.1.i_crit_edge
  %i.058.i.1.i = phi i32 [ %inc11.i.1.i, %for.cond.i.1.i.for.body.i.1.i_crit_edge ], [ %73, %if.end.i.1.i.for.body.i.1.i_crit_edge ]
  %76 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_irqs.i, align 4
  %call.i.i.1.i = call i32 @irq_create_mapping_affinity(ptr noundef %71, i32 noundef %i.058.i.1.i, ptr noundef null) #6
  %arrayidx.i.1.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %77
  %virq3.i.1.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %77, i32 1
  %78 = ptrtoint ptr %virq3.i.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call.i.i.1.i, ptr %virq3.i.1.i, align 4
  %79 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %i.058.i.1.i, ptr %arrayidx.i.1.i, align 4
  %80 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_irqs.i, align 4
  %inc.i.1.i = add i32 %81, 1
  store i32 %inc.i.1.i, ptr %num_irqs.i, align 4
  %call7.i.1.i = call i32 @request_threaded_irq(i32 noundef %call.i.i.1.i, ptr noundef null, ptr noundef nonnull @lp8788_charger_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.44, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1.i)
  %tobool8.not.i.1.i = icmp eq i32 %call7.i.1.i, 0
  br i1 %tobool8.not.i.1.i, label %for.cond.i.1.i, label %for.body.i.1.i.for.cond15.preheader.i.i_crit_edge

for.body.i.1.i.for.cond15.preheader.i.i_crit_edge: ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15.preheader.i.i

for.cond.i.1.i:                                   ; preds = %for.body.i.1.i
  %inc11.i.1.i = add i32 %i.058.i.1.i, 1
  %cmp.not.i.1.i = icmp sgt i32 %inc11.i.1.i, %75
  br i1 %cmp.not.i.1.i, label %for.cond.i.1.i.for.inc.1.i_crit_edge, label %for.cond.i.1.i.for.body.i.1.i_crit_edge

for.cond.i.1.i.for.body.i.1.i_crit_edge:          ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.1.i

for.cond.i.1.i.for.inc.1.i_crit_edge:             ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.cond.i.1.i.for.inc.1.i_crit_edge, %if.end.i.1.i.for.inc.1.i_crit_edge, %for.inc.i54.for.inc.1.i_crit_edge
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  %irqdm1.i.2.i = getelementptr inbounds %struct.lp8788, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %irqdm1.i.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %irqdm1.i.2.i, align 4
  %call.i.2.i = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.45) #6
  %tobool.not.i.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.i.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.i.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  %86 = ptrtoint ptr %call.i.2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call.i.2.i, align 4
  %end.i.2.i = getelementptr inbounds %struct.resource, ptr %call.i.2.i, i32 0, i32 1
  %88 = ptrtoint ptr %end.i.2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %end.i.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp.not57.i.2.i = icmp sgt i32 %87, %89
  br i1 %cmp.not57.i.2.i, label %if.end.i.2.i.for.inc.2.i_crit_edge, label %if.end.i.2.i.for.body.i.2.i_crit_edge

if.end.i.2.i.for.body.i.2.i_crit_edge:            ; preds = %if.end.i.2.i
  br label %for.body.i.2.i

if.end.i.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

for.body.i.2.i:                                   ; preds = %for.cond.i.2.i.for.body.i.2.i_crit_edge, %if.end.i.2.i.for.body.i.2.i_crit_edge
  %i.058.i.2.i = phi i32 [ %inc11.i.2.i, %for.cond.i.2.i.for.body.i.2.i_crit_edge ], [ %87, %if.end.i.2.i.for.body.i.2.i_crit_edge ]
  %90 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_irqs.i, align 4
  %call.i.i.2.i = call i32 @irq_create_mapping_affinity(ptr noundef %85, i32 noundef %i.058.i.2.i, ptr noundef null) #6
  %arrayidx.i.2.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %91
  %virq3.i.2.i = getelementptr %struct.lp8788_charger, ptr %call.i, i32 0, i32 5, i32 %91, i32 1
  %92 = ptrtoint ptr %virq3.i.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call.i.i.2.i, ptr %virq3.i.2.i, align 4
  %93 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %i.058.i.2.i, ptr %arrayidx.i.2.i, align 4
  %94 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_irqs.i, align 4
  %inc.i.2.i = add i32 %95, 1
  store i32 %inc.i.2.i, ptr %num_irqs.i, align 4
  %call7.i.2.i = call i32 @request_threaded_irq(i32 noundef %call.i.i.2.i, ptr noundef null, ptr noundef nonnull @lp8788_charger_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.45, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.2.i)
  %tobool8.not.i.2.i = icmp eq i32 %call7.i.2.i, 0
  br i1 %tobool8.not.i.2.i, label %for.cond.i.2.i, label %for.body.i.2.i.for.cond15.preheader.i.i_crit_edge

for.body.i.2.i.for.cond15.preheader.i.i_crit_edge: ; preds = %for.body.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond15.preheader.i.i

for.cond.i.2.i:                                   ; preds = %for.body.i.2.i
  %inc11.i.2.i = add i32 %i.058.i.2.i, 1
  %cmp.not.i.2.i = icmp sgt i32 %inc11.i.2.i, %89
  br i1 %cmp.not.i.2.i, label %for.cond.i.2.i.for.inc.2.i_crit_edge, label %for.cond.i.2.i.for.body.i.2.i_crit_edge

for.cond.i.2.i.for.body.i.2.i_crit_edge:          ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.2.i

for.cond.i.2.i.for.inc.2.i_crit_edge:             ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.cond.i.2.i.for.inc.2.i_crit_edge, %if.end.i.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %96 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %97)
  %cmp11.i = icmp sgt i32 %97, 11
  br i1 %cmp11.i, label %lp8788_irq_register.exit.thread70, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lp8788_irq_register.exit.thread70:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %97) #9
  br label %do.end

lp8788_irq_register.exit:                         ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %.lcssa.i) #9
  br label %do.end

do.end:                                           ; preds = %lp8788_irq_register.exit, %lp8788_irq_register.exit.thread70, %lp8788_irq_register.exit.thread74
  %retval.0.i5573 = phi i32 [ -22, %lp8788_irq_register.exit.thread70 ], [ %call7.i.lcssa.i, %lp8788_irq_register.exit ], [ %call7.i.lcssa.i, %lp8788_irq_register.exit.thread74 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i5573) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.2.i.cleanup_crit_edge, %lp8788_psy_register.exit.thread, %if.then5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ -1, %lp8788_psy_register.exit.thread ], [ 0, %for.inc.2.i.cleanup_crit_edge ], [ %call7.i, %if.then5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %charger_work = getelementptr inbounds %struct.lp8788_charger, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %charger_work) #6
  %num_irqs.i = getelementptr inbounds %struct.lp8788_charger, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp sgt i32 %3, 0
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.lp8788_irq_unregister.exit_crit_edge

entry.lp8788_irq_unregister.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_irq_unregister.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %virq.i = getelementptr %struct.lp8788_charger, ptr %1, i32 0, i32 5, i32 %i.02.i, i32 1
  %4 = ptrtoint ptr %virq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %6 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_irqs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.lp8788_irq_unregister.exit_crit_edge

for.inc.i.lp8788_irq_unregister.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_irq_unregister.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

lp8788_irq_unregister.exit:                       ; preds = %for.inc.i.lp8788_irq_unregister.exit_crit_edge, %entry.lp8788_irq_unregister.exit_crit_edge
  %battery.i = getelementptr inbounds %struct.lp8788_charger, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %battery.i, align 4
  tail call void @power_supply_unregister(ptr noundef %9) #6
  %charger.i = getelementptr inbounds %struct.lp8788_charger, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charger.i, align 4
  tail call void @power_supply_unregister(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_write_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_show_charger_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !152
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @lp8788_read_byte(ptr noundef %4, i8 noundef zeroext 7, ptr noundef nonnull %data) #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 15
  %9 = zext i8 %8 to i32
  %arrayidx = getelementptr [16 x ptr], ptr @lp8788_show_charger_status.desc, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.20, ptr noundef %11) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_read_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_show_eoc_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !152
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @lp8788_read_byte(ptr noundef %4, i8 noundef zeroext 22, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 7
  store i8 %8, ptr %val, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @lp8788_show_eoc_time.stime, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef %10) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_show_eoc_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !152
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @lp8788_read_byte(ptr noundef %4, i8 noundef zeroext 22, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %and = and i8 %6, 1
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 3
  store i8 %8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool.not = icmp eq i8 %and, 0
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @lp8788_show_eoc_level.abs_level, i32 0, i32 %idxprom
  %arrayidx8 = getelementptr [4 x ptr], ptr @lp8788_show_eoc_level.relative_level, i32 0, i32 %idxprom
  %cond.in = select i1 %tobool.not, ptr %arrayidx8, ptr %arrayidx
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load ptr, ptr %cond.in, align 4
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.40, ptr noundef %cond) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_charger_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  %read = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read) #6
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %read, align 1, !annotation !152
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 16, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data.i, align 1, !annotation !152
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i = call i32 @lp8788_read_byte(ptr noundef %8, i8 noundef zeroext 7, ptr noundef nonnull %data.i) #6
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 1
  %11 = and i8 %10, 3
  %12 = add nsw i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %13 = icmp ult i8 %12, 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  %conv = zext i1 %13 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call3 = call i32 @lp8788_read_byte(ptr noundef %15, i8 noundef zeroext 19, ptr noundef nonnull %read) #6
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %17)
  %cmp = icmp ult i8 %17, 23
  %conv4 = zext i8 %17 to i32
  %18 = mul nuw nsw i32 %conv4, 50
  %phi.bo11 = add nuw nsw i32 %18, 50
  %cond = select i1 %cmp, i32 %phi.bo11, i32 1200
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %storemerge = phi i32 [ %cond, %sw.bb2 ], [ %conv, %sw.bb ]
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_battery_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %read.i55 = alloca i8, align 1
  %read.i = alloca i8, align 1
  %result.i = alloca i32, align 4
  %vbatt.i = alloca i32, align 4
  %data.i39 = alloca i8, align 1
  %data.i35 = alloca i8, align 1
  %data.i30 = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 12, label %sw.bb6
    i32 47, label %sw.bb8
    i32 52, label %sw.bb10
    i32 29, label %sw.bb12
    i32 32, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data.i, align 1, !annotation !152
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = call i32 @lp8788_read_byte(ptr noundef %7, i8 noundef zeroext 7, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.lp8788_get_battery_status.exit_crit_edge

sw.bb.lp8788_get_battery_status.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_status.exit

if.end.i:                                         ; preds = %sw.bb
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 1
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 15
  %12 = zext i8 %11 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %12, label %sw.default.i [
    i32 0, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 4, label %if.end.i.sw.bb1.i_crit_edge
    i32 5, label %if.end.i.sw.bb1.i_crit_edge58
    i32 6, label %if.end.i.sw.bb1.i_crit_edge59
    i32 15, label %if.end.i.sw.bb1.i_crit_edge60
    i32 7, label %sw.bb2.i
  ]

if.end.i.sw.bb1.i_crit_edge60:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge59:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge58:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge58, %if.end.i.sw.bb1.i_crit_edge59, %if.end.i.sw.bb1.i_crit_edge60
  br label %cleanup.sink.split.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb1.i ], [ 4, %sw.bb2.i ], [ 3, %sw.default.i ], [ 2, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %val, align 4
  br label %lp8788_get_battery_status.exit

lp8788_get_battery_status.exit:                   ; preds = %cleanup.sink.split.i, %sw.bb.lp8788_get_battery_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i30) #6
  %15 = ptrtoint ptr %data.i30 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %data.i30, align 1, !annotation !152
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call.i31 = call i32 @lp8788_read_byte(ptr noundef %17, i8 noundef zeroext 7, ptr noundef nonnull %data.i30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.end.i34, label %sw.bb2.lp8788_get_battery_health.exit_crit_edge

sw.bb2.lp8788_get_battery_health.exit_crit_edge:  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_health.exit

if.end.i34:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i30, align 1
  %conv.i = zext i8 %19 to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %..i = select i1 %tobool5.not.i, i32 1, i32 3
  %.sink.i33 = select i1 %tobool1.not.i, i32 %..i, i32 5
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink.i33, ptr %val, align 4
  br label %lp8788_get_battery_health.exit

lp8788_get_battery_health.exit:                   ; preds = %if.end.i34, %sw.bb2.lp8788_get_battery_health.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i30) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i35) #6
  %21 = ptrtoint ptr %data.i35 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %data.i35, align 1, !annotation !152
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %call.i36 = call i32 @lp8788_read_byte(ptr noundef %23, i8 noundef zeroext 7, ptr noundef nonnull %data.i35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i38, label %sw.bb4.lp8788_get_battery_present.exit_crit_edge

sw.bb4.lp8788_get_battery_present.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_present.exit

if.end.i38:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %data.i35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i35, align 1
  %26 = lshr i8 %25, 6
  %.lobit.i = and i8 %26, 1
  %27 = xor i8 %.lobit.i, 1
  %28 = zext i8 %27 to i32
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val, align 4
  br label %lp8788_get_battery_present.exit

lp8788_get_battery_present.exit:                  ; preds = %if.end.i38, %sw.bb4.lp8788_get_battery_present.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i35) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %chan.i.i = getelementptr inbounds %struct.lp8788_charger, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %sw.bb6.cleanup_crit_edge, label %if.end.i.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @iio_read_channel_processed(ptr noundef nonnull %31, ptr noundef %val) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %pdata2.i = getelementptr inbounds %struct.lp8788_charger, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %pdata2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbatt.i) #6
  %36 = ptrtoint ptr %vbatt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %vbatt.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i39) #6
  %37 = ptrtoint ptr %data.i39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %data.i39, align 1, !annotation !152
  %tobool.not.i40 = icmp eq ptr %35, null
  br i1 %tobool.not.i40, label %sw.bb8.lp8788_get_battery_capacity.exit_crit_edge, label %if.end.i41

sw.bb8.lp8788_get_battery_capacity.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_capacity.exit

if.end.i41:                                       ; preds = %sw.bb8
  %max_vbatt_mv.i = getelementptr inbounds %struct.lp8788_charger_platform_data, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %max_vbatt_mv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_vbatt_mv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.end.i41.lp8788_get_battery_capacity.exit_crit_edge, label %if.end4.i

if.end.i41.lp8788_get_battery_capacity.exit_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_capacity.exit

if.end4.i:                                        ; preds = %if.end.i41
  %call.i42 = call i32 @lp8788_read_byte(ptr noundef %33, i8 noundef zeroext 7, ptr noundef nonnull %data.i39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool5.not.i43 = icmp eq i32 %call.i42, 0
  br i1 %tobool5.not.i43, label %if.end7.i, label %if.end4.i.lp8788_get_battery_capacity.exit_crit_edge

if.end4.i.lp8788_get_battery_capacity.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_capacity.exit

if.end7.i:                                        ; preds = %if.end4.i
  %40 = ptrtoint ptr %data.i39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data.i39, align 1
  %42 = and i8 %41, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %42)
  %cmp8.i = icmp eq i8 %42, 28
  br i1 %cmp8.i, label %if.end7.i.if.end17.i_crit_edge, label %if.else.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end7.i
  %chan.i.i44 = getelementptr inbounds %struct.lp8788_charger, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %chan.i.i44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan.i.i44, align 4
  %tobool.not.i.i45 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i45, label %if.else.i.lp8788_get_battery_capacity.exit_crit_edge, label %lp8788_get_vbatt_adc.exit.i

if.else.i.lp8788_get_battery_capacity.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_capacity.exit

lp8788_get_vbatt_adc.exit.i:                      ; preds = %if.else.i
  %call.i.i46 = call i32 @iio_read_channel_processed(ptr noundef nonnull %44, ptr noundef nonnull %vbatt.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool12.not.i = icmp eq i32 %call.i.i46, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %lp8788_get_vbatt_adc.exit.i.lp8788_get_battery_capacity.exit_crit_edge

lp8788_get_vbatt_adc.exit.i.lp8788_get_battery_capacity.exit_crit_edge: ; preds = %lp8788_get_vbatt_adc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_capacity.exit

if.end14.i:                                       ; preds = %lp8788_get_vbatt_adc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %vbatt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vbatt.i, align 4
  %mul.i = mul i32 %46, 100
  %div.i = udiv i32 %mul.i, %39
  %47 = call i32 @llvm.smin.i32(i32 %div.i, i32 100) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end14.i, %if.end7.i.if.end17.i_crit_edge
  %storemerge.i = phi i32 [ %47, %if.end14.i ], [ 100, %if.end7.i.if.end17.i_crit_edge ]
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.i, ptr %val, align 4
  br label %lp8788_get_battery_capacity.exit

lp8788_get_battery_capacity.exit:                 ; preds = %if.end17.i, %lp8788_get_vbatt_adc.exit.i.lp8788_get_battery_capacity.exit_crit_edge, %if.else.i.lp8788_get_battery_capacity.exit_crit_edge, %if.end4.i.lp8788_get_battery_capacity.exit_crit_edge, %if.end.i41.lp8788_get_battery_capacity.exit_crit_edge, %sw.bb8.lp8788_get_battery_capacity.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end17.i ], [ -22, %sw.bb8.lp8788_get_battery_capacity.exit_crit_edge ], [ -22, %if.end.i41.lp8788_get_battery_capacity.exit_crit_edge ], [ %call.i42, %if.end4.i.lp8788_get_battery_capacity.exit_crit_edge ], [ %call.i.i46, %lp8788_get_vbatt_adc.exit.i.lp8788_get_battery_capacity.exit_crit_edge ], [ -22, %if.else.i.lp8788_get_battery_capacity.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i39) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbatt.i) #6
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.lp8788_charger, ptr %3, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %51 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %result.i, align 4, !annotation !152
  %tobool.not.i47 = icmp eq ptr %50, null
  br i1 %tobool.not.i47, label %sw.bb10.lp8788_get_battery_temperature.exit_crit_edge, label %if.end.i50

sw.bb10.lp8788_get_battery_temperature.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_temperature.exit

if.end.i50:                                       ; preds = %sw.bb10
  %call.i48 = call i32 @iio_read_channel_processed(ptr noundef nonnull %50, ptr noundef nonnull %result.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %if.end.i50.lp8788_get_battery_temperature.exit_crit_edge, label %if.end2.i

if.end.i50.lp8788_get_battery_temperature.exit_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp8788_get_battery_temperature.exit

if.end2.i:                                        ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %result.i, align 4
  %mul.i51 = mul i32 %53, 10
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul.i51, ptr %val, align 4
  br label %lp8788_get_battery_temperature.exit

lp8788_get_battery_temperature.exit:              ; preds = %if.end2.i, %if.end.i50.lp8788_get_battery_temperature.exit_crit_edge, %sw.bb10.lp8788_get_battery_temperature.exit_crit_edge
  %retval.0.i52 = phi i32 [ 0, %if.end2.i ], [ -22, %sw.bb10.lp8788_get_battery_temperature.exit_crit_edge ], [ -22, %if.end.i50.lp8788_get_battery_temperature.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read.i) #6
  %55 = ptrtoint ptr %read.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %read.i, align 1, !annotation !152
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %call.i53 = call i32 @lp8788_read_byte(ptr noundef %57, i8 noundef zeroext 20, ptr noundef nonnull %read.i) #6
  %58 = ptrtoint ptr %read.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %read.i, align 1
  %60 = and i8 %59, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %60)
  %cmp.i54 = icmp ult i8 %60, 23
  %narrow.i = add nuw nsw i8 %60, 1
  %phi.bo.i = zext i8 %narrow.i to i32
  %phi.bo1.i = mul nuw nsw i32 %phi.bo.i, 50
  %cond.i = select i1 %cmp.i54, i32 %phi.bo1.i, i32 1200
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read.i) #6
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read.i55) #6
  %62 = ptrtoint ptr %read.i55 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %read.i55, align 1, !annotation !152
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %call.i56 = call i32 @lp8788_read_byte(ptr noundef %64, i8 noundef zeroext 21, ptr noundef nonnull %read.i55) #6
  %65 = ptrtoint ptr %read.i55 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %read.i55, align 1
  %67 = and i8 %66, 15
  %conv2.i = zext i8 %67 to i32
  %mul.i57 = mul nuw nsw i32 %conv2.i, 25
  %add.i = add nuw nsw i32 %mul.i57, 4100
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read.i55) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb12, %lp8788_get_battery_temperature.exit, %lp8788_get_battery_capacity.exit, %if.end.i.i, %sw.bb6.cleanup_crit_edge, %lp8788_get_battery_present.exit, %lp8788_get_battery_health.exit, %lp8788_get_battery_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb14 ], [ 0, %sw.bb12 ], [ %retval.0.i52, %lp8788_get_battery_temperature.exit ], [ %retval.0.i, %lp8788_get_battery_capacity.exit ], [ %call.i36, %lp8788_get_battery_present.exit ], [ %call.i31, %lp8788_get_battery_health.exit ], [ %call.i, %lp8788_get_battery_status.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.i.i ], [ -22, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_charger_event(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %pdata1 = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i, align 1, !annotation !152
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @lp8788_read_byte(ptr noundef %4, i8 noundef zeroext 7, ptr noundef nonnull %data.i) #6
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i, align 1
  %7 = and i8 %6, 3
  %8 = add nsw i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %9 = icmp ult i8 %8, 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  %conv = zext i1 %9 to i32
  %charger_event = getelementptr inbounds %struct.lp8788_charger_platform_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %charger_event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charger_event, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  call void %11(ptr noundef %13, i32 noundef %conv) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_charger_irq_thread(i32 noundef %virq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.lp8788_charger, ptr %ptr, i32 0, i32 7
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %num_irqs.i = getelementptr inbounds %struct.lp8788_charger, ptr %ptr, i32 0, i32 6
  %2 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.i = icmp sgt i32 %3, 0
  br i1 %cmp13.i, label %for.body.i.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %virq1.i23 = getelementptr %struct.lp8788_charger, ptr %ptr, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %virq1.i23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virq1.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %virq)
  %cmp2.i24 = icmp eq i32 %5, %virq
  br i1 %cmp2.i24, label %if.then.i.thread, label %for.body.i.preheader.for.inc.i_crit_edge

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %for.inc.i

if.then.i.thread:                                 ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i30 = getelementptr %struct.lp8788_charger, ptr %ptr, i32 0, i32 5, i32 0
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i
  %virq1.i = getelementptr %struct.lp8788_charger, ptr %ptr, i32 0, i32 5, i32 %inc.i, i32 1
  %6 = ptrtoint ptr %virq1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virq1.i, align 4
  %cmp2.i = icmp eq i32 %7, %virq
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %cmp.i = icmp slt i32 %inc.i, %3
  %arrayidx.i = getelementptr %struct.lp8788_charger, ptr %ptr, i32 0, i32 5, i32 %inc.i
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.preheader.for.inc.i_crit_edge
  %i.014.i25 = phi i32 [ %inc.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %for.body.i.preheader.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.014.i25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %3)
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %if.then.i.thread
  %.in = phi ptr [ %arrayidx.i30, %if.then.i.thread ], [ %arrayidx.i, %if.then.i.if.end_crit_edge ]
  %8 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %.in, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 8, label %if.end.sw.bb_crit_edge
    i32 9, label %if.end.sw.bb_crit_edge35
    i32 10, label %if.end.sw.bb_crit_edge36
    i32 21, label %if.end.sw.bb_crit_edge37
    i32 22, label %if.end.sw.bb_crit_edge38
  ]

if.end.sw.bb_crit_edge38:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge37:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge36:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge35:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge35, %if.end.sw.bb_crit_edge36, %if.end.sw.bb_crit_edge37, %if.end.sw.bb_crit_edge38
  %charger = getelementptr inbounds %struct.lp8788_charger, ptr %ptr, i32 0, i32 1
  %11 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %12) #6
  %battery = getelementptr inbounds %struct.lp8788_charger, ptr %ptr, i32 0, i32 2
  %13 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %14) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog
  %charger_event = getelementptr inbounds %struct.lp8788_charger_platform_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %charger_event to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %charger_event, align 4
  %tobool4.not = icmp ne ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp = icmp eq i32 %9, 8
  %or.cond = select i1 %tobool4.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %charger_work = getelementptr inbounds %struct.lp8788_charger, ptr %ptr, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %charger_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3.cleanup_crit_edge ], [ 1, %if.then5 ], [ 1, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_lp8788_charger__233_736_lp8788_charger_driver_init6, !1, !"__initcall__kmod_lp8788_charger__233_736_lp8788_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/lp8788-charger.c", i32 736, i32 1}
!2 = !{ptr @__exitcall_lp8788_charger_driver_exit, !1, !"__exitcall_lp8788_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description234, !4, !"__UNIQUE_ID_description234", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/lp8788-charger.c", i32 738, i32 1}
!5 = !{ptr @__UNIQUE_ID_author235, !6, !"__UNIQUE_ID_author235", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/lp8788-charger.c", i32 739, i32 1}
!7 = !{ptr @__UNIQUE_ID_file236, !8, !"__UNIQUE_ID_file236", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/lp8788-charger.c", i32 740, i32 1}
!9 = !{ptr @__UNIQUE_ID_license237, !8, !"__UNIQUE_ID_license237", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias238, !11, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/lp8788-charger.c", i32 741, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/lp8788-charger.c", i32 733, i32 11}
!14 = !{ptr @lp8788_charger_driver, !15, !"lp8788_charger_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/lp8788-charger.c", i32 729, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/lp8788-charger.c", i32 713, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lp8788_charger_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lp8788_charger_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/lp8788-charger.c", i32 375, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lp8788_update_charger_params._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @lp8788_update_charger_params._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @lp8788_charger_sysfs_groups, !31, !"lp8788_charger_sysfs_groups", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/lp8788-charger.c", i32 659, i32 1}
!32 = !{ptr @lp8788_charger_sysfs_group, !31, !"lp8788_charger_sysfs_group", i1 false, i1 false}
!33 = !{ptr @lp8788_charger_sysfs_attrs, !34, !"lp8788_charger_sysfs_attrs", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/lp8788-charger.c", i32 652, i32 26}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/lp8788-charger.c", i32 648, i32 8}
!37 = !{ptr @dev_attr_charger_status, !36, !"dev_attr_charger_status", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/lp8788-charger.c", i32 589, i32 18}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/lp8788-charger.c", i32 590, i32 22}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/lp8788-charger.c", i32 591, i32 24}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/lp8788-charger.c", i32 592, i32 24}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/lp8788-charger.c", i32 593, i32 17}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/lp8788-charger.c", i32 594, i32 17}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/lp8788-charger.c", i32 595, i32 26}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/lp8788-charger.c", i32 596, i32 28}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/lp8788-charger.c", i32 597, i32 29}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/lp8788-charger.c", i32 598, i32 27}
!58 = !{ptr @lp8788_show_charger_status.desc, !59, !"desc", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/lp8788-charger.c", i32 588, i32 28}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/lp8788-charger.c", i32 605, i32 35}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/lp8788-charger.c", i32 649, i32 8}
!64 = !{ptr @dev_attr_eoc_time, !63, !"dev_attr_eoc_time", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/lp8788-charger.c", i32 613, i32 3}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/lp8788-charger.c", i32 613, i32 12}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/lp8788-charger.c", i32 613, i32 20}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/lp8788-charger.c", i32 613, i32 29}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/lp8788-charger.c", i32 614, i32 3}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/lp8788-charger.c", i32 614, i32 12}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/lp8788-charger.c", i32 614, i32 21}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/lp8788-charger.c", i32 614, i32 30}
!81 = !{ptr @lp8788_show_eoc_time.stime, !82, !"stime", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/lp8788-charger.c", i32 612, i32 28}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/lp8788-charger.c", i32 621, i32 35}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/lp8788-charger.c", i32 650, i32 8}
!87 = !{ptr @dev_attr_eoc_level, !86, !"dev_attr_eoc_level", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/lp8788-charger.c", i32 630, i32 4}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/lp8788-charger.c", i32 630, i32 12}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/lp8788-charger.c", i32 630, i32 20}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/lp8788-charger.c", i32 630, i32 28}
!96 = !{ptr @lp8788_show_eoc_level.abs_level, !97, !"abs_level", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/lp8788-charger.c", i32 629, i32 28}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/lp8788-charger.c", i32 633, i32 4}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/lp8788-charger.c", i32 633, i32 10}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/lp8788-charger.c", i32 633, i32 17}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/lp8788-charger.c", i32 633, i32 24}
!106 = !{ptr @lp8788_show_eoc_level.relative_level, !107, !"relative_level", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/lp8788-charger.c", i32 632, i32 28}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/lp8788-charger.c", i32 645, i32 35}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/lp8788-charger.c", i32 114, i32 2}
!112 = !{ptr @battery_supplied_to, !113, !"battery_supplied_to", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/lp8788-charger.c", i32 113, i32 14}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/lp8788-charger.c", i32 394, i32 11}
!116 = !{ptr @lp8788_psy_charger_desc, !117, !"lp8788_psy_charger_desc", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/lp8788-charger.c", i32 393, i32 39}
!118 = !{ptr @lp8788_charger_prop, !119, !"lp8788_charger_prop", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/lp8788-charger.c", i32 117, i32 35}
!120 = !{ptr @lp8788_psy_battery_desc, !121, !"lp8788_psy_battery_desc", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/lp8788-charger.c", i32 401, i32 39}
!122 = !{ptr @lp8788_battery_prop, !123, !"lp8788_battery_prop", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/lp8788-charger.c", i32 122, i32 35}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/lp8788-charger.c", i32 524, i32 3}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/lp8788-charger.c", i32 524, i32 19}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/lp8788-charger.c", i32 524, i32 36}
!130 = !{ptr @lp8788_irq_register.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/lp8788-charger.c", i32 529, i32 2}
!132 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/power/supply/lp8788-charger.c", i32 535, i32 4}
!135 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @lp8788_irq_register._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @lp8788_irq_register._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/lp8788-charger.c", i32 541, i32 3}
!140 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lp8788_irq_register._entry.49, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @lp8788_irq_register._entry_ptr.52, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
