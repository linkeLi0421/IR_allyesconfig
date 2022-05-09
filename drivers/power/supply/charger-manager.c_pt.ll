; ModuleID = '/llk/IR_all_yes/drivers/power/supply/charger-manager.c_pt.bc'
source_filename = "../drivers/power/supply/charger-manager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.anon.85 = type { ptr, i64 }
%union.power_supply_propval = type { i32 }
%struct.charger_manager = type { %struct.list_head, ptr, ptr, ptr, i8, i32, [31 x i8], %struct.power_supply_desc, ptr, i64, i64, i32 }
%struct.charger_desc = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i32, i32 }
%struct.charger_regulator = type { ptr, ptr, i32, ptr, i32, %struct.attribute_group, %struct.device_attribute, %struct.device_attribute, %struct.device_attribute, [4 x ptr], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.charger_cable = type { ptr, ptr, ptr, i64, %struct.work_struct, %struct.notifier_block, i8, ptr, i32, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_charger_manager__288_1760_charger_manager_init7 = internal global ptr @charger_manager_init, section ".initcall7.init", align 4
@cm_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@charger_manager_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @charger_manager_probe, ptr @charger_manager_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.41, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @charger_manager_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @charger_manager_pm, ptr null, ptr null }, ptr @charger_manager_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_charger_manager_cleanup = internal global ptr @charger_manager_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [63 x i8] c"charger_manager.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [44 x i8] c"charger_manager.description=Charger Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [58 x i8] c"charger_manager.file=drivers/power/supply/charger-manager\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"charger_manager.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"charger_manager\00", [16 x i8] zeroinitializer }, align 32
@charger_manager_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cm_monitor_work = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&cm_monitor_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@charger_manager_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&cm_monitor_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@setup_polling = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @setup_polling, i64 4), ptr getelementptr (i8, ptr @setup_polling, i64 4) }, ptr @_setup_polling, %struct.lockdep_map { ptr @setup_polling, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@cm_list_mtx = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cm_list_mtx, i64 52), ptr getelementptr (i8, ptr @cm_list_mtx, i64 52) }, ptr @cm_list_mtx, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cm_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cm_list, ptr @cm_list }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cm_list_mtx.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm_list_mtx\00", [20 x i8] zeroinitializer }, align 32
@is_ext_pwr_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 163, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot find power supply \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"is_ext_pwr_online\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/charger-manager.c\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@is_ext_pwr_online._entry_ptr = internal global ptr @is_ext_pwr_online._entry, section ".printk_index", align 4
@cm_check_thermal_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 539, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get battery temperature\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cm_check_thermal_status\00", [40 x i8] zeroinitializer }, align 32
@cm_check_thermal_status._entry_ptr = internal global ptr @cm_check_thermal_status._entry, section ".printk_index", align 4
@check_charging_duration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.9, i32 468, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Charging duration exceed %ums\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"check_charging_duration\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@check_charging_duration._entry_ptr = internal global ptr @check_charging_duration._entry, section ".printk_index", align 4
@check_charging_duration._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.9, i32 476, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Discharging duration exceed %ums\0A\00", [62 x i8] zeroinitializer }, align 32
@check_charging_duration._entry_ptr.19 = internal global ptr @check_charging_duration._entry.17, section ".printk_index", align 4
@is_batt_present._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.20, ptr @.str.9, i32 125, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is_batt_present\00", [16 x i8] zeroinitializer }, align 32
@is_batt_present._entry_ptr = internal global ptr @is_batt_present._entry, section ".printk_index", align 4
@try_charger_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 399, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot enable %s regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"try_charger_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@try_charger_enable._entry_ptr = internal global ptr @try_charger_enable._entry, section ".printk_index", align 4
@try_charger_enable._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.9, i32 417, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot disable %s regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@try_charger_enable._entry_ptr.26 = internal global ptr @try_charger_enable._entry.24, section ".printk_index", align 4
@try_charger_enable._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.9, i32 431, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Disable regulator(%s) forcibly\0A\00", [32 x i8] zeroinitializer }, align 32
@try_charger_enable._entry_ptr.29 = internal global ptr @try_charger_enable._entry.27, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup_polling\00", [18 x i8] zeroinitializer }, align 32
@polling_jiffy = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"charger-manager: workqueue not initialized. try it later. %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__._setup_polling = private unnamed_addr constant [15 x i8] c"_setup_polling\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@next_polling = internal global { i32, [28 x i8] } zeroinitializer, align 32
@is_polling_required._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.9, i32 356, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Incorrect polling_mode (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is_polling_required\00", [44 x i8] zeroinitializer }, align 32
@is_polling_required._entry_ptr = internal global ptr @is_polling_required._entry, section ".printk_index", align 4
@is_charging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.34, ptr @.str.9, i32 233, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"is_charging\00", [20 x i8] zeroinitializer }, align 32
@is_charging._entry_ptr = internal global ptr @is_charging._entry, section ".printk_index", align 4
@is_charging._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.9, i32 242, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot read ONLINE value from %s\0A\00", [62 x i8] zeroinitializer }, align 32
@is_charging._entry_ptr.37 = internal global ptr @is_charging._entry.35, section ".printk_index", align 4
@is_charging._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.9, i32 260, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot read STATUS value from %s\0A\00", [62 x i8] zeroinitializer }, align 32
@is_charging._entry_ptr.40 = internal global ptr @is_charging._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"charger-manager\00", [16 x i8] zeroinitializer }, align 32
@charger_manager_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"charger-manager\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@charger_manager_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @cm_suspend_prepare, ptr @cm_suspend_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cm_suspend_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@charger_manager_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"charger-manager\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.9, i32 1436, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No platform data (desc) found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"charger_manager_probe\00", [42 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr = internal global ptr @charger_manager_probe._entry, section ".printk_index", align 4
@cm_timer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@charger_manager_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.9, i32 1462, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Ignoring full-battery voltage threshold as it is not supplied\0A\00", [33 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.46 = internal global ptr @charger_manager_probe._entry.44, section ".printk_index", align 4
@charger_manager_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.9, i32 1465, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Disabling full-battery voltage drop checking mechanism as it is not supplied\0A\00", [50 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.49 = internal global ptr @charger_manager_probe._entry.47, section ".printk_index", align 4
@charger_manager_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.9, i32 1469, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Ignoring full-battery soc(state of charge) threshold as it is not supplied\0A\00", [52 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.52 = internal global ptr @charger_manager_probe._entry.50, section ".printk_index", align 4
@charger_manager_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.9, i32 1472, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Ignoring full-battery full capacity threshold as it is not supplied\0A\00", [59 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.55 = internal global ptr @charger_manager_probe._entry.53, section ".printk_index", align 4
@charger_manager_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.43, ptr @.str.9, i32 1476, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"charger_regulators undefined\0A\00", [34 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.58 = internal global ptr @charger_manager_probe._entry.56, section ".printk_index", align 4
@charger_manager_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.43, ptr @.str.9, i32 1481, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No power supply defined\0A\00", [39 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.61 = internal global ptr @charger_manager_probe._entry.59, section ".printk_index", align 4
@charger_manager_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.43, ptr @.str.9, i32 1486, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No fuel gauge power supply defined\0A\00", [60 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.64 = internal global ptr @charger_manager_probe._entry.62, section ".printk_index", align 4
@charger_manager_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.43, ptr @.str.9, i32 1497, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.66 = internal global ptr @charger_manager_probe._entry.65, section ".printk_index", align 4
@charger_manager_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.43, ptr @.str.9, i32 1506, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"polling_interval_ms is too small\0A\00", [62 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.69 = internal global ptr @charger_manager_probe._entry.67, section ".printk_index", align 4
@charger_manager_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.43, ptr @.str.9, i32 1512, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Cannot limit charging duration checking mechanism to prevent overcharge/overheat and control discharging duration\0A\00", [45 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.72 = internal global ptr @charger_manager_probe._entry.70, section ".printk_index", align 4
@psy_default = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.109, i32 1, ptr null, i32 0, ptr @default_charger_props, i32 6, ptr @charger_get_property, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@default_charger_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 2, i32 3, i32 12, i32 47, i32 4], [40 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.43, ptr @.str.9, i32 1544, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.74 = internal global ptr @charger_manager_probe._entry.73, section ".printk_index", align 4
@charger_manager_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.43, ptr @.str.9, i32 1569, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize thermal data\0A\00", [61 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.77 = internal global ptr @charger_manager_probe._entry.75, section ".printk_index", align 4
@charger_manager_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.43, ptr @.str.9, i32 1581, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot prepare sysfs entry of regulators\0A\00", [54 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.80 = internal global ptr @charger_manager_probe._entry.78, section ".printk_index", align 4
@charger_manager_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.43, ptr @.str.9, i32 1591, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot register charger-manager with name \22%s\22\0A\00", [48 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.83 = internal global ptr @charger_manager_probe._entry.81, section ".printk_index", align 4
@charger_manager_probe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.43, ptr @.str.9, i32 1598, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot initialize extcon device\0A\00", [63 x i8] zeroinitializer }, align 32
@charger_manager_probe._entry_ptr.86 = internal global ptr @charger_manager_probe._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cm-name\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm-poll-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cm-poll-interval\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cm-fullbatt-vchkdrop-volt\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cm-fullbatt-voltage\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm-fullbatt-soc\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cm-fullbatt-capacity\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm-battery-stat\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cm-chargers\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cm-fuel-gauge\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm-thermal-zone\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm-battery-cold\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cm-battery-cold-in-minus\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm-battery-hot\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cm-battery-temp-diff\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm-charging-max\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cm-discharging-max\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cm-regulator-name\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cm-cable-name\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm-cable-extcon\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm-cable-min\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm-cable-max\00", [19 x i8] zeroinitializer }, align 32
@cm_timer_set = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"charger.%d\00", [21 x i8] zeroinitializer }, align 32
@charger_manager_prepare_sysfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@charger_manager_prepare_sysfs.__key.112 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@charger_manager_prepare_sysfs.__key.114 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"externally_control\00", [45 x i8] zeroinitializer }, align 32
@charger_manager_prepare_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.9, i32 1222, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"'%s' regulator's externally_control is %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"charger_manager_prepare_sysfs\00", [34 x i8] zeroinitializer }, align 32
@charger_manager_prepare_sysfs._entry_ptr = internal global ptr @charger_manager_prepare_sysfs._entry, section ".printk_index", align 4
@charger_manager_prepare_sysfs._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.9, i32 1226, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"Cannot register regulator because charger-manager must need at least one charger for charging battery\0A\00", [57 x i8] zeroinitializer }, align 32
@charger_manager_prepare_sysfs._entry_ptr.120 = internal global ptr @charger_manager_prepare_sysfs._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@charger_externally_control_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.9, i32 1154, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"'%s' regulator should be controlled in charger-manager because charger-manager must need at least one charger for charging\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"charger_externally_control_store\00", [63 x i8] zeroinitializer }, align 32
@charger_externally_control_store._entry_ptr = internal global ptr @charger_externally_control_store._entry, section ".printk_index", align 4
@charger_manager_register_extcon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.9, i32 1047, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot find charger(%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"charger_manager_register_extcon\00", [32 x i8] zeroinitializer }, align 32
@charger_manager_register_extcon._entry_ptr = internal global ptr @charger_manager_register_extcon._entry, section ".printk_index", align 4
@charger_manager_register_extcon._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.9, i32 1058, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot initialize charger(%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@charger_manager_register_extcon._entry_ptr.132 = internal global ptr @charger_manager_register_extcon._entry.130, section ".printk_index", align 4
@charger_extcon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&cable->wq)\00", [34 x i8] zeroinitializer }, align 32
@charger_extcon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.9, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013charger_manager: Cannot find extcon_dev for %s (cable: %s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"charger_extcon_init\00", [44 x i8] zeroinitializer }, align 32
@charger_extcon_init._entry_ptr = internal global ptr @charger_extcon_init._entry, section ".printk_index", align 4
@extcon_mapping = internal constant { [15 x %struct.anon.85], [48 x i8] } { [15 x %struct.anon.85] [%struct.anon.85 { ptr @.str.147, i64 1 }, %struct.anon.85 { ptr @.str.148, i64 2 }, %struct.anon.85 { ptr @.str.149, i64 5 }, %struct.anon.85 { ptr @.str.150, i64 6 }, %struct.anon.85 { ptr @.str.151, i64 7 }, %struct.anon.85 { ptr @.str.152, i64 8 }, %struct.anon.85 { ptr @.str.153, i64 9 }, %struct.anon.85 { ptr @.str.154, i64 10 }, %struct.anon.85 { ptr @.str.155, i64 11 }, %struct.anon.85 { ptr @.str.156, i64 12 }, %struct.anon.85 { ptr @.str.157, i64 60 }, %struct.anon.85 { ptr @.str.158, i64 61 }, %struct.anon.85 { ptr @.str.159, i64 62 }, %struct.anon.85 { ptr @.str.160, i64 5 }, %struct.anon.85 { ptr @.str.161, i64 7 }], [48 x i8] zeroinitializer }, align 32
@charger_extcon_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.9, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013charger_manager: Cannot find cable for type %s\00", [47 x i8] zeroinitializer }, align 32
@charger_extcon_init._entry_ptr.138 = internal global ptr @charger_extcon_init._entry.136, section ".printk_index", align 4
@charger_extcon_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.9, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013charger_manager: Cannot register extcon_dev for %s (cable: %s)\0A\00", [62 x i8] zeroinitializer }, align 32
@charger_extcon_init._entry_ptr.141 = internal global ptr @charger_extcon_init._entry.139, section ".printk_index", align 4
@charger_extcon_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.9, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013charger_manager: Cannot set current limit of %s (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"charger_extcon_work\00", [44 x i8] zeroinitializer }, align 32
@charger_extcon_work._entry_ptr = internal global ptr @charger_extcon_work._entry, section ".printk_index", align 4
@charger_extcon_work._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.9, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016charger_manager: Set current limit of %s : %duA ~ %duA\0A\00", [38 x i8] zeroinitializer }, align 32
@charger_extcon_work._entry_ptr.146 = internal global ptr @charger_extcon_work._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB-HOST\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SDP\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCP\00", [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CDP\00", [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACA\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FAST-CHARGER\00", [19 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SLOW-CHARGER\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WPT\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PD\00", [29 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOCK\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"JIG\00", [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MECHANICAL\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TA\00", [29 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CHARGE-DOWNSTREAM\00", [46 x i8] zeroinitializer }, align 32
@cm_suspended = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cm_setup_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.9, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016charger_manager: Charger Manager wakeup timer: %u ms\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm_setup_timer\00", [17 x i8] zeroinitializer }, align 32
@cm_setup_timer._entry_ptr = internal global ptr @cm_setup_timer._entry, section ".printk_index", align 4
@cm_suspend_duration_ms = internal global { i32, [28 x i8] } zeroinitializer, align 32
@str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 4, i64 12, i64 17, i64 24, i64 26, i64 47, i64 52]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"cm_wq\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 88, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"charger_manager_driver\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1739, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1752, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"cm_monitor_work\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 89, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1756, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"setup_polling\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"cm_list_mtx\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"cm_list\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 75, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 76, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 162, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 539, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 467, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 475, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 124, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 398, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 416, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 430, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 696, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"polling_jiffy\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 86, i32 22 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 675, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"next_polling\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 87, i32 22 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 355, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 232, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 241, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 259, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1741, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant [22 x i8] c"charger_manager_match\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1276, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant [19 x i8] c"charger_manager_pm\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1733, i32 32 }
@___asan_gen_.334 = private unnamed_addr constant [19 x i8] c"charger_manager_id\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1658, i32 40 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1436, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [9 x i8] c"cm_timer\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 79, i32 22 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1462, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1465, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1469, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1472, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1476, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1481, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1486, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1496, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1506, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1512, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant [12 x i8] c"psy_default\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 841, i32 39 }
@___asan_gen_.409 = private unnamed_addr constant [22 x i8] c"default_charger_props\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 824, i32 35 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1543, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1569, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1580, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1590, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1598, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1296, i32 30 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1298, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1301, i32 27 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1304, i32 27 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1306, i32 27 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1307, i32 27 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1308, i32 27 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1311, i32 27 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1315, i32 43 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1332, i32 30 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1334, i32 30 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1336, i32 27 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1337, i32 26 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1339, i32 27 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1340, i32 27 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1342, i32 27 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1344, i32 27 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1373, i32 35 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1392, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1394, i32 6 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1397, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1400, i32 6 }
@___asan_gen_.505 = private unnamed_addr constant [13 x i8] c"cm_timer_set\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 842, i32 10 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1185, i32 46 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1198, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1199, i32 34 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1203, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1204, i32 35 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1208, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1210, i32 7 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1221, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1226, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1081, i32 22 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1094, i32 38 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1094, i32 50 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1103, i32 22 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1120, i32 20 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1152, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1046, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1057, i32 5 }
@___asan_gen_.584 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 984, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 989, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant [15 x i8] c"extcon_mapping\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 32, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1004, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 1013, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 923, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 928, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 34, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 35, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 36, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 37, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 38, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 39, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 40, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 41, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 42, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 43, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 44, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 45, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 46, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 48, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 49, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant [13 x i8] c"cm_suspended\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 893, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant [23 x i8] c"cm_suspend_duration_ms\00", align 1
@___asan_gen_.685 = private constant [42 x i8] c"../drivers/power/supply/charger-manager.c\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 83, i32 22 }
@___asan_gen_.687 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [221 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_charger_manager_cleanup, ptr @__initcall__kmod_charger_manager__288_1760_charger_manager_init7, ptr @charger_extcon_init._entry, ptr @charger_extcon_init._entry.136, ptr @charger_extcon_init._entry.139, ptr @charger_extcon_init._entry_ptr, ptr @charger_extcon_init._entry_ptr.138, ptr @charger_extcon_init._entry_ptr.141, ptr @charger_extcon_work._entry, ptr @charger_extcon_work._entry.144, ptr @charger_extcon_work._entry_ptr, ptr @charger_extcon_work._entry_ptr.146, ptr @charger_externally_control_store._entry, ptr @charger_externally_control_store._entry_ptr, ptr @charger_manager_cleanup, ptr @charger_manager_prepare_sysfs._entry, ptr @charger_manager_prepare_sysfs._entry.118, ptr @charger_manager_prepare_sysfs._entry_ptr, ptr @charger_manager_prepare_sysfs._entry_ptr.120, ptr @charger_manager_probe._entry, ptr @charger_manager_probe._entry.44, ptr @charger_manager_probe._entry.47, ptr @charger_manager_probe._entry.50, ptr @charger_manager_probe._entry.53, ptr @charger_manager_probe._entry.56, ptr @charger_manager_probe._entry.59, ptr @charger_manager_probe._entry.62, ptr @charger_manager_probe._entry.65, ptr @charger_manager_probe._entry.67, ptr @charger_manager_probe._entry.70, ptr @charger_manager_probe._entry.73, ptr @charger_manager_probe._entry.75, ptr @charger_manager_probe._entry.78, ptr @charger_manager_probe._entry.81, ptr @charger_manager_probe._entry.84, ptr @charger_manager_probe._entry_ptr, ptr @charger_manager_probe._entry_ptr.46, ptr @charger_manager_probe._entry_ptr.49, ptr @charger_manager_probe._entry_ptr.52, ptr @charger_manager_probe._entry_ptr.55, ptr @charger_manager_probe._entry_ptr.58, ptr @charger_manager_probe._entry_ptr.61, ptr @charger_manager_probe._entry_ptr.64, ptr @charger_manager_probe._entry_ptr.66, ptr @charger_manager_probe._entry_ptr.69, ptr @charger_manager_probe._entry_ptr.72, ptr @charger_manager_probe._entry_ptr.74, ptr @charger_manager_probe._entry_ptr.77, ptr @charger_manager_probe._entry_ptr.80, ptr @charger_manager_probe._entry_ptr.83, ptr @charger_manager_probe._entry_ptr.86, ptr @charger_manager_register_extcon._entry, ptr @charger_manager_register_extcon._entry.130, ptr @charger_manager_register_extcon._entry_ptr, ptr @charger_manager_register_extcon._entry_ptr.132, ptr @check_charging_duration._entry, ptr @check_charging_duration._entry.17, ptr @check_charging_duration._entry_ptr, ptr @check_charging_duration._entry_ptr.19, ptr @cm_check_thermal_status._entry, ptr @cm_check_thermal_status._entry_ptr, ptr @cm_setup_timer._entry, ptr @cm_setup_timer._entry_ptr, ptr @is_batt_present._entry, ptr @is_batt_present._entry_ptr, ptr @is_charging._entry, ptr @is_charging._entry.35, ptr @is_charging._entry.38, ptr @is_charging._entry_ptr, ptr @is_charging._entry_ptr.37, ptr @is_charging._entry_ptr.40, ptr @is_ext_pwr_online._entry, ptr @is_ext_pwr_online._entry_ptr, ptr @is_polling_required._entry, ptr @is_polling_required._entry_ptr, ptr @try_charger_enable._entry, ptr @try_charger_enable._entry.24, ptr @try_charger_enable._entry.27, ptr @try_charger_enable._entry_ptr, ptr @try_charger_enable._entry_ptr.26, ptr @try_charger_enable._entry_ptr.29, ptr @cm_wq, ptr @charger_manager_driver, ptr @.str, ptr @.str.1, ptr @charger_manager_init.__key, ptr @cm_monitor_work, ptr @.str.2, ptr @charger_manager_init.__key.3, ptr @.str.4, ptr @setup_polling, ptr @cm_list_mtx, ptr @cm_list, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @polling_jiffy, ptr @.str.31, ptr @next_polling, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @charger_manager_match, ptr @charger_manager_pm, ptr @charger_manager_id, ptr @.str.42, ptr @.str.43, ptr @cm_timer, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.68, ptr @.str.71, ptr @psy_default, ptr @default_charger_props, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @cm_timer_set, ptr @.str.109, ptr @.str.110, ptr @charger_manager_prepare_sysfs.__key, ptr @.str.111, ptr @charger_manager_prepare_sysfs.__key.112, ptr @.str.113, ptr @charger_manager_prepare_sysfs.__key.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @charger_extcon_init.__key, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @extcon_mapping, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @cm_suspended, ptr @.str.162, ptr @.str.163, ptr @cm_suspend_duration_ms, ptr @str], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_monitor_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_polling to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_list_mtx to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_ext_pwr_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_check_thermal_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_charging_duration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_charging_duration._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_batt_present._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_charger_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_charger_enable._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_charger_enable._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_jiffy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_polling to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_polling_required._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_charging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_charging._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_charging._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psy_default to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_charger_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_probe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_timer_set to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_prepare_sysfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_prepare_sysfs.__key.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_prepare_sysfs.__key.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_prepare_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_prepare_sysfs._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_externally_control_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_register_extcon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_manager_register_extcon._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_extcon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_extcon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcon_mapping to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_extcon_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_extcon_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_extcon_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charger_extcon_work._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_suspended to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_setup_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_suspend_duration_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_manager_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.1) #11
  store ptr %call, ptr @cm_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body4, !prof !346

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_work(ptr noundef nonnull @cm_monitor_work, i32 noundef 0) #11
  store i32 -64, ptr @cm_monitor_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.2, ptr noundef nonnull @charger_manager_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @cm_monitor_poller, ptr getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @cm_monitor_work, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @charger_manager_init.__key.3) #11
  %call8 = tail call i32 @__platform_driver_register(ptr noundef nonnull @charger_manager_driver, ptr noundef null) #11
  br label %return

return:                                           ; preds = %do.body4, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call8, %do.body4 ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @charger_manager_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @cm_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  store ptr null, ptr @cm_wq, align 4
  tail call void @platform_driver_unregister(ptr noundef nonnull @charger_manager_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm_monitor_poller(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  %cm.01.i = load ptr, ptr @cm_list, align 4
  %cmp.not2.i = icmp eq ptr %cm.01.i, @cm_list
  br i1 %cmp.not2.i, label %entry.cm_monitor.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cm_monitor.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_monitor.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cm.03.i = phi ptr [ %cm.0.i, %for.body.i.for.body.i_crit_edge ], [ %cm.01.i, %entry.for.body.i_crit_edge ]
  %call.i = tail call fastcc zeroext i1 @_cm_monitor(ptr noundef %cm.03.i) #11
  %0 = ptrtoint ptr %cm.03.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %cm.0.i = load ptr, ptr %cm.03.i, align 4
  %cmp.not.i = icmp eq ptr %cm.0.i, @cm_list
  br i1 %cmp.not.i, label %for.body.i.cm_monitor.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.cm_monitor.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_monitor.exit

cm_monitor.exit:                                  ; preds = %for.body.i.cm_monitor.exit_crit_edge, %entry.cm_monitor.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef nonnull @setup_polling) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_cm_monitor(ptr nocapture noundef %cm) unnamed_addr #2 align 64 {
entry:
  %val.i.i.i = alloca %union.power_supply_propval, align 4
  %val.i.i = alloca %union.power_supply_propval, align 4
  %temp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc zeroext i1 @is_ext_pwr_online(ptr noundef %cm) #11
  br i1 %call.i, label %if.end.i, label %entry.cm_get_target_status.exit_crit_edge

entry.cm_get_target_status.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_get_target_status.exit

if.end.i:                                         ; preds = %entry
  %desc1.i.i = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %0 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i.i) #11
  %2 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp.i.i, align 4, !annotation !347
  %measure_battery_temp.i.i.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %measure_battery_temp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %measure_battery_temp.i.i.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.cm_check_thermal_status.exit.thread.i_crit_edge, label %if.end.i.i.i

if.end.i.cm_check_thermal_status.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_check_thermal_status.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %tzd_batt.i.i.i = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 3
  %5 = ptrtoint ptr %tzd_batt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzd_batt.i.i.i, align 8
  %tobool1.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @thermal_zone_get_temp(ptr noundef nonnull %6, ptr noundef nonnull %temp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %cm_get_battery_temperature.exit.thread30.i.i, label %if.then2.i.i.i.cm_check_thermal_status.exit.thread.i_crit_edge

if.then2.i.i.i.cm_check_thermal_status.exit.thread.i_crit_edge: ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_check_thermal_status.exit.thread.i

cm_get_battery_temperature.exit.thread30.i.i:     ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp.i.i, align 4
  %div.i.i.i = sdiv i32 %8, 100
  store i32 %div.i.i.i, ptr %temp.i.i, align 4
  br label %if.end.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %psy_fuel_gauge.i.i.i.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %psy_fuel_gauge.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psy_fuel_gauge.i.i.i.i, align 4
  %call.i.i.i.i = tail call ptr @power_supply_get_by_name(ptr noundef %10) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.cm_check_thermal_status.exit.thread.i_crit_edge, label %cm_get_battery_temperature.exit.i.i

if.else.i.i.i.cm_check_thermal_status.exit.thread.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_check_thermal_status.exit.thread.i

cm_get_battery_temperature.exit.i.i:              ; preds = %if.else.i.i.i
  %call1.i.i.i.i = call i32 @power_supply_get_property(ptr noundef nonnull %call.i.i.i.i, i32 noundef 52, ptr noundef nonnull %temp.i.i) #11
  call void @power_supply_put(ptr noundef nonnull %call.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %cm_get_battery_temperature.exit.i.i.if.end.i.i_crit_edge, label %cm_get_battery_temperature.exit.i.i.cm_check_thermal_status.exit.thread.i_crit_edge

cm_get_battery_temperature.exit.i.i.cm_check_thermal_status.exit.thread.i_crit_edge: ; preds = %cm_get_battery_temperature.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_check_thermal_status.exit.thread.i

cm_get_battery_temperature.exit.i.i.if.end.i.i_crit_edge: ; preds = %cm_get_battery_temperature.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

cm_check_thermal_status.exit.thread.i:            ; preds = %cm_get_battery_temperature.exit.i.i.cm_check_thermal_status.exit.thread.i_crit_edge, %if.else.i.i.i.cm_check_thermal_status.exit.thread.i_crit_edge, %if.then2.i.i.i.cm_check_thermal_status.exit.thread.i_crit_edge, %if.end.i.cm_check_thermal_status.exit.thread.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #11
  br label %if.end7.i

if.end.i.i:                                       ; preds = %cm_get_battery_temperature.exit.i.i.if.end.i.i_crit_edge, %cm_get_battery_temperature.exit.thread30.i.i
  %temp_max.i.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %temp_max.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_max.i.i, align 4
  %temp_min.i.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %temp_min.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp_min.i.i, align 4
  %emergency_stop.i.i = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 5
  %17 = ptrtoint ptr %emergency_stop.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %emergency_stop.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.cm_check_thermal_status.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.cm_check_thermal_status.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_check_thermal_status.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %temp_diff.i.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %temp_diff.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp_diff.i.i, align 4
  %sub.i.i = sub i32 %14, %20
  %add.i.i = add i32 %20, %16
  br label %cm_check_thermal_status.exit.i

cm_check_thermal_status.exit.i:                   ; preds = %if.then3.i.i, %if.end.i.i.cm_check_thermal_status.exit.i_crit_edge
  %upper_limit.0.i.i = phi i32 [ %sub.i.i, %if.then3.i.i ], [ %14, %if.end.i.i.cm_check_thermal_status.exit.i_crit_edge ]
  %lower_limit.0.i.i = phi i32 [ %add.i.i, %if.then3.i.i ], [ %16, %if.end.i.i.cm_check_thermal_status.exit.i_crit_edge ]
  %21 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %temp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %upper_limit.0.i.i)
  %cmp.i.i = icmp sgt i32 %22, %upper_limit.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %lower_limit.0.i.i)
  %cmp7.i.i = icmp slt i32 %22, %lower_limit.0.i.i
  %..i.i = select i1 %cmp7.i.i, i32 2, i32 0
  %ret.0.i.i = select i1 %cmp.i.i, i32 1, i32 %..i.i
  %23 = ptrtoint ptr %emergency_stop.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %ret.0.i.i, ptr %emergency_stop.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool.not.i, label %cm_check_thermal_status.exit.i.if.end7.i_crit_edge, label %if.then2.i

cm_check_thermal_status.exit.i.if.end7.i_crit_edge: ; preds = %cm_check_thermal_status.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then2.i:                                       ; preds = %cm_check_thermal_status.exit.i
  %call3.i = call fastcc i32 @check_charging_duration(ptr noundef %cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.cm_get_target_status.exit_crit_edge, label %if.then2.i.charging_ok.i_crit_edge

if.then2.i.charging_ok.i_crit_edge:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %charging_ok.i

if.then2.i.cm_get_target_status.exit_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_get_target_status.exit

if.end7.i:                                        ; preds = %cm_check_thermal_status.exit.i.if.end7.i_crit_edge, %cm_check_thermal_status.exit.thread.i
  %battery_status.i = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 11
  %24 = ptrtoint ptr %battery_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %battery_status.i, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end7.i.charging_ok.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %if.end7.i.sw.bb12.i_crit_edge
  ]

if.end7.i.sw.bb12.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

if.end7.i.charging_ok.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %charging_ok.i

sw.bb.i:                                          ; preds = %if.end7.i
  %call8.i = call fastcc i32 @check_charging_duration(ptr noundef %cm) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %sw.bb.i.sw.bb12.i_crit_edge, label %sw.bb.i.cm_get_target_status.exit_crit_edge

sw.bb.i.cm_get_target_status.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_get_target_status.exit

sw.bb.i.sw.bb12.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb.i.sw.bb12.i_crit_edge, %if.end7.i.sw.bb12.i_crit_edge
  %27 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %29 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i.i, align 4, !annotation !347
  %call.i.i = call fastcc zeroext i1 @is_batt_present(ptr noundef %cm) #11
  br i1 %call.i.i, label %if.end.i23.i, label %sw.bb12.i.is_full_charged.exit.thread.i_crit_edge

sw.bb12.i.is_full_charged.exit.thread.i_crit_edge: ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_full_charged.exit.thread.i

if.end.i23.i:                                     ; preds = %sw.bb12.i
  %30 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc1.i.i, align 4
  %psy_fuel_gauge.i.i = getelementptr inbounds %struct.charger_desc, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %psy_fuel_gauge.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %psy_fuel_gauge.i.i, align 4
  %call3.i.i = call ptr @power_supply_get_by_name(ptr noundef %33) #11
  %tobool.not.i22.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i22.i, label %if.end.i23.i.is_full_charged.exit.thread.i_crit_edge, label %if.end5.i24.i

if.end.i23.i.is_full_charged.exit.thread.i_crit_edge: ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_full_charged.exit.thread.i

if.end5.i24.i:                                    ; preds = %if.end.i23.i
  %fullbatt_uV.i.i = getelementptr inbounds %struct.charger_desc, ptr %28, i32 0, i32 4
  %34 = ptrtoint ptr %fullbatt_uV.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fullbatt_uV.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp.not.i.i, label %if.end5.i24.i.if.end20.i.i_crit_edge, label %if.then6.i.i

if.end5.i24.i.if.end20.i.i_crit_edge:             ; preds = %if.end5.i24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

if.then6.i.i:                                     ; preds = %if.end5.i24.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #11
  %36 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !347
  %37 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc1.i.i, align 4
  %psy_fuel_gauge.i.i.i = getelementptr inbounds %struct.charger_desc, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %psy_fuel_gauge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %psy_fuel_gauge.i.i.i, align 4
  %call.i.i25.i = call ptr @power_supply_get_by_name(ptr noundef %40) #11
  %tobool.not.i.i26.i = icmp eq ptr %call.i.i25.i, null
  br i1 %tobool.not.i.i26.i, label %if.then6.i.i.get_batt_uV.exit.thread.i.i_crit_edge, label %if.end.i.i27.i

if.then6.i.i.get_batt_uV.exit.thread.i.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_batt_uV.exit.thread.i.i

if.end.i.i27.i:                                   ; preds = %if.then6.i.i
  %call1.i.i.i = call i32 @power_supply_get_property(ptr noundef nonnull %call.i.i25.i, i32 noundef 12, ptr noundef nonnull %val.i.i.i) #11
  call void @power_supply_put(ptr noundef nonnull %call.i.i25.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then9.i.i, label %if.end.i.i27.i.get_batt_uV.exit.thread.i.i_crit_edge

if.end.i.i27.i.get_batt_uV.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_batt_uV.exit.thread.i.i

get_batt_uV.exit.thread.i.i:                      ; preds = %if.end.i.i27.i.get_batt_uV.exit.thread.i.i_crit_edge, %if.then6.i.i.get_batt_uV.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #11
  br label %if.end20.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i27.i
  %41 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #11
  %43 = ptrtoint ptr %battery_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %battery_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp10.i.i = icmp eq i32 %44, 4
  br i1 %cmp10.i.i, label %land.lhs.true.i.i, label %if.then9.i.i.if.end14.i.i_crit_edge

if.then9.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

land.lhs.true.i.i:                                ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fullbatt_vchkdrop_uV.i.i = getelementptr inbounds %struct.charger_desc, ptr %28, i32 0, i32 3
  %45 = ptrtoint ptr %fullbatt_vchkdrop_uV.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fullbatt_vchkdrop_uV.i.i, align 4
  %add.i28.i = add i32 %46, %42
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %land.lhs.true.i.i, %if.then9.i.i.if.end14.i.i_crit_edge
  %uV.1.i.i = phi i32 [ %42, %if.then9.i.i.if.end14.i.i_crit_edge ], [ %add.i28.i, %land.lhs.true.i.i ]
  %47 = ptrtoint ptr %fullbatt_uV.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fullbatt_uV.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uV.1.i.i, i32 %48)
  %cmp16.not.i.i = icmp ult i32 %uV.1.i.i, %48
  br i1 %cmp16.not.i.i, label %if.end14.i.i.if.end20.i.i_crit_edge, label %is_full_charged.exit.thread33.i

if.end14.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

is_full_charged.exit.thread33.i:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %cm_get_target_status.exit

if.end20.i.i:                                     ; preds = %if.end14.i.i.if.end20.i.i_crit_edge, %get_batt_uV.exit.thread.i.i, %if.end5.i24.i.if.end20.i.i_crit_edge
  %fullbatt_full_capacity.i.i = getelementptr inbounds %struct.charger_desc, ptr %28, i32 0, i32 6
  %49 = ptrtoint ptr %fullbatt_full_capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fullbatt_full_capacity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp21.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp21.not.i.i, label %if.end20.i.i.if.end30.i.i_crit_edge, label %if.then22.i.i

if.end20.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val.i.i, align 4
  %call23.i.i = call i32 @power_supply_get_property(ptr noundef nonnull %call3.i.i, i32 noundef 24, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %if.then22.i.i.if.end30.i.i_crit_edge

if.then22.i.i.if.end30.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

land.lhs.true25.i.i:                              ; preds = %if.then22.i.i
  %52 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i.i, align 4
  %54 = ptrtoint ptr %fullbatt_full_capacity.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fullbatt_full_capacity.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp27.i.i = icmp ugt i32 %53, %55
  br i1 %cmp27.i.i, label %is_full_charged.exit.thread38.i, label %land.lhs.true25.i.i.if.end30.i.i_crit_edge

land.lhs.true25.i.i.if.end30.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

is_full_charged.exit.thread38.i:                  ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @power_supply_put(ptr noundef nonnull %call3.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %cm_get_target_status.exit

if.end30.i.i:                                     ; preds = %land.lhs.true25.i.i.if.end30.i.i_crit_edge, %if.then22.i.i.if.end30.i.i_crit_edge, %if.end20.i.i.if.end30.i.i_crit_edge
  %fullbatt_soc.i.i = getelementptr inbounds %struct.charger_desc, ptr %28, i32 0, i32 5
  %56 = ptrtoint ptr %fullbatt_soc.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fullbatt_soc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp31.not.i.i = icmp eq i32 %57, 0
  br i1 %cmp31.not.i.i, label %if.end30.i.i.is_full_charged.exit.thread36.i_crit_edge, label %if.then32.i.i

if.end30.i.i.is_full_charged.exit.thread36.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_full_charged.exit.thread36.i

if.then32.i.i:                                    ; preds = %if.end30.i.i
  %58 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %val.i.i, align 4
  %call33.i.i = call i32 @power_supply_get_property(ptr noundef nonnull %call3.i.i, i32 noundef 47, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %is_full_charged.exit.i, label %if.then32.i.i.is_full_charged.exit.thread36.i_crit_edge

if.then32.i.i.is_full_charged.exit.thread36.i_crit_edge: ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_full_charged.exit.thread36.i

is_full_charged.exit.thread.i:                    ; preds = %if.end.i23.i.is_full_charged.exit.thread.i_crit_edge, %sw.bb12.i.is_full_charged.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %charging_ok.i

is_full_charged.exit.thread36.i:                  ; preds = %if.then32.i.i.is_full_charged.exit.thread36.i_crit_edge, %if.end30.i.i.is_full_charged.exit.thread36.i_crit_edge
  call void @power_supply_put(ptr noundef nonnull %call3.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %charging_ok.i

is_full_charged.exit.i:                           ; preds = %if.then32.i.i
  %59 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i.i, align 4
  %61 = ptrtoint ptr %fullbatt_soc.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fullbatt_soc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp37.not.i.not.i = icmp ult i32 %60, %62
  call void @power_supply_put(ptr noundef nonnull %call3.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br i1 %cmp37.not.i.not.i, label %is_full_charged.exit.i.charging_ok.i_crit_edge, label %is_full_charged.exit.i.cm_get_target_status.exit_crit_edge

is_full_charged.exit.i.cm_get_target_status.exit_crit_edge: ; preds = %is_full_charged.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_get_target_status.exit

is_full_charged.exit.i.charging_ok.i_crit_edge:   ; preds = %is_full_charged.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %charging_ok.i

charging_ok.i:                                    ; preds = %is_full_charged.exit.i.charging_ok.i_crit_edge, %is_full_charged.exit.thread36.i, %is_full_charged.exit.thread.i, %if.end7.i.charging_ok.i_crit_edge, %if.then2.i.charging_ok.i_crit_edge
  br label %cm_get_target_status.exit

cm_get_target_status.exit:                        ; preds = %charging_ok.i, %is_full_charged.exit.i.cm_get_target_status.exit_crit_edge, %is_full_charged.exit.thread38.i, %is_full_charged.exit.thread33.i, %sw.bb.i.cm_get_target_status.exit_crit_edge, %if.then2.i.cm_get_target_status.exit_crit_edge, %entry.cm_get_target_status.exit_crit_edge
  %cmp = phi i1 [ false, %entry.cm_get_target_status.exit_crit_edge ], [ false, %if.then2.i.cm_get_target_status.exit_crit_edge ], [ false, %sw.bb.i.cm_get_target_status.exit_crit_edge ], [ false, %is_full_charged.exit.thread33.i ], [ false, %is_full_charged.exit.thread38.i ], [ false, %is_full_charged.exit.i.cm_get_target_status.exit_crit_edge ], [ true, %charging_ok.i ]
  %retval.0.i = phi i32 [ 2, %entry.cm_get_target_status.exit_crit_edge ], [ 3, %if.then2.i.cm_get_target_status.exit_crit_edge ], [ 4, %sw.bb.i.cm_get_target_status.exit_crit_edge ], [ 4, %is_full_charged.exit.thread33.i ], [ 4, %is_full_charged.exit.thread38.i ], [ 4, %is_full_charged.exit.i.cm_get_target_status.exit_crit_edge ], [ 1, %charging_ok.i ]
  call fastcc void @try_charger_enable(ptr noundef %cm, i1 noundef zeroext %cmp)
  %battery_status = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 11
  %63 = ptrtoint ptr %battery_status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %battery_status, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %retval.0.i)
  %cmp2.not = icmp eq i32 %64, %retval.0.i
  br i1 %cmp2.not, label %cm_get_target_status.exit.if.end_crit_edge, label %if.then

cm_get_target_status.exit.if.end_crit_edge:       ; preds = %cm_get_target_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cm_get_target_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %battery_status to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i, ptr %battery_status, align 8
  %charger_psy = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 8
  %66 = ptrtoint ptr %charger_psy to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %charger_psy, align 8
  call void @power_supply_changed(ptr noundef %67) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %cm_get_target_status.exit.if.end_crit_edge
  %68 = ptrtoint ptr %battery_status to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %battery_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp5 = icmp eq i32 %69, 3
  ret i1 %cmp5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_charger_enable(ptr nocapture noundef %cm, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %desc1 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %charger_enabled = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 4
  %2 = ptrtoint ptr %charger_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %charger_enabled, align 4, !range !348
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp = icmp eq i8 %3, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %emergency_stop = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 5
  %4 = ptrtoint ptr %emergency_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emergency_stop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end9, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %call = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #11
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #15, !srcloc !349
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #15, !srcloc !350
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %charging_start_time = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 9
  %9 = ptrtoint ptr %charging_start_time to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %cond213.i.i, ptr %charging_start_time, align 8
  %charging_end_time = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 10
  %10 = ptrtoint ptr %charging_end_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %charging_end_time, align 8
  %num_charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_charger_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1114 = icmp sgt i32 %12, 0
  br i1 %cmp1114, label %for.body.lr.ph, label %if.end9.if.then86_crit_edge

if.end9.if.then86_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

for.body.lr.ph:                                   ; preds = %if.end9
  %charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 10
  %dev = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %err.015 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %charger_regulators to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %charger_regulators, align 4
  %externally_control = getelementptr %struct.charger_regulator, ptr %14, i32 %i.016, i32 2
  %15 = ptrtoint ptr %externally_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %externally_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %consumer = getelementptr %struct.charger_regulator, ptr %14, i32 %i.016, i32 1
  %17 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer, align 4
  %call18 = tail call i32 @regulator_enable(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %charger_regulators to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %charger_regulators, align 4
  %arrayidx23 = getelementptr %struct.charger_regulator, ptr %22, i32 %i.016
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.21, ptr noundef %24) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.015, %for.body.for.inc_crit_edge ], [ %call18, %do.end ], [ %call18, %if.end15.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.016, 1
  %25 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_charger_regulators, align 4
  %cmp11 = icmp slt i32 %inc, %26
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.if.end84_crit_edge

for.inc.if.end84_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else:                                          ; preds = %if.end
  %charging_start_time25 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 9
  %27 = ptrtoint ptr %charging_start_time25 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %charging_start_time25, align 8
  %call26 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call26)
  %cmp8.i.i1 = icmp slt i64 %call26, 0
  %28 = tail call i64 @llvm.abs.i64(i64 %call26, i1 false) #11
  %29 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %28) #15, !srcloc !349
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %28, i64 %29, i32 0) #15, !srcloc !350
  %asmresult10.i.i.i2 = extractvalue { i64, i32 } %30, 0
  %div1811.i.i3 = lshr i64 %asmresult10.i.i.i2, 18
  %sub210.i.i4 = sub nsw i64 0, %div1811.i.i3
  %cond213.i.i5 = select i1 %cmp8.i.i1, i64 %sub210.i.i4, i64 %div1811.i.i3
  %charging_end_time28 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 10
  %31 = ptrtoint ptr %charging_end_time28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %cond213.i.i5, ptr %charging_end_time28, align 8
  %num_charger_regulators30 = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %num_charger_regulators30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_charger_regulators30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp317 = icmp sgt i32 %33, 0
  br i1 %cmp317, label %for.body33.lr.ph, label %if.else.if.then86_crit_edge

if.else.if.then86_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

for.body33.lr.ph:                                 ; preds = %if.else
  %charger_regulators34 = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 10
  %dev50 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  br label %for.body33

for.cond58.preheader:                             ; preds = %for.inc55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp6011 = icmp sgt i32 %47, 0
  br i1 %cmp6011, label %for.body62.lr.ph, label %for.cond58.preheader.if.end84_crit_edge

for.cond58.preheader.if.end84_crit_edge:          ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

for.body62.lr.ph:                                 ; preds = %for.cond58.preheader
  %charger_regulators63 = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 10
  %dev76 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  br label %for.body62

for.body33:                                       ; preds = %for.inc55.for.body33_crit_edge, %for.body33.lr.ph
  %i.19 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc56, %for.inc55.for.body33_crit_edge ]
  %err.28 = phi i32 [ 0, %for.body33.lr.ph ], [ %err.3, %for.inc55.for.body33_crit_edge ]
  %34 = ptrtoint ptr %charger_regulators34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %charger_regulators34, align 4
  %externally_control36 = getelementptr %struct.charger_regulator, ptr %35, i32 %i.19, i32 2
  %36 = ptrtoint ptr %externally_control36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %externally_control36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool37.not = icmp eq i32 %37, 0
  br i1 %tobool37.not, label %if.end39, label %for.body33.for.inc55_crit_edge

for.body33.for.inc55_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

if.end39:                                         ; preds = %for.body33
  %consumer42 = getelementptr %struct.charger_regulator, ptr %35, i32 %i.19, i32 1
  %38 = ptrtoint ptr %consumer42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %consumer42, align 4
  %call43 = tail call i32 @regulator_disable(ptr noundef %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end49, label %if.end39.for.inc55_crit_edge

if.end39.for.inc55_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev50, align 8
  %42 = ptrtoint ptr %charger_regulators34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %charger_regulators34, align 4
  %arrayidx52 = getelementptr %struct.charger_regulator, ptr %43, i32 %i.19
  %44 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx52, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.25, ptr noundef %45) #14
  br label %for.inc55

for.inc55:                                        ; preds = %do.end49, %if.end39.for.inc55_crit_edge, %for.body33.for.inc55_crit_edge
  %err.3 = phi i32 [ %err.28, %for.body33.for.inc55_crit_edge ], [ %call43, %do.end49 ], [ %call43, %if.end39.for.inc55_crit_edge ]
  %inc56 = add nuw nsw i32 %i.19, 1
  %46 = ptrtoint ptr %num_charger_regulators30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_charger_regulators30, align 4
  %cmp31 = icmp slt i32 %inc56, %47
  br i1 %cmp31, label %for.inc55.for.body33_crit_edge, label %for.cond58.preheader

for.inc55.for.body33_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

for.body62:                                       ; preds = %for.inc81.for.body62_crit_edge, %for.body62.lr.ph
  %i.212 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc82, %for.inc81.for.body62_crit_edge ]
  %48 = ptrtoint ptr %charger_regulators63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %charger_regulators63, align 4
  %consumer65 = getelementptr %struct.charger_regulator, ptr %49, i32 %i.212, i32 1
  %50 = ptrtoint ptr %consumer65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %consumer65, align 4
  %call66 = tail call i32 @regulator_is_enabled(ptr noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %for.body62.for.inc81_crit_edge, label %if.then68

for.body62.for.inc81_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc81

if.then68:                                        ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %charger_regulators63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %charger_regulators63, align 4
  %consumer71 = getelementptr %struct.charger_regulator, ptr %53, i32 %i.212, i32 1
  %54 = ptrtoint ptr %consumer71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %consumer71, align 4
  %call72 = tail call i32 @regulator_force_disable(ptr noundef %55) #11
  %56 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev76, align 8
  %58 = ptrtoint ptr %charger_regulators63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %charger_regulators63, align 4
  %arrayidx78 = getelementptr %struct.charger_regulator, ptr %59, i32 %i.212
  %60 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx78, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.28, ptr noundef %61) #14
  br label %for.inc81

for.inc81:                                        ; preds = %if.then68, %for.body62.for.inc81_crit_edge
  %inc82 = add nuw nsw i32 %i.212, 1
  %62 = ptrtoint ptr %num_charger_regulators30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_charger_regulators30, align 4
  %cmp60 = icmp slt i32 %inc82, %63
  br i1 %cmp60, label %for.inc81.for.body62_crit_edge, label %for.inc81.if.end84_crit_edge

for.inc81.if.end84_crit_edge:                     ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

for.inc81.for.body62_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body62

if.end84:                                         ; preds = %for.inc81.if.end84_crit_edge, %for.cond58.preheader.if.end84_crit_edge, %for.inc.if.end84_crit_edge
  %err.4 = phi i32 [ %err.3, %for.cond58.preheader.if.end84_crit_edge ], [ %err.1, %for.inc.if.end84_crit_edge ], [ %err.3, %for.inc81.if.end84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool85.not = icmp eq i32 %err.4, 0
  br i1 %tobool85.not, label %if.end84.if.then86_crit_edge, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end84.if.then86_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then86

if.then86:                                        ; preds = %if.end84.if.then86_crit_edge, %if.else.if.then86_crit_edge, %if.end9.if.then86_crit_edge
  %64 = ptrtoint ptr %charger_enabled to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool, ptr %charger_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end84.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_ext_pwr_online(ptr nocapture noundef readonly %cm) unnamed_addr #2 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !347
  %desc = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %psy_charger_stat21 = getelementptr inbounds %struct.charger_desc, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %psy_charger_stat21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psy_charger_stat21, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not22 = icmp eq ptr %6, null
  br i1 %tobool.not22, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %7 = phi ptr [ %6, %for.body.lr.ph ], [ %23, %for.inc.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call ptr @power_supply_get_by_name(ptr noundef nonnull %7) #11
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %psy_charger_stat6 = getelementptr inbounds %struct.charger_desc, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %psy_charger_stat6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psy_charger_stat6, align 4
  %arrayidx7 = getelementptr ptr, ptr %13, i32 %i.023
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %15) #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call8 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull %val) #11
  call void @power_supply_put(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %do.end
  %inc = add i32 %i.023, 1
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %psy_charger_stat = getelementptr inbounds %struct.charger_desc, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %psy_charger_stat, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %inc
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %land.lhs.true.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_charging_duration(ptr nocapture noundef readonly %cm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %call = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #11
  %3 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %2) #15, !srcloc !349
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %2, i64 %3, i32 0) #15, !srcloc !350
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %charging_max_duration_ms = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %charging_max_duration_ms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %charging_max_duration_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %discharging_max_duration_ms = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %discharging_max_duration_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %discharging_max_duration_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %charger_enabled = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 4
  %9 = ptrtoint ptr %charger_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %charger_enabled, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %charging_start_time = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 9
  %11 = ptrtoint ptr %charging_start_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %charging_start_time, align 8
  %sub = sub i64 %cond213.i.i, %12
  %conv = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp = icmp ugt i64 %sub, %conv
  br i1 %cmp, label %do.end, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %6) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %battery_status = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 11
  %15 = ptrtoint ptr %battery_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %battery_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp11 = icmp eq i32 %16, 3
  br i1 %cmp11, label %if.then13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.else
  %charging_end_time = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 10
  %17 = ptrtoint ptr %charging_end_time to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %charging_end_time, align 8
  %sub14 = sub i64 %cond213.i.i, %18
  %discharging_max_duration_ms15 = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %discharging_max_duration_ms15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %discharging_max_duration_ms15, align 4
  %conv16 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub14, i64 %conv16)
  %cmp17 = icmp ugt i64 %sub14, %conv16
  br i1 %cmp17, label %do.end22, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end22:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %dev23 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  %21 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %20) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end, %if.then5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %do.end ], [ 0, %if.then5.cleanup_crit_edge ], [ 1, %do.end22 ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_batt_present(ptr nocapture noundef readonly %cm) unnamed_addr #2 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !347
  %desc = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %battery_present = getelementptr inbounds %struct.charger_desc, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %battery_present to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %battery_present, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %4, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %for.cond.preheader
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %psy_charger_stat41 = getelementptr inbounds %struct.charger_desc, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %psy_charger_stat41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psy_charger_stat41, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool9.not42 = icmp eq ptr %11, null
  br i1 %tobool9.not42, label %for.cond.preheader.sw.epilog_crit_edge, label %for.body.lr.ph

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  br label %for.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %psy_fuel_gauge = getelementptr inbounds %struct.charger_desc, ptr %2, i32 0, i32 12
  %12 = ptrtoint ptr %psy_fuel_gauge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psy_fuel_gauge, align 4
  %call = tail call ptr @power_supply_get_by_name(ptr noundef %13) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %if.end

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  %call3 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 3, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp ne i32 %15, 0
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end.if.end6_crit_edge
  %present.0 = phi i1 [ false, %if.end.if.end6_crit_edge ], [ %tobool4.not, %land.lhs.true ]
  call void @power_supply_put(ptr noundef nonnull %call) #11
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %16 = phi ptr [ %11, %for.body.lr.ph ], [ %32, %for.inc.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call13 = call ptr @power_supply_get_by_name(ptr noundef nonnull %16) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end19

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %psy_charger_stat17 = getelementptr inbounds %struct.charger_desc, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %psy_charger_stat17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psy_charger_stat17, align 4
  %arrayidx18 = getelementptr ptr, ptr %22, i32 %i.043
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef %24) #14
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %call20 = call i32 @power_supply_get_property(ptr noundef nonnull %call13, i32 noundef 3, ptr noundef nonnull %val) #11
  call void @power_supply_put(ptr noundef nonnull %call13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true22:                                  ; preds = %if.end19
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not = icmp eq i32 %26, 0
  br i1 %tobool23.not, label %land.lhs.true22.for.inc_crit_edge, label %land.lhs.true22.sw.epilog_crit_edge

land.lhs.true22.sw.epilog_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %do.end
  %inc = add i32 %i.043, 1
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 4
  %psy_charger_stat = getelementptr inbounds %struct.charger_desc, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psy_charger_stat, align 4
  %arrayidx = getelementptr ptr, ptr %30, i32 %inc
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %32, null
  br i1 %tobool9.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.sw.epilog_crit_edge, %land.lhs.true22.sw.epilog_crit_edge, %if.end6, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %for.cond.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %present.1.off0 = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ %present.0, %if.end6 ], [ false, %sw.bb1.sw.epilog_crit_edge ], [ true, %sw.bb ], [ false, %for.cond.preheader.sw.epilog_crit_edge ], [ false, %for.inc.sw.epilog_crit_edge ], [ true, %land.lhs.true22.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i1 %present.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_batt_uV(ptr nocapture noundef readonly %cm, ptr nocapture noundef writeonly %uV) unnamed_addr #2 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !347
  %desc = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %psy_fuel_gauge = getelementptr inbounds %struct.charger_desc, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %psy_fuel_gauge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psy_fuel_gauge, align 4
  %call = tail call ptr @power_supply_get_by_name(ptr noundef %4) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @power_supply_get_property(ptr noundef nonnull %call, i32 noundef 12, ptr noundef nonnull %val) #11
  call void @power_supply_put(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = ptrtoint ptr %uV to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %uV, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_force_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_setup_polling(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  %cm.073 = load ptr, ptr @cm_list, align 4
  %cmp.not74 = icmp eq ptr %cm.073, @cm_list
  br i1 %cmp.not74, label %entry.if.else.i_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cm.079 = phi ptr [ %cm.0, %for.inc.for.body_crit_edge ], [ %cm.073, %entry.for.body_crit_edge ]
  %min.077 = phi i32 [ %min.1, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %keep_polling.0.off075 = phi i1 [ %keep_polling.1.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %desc.i = getelementptr inbounds %struct.charger_manager, ptr %cm.079, i32 0, i32 2
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 4
  %polling_mode.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %polling_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling_mode.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %3, label %do.end.i [
    i32 0, label %for.body.for.inc_crit_edge
    i32 1, label %for.body.land.lhs.true_crit_edge
    i32 2, label %is_polling_required.exit
    i32 3, label %sw.bb3.i
  ]

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb3.i:                                         ; preds = %for.body
  %call4.i = tail call fastcc zeroext i1 @is_charging(ptr noundef %cm.079) #11
  br i1 %call4.i, label %sw.bb3.i.land.lhs.true_crit_edge, label %sw.bb3.i.for.inc_crit_edge

sw.bb3.i.for.inc_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb3.i.land.lhs.true_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.charger_manager, ptr %cm.079, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.32, i32 noundef %3) #14
  br label %for.inc

is_polling_required.exit:                         ; preds = %for.body
  %call.i = tail call fastcc zeroext i1 @is_ext_pwr_online(ptr noundef %cm.079) #11
  br i1 %call.i, label %is_polling_required.exit.land.lhs.true_crit_edge, label %is_polling_required.exit.for.inc_crit_edge

is_polling_required.exit.for.inc_crit_edge:       ; preds = %is_polling_required.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

is_polling_required.exit.land.lhs.true_crit_edge: ; preds = %is_polling_required.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %is_polling_required.exit.land.lhs.true_crit_edge, %sw.bb3.i.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %7 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc.i, align 4
  %polling_interval_ms = getelementptr inbounds %struct.charger_desc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %polling_interval_ms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %polling_interval_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = tail call i32 @llvm.umin.i32(i32 %min.077, i32 %10)
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = select i1 %not.tobool.not, i1 true, i1 %keep_polling.0.off075
  %spec.select72 = select i1 %tobool.not, i32 %min.077, i32 %11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %is_polling_required.exit.for.inc_crit_edge, %do.end.i, %sw.bb3.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %keep_polling.1.off0 = phi i1 [ %keep_polling.0.off075, %is_polling_required.exit.for.inc_crit_edge ], [ %keep_polling.0.off075, %sw.bb3.i.for.inc_crit_edge ], [ %keep_polling.0.off075, %do.end.i ], [ %keep_polling.0.off075, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %min.1 = phi i32 [ %min.077, %is_polling_required.exit.for.inc_crit_edge ], [ %min.077, %sw.bb3.i.for.inc_crit_edge ], [ %min.077, %do.end.i ], [ %min.077, %for.body.for.inc_crit_edge ], [ %spec.select72, %land.lhs.true ]
  %12 = ptrtoint ptr %cm.079 to i32
  call void @__asan_load4_noabort(i32 %12)
  %cm.0 = load ptr, ptr %cm.079, align 4
  %cmp.not = icmp eq ptr %cm.0, @cm_list
  br i1 %cmp.not, label %for.inc.if.else.i_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.else.i_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.else.i:                                        ; preds = %for.inc.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %keep_polling.0.off0.lcssa = phi i1 [ false, %entry.if.else.i_crit_edge ], [ %keep_polling.1.off0, %for.inc.if.else.i_crit_edge ]
  %min.0.lcssa = phi i32 [ -1, %entry.if.else.i_crit_edge ], [ %min.1, %for.inc.if.else.i_crit_edge ]
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %min.0.lcssa) #11
  %13 = tail call i32 @llvm.umax.i32(i32 %call2.i, i32 3)
  %spec.store.select54 = select i1 %keep_polling.0.off0.lcssa, i32 %13, i32 -1
  store i32 %spec.store.select54, ptr @polling_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select54)
  %cmp20 = icmp eq i32 %spec.store.select54, -1
  br i1 %cmp20, label %if.else.i.out_crit_edge, label %if.end22

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %if.else.i
  %14 = load ptr, ptr @cm_wq, align 4
  %cmp23 = icmp eq ptr %14, null
  br i1 %cmp23, label %do.end, label %if.end22.if.end39_crit_edge, !prof !346

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 676, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._setup_polling) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.end22.if.end39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = load i32, ptr @polling_jiffy, align 4
  %add = add i32 %16, %15
  %17 = load i32, ptr @next_polling, align 4
  %sub = sub i32 %add, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp47 = icmp slt i32 %sub, 0
  %18 = load ptr, ptr @cm_wq, align 4
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call.i67 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef nonnull @cm_monitor_work, i32 noundef %16) #11
  br label %out.sink.split

if.else:                                          ; preds = %if.end39
  %call.i68 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef nonnull @cm_monitor_work, i32 noundef %16) #11
  br i1 %call.i68, label %if.else.out.sink.split_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else.out.sink.split_crit_edge, %if.then48
  store i32 %add, ptr @next_polling, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else.out_crit_edge, %if.else.i.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_charging(ptr nocapture noundef readonly %cm) unnamed_addr #2 align 64 {
entry:
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !347
  %call = tail call fastcc zeroext i1 @is_batt_present(ptr noundef %cm)
  br i1 %call, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %desc = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 2
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %psy_charger_stat74 = getelementptr inbounds %struct.charger_desc, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %psy_charger_stat74 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %psy_charger_stat74, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not75 = icmp eq ptr %6, null
  br i1 %tobool.not75, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %emergency_stop = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 5
  %charger_enabled = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 4
  %dev23 = getelementptr inbounds %struct.charger_manager, ptr %cm, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %7 = phi ptr [ %6, %for.body.lr.ph ], [ %45, %for.inc.for.body_crit_edge ]
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %emergency_stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %emergency_stop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %10 = ptrtoint ptr %charger_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %charger_enabled, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end3.for.inc_crit_edge, label %if.end6

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end6:                                          ; preds = %if.end3
  %call10 = call ptr @power_supply_get_by_name(ptr noundef nonnull %7) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev23, align 8
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %psy_charger_stat14 = getelementptr inbounds %struct.charger_desc, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %psy_charger_stat14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %psy_charger_stat14, align 4
  %arrayidx15 = getelementptr ptr, ptr %17, i32 %i.076
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef %19) #14
  br label %for.inc

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @power_supply_get_property(ptr noundef nonnull %call10, i32 noundef 4, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end27, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 8
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %psy_charger_stat25 = getelementptr inbounds %struct.charger_desc, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %psy_charger_stat25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %psy_charger_stat25, align 4
  %arrayidx26 = getelementptr ptr, ptr %25, i32 %i.076
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx26, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.36, ptr noundef %27) #14
  call void @power_supply_put(ptr noundef nonnull %call10) #11
  br label %for.inc

if.end27:                                         ; preds = %if.end16
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void @power_supply_put(ptr noundef nonnull %call10) #11
  br label %for.inc

if.end29:                                         ; preds = %if.end27
  %call30 = call i32 @power_supply_get_property(ptr noundef nonnull %call10, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @power_supply_put(ptr noundef nonnull %call10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end40, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev23, align 8
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc, align 4
  %psy_charger_stat38 = getelementptr inbounds %struct.charger_desc, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %psy_charger_stat38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %psy_charger_stat38, align 4
  %arrayidx39 = getelementptr ptr, ptr %35, i32 %i.076
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx39, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.39, ptr noundef %37) #14
  br label %for.inc

if.end40:                                         ; preds = %if.end29
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %.off = add i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end40.for.inc_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end40.for.inc_crit_edge, %do.end35, %if.then28, %do.end22, %do.end, %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.076, 1
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc, align 4
  %psy_charger_stat = getelementptr inbounds %struct.charger_desc, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %psy_charger_stat, align 4
  %arrayidx = getelementptr ptr, ptr %43, i32 %inc
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.cond.preheader.cleanup_crit_edge ], [ true, %if.end40.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_manager_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca %union.power_supply_propval, align 4
  %poll_mode.i.i = alloca i32, align 4
  %battery_stat.i.i = alloca i32, align 4
  %val = alloca %union.power_supply_propval, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i325, label %if.then.i324

if.then.i324:                                     ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poll_mode.i.i) #11
  %2 = ptrtoint ptr %poll_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %poll_mode.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %battery_stat.i.i) #11
  %3 = ptrtoint ptr %battery_stat.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %battery_stat.i.i, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 80, i32 noundef 3520) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i324.of_cm_parse_desc.exit.i_crit_edge, label %if.end.i.i

if.then.i324.of_cm_parse_desc.exit.i_crit_edge:   ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

if.end.i.i:                                       ; preds = %if.then.i324
  %call2.i.i = tail call i32 @of_property_read_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.87, ptr noundef nonnull %call.i.i.i) #11
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.88, ptr noundef nonnull %poll_mode.i.i, i32 noundef 1, i32 noundef 0) #11
  %4 = ptrtoint ptr %poll_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poll_mode.i.i, align 4
  %polling_mode.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %polling_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %polling_mode.i.i, align 4
  %polling_interval_ms.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 2
  %call.i.i186.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.89, ptr noundef %polling_interval_ms.i.i, i32 noundef 1, i32 noundef 0) #11
  %fullbatt_vchkdrop_uV.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 3
  %call.i.i187.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.90, ptr noundef %fullbatt_vchkdrop_uV.i.i, i32 noundef 1, i32 noundef 0) #11
  %fullbatt_uV.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 4
  %call.i.i188.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.91, ptr noundef %fullbatt_uV.i.i, i32 noundef 1, i32 noundef 0) #11
  %fullbatt_soc.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 5
  %call.i.i189.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.92, ptr noundef %fullbatt_soc.i.i, i32 noundef 1, i32 noundef 0) #11
  %fullbatt_full_capacity.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 6
  %call.i.i190.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.93, ptr noundef %fullbatt_full_capacity.i.i, i32 noundef 1, i32 noundef 0) #11
  %call.i.i191.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.94, ptr noundef nonnull %battery_stat.i.i, i32 noundef 1, i32 noundef 0) #11
  %7 = ptrtoint ptr %battery_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %battery_stat.i.i, align 4
  %battery_present.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %battery_present.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %battery_present.i.i, align 4
  %call.i192.i.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %1, ptr noundef nonnull @.str.95, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192.i.i)
  %cmp.i.i = icmp sgt i32 %call.i192.i.i, 0
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.end.i.i.if.end21.i.i_crit_edge

if.end.i.i.if.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  %add.i.i = add nuw i32 %call.i192.i.i, 1
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #11
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !346

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %psy_charger_stat225.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %psy_charger_stat225.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %psy_charger_stat225.i.i, align 4
  br label %of_cm_parse_desc.exit.i

devm_kcalloc.exit.i.i:                            ; preds = %if.then11.i.i
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %13, i32 noundef 3520) #11
  %psy_charger_stat.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %psy_charger_stat.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i.i, ptr %psy_charger_stat.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool14.not.i.i, label %devm_kcalloc.exit.i.i.of_cm_parse_desc.exit.i_crit_edge, label %devm_kcalloc.exit.i.i.for.body.i.i_crit_edge

devm_kcalloc.exit.i.i.for.body.i.i_crit_edge:     ; preds = %devm_kcalloc.exit.i.i
  br label %for.body.i.i

devm_kcalloc.exit.i.i.of_cm_parse_desc.exit.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %devm_kcalloc.exit.i.i.for.body.i.i_crit_edge
  %i.0245.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %devm_kcalloc.exit.i.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %psy_charger_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %psy_charger_stat.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %16, i32 %i.0245.i.i
  %call.i193.i.i = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef %arrayidx.i.i, i32 noundef 1, i32 noundef %i.0245.i.i) #11
  %inc.i.i = add nuw nsw i32 %i.0245.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i192.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end21.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.if.end21.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %for.body.i.i.if.end21.i.i_crit_edge, %if.end.i.i.if.end21.i.i_crit_edge
  %psy_fuel_gauge.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 12
  %call22.i.i = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef %psy_fuel_gauge.i.i) #11
  %thermal_zone.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 13
  %call23.i.i = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.97, ptr noundef %thermal_zone.i.i) #11
  %temp_min.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 14
  %call.i.i194.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.98, ptr noundef %temp_min.i.i, i32 noundef 1, i32 noundef 0) #11
  %call25.i.i = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.99, ptr noundef null) #11
  %tobool26.not.i.i = icmp eq ptr %call25.i.i, null
  br i1 %tobool26.not.i.i, label %if.end21.i.i.if.end29.i.i_crit_edge, label %if.then27.i.i

if.end21.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i.i

if.then27.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %temp_min.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_min.i.i, align 4
  %mul.i.i = sub i32 0, %18
  store i32 %mul.i.i, ptr %temp_min.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then27.i.i, %if.end21.i.i.if.end29.i.i_crit_edge
  %temp_max.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 15
  %call.i.i195.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.100, ptr noundef %temp_max.i.i, i32 noundef 1, i32 noundef 0) #11
  %temp_diff.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 16
  %call.i.i196.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef %temp_diff.i.i, i32 noundef 1, i32 noundef 0) #11
  %charging_max_duration_ms.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 18
  %call.i.i197.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.102, ptr noundef %charging_max_duration_ms.i.i, i32 noundef 1, i32 noundef 0) #11
  %discharging_max_duration_ms.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 19
  %call.i.i198.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.103, ptr noundef %discharging_max_duration_ms.i.i, i32 noundef 1, i32 noundef 0) #11
  %call.i199.i.i = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #11
  %cmp.not5.i.i.i = icmp eq ptr %call.i199.i.i, null
  br i1 %cmp.not5.i.i.i, label %of_get_child_count.exit.thread.i.i, label %if.end29.i.i.for.body.i.i.i_crit_edge

if.end29.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end29.i.i
  br label %for.body.i.i.i

of_get_child_count.exit.thread.i.i:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_charger_regulators228.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %num_charger_regulators228.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_charger_regulators228.i.i, align 4
  br label %of_cm_parse_desc.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end29.i.i.for.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end29.i.i.for.body.i.i.i_crit_edge ]
  %child.06.i.i.i = phi ptr [ %call1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i199.i.i, %if.end29.i.i.for.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %num.07.i.i.i, 1
  %call1.i.i.i = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i.i.i) #11
  %cmp.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %of_get_child_count.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

of_get_child_count.exit.i.i:                      ; preds = %for.body.i.i.i
  %num_charger_regulators.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %num_charger_regulators.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i.i.i, ptr %num_charger_regulators.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i.i)
  %tobool36.not.i.i = icmp eq i32 %inc.i.i.i, 0
  br i1 %tobool36.not.i.i, label %of_get_child_count.exit.i.i.of_cm_parse_desc.exit.i_crit_edge, label %if.then37.i.i

of_get_child_count.exit.i.i.of_cm_parse_desc.exit.i_crit_edge: ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

if.then37.i.i:                                    ; preds = %of_get_child_count.exit.i.i
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i.i, i32 144) #11
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.then37.i.i.of_cm_parse_desc.exit.i_crit_edge, label %devm_kcalloc.exit203.i.i, !prof !346

if.then37.i.i.of_cm_parse_desc.exit.i_crit_edge:  ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

devm_kcalloc.exit203.i.i:                         ; preds = %if.then37.i.i
  %23 = extractvalue { i32, i1 } %21, 0
  %call5.i.i200.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %23, i32 noundef 3520) #11
  %tobool40.not.i.i = icmp eq ptr %call5.i.i200.i.i, null
  br i1 %tobool40.not.i.i, label %devm_kcalloc.exit203.i.i.of_cm_parse_desc.exit.i_crit_edge, label %if.end43.i.i

devm_kcalloc.exit203.i.i.of_cm_parse_desc.exit.i_crit_edge: ; preds = %devm_kcalloc.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

if.end43.i.i:                                     ; preds = %devm_kcalloc.exit203.i.i
  %charger_regulators.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %charger_regulators.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i200.i.i, ptr %charger_regulators.i.i, align 4
  %25 = ptrtoint ptr %num_charger_regulators.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_charger_regulators.i.i, align 4
  %add45.i.i = add i32 %26, 1
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add45.i.i, i32 4) #11
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %devm_kcalloc.exit207.thread.i.i, label %devm_kcalloc.exit207.i.i, !prof !346

devm_kcalloc.exit207.thread.i.i:                  ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sysfs_groups233.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %sysfs_groups233.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %sysfs_groups233.i.i, align 4
  br label %of_cm_parse_desc.exit.i

devm_kcalloc.exit207.i.i:                         ; preds = %if.end43.i.i
  %30 = extractvalue { i32, i1 } %27, 0
  %call5.i.i204.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %30, i32 noundef 3520) #11
  %sysfs_groups.i.i = getelementptr inbounds %struct.charger_desc, ptr %call.i.i.i, i32 0, i32 11
  %31 = ptrtoint ptr %sysfs_groups.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i204.i.i, ptr %sysfs_groups.i.i, align 4
  %tobool48.not.i.i = icmp eq ptr %call5.i.i204.i.i, null
  br i1 %tobool48.not.i.i, label %devm_kcalloc.exit207.i.i.of_cm_parse_desc.exit.i_crit_edge, label %if.end51.i.i

devm_kcalloc.exit207.i.i.of_cm_parse_desc.exit.i_crit_edge: ; preds = %devm_kcalloc.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

if.end51.i.i:                                     ; preds = %devm_kcalloc.exit207.i.i
  %call52.i.i = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #11
  %cmp54.not249.i.i = icmp eq ptr %call52.i.i, null
  br i1 %cmp54.not249.i.i, label %if.end51.i.i.of_cm_parse_desc.exit.i_crit_edge, label %if.end51.i.i.for.body55.i.i_crit_edge

if.end51.i.i.for.body55.i.i_crit_edge:            ; preds = %if.end51.i.i
  br label %for.body55.i.i

if.end51.i.i.of_cm_parse_desc.exit.i_crit_edge:   ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

for.body55.i.i:                                   ; preds = %for.inc85.i.i.for.body55.i.i_crit_edge, %if.end51.i.i.for.body55.i.i_crit_edge
  %child.0252.i.i = phi ptr [ %call86.i.i, %for.inc85.i.i.for.body55.i.i_crit_edge ], [ %call52.i.i, %if.end51.i.i.for.body55.i.i_crit_edge ]
  %chg_regs.0250.i.i = phi ptr [ %incdec.ptr80.i.i, %for.inc85.i.i.for.body55.i.i_crit_edge ], [ %call5.i.i200.i.i, %if.end51.i.i.for.body55.i.i_crit_edge ]
  %call56.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0252.i.i, ptr noundef nonnull @.str.104, ptr noundef %chg_regs.0250.i.i) #11
  %call.i208.i.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0252.i.i, ptr noundef null) #11
  %cmp.not5.i209.i.i = icmp eq ptr %call.i208.i.i, null
  br i1 %cmp.not5.i209.i.i, label %of_get_child_count.exit217.thread.i.i, label %for.body55.i.i.for.body.i215.i.i_crit_edge

for.body55.i.i.for.body.i215.i.i_crit_edge:       ; preds = %for.body55.i.i
  br label %for.body.i215.i.i

of_get_child_count.exit217.thread.i.i:            ; preds = %for.body55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_cables236.i.i = getelementptr inbounds %struct.charger_regulator, ptr %chg_regs.0250.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %num_cables236.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %num_cables236.i.i, align 4
  br label %for.inc85.i.i

for.body.i215.i.i:                                ; preds = %for.body.i215.i.i.for.body.i215.i.i_crit_edge, %for.body55.i.i.for.body.i215.i.i_crit_edge
  %num.07.i210.i.i = phi i32 [ %inc.i212.i.i, %for.body.i215.i.i.for.body.i215.i.i_crit_edge ], [ 0, %for.body55.i.i.for.body.i215.i.i_crit_edge ]
  %child.06.i211.i.i = phi ptr [ %call1.i213.i.i, %for.body.i215.i.i.for.body.i215.i.i_crit_edge ], [ %call.i208.i.i, %for.body55.i.i.for.body.i215.i.i_crit_edge ]
  %inc.i212.i.i = add i32 %num.07.i210.i.i, 1
  %call1.i213.i.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0252.i.i, ptr noundef nonnull %child.06.i211.i.i) #11
  %cmp.not.i214.i.i = icmp eq ptr %call1.i213.i.i, null
  br i1 %cmp.not.i214.i.i, label %of_get_child_count.exit217.i.i, label %for.body.i215.i.i.for.body.i215.i.i_crit_edge

for.body.i215.i.i.for.body.i215.i.i_crit_edge:    ; preds = %for.body.i215.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i215.i.i

of_get_child_count.exit217.i.i:                   ; preds = %for.body.i215.i.i
  %num_cables.i.i = getelementptr inbounds %struct.charger_regulator, ptr %chg_regs.0250.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %num_cables.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i212.i.i, ptr %num_cables.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i212.i.i)
  %tobool59.not.i.i = icmp eq i32 %inc.i212.i.i, 0
  br i1 %tobool59.not.i.i, label %of_get_child_count.exit217.i.i.for.inc85.i.i_crit_edge, label %if.then60.i.i

of_get_child_count.exit217.i.i.for.inc85.i.i_crit_edge: ; preds = %of_get_child_count.exit217.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85.i.i

if.then60.i.i:                                    ; preds = %of_get_child_count.exit217.i.i
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i212.i.i, i32 104) #11
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %if.then60.i.i.cleanup81.i.i_crit_edge, label %devm_kcalloc.exit221.i.i, !prof !346

if.then60.i.i.cleanup81.i.i_crit_edge:            ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81.i.i

devm_kcalloc.exit221.i.i:                         ; preds = %if.then60.i.i
  %36 = extractvalue { i32, i1 } %34, 0
  %call5.i.i218.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %36, i32 noundef 3520) #11
  %tobool63.not.i.i = icmp eq ptr %call5.i.i218.i.i, null
  br i1 %tobool63.not.i.i, label %devm_kcalloc.exit221.i.i.cleanup81.i.i_crit_edge, label %if.end66.i.i

devm_kcalloc.exit221.i.i.cleanup81.i.i_crit_edge: ; preds = %devm_kcalloc.exit221.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81.i.i

if.end66.i.i:                                     ; preds = %devm_kcalloc.exit221.i.i
  %cables67.i.i = getelementptr inbounds %struct.charger_regulator, ptr %chg_regs.0250.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %cables67.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i218.i.i, ptr %cables67.i.i, align 4
  %call68.i.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0252.i.i, ptr noundef null) #11
  %cmp70.not246.i.i = icmp eq ptr %call68.i.i, null
  br i1 %cmp70.not246.i.i, label %if.end66.i.i.for.inc85.i.i_crit_edge, label %if.end66.i.i.for.body71.i.i_crit_edge

if.end66.i.i.for.body71.i.i_crit_edge:            ; preds = %if.end66.i.i
  br label %for.body71.i.i

if.end66.i.i.for.inc85.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85.i.i

for.body71.i.i:                                   ; preds = %for.body71.i.i.for.body71.i.i_crit_edge, %if.end66.i.i.for.body71.i.i_crit_edge
  %_child.0248.i.i = phi ptr [ %call77.i.i, %for.body71.i.i.for.body71.i.i_crit_edge ], [ %call68.i.i, %if.end66.i.i.for.body71.i.i_crit_edge ]
  %cables.0247.i.i = phi ptr [ %incdec.ptr.i.i, %for.body71.i.i.for.body71.i.i_crit_edge ], [ %call5.i.i218.i.i, %if.end66.i.i.for.body71.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.charger_cable, ptr %cables.0247.i.i, i32 0, i32 1
  %call72.i.i = call i32 @of_property_read_string(ptr noundef nonnull %_child.0248.i.i, ptr noundef nonnull @.str.105, ptr noundef %name.i.i) #11
  %call73.i.i = call i32 @of_property_read_string(ptr noundef nonnull %_child.0248.i.i, ptr noundef nonnull @.str.106, ptr noundef %cables.0247.i.i) #11
  %min_uA.i.i = getelementptr inbounds %struct.charger_cable, ptr %cables.0247.i.i, i32 0, i32 8
  %call.i.i222.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %_child.0248.i.i, ptr noundef nonnull @.str.107, ptr noundef %min_uA.i.i, i32 noundef 1, i32 noundef 0) #11
  %max_uA.i.i = getelementptr inbounds %struct.charger_cable, ptr %cables.0247.i.i, i32 0, i32 9
  %call.i.i223.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %_child.0248.i.i, ptr noundef nonnull @.str.108, ptr noundef %max_uA.i.i, i32 noundef 1, i32 noundef 0) #11
  %incdec.ptr.i.i = getelementptr %struct.charger_cable, ptr %cables.0247.i.i, i32 1
  %call77.i.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0252.i.i, ptr noundef nonnull %_child.0248.i.i) #11
  %cmp70.not.i.i = icmp eq ptr %call77.i.i, null
  br i1 %cmp70.not.i.i, label %for.body71.i.i.for.inc85.i.i_crit_edge, label %for.body71.i.i.for.body71.i.i_crit_edge

for.body71.i.i.for.body71.i.i_crit_edge:          ; preds = %for.body71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body71.i.i

for.body71.i.i.for.inc85.i.i_crit_edge:           ; preds = %for.body71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85.i.i

cleanup81.i.i:                                    ; preds = %devm_kcalloc.exit221.i.i.cleanup81.i.i_crit_edge, %if.then60.i.i.cleanup81.i.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.0252.i.i) #11
  br label %of_cm_parse_desc.exit.i

for.inc85.i.i:                                    ; preds = %for.body71.i.i.for.inc85.i.i_crit_edge, %if.end66.i.i.for.inc85.i.i_crit_edge, %of_get_child_count.exit217.i.i.for.inc85.i.i_crit_edge, %of_get_child_count.exit217.thread.i.i
  %incdec.ptr80.i.i = getelementptr %struct.charger_regulator, ptr %chg_regs.0250.i.i, i32 1
  %call86.i.i = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0252.i.i) #11
  %cmp54.not.i.i = icmp eq ptr %call86.i.i, null
  br i1 %cmp54.not.i.i, label %for.inc85.i.i.of_cm_parse_desc.exit.i_crit_edge, label %for.inc85.i.i.for.body55.i.i_crit_edge

for.inc85.i.i.for.body55.i.i_crit_edge:           ; preds = %for.inc85.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body55.i.i

for.inc85.i.i.of_cm_parse_desc.exit.i_crit_edge:  ; preds = %for.inc85.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_cm_parse_desc.exit.i

of_cm_parse_desc.exit.i:                          ; preds = %for.inc85.i.i.of_cm_parse_desc.exit.i_crit_edge, %cleanup81.i.i, %if.end51.i.i.of_cm_parse_desc.exit.i_crit_edge, %devm_kcalloc.exit207.i.i.of_cm_parse_desc.exit.i_crit_edge, %devm_kcalloc.exit207.thread.i.i, %devm_kcalloc.exit203.i.i.of_cm_parse_desc.exit.i_crit_edge, %if.then37.i.i.of_cm_parse_desc.exit.i_crit_edge, %of_get_child_count.exit.i.i.of_cm_parse_desc.exit.i_crit_edge, %of_get_child_count.exit.thread.i.i, %devm_kcalloc.exit.i.i.of_cm_parse_desc.exit.i_crit_edge, %devm_kcalloc.exit.thread.i.i, %if.then.i324.of_cm_parse_desc.exit.i_crit_edge
  %retval.5.i.i = phi ptr [ %call.i.i.i, %of_get_child_count.exit.i.i.of_cm_parse_desc.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %cleanup81.i.i ], [ inttoptr (i32 -12 to ptr), %if.then.i324.of_cm_parse_desc.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i.i ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.i.of_cm_parse_desc.exit.i_crit_edge ], [ %call.i.i.i, %of_get_child_count.exit.thread.i.i ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit203.i.i.of_cm_parse_desc.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit207.thread.i.i ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit207.i.i.of_cm_parse_desc.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then37.i.i.of_cm_parse_desc.exit.i_crit_edge ], [ %call.i.i.i, %if.end51.i.i.of_cm_parse_desc.exit.i_crit_edge ], [ %call.i.i.i, %for.inc85.i.i.of_cm_parse_desc.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %battery_stat.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poll_mode.i.i) #11
  br label %cm_get_drv_data.exit

if.end.i325:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_data.i.i, align 8
  br label %cm_get_drv_data.exit

cm_get_drv_data.exit:                             ; preds = %if.end.i325, %of_cm_parse_desc.exit.i
  %retval.0.i326 = phi ptr [ %retval.5.i.i, %of_cm_parse_desc.exit.i ], [ %39, %if.end.i325 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %val, align 4, !annotation !347
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #11
  %41 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %cmp.i327 = icmp ugt ptr %retval.0.i326, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %do.end, label %if.end

do.end:                                           ; preds = %cm_get_drv_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42) #14
  %42 = ptrtoint ptr %retval.0.i326 to i32
  br label %cleanup215

if.end:                                           ; preds = %cm_get_drv_data.exit
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 144, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup215_crit_edge, label %if.end6

if.end.cleanup215_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev.i, ptr %dev8, align 8
  %desc9 = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %desc9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %retval.0.i326, ptr %desc9, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %45 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %drv_data, align 4
  %call10 = call ptr @alarmtimer_get_rtcdev() #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.if.end18_crit_edge, label %if.then12

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end6
  %46 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev8, align 8
  %call.i328 = call noalias ptr @devm_kmalloc(ptr noundef %47, i32 noundef 88, i32 noundef 3520) #11
  store ptr %call.i328, ptr @cm_timer, align 4
  %tobool15.not = icmp eq ptr %call.i328, null
  br i1 %tobool15.not, label %if.then12.cleanup215_crit_edge, label %if.end17

if.then12.cleanup215_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  call void @alarm_init(ptr noundef nonnull %call.i328, i32 noundef 1, ptr noundef nonnull @cm_timer_func) #11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end6.if.end18_crit_edge
  %fullbatt_uV = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 4
  %48 = ptrtoint ptr %fullbatt_uV to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fullbatt_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp = icmp eq i32 %49, 0
  br i1 %cmp, label %do.end22, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.45) #14
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.end18.if.end24_crit_edge
  %fullbatt_vchkdrop_uV = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 3
  %50 = ptrtoint ptr %fullbatt_vchkdrop_uV to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fullbatt_vchkdrop_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool25.not = icmp eq i32 %51, 0
  br i1 %tobool25.not, label %do.end29, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.48) #14
  %52 = ptrtoint ptr %fullbatt_vchkdrop_uV to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %fullbatt_vchkdrop_uV, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end24.if.end32_crit_edge
  %fullbatt_soc = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 5
  %53 = ptrtoint ptr %fullbatt_soc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fullbatt_soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp33 = icmp eq i32 %54, 0
  br i1 %cmp33, label %do.end37, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.51) #14
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end32.if.end39_crit_edge
  %fullbatt_full_capacity = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 6
  %55 = ptrtoint ptr %fullbatt_full_capacity to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fullbatt_full_capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp40 = icmp eq i32 %56, 0
  br i1 %cmp40, label %do.end44, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.54) #14
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end39.if.end46_crit_edge
  %charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 10
  %57 = ptrtoint ptr %charger_regulators to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %charger_regulators, align 4
  %tobool47.not = icmp eq ptr %58, null
  br i1 %tobool47.not, label %if.end46.do.end52_crit_edge, label %lor.lhs.false

if.end46.do.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

lor.lhs.false:                                    ; preds = %if.end46
  %num_charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 9
  %59 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_charger_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp48 = icmp slt i32 %60, 1
  br i1 %cmp48, label %lor.lhs.false.do.end52_crit_edge, label %if.end54

lor.lhs.false.do.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end52:                                         ; preds = %lor.lhs.false.do.end52_crit_edge, %if.end46.do.end52_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57) #14
  br label %cleanup215

if.end54:                                         ; preds = %lor.lhs.false
  %psy_charger_stat = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 8
  %61 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %psy_charger_stat, align 4
  %tobool55.not = icmp eq ptr %62, null
  br i1 %tobool55.not, label %if.end54.do.end62_crit_edge, label %lor.lhs.false56

if.end54.do.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

lor.lhs.false56:                                  ; preds = %if.end54
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool58.not = icmp eq ptr %64, null
  br i1 %tobool58.not, label %lor.lhs.false56.do.end62_crit_edge, label %if.end64

lor.lhs.false56.do.end62_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false56.do.end62_crit_edge, %if.end54.do.end62_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60) #14
  br label %cleanup215

if.end64:                                         ; preds = %lor.lhs.false56
  %psy_fuel_gauge = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 12
  %65 = ptrtoint ptr %psy_fuel_gauge to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %psy_fuel_gauge, align 4
  %tobool65.not = icmp eq ptr %66, null
  br i1 %tobool65.not, label %do.end69, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end64
  %67 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %psy_charger_stat, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool74.not405 = icmp eq ptr %70, null
  br i1 %tobool74.not405, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #14
  br label %cleanup215

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %71 = phi ptr [ %79, %if.end86.for.body_crit_edge ], [ %70, %for.cond.preheader.for.body_crit_edge ]
  %i.0406 = phi i32 [ %inc, %if.end86.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call77 = call ptr @power_supply_get_by_name(ptr noundef nonnull %71) #11
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %do.end82, label %if.end86

do.end82:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %psy_charger_stat, align 4
  %arrayidx85 = getelementptr ptr, ptr %73, i32 %i.0406
  %74 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %75) #14
  br label %cleanup215

if.end86:                                         ; preds = %for.body
  call void @power_supply_put(ptr noundef nonnull %call77) #11
  %inc = add i32 %i.0406, 1
  %76 = ptrtoint ptr %psy_charger_stat to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %psy_charger_stat, align 4
  %arrayidx73 = getelementptr ptr, ptr %77, i32 %inc
  %78 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %79, null
  br i1 %tobool74.not, label %if.end86.for.end_crit_edge, label %if.end86.for.body_crit_edge

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end86.for.end_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end86.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %80 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %desc9, align 4
  %polling_mode = getelementptr inbounds %struct.charger_desc, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %polling_mode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %polling_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp88.not = icmp eq i32 %83, 0
  br i1 %cmp88.not, label %for.end.if.end99_crit_edge, label %land.lhs.true

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

land.lhs.true:                                    ; preds = %for.end
  %polling_interval_ms = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 2
  %84 = ptrtoint ptr %polling_interval_ms to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %polling_interval_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp89 = icmp eq i32 %85, 0
  br i1 %cmp89, label %land.lhs.true.do.end97_crit_edge, label %if.else.i

land.lhs.true.do.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97

if.else.i:                                        ; preds = %land.lhs.true
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %85) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2.i)
  %cmp93 = icmp ult i32 %call2.i, 3
  br i1 %cmp93, label %if.else.i.do.end97_crit_edge, label %if.else.i.if.end99_crit_edge

if.else.i.if.end99_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.else.i.do.end97_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97

do.end97:                                         ; preds = %if.else.i.do.end97_crit_edge, %land.lhs.true.do.end97_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.68) #14
  br label %cleanup215

if.end99:                                         ; preds = %if.else.i.if.end99_crit_edge, %for.end.if.end99_crit_edge
  %charging_max_duration_ms = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 18
  %86 = ptrtoint ptr %charging_max_duration_ms to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %charging_max_duration_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool100.not = icmp eq i32 %87, 0
  br i1 %tobool100.not, label %if.end99.do.end106_crit_edge, label %lor.lhs.false101

if.end99.do.end106_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106

lor.lhs.false101:                                 ; preds = %if.end99
  %discharging_max_duration_ms = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 19
  %88 = ptrtoint ptr %discharging_max_duration_ms to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %discharging_max_duration_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool102.not = icmp eq i32 %89, 0
  br i1 %tobool102.not, label %lor.lhs.false101.do.end106_crit_edge, label %lor.lhs.false101.if.end110_crit_edge

lor.lhs.false101.if.end110_crit_edge:             ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

lor.lhs.false101.do.end106_crit_edge:             ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106

do.end106:                                        ; preds = %lor.lhs.false101.do.end106_crit_edge, %if.end99.do.end106_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.71) #14
  %90 = ptrtoint ptr %charging_max_duration_ms to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %charging_max_duration_ms, align 4
  %discharging_max_duration_ms109 = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 19
  %91 = ptrtoint ptr %discharging_max_duration_ms109 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %discharging_max_duration_ms109, align 4
  br label %if.end110

if.end110:                                        ; preds = %do.end106, %lor.lhs.false101.if.end110_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %92 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %charger_psy_desc = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 7
  %93 = call ptr @memcpy(ptr %charger_psy_desc, ptr @psy_default, i32 52)
  %94 = ptrtoint ptr %retval.0.i326 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %retval.0.i326, align 4
  %tobool111.not = icmp eq ptr %95, null
  %psy_name_buf = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 6
  br i1 %tobool111.not, label %if.then112, label %if.else

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %96 = call ptr @memcpy(ptr %psy_name_buf, ptr @str, i32 30)
  br label %if.end118

if.else:                                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = call ptr @strncpy(ptr noundef %psy_name_buf, ptr noundef nonnull %95, i32 noundef 30)
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then112
  %psy_name_buf119 = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 6
  %97 = ptrtoint ptr %charger_psy_desc to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %psy_name_buf119, ptr %charger_psy_desc, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 40, i32 noundef 3520) #11
  %tobool124.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool124.not, label %if.end118.cleanup215_crit_edge, label %if.end126

if.end118.cleanup215_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

if.end126:                                        ; preds = %if.end118
  %98 = call ptr @memcpy(ptr %call5.i.i, ptr @default_charger_props, i32 24)
  %99 = ptrtoint ptr %psy_fuel_gauge to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %psy_fuel_gauge, align 4
  %call128 = call ptr @power_supply_get_by_name(ptr noundef %100) #11
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %do.end133, label %if.end136

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %psy_fuel_gauge to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %psy_fuel_gauge, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %102) #14
  br label %cleanup215

if.end136:                                        ; preds = %if.end126
  %call137 = call i32 @power_supply_get_property(ptr noundef nonnull %call128, i32 noundef 24, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.then139, label %if.end136.if.end142_crit_edge

if.end136.if.end142_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx140 = getelementptr i32, ptr %call5.i.i, i32 6
  %103 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 24, ptr %arrayidx140, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end136.if.end142_crit_edge
  %num_properties.0 = phi i32 [ 7, %if.then139 ], [ 6, %if.end136.if.end142_crit_edge ]
  %call143 = call i32 @power_supply_get_property(ptr noundef nonnull %call128, i32 noundef 26, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then145, label %if.end142.if.end148_crit_edge

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx146 = getelementptr i32, ptr %call5.i.i, i32 %num_properties.0
  %104 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 26, ptr %arrayidx146, align 4
  %inc147 = add nuw nsw i32 %num_properties.0, 1
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end142.if.end148_crit_edge
  %num_properties.1 = phi i32 [ %inc147, %if.then145 ], [ %num_properties.0, %if.end142.if.end148_crit_edge ]
  %call149 = call i32 @power_supply_get_property(ptr noundef nonnull %call128, i32 noundef 17, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then151, label %if.end148.if.end154_crit_edge

if.end148.if.end154_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx152 = getelementptr i32, ptr %call5.i.i, i32 %num_properties.1
  %105 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 17, ptr %arrayidx152, align 4
  %inc153 = add nuw nsw i32 %num_properties.1, 1
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end148.if.end154_crit_edge
  %num_properties.2 = phi i32 [ %inc153, %if.then151 ], [ %num_properties.1, %if.end148.if.end154_crit_edge ]
  %106 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %desc9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %val.i, align 4, !annotation !347
  %call.i330 = call i32 @power_supply_get_property(ptr noundef nonnull %call128, i32 noundef 52, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool.not.i331 = icmp eq i32 %call.i330, 0
  br i1 %tobool.not.i331, label %if.end154.if.end18.sink.split.i_crit_edge, label %land.lhs.true.critedge.i

if.end154.if.end18.sink.split.i_crit_edge:        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.i

land.lhs.true.critedge.i:                         ; preds = %if.end154
  %thermal_zone.i = getelementptr inbounds %struct.charger_desc, ptr %107, i32 0, i32 13
  %109 = ptrtoint ptr %thermal_zone.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %thermal_zone.i, align 4
  %tobool4.not.i = icmp eq ptr %110, null
  br i1 %tobool4.not.i, label %land.lhs.true.critedge.i.if.end18.i_crit_edge, label %if.then5.i

land.lhs.true.critedge.i.if.end18.i_crit_edge:    ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then5.i:                                       ; preds = %land.lhs.true.critedge.i
  %call7.i = call ptr @thermal_zone_get_zone_by_name(ptr noundef nonnull %110) #11
  %tzd_batt.i = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 3
  %111 = ptrtoint ptr %tzd_batt.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call7.i, ptr %tzd_batt.i, align 8
  %cmp.i.i332 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i332, label %cm_init_thermal_data.exit.thread, label %if.then5.i.if.end18.sink.split.i_crit_edge

if.then5.i.if.end18.sink.split.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.i

cm_init_thermal_data.exit.thread:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %do.end160

if.end18.sink.split.i:                            ; preds = %if.then5.i.if.end18.sink.split.i_crit_edge, %if.end154.if.end18.sink.split.i_crit_edge
  %arrayidx.i = getelementptr i32, ptr %call5.i.i, i32 %num_properties.2
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 52, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %num_properties.2, 1
  %113 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %desc9, align 4
  %measure_battery_temp.i = getelementptr inbounds %struct.charger_desc, ptr %114, i32 0, i32 17
  %115 = ptrtoint ptr %measure_battery_temp.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %measure_battery_temp.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %land.lhs.true.critedge.i.if.end18.i_crit_edge
  %num_properties.3 = phi i32 [ %inc.i, %if.end18.sink.split.i ], [ %num_properties.2, %land.lhs.true.critedge.i.if.end18.i_crit_edge ]
  %tobool156.not = phi i1 [ true, %if.end18.sink.split.i ], [ false, %land.lhs.true.critedge.i.if.end18.i_crit_edge ]
  %116 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %desc9, align 4
  %measure_battery_temp20.i = getelementptr inbounds %struct.charger_desc, ptr %117, i32 0, i32 17
  %118 = ptrtoint ptr %measure_battery_temp20.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %measure_battery_temp20.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool21.not.i = icmp eq i8 %119, 0
  br i1 %tobool21.not.i, label %if.end18.i.cm_init_thermal_data.exit_crit_edge, label %if.then22.i

if.end18.i.cm_init_thermal_data.exit_crit_edge:   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_init_thermal_data.exit

if.then22.i:                                      ; preds = %if.end18.i
  %temp_max.i = getelementptr inbounds %struct.charger_desc, ptr %107, i32 0, i32 15
  %120 = ptrtoint ptr %temp_max.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %temp_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool23.not.i = icmp eq i32 %121, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.then22.i.if.end26.i_crit_edge

if.then22.i.if.end26.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %temp_max.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 500, ptr %temp_max.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.then22.i.if.end26.i_crit_edge
  %temp_diff.i = getelementptr inbounds %struct.charger_desc, ptr %107, i32 0, i32 16
  %123 = ptrtoint ptr %temp_diff.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %temp_diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool27.not.i = icmp eq i32 %124, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end26.i.cm_init_thermal_data.exit_crit_edge

if.end26.i.cm_init_thermal_data.exit_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_init_thermal_data.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %temp_diff.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 50, ptr %temp_diff.i, align 4
  br label %cm_init_thermal_data.exit

cm_init_thermal_data.exit:                        ; preds = %if.then28.i, %if.end26.i.cm_init_thermal_data.exit_crit_edge, %if.end18.i.cm_init_thermal_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br i1 %tobool156.not, label %cm_init_thermal_data.exit.if.end163_crit_edge, label %cm_init_thermal_data.exit.do.end160_crit_edge

cm_init_thermal_data.exit.do.end160_crit_edge:    ; preds = %cm_init_thermal_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end160

cm_init_thermal_data.exit.if.end163_crit_edge:    ; preds = %cm_init_thermal_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163

do.end160:                                        ; preds = %cm_init_thermal_data.exit.do.end160_crit_edge, %cm_init_thermal_data.exit.thread
  %num_properties.4433 = phi i32 [ %num_properties.2, %cm_init_thermal_data.exit.thread ], [ %num_properties.3, %cm_init_thermal_data.exit.do.end160_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.76) #14
  %126 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %desc9, align 4
  %measure_battery_temp = getelementptr inbounds %struct.charger_desc, ptr %127, i32 0, i32 17
  %128 = ptrtoint ptr %measure_battery_temp to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %measure_battery_temp, align 4
  br label %if.end163

if.end163:                                        ; preds = %do.end160, %cm_init_thermal_data.exit.if.end163_crit_edge
  %num_properties.4434 = phi i32 [ %num_properties.4433, %do.end160 ], [ %num_properties.3, %cm_init_thermal_data.exit.if.end163_crit_edge ]
  call void @power_supply_put(ptr noundef nonnull %call128) #11
  %properties165 = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 7, i32 4
  %129 = ptrtoint ptr %properties165 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call5.i.i, ptr %properties165, align 4
  %num_properties167 = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 7, i32 5
  %130 = ptrtoint ptr %num_properties167 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %num_properties.4434, ptr %num_properties167, align 4
  %131 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %desc9, align 4
  %num_charger_regulators.i = getelementptr inbounds %struct.charger_desc, ptr %132, i32 0, i32 9
  %133 = ptrtoint ptr %num_charger_regulators.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_charger_regulators.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp115.i = icmp sgt i32 %134, 0
  br i1 %cmp115.i, label %for.body.lr.ph.i, label %if.end163.do.end69.i_crit_edge

if.end163.do.end69.i_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

for.body.lr.ph.i:                                 ; preds = %if.end163
  %charger_regulators.i = getelementptr inbounds %struct.charger_desc, ptr %132, i32 0, i32 10
  %sysfs_groups.i = getelementptr inbounds %struct.charger_desc, ptr %132, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i341.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0117.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i339, %if.end.i341.for.body.i_crit_edge ]
  %chargers_externally_control.0116.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %chargers_externally_control.1.i, %if.end.i341.for.body.i_crit_edge ]
  %135 = ptrtoint ptr %charger_regulators.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %charger_regulators.i, align 4
  %137 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev8, align 8
  %call.i336 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %138, i32 noundef 3264, ptr noundef nonnull @.str.110, i32 noundef %i.0117.i) #11
  %tobool.not.i337 = icmp eq ptr %call.i336, null
  br i1 %tobool.not.i337, label %for.body.i.do.end173_crit_edge, label %if.end.i341

for.body.i.do.end173_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end173

if.end.i341:                                      ; preds = %for.body.i
  %arrayidx.i338 = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i
  %attr_name.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 6
  %attrs.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 9
  %139 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %attr_name.i, ptr %attrs.i, align 4
  %attr_state.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 7
  %arrayidx5.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 9, i32 1
  %140 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %attr_state.i, ptr %arrayidx5.i, align 4
  %attr_externally_control.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 8
  %arrayidx8.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 9, i32 2
  %141 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %attr_externally_control.i, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 9, i32 3
  %142 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %arrayidx10.i, align 4
  %attr_grp.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 5
  %143 = ptrtoint ptr %attr_grp.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i336, ptr %attr_grp.i, align 4
  %attrs14.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 5, i32 3
  %144 = ptrtoint ptr %attrs14.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %attrs.i, ptr %attrs14.i, align 4
  %145 = ptrtoint ptr %sysfs_groups.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sysfs_groups.i, align 4
  %arrayidx16.i = getelementptr ptr, ptr %146, i32 %i.0117.i
  %147 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %attr_grp.i, ptr %arrayidx16.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %attr_name.i, i32 0, i32 3
  %148 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @charger_manager_prepare_sysfs.__key, ptr %key.i, align 4
  %149 = ptrtoint ptr %attr_name.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.111, ptr %attr_name.i, align 4
  %mode.i = getelementptr inbounds %struct.attribute, ptr %attr_name.i, i32 0, i32 1
  %150 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 6, i32 1
  %151 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @charger_name_show, ptr %show.i, align 4
  %key28.i = getelementptr inbounds %struct.attribute, ptr %attr_state.i, i32 0, i32 3
  %152 = ptrtoint ptr %key28.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @charger_manager_prepare_sysfs.__key.112, ptr %key28.i, align 4
  %153 = ptrtoint ptr %attr_state.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @.str.113, ptr %attr_state.i, align 4
  %mode36.i = getelementptr inbounds %struct.attribute, ptr %attr_state.i, i32 0, i32 1
  %154 = ptrtoint ptr %mode36.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 292, ptr %mode36.i, align 4
  %show38.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 7, i32 1
  %155 = ptrtoint ptr %show38.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @charger_state_show, ptr %show38.i, align 4
  %key42.i = getelementptr inbounds %struct.attribute, ptr %attr_externally_control.i, i32 0, i32 3
  %156 = ptrtoint ptr %key42.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @charger_manager_prepare_sysfs.__key.114, ptr %key42.i, align 4
  %157 = ptrtoint ptr %attr_externally_control.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @.str.115, ptr %attr_externally_control.i, align 4
  %mode50.i = getelementptr inbounds %struct.attribute, ptr %attr_externally_control.i, i32 0, i32 1
  %158 = ptrtoint ptr %mode50.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 420, ptr %mode50.i, align 4
  %show52.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 8, i32 1
  %159 = ptrtoint ptr %show52.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @charger_externally_control_show, ptr %show52.i, align 4
  %store.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 8, i32 2
  %160 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @charger_externally_control_store, ptr %store.i, align 4
  %161 = ptrtoint ptr %charger_regulators.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %charger_regulators.i, align 4
  %externally_control.i = getelementptr %struct.charger_regulator, ptr %162, i32 %i.0117.i, i32 2
  %163 = ptrtoint ptr %externally_control.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %externally_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool56.not.i = icmp ne i32 %164, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chargers_externally_control.0116.i)
  %tobool57.not.i = icmp ne i32 %chargers_externally_control.0116.i, 0
  %not.or.cond.i = and i1 %tobool57.not.i, %tobool56.not.i
  %chargers_externally_control.1.i = zext i1 %not.or.cond.i to i32
  %165 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev8, align 8
  %167 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i338, align 4
  %externally_control64.i = getelementptr %struct.charger_regulator, ptr %136, i32 %i.0117.i, i32 2
  %169 = ptrtoint ptr %externally_control64.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %externally_control64.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %166, ptr noundef nonnull @.str.116, ptr noundef %168, i32 noundef %170) #14
  %inc.i339 = add nuw nsw i32 %i.0117.i, 1
  %171 = ptrtoint ptr %num_charger_regulators.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_charger_regulators.i, align 4
  %cmp.i340 = icmp slt i32 %inc.i339, %172
  br i1 %cmp.i340, label %if.end.i341.for.body.i_crit_edge, label %for.end.i

if.end.i341.for.body.i_crit_edge:                 ; preds = %if.end.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i341
  br i1 %not.or.cond.i, label %for.end.i.do.end69.i_crit_edge, label %if.end175

for.end.i.do.end69.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

do.end69.i:                                       ; preds = %for.end.i.do.end69.i_crit_edge, %if.end163.do.end69.i_crit_edge
  %173 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.119) #14
  br label %do.end173

do.end173:                                        ; preds = %do.end69.i, %for.body.i.do.end173_crit_edge
  %retval.0.i342.ph = phi i32 [ -22, %do.end69.i ], [ -12, %for.body.i.do.end173_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79) #14
  br label %cleanup215

if.end175:                                        ; preds = %for.end.i
  %sysfs_groups = getelementptr inbounds %struct.charger_desc, ptr %retval.0.i326, i32 0, i32 11
  %175 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sysfs_groups, align 4
  %attr_grp = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 3
  %177 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %176, ptr %attr_grp, align 4
  %call178 = call ptr @power_supply_register(ptr noundef %dev.i, ptr noundef %charger_psy_desc, ptr noundef nonnull %psy_cfg) #11
  %charger_psy = getelementptr inbounds %struct.charger_manager, ptr %call.i, i32 0, i32 8
  %178 = ptrtoint ptr %charger_psy to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call178, ptr %charger_psy, align 8
  %cmp.i343 = icmp ugt ptr %call178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i343, label %do.end184, label %if.end190

do.end184:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  %179 = ptrtoint ptr %charger_psy_desc to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %charger_psy_desc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.82, ptr noundef %180) #14
  %181 = ptrtoint ptr %charger_psy to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %charger_psy, align 8
  %183 = ptrtoint ptr %182 to i32
  br label %cleanup215

if.end190:                                        ; preds = %if.end175
  %184 = ptrtoint ptr %desc9 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %desc9, align 4
  %num_charger_regulators.i345 = getelementptr inbounds %struct.charger_desc, ptr %185, i32 0, i32 9
  %186 = ptrtoint ptr %num_charger_regulators.i345 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_charger_regulators.i345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp103.i = icmp sgt i32 %187, 0
  br i1 %cmp103.i, label %for.body.lr.ph.i348, label %if.end190.if.end198_crit_edge

if.end190.if.end198_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

for.body.lr.ph.i348:                              ; preds = %if.end190
  %charger_regulators.i346 = getelementptr inbounds %struct.charger_desc, ptr %185, i32 0, i32 10
  br label %for.body.i352

for.body.i352:                                    ; preds = %for.inc26.i.for.body.i352_crit_edge, %for.body.lr.ph.i348
  %i.0104.i = phi i32 [ 0, %for.body.lr.ph.i348 ], [ %inc27.i, %for.inc26.i.for.body.i352_crit_edge ]
  %188 = ptrtoint ptr %charger_regulators.i346 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %charger_regulators.i346, align 4
  %arrayidx.i349 = getelementptr %struct.charger_regulator, ptr %189, i32 %i.0104.i
  %190 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev8, align 8
  %192 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx.i349, align 4
  %call.i350 = call ptr @regulator_get(ptr noundef %191, ptr noundef %193) #11
  %consumer.i = getelementptr %struct.charger_regulator, ptr %189, i32 %i.0104.i, i32 1
  %194 = ptrtoint ptr %consumer.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call.i350, ptr %consumer.i, align 4
  %cmp.i.i351 = icmp ugt ptr %call.i350, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i351, label %do.end.i, label %if.end.i353

do.end.i:                                         ; preds = %for.body.i352
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev8, align 8
  %197 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx.i349, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.128, ptr noundef %198) #14
  %199 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %consumer.i, align 4
  br label %charger_manager_register_extcon.exit

if.end.i353:                                      ; preds = %for.body.i352
  %cm8.i = getelementptr %struct.charger_regulator, ptr %189, i32 %i.0104.i, i32 10
  %201 = ptrtoint ptr %cm8.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call.i, ptr %cm8.i, align 4
  %num_cables.i = getelementptr %struct.charger_regulator, ptr %189, i32 %i.0104.i, i32 4
  %202 = ptrtoint ptr %num_cables.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %num_cables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp10100.i = icmp sgt i32 %203, 0
  br i1 %cmp10100.i, label %for.body11.lr.ph.i, label %if.end.i353.for.inc26.i_crit_edge

if.end.i353.for.inc26.i_crit_edge:                ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc26.i

for.body11.lr.ph.i:                               ; preds = %if.end.i353
  %cables.i = getelementptr %struct.charger_regulator, ptr %189, i32 %i.0104.i, i32 3
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %j.0101.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc.i357, %for.inc.i.for.body11.i_crit_edge ]
  %204 = ptrtoint ptr %cables.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cables.i, align 4
  %arrayidx12.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i
  %wq.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 4
  call void @__init_work(ptr noundef %wq.i.i, i32 noundef 0) #11
  %206 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 -64, ptr %wq.i.i, align 8
  %lockdep_map.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.133, ptr noundef nonnull @charger_extcon_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 4, i32 1
  %207 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 4, i32 1, i32 1
  %208 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 4, i32 2
  %209 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @charger_extcon_work, ptr %func.i.i, align 4
  %nb.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 5
  %210 = ptrtoint ptr %nb.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @charger_extcon_notifier, ptr %nb.i.i, align 4
  %211 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx12.i, align 8
  %call.i.i = call ptr @extcon_get_extcon_dev(ptr noundef %212) #11
  %extcon_dev.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 2
  %213 = ptrtoint ptr %extcon_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i.i, ptr %extcon_dev.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i, null
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %do.end10.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %for.body11.i
  %name18.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 1
  %214 = ptrtoint ptr %name18.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %name18.i.i, align 4
  %call20.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.147) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool.not.i.i354 = icmp eq i32 %call20.i.i, 0
  br i1 %tobool.not.i.i354, label %for.cond.preheader.i.i.if.end33.i.i_crit_edge, label %for.inc.i.i

for.cond.preheader.i.i.if.end33.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

do.end10.i.i:                                     ; preds = %for.body11.i
  %216 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx12.i, align 8
  %name.i.i355 = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 1
  %218 = ptrtoint ptr %name.i.i355 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %name.i.i355, align 4
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %217, ptr noundef %219) #14
  %220 = ptrtoint ptr %extcon_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %extcon_dev.i.i, align 8
  %cmp.i61.i = icmp eq ptr %221, null
  br i1 %cmp.i61.i, label %do.end10.i.i.charger_manager_register_extcon.exit.thread380_crit_edge, label %charger_extcon_init.exit.i

do.end10.i.i.charger_manager_register_extcon.exit.thread380_crit_edge: ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %charger_manager_register_extcon.exit.thread380

for.inc.i.i:                                      ; preds = %for.cond.preheader.i.i
  %call20.1.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(9) @.str.148) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call20.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.end33.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.end33.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %call20.2.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.149) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call20.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.if.end33.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %call20.3.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.150) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call20.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.if.end33.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %call20.4.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.151) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call20.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.if.end33.i.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %call20.5.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.152) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %call20.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.inc.4.i.i.if.end33.i.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %call20.6.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(13) @.str.153) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %call20.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.inc.5.i.i.if.end33.i.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %call20.7.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(13) @.str.154) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %call20.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.if.end33.i.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %call20.8.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.155) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %call20.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.inc.7.i.i.if.end33.i.i_crit_edge, label %for.inc.8.i.i

for.inc.7.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %call20.9.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(3) @.str.156) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %call20.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %for.inc.8.i.i.if.end33.i.i_crit_edge, label %for.inc.9.i.i

for.inc.8.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %call20.10.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(5) @.str.157) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.10.i.i)
  %tobool.not.10.i.i = icmp eq i32 %call20.10.i.i, 0
  br i1 %tobool.not.10.i.i, label %for.inc.9.i.i.if.end33.i.i_crit_edge, label %for.inc.10.i.i

for.inc.9.i.i.if.end33.i.i_crit_edge:             ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.10.i.i:                                   ; preds = %for.inc.9.i.i
  %call20.11.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(4) @.str.158) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.11.i.i)
  %tobool.not.11.i.i = icmp eq i32 %call20.11.i.i, 0
  br i1 %tobool.not.11.i.i, label %for.inc.10.i.i.if.end33.i.i_crit_edge, label %for.inc.11.i.i

for.inc.10.i.i.if.end33.i.i_crit_edge:            ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.11.i.i:                                   ; preds = %for.inc.10.i.i
  %call20.12.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(11) @.str.159) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.12.i.i)
  %tobool.not.12.i.i = icmp eq i32 %call20.12.i.i, 0
  br i1 %tobool.not.12.i.i, label %for.inc.11.i.i.if.end33.i.i_crit_edge, label %for.inc.12.i.i

for.inc.11.i.i.if.end33.i.i_crit_edge:            ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.12.i.i:                                   ; preds = %for.inc.11.i.i
  %call20.13.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(3) @.str.160) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.13.i.i)
  %tobool.not.13.i.i = icmp eq i32 %call20.13.i.i, 0
  br i1 %tobool.not.13.i.i, label %for.inc.12.i.i.if.end33.i.i_crit_edge, label %for.inc.13.i.i

for.inc.12.i.i.if.end33.i.i_crit_edge:            ; preds = %for.inc.12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.13.i.i:                                   ; preds = %for.inc.12.i.i
  %call20.14.i.i = call i32 @strcmp(ptr noundef %215, ptr noundef nonnull dereferenceable(18) @.str.161) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.14.i.i)
  %tobool.not.14.i.i = icmp eq i32 %call20.14.i.i, 0
  br i1 %tobool.not.14.i.i, label %for.inc.13.i.i.if.end33.i.i_crit_edge, label %for.inc.14.i.i

for.inc.13.i.i.if.end33.i.i_crit_edge:            ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i.i

for.inc.14.i.i:                                   ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %215) #14
  br label %charger_manager_register_extcon.exit.thread380

if.end33.i.i:                                     ; preds = %for.inc.13.i.i.if.end33.i.i_crit_edge, %for.inc.12.i.i.if.end33.i.i_crit_edge, %for.inc.11.i.i.if.end33.i.i_crit_edge, %for.inc.10.i.i.if.end33.i.i_crit_edge, %for.inc.9.i.i.if.end33.i.i_crit_edge, %for.inc.8.i.i.if.end33.i.i_crit_edge, %for.inc.7.i.i.if.end33.i.i_crit_edge, %for.inc.6.i.i.if.end33.i.i_crit_edge, %for.inc.5.i.i.if.end33.i.i_crit_edge, %for.inc.4.i.i.if.end33.i.i_crit_edge, %for.inc.3.i.i.if.end33.i.i_crit_edge, %for.inc.2.i.i.if.end33.i.i_crit_edge, %for.inc.1.i.i.if.end33.i.i_crit_edge, %for.inc.i.i.if.end33.i.i_crit_edge, %for.cond.preheader.i.i.if.end33.i.i_crit_edge
  %i.080.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.if.end33.i.i_crit_edge ], [ 1, %for.inc.i.i.if.end33.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.end33.i.i_crit_edge ], [ 3, %for.inc.2.i.i.if.end33.i.i_crit_edge ], [ 4, %for.inc.3.i.i.if.end33.i.i_crit_edge ], [ 5, %for.inc.4.i.i.if.end33.i.i_crit_edge ], [ 6, %for.inc.5.i.i.if.end33.i.i_crit_edge ], [ 7, %for.inc.6.i.i.if.end33.i.i_crit_edge ], [ 8, %for.inc.7.i.i.if.end33.i.i_crit_edge ], [ 9, %for.inc.8.i.i.if.end33.i.i_crit_edge ], [ 10, %for.inc.9.i.i.if.end33.i.i_crit_edge ], [ 11, %for.inc.10.i.i.if.end33.i.i_crit_edge ], [ 12, %for.inc.11.i.i.if.end33.i.i_crit_edge ], [ 13, %for.inc.12.i.i.if.end33.i.i_crit_edge ], [ 14, %for.inc.13.i.i.if.end33.i.i_crit_edge ]
  %extcon_type23.i.i = getelementptr [15 x %struct.anon.85], ptr @extcon_mapping, i32 0, i32 %i.080.lcssa.i.i, i32 1
  %222 = ptrtoint ptr %extcon_type23.i.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %extcon_type23.i.i, align 8
  %extcon_type34.i.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 3
  %224 = ptrtoint ptr %extcon_type34.i.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %223, ptr %extcon_type34.i.i, align 8
  %225 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev8, align 8
  %conv.i.i = trunc i64 %223 to i32
  %call38.i.i = call i32 @devm_extcon_register_notifier(ptr noundef %226, ptr noundef nonnull %call.i.i, i32 noundef %conv.i.i, ptr noundef %nb.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %cmp39.i.i = icmp slt i32 %call38.i.i, 0
  br i1 %cmp39.i.i, label %do.end44.i.i, label %if.end33.i.i.for.inc.i_crit_edge

if.end33.i.i.for.inc.i_crit_edge:                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end44.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %227 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx12.i, align 8
  %229 = ptrtoint ptr %name18.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %name18.i.i, align 4
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %228, ptr noundef %230) #14
  br label %charger_manager_register_extcon.exit.thread380

charger_extcon_init.exit.i:                       ; preds = %do.end10.i.i
  %cmp14.i = icmp slt ptr %221, null
  br i1 %cmp14.i, label %cleanup.thread75.i, label %charger_extcon_init.exit.i.for.inc.i_crit_edge

charger_extcon_init.exit.i.for.inc.i_crit_edge:   ; preds = %charger_extcon_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

cleanup.thread75.i:                               ; preds = %charger_extcon_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %231 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev8, align 8
  %233 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx.i349, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.131, ptr noundef %234) #14
  br label %charger_manager_register_extcon.exit

charger_manager_register_extcon.exit.thread380:   ; preds = %do.end44.i.i, %for.inc.14.i.i, %do.end10.i.i.charger_manager_register_extcon.exit.thread380_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call38.i.i, %do.end44.i.i ], [ -22, %for.inc.14.i.i ], [ -517, %do.end10.i.i.charger_manager_register_extcon.exit.thread380_crit_edge ]
  %235 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev8, align 8
  %237 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx.i349, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.131, ptr noundef %238) #14
  br label %do.end196

for.inc.i:                                        ; preds = %charger_extcon_init.exit.i.for.inc.i_crit_edge, %if.end33.i.i.for.inc.i_crit_edge
  %charger22.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 7
  %239 = ptrtoint ptr %charger22.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %arrayidx.i349, ptr %charger22.i, align 4
  %cm23.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 10
  %240 = ptrtoint ptr %cm23.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call.i, ptr %cm23.i, align 8
  %241 = ptrtoint ptr %extcon_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %extcon_dev.i.i, align 8
  %extcon_type.i = getelementptr %struct.charger_cable, ptr %205, i32 %j.0101.i, i32 3
  %243 = ptrtoint ptr %extcon_type.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %extcon_type.i, align 8
  %conv.i = trunc i64 %244 to i32
  %call24.i = call i32 @extcon_get_state(ptr noundef %242, i32 noundef %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool.i.i = icmp ne i32 %call24.i, 0
  %attached.i.i = getelementptr i8, ptr %nb.i.i, i32 12
  %frombool.i.i = zext i1 %tobool.i.i to i8
  %245 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %frombool.i.i, ptr %attached.i.i, align 8
  %wq.i62.i = getelementptr i8, ptr %nb.i.i, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %246 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i356 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %246, ptr noundef %wq.i62.i) #11
  %inc.i357 = add nuw nsw i32 %j.0101.i, 1
  %247 = ptrtoint ptr %num_cables.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %num_cables.i, align 4
  %cmp10.i = icmp slt i32 %inc.i357, %248
  br i1 %cmp10.i, label %for.inc.i.for.body11.i_crit_edge, label %for.inc.i.for.inc26.i_crit_edge

for.inc.i.for.inc26.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc26.i

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11.i

for.inc26.i:                                      ; preds = %for.inc.i.for.inc26.i_crit_edge, %if.end.i353.for.inc26.i_crit_edge
  %inc27.i = add nuw nsw i32 %i.0104.i, 1
  %249 = ptrtoint ptr %num_charger_regulators.i345 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %num_charger_regulators.i345, align 4
  %cmp.i358 = icmp slt i32 %inc27.i, %250
  br i1 %cmp.i358, label %for.inc26.i.for.body.i352_crit_edge, label %for.inc26.i.if.end198_crit_edge

for.inc26.i.if.end198_crit_edge:                  ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

for.inc26.i.for.body.i352_crit_edge:              ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i352

charger_manager_register_extcon.exit:             ; preds = %cleanup.thread75.i, %do.end.i
  %retval.3.i.in = phi ptr [ %200, %do.end.i ], [ %221, %cleanup.thread75.i ]
  %retval.3.i = ptrtoint ptr %retval.3.i.in to i32
  %cmp192 = icmp slt ptr %retval.3.i.in, null
  br i1 %cmp192, label %charger_manager_register_extcon.exit.do.end196_crit_edge, label %charger_manager_register_extcon.exit.if.end198_crit_edge

charger_manager_register_extcon.exit.if.end198_crit_edge: ; preds = %charger_manager_register_extcon.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

charger_manager_register_extcon.exit.do.end196_crit_edge: ; preds = %charger_manager_register_extcon.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end196

do.end196:                                        ; preds = %charger_manager_register_extcon.exit.do.end196_crit_edge, %charger_manager_register_extcon.exit.thread380
  %retval.3.i383 = phi i32 [ %retval.0.i.ph.i, %charger_manager_register_extcon.exit.thread380 ], [ %retval.3.i, %charger_manager_register_extcon.exit.do.end196_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.85) #14
  %251 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %num_charger_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp207407 = icmp sgt i32 %252, 0
  br i1 %cmp207407, label %do.end196.for.body208_crit_edge, label %do.end196.for.end213_crit_edge

do.end196.for.end213_crit_edge:                   ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end213

do.end196.for.body208_crit_edge:                  ; preds = %do.end196
  br label %for.body208

if.end198:                                        ; preds = %charger_manager_register_extcon.exit.if.end198_crit_edge, %for.inc26.i.if.end198_crit_edge, %if.end190.if.end198_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  %253 = load ptr, ptr @cm_list, align 4
  %call.i.i359 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @cm_list, ptr noundef %253) #11
  br i1 %call.i.i359, label %if.end.i.i360, label %if.end198.list_add.exit_crit_edge

if.end198.list_add.exit_crit_edge:                ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i360:                                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %255 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %253, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %256 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr @cm_list, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @cm_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i360, %if.end198.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  %call201 = call i32 @device_init_wakeup(ptr noundef %dev.i, i1 noundef zeroext true) #11
  call void @device_set_wakeup_capable(ptr noundef %dev.i, i1 noundef zeroext false) #11
  call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  %cm.01.i = load ptr, ptr @cm_list, align 4
  %cmp.not2.i = icmp eq ptr %cm.01.i, @cm_list
  br i1 %cmp.not2.i, label %list_add.exit.cm_monitor.exit_crit_edge, label %list_add.exit.for.body.i362_crit_edge

list_add.exit.for.body.i362_crit_edge:            ; preds = %list_add.exit
  br label %for.body.i362

list_add.exit.cm_monitor.exit_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_monitor.exit

for.body.i362:                                    ; preds = %for.body.i362.for.body.i362_crit_edge, %list_add.exit.for.body.i362_crit_edge
  %cm.03.i = phi ptr [ %cm.0.i, %for.body.i362.for.body.i362_crit_edge ], [ %cm.01.i, %list_add.exit.for.body.i362_crit_edge ]
  %call.i361 = call fastcc zeroext i1 @_cm_monitor(ptr noundef %cm.03.i) #11
  %257 = ptrtoint ptr %cm.03.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %cm.0.i = load ptr, ptr %cm.03.i, align 4
  %cmp.not.i = icmp eq ptr %cm.0.i, @cm_list
  br i1 %cmp.not.i, label %for.body.i362.cm_monitor.exit_crit_edge, label %for.body.i362.for.body.i362_crit_edge

for.body.i362.for.body.i362_crit_edge:            ; preds = %for.body.i362
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i362

for.body.i362.cm_monitor.exit_crit_edge:          ; preds = %for.body.i362
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_monitor.exit

cm_monitor.exit:                                  ; preds = %for.body.i362.cm_monitor.exit_crit_edge, %list_add.exit.cm_monitor.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %258 = load ptr, ptr @system_wq, align 4
  %call.i.i364 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %258, ptr noundef nonnull @setup_polling) #11
  br label %cleanup215

for.body208:                                      ; preds = %for.body208.for.body208_crit_edge, %do.end196.for.body208_crit_edge
  %i.1408 = phi i32 [ %inc212, %for.body208.for.body208_crit_edge ], [ 0, %do.end196.for.body208_crit_edge ]
  %259 = ptrtoint ptr %charger_regulators to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %charger_regulators, align 4
  %consumer = getelementptr %struct.charger_regulator, ptr %260, i32 %i.1408, i32 1
  %261 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %consumer, align 4
  call void @regulator_put(ptr noundef %262) #11
  %inc212 = add nuw nsw i32 %i.1408, 1
  %263 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %num_charger_regulators, align 4
  %cmp207 = icmp slt i32 %inc212, %264
  br i1 %cmp207, label %for.body208.for.body208_crit_edge, label %for.body208.for.end213_crit_edge

for.body208.for.end213_crit_edge:                 ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end213

for.body208.for.body208_crit_edge:                ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body208

for.end213:                                       ; preds = %for.body208.for.end213_crit_edge, %do.end196.for.end213_crit_edge
  %265 = ptrtoint ptr %charger_psy to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %charger_psy, align 8
  call void @power_supply_unregister(ptr noundef %266) #11
  br label %cleanup215

cleanup215:                                       ; preds = %for.end213, %cm_monitor.exit, %do.end184, %do.end173, %do.end133, %if.end118.cleanup215_crit_edge, %do.end97, %do.end82, %do.end69, %do.end62, %do.end52, %if.then12.cleanup215_crit_edge, %if.end.cleanup215_crit_edge, %do.end
  %retval.2 = phi i32 [ %42, %do.end ], [ -22, %do.end52 ], [ -22, %do.end97 ], [ %retval.0.i342.ph, %do.end173 ], [ %183, %do.end184 ], [ %retval.3.i383, %for.end213 ], [ 0, %cm_monitor.exit ], [ -19, %do.end133 ], [ -22, %do.end69 ], [ -22, %do.end62 ], [ -12, %if.end.cleanup215_crit_edge ], [ -12, %if.then12.cleanup215_crit_edge ], [ -19, %do.end82 ], [ -12, %if.end118.cleanup215_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_manager_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %desc1 = getelementptr inbounds %struct.charger_manager, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @setup_polling) #11
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @cm_monitor_work) #11
  %num_charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_charger_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %for.body.lr.ph, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit
  %charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %3, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %charger_regulators to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %charger_regulators, align 4
  %consumer = getelementptr %struct.charger_regulator, ptr %15, i32 %i.013, i32 1
  %16 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %consumer, align 4
  tail call void @regulator_put(ptr noundef %17) #11
  %inc = add nuw nsw i32 %i.013, 1
  %18 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_charger_regulators, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %charger_psy = getelementptr inbounds %struct.charger_manager, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %charger_psy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %charger_psy, align 8
  tail call void @power_supply_unregister(ptr noundef %21) #11
  tail call fastcc void @try_charger_enable(ptr noundef %1, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alarmtimer_get_rtcdev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cm_timer_func(ptr nocapture noundef readnone %alarm, i64 noundef %now) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @cm_timer_set, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %val.i = alloca %union.power_supply_propval, align 4
  %uV = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #11
  %desc1 = getelementptr inbounds %struct.charger_manager, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uV) #11
  %2 = ptrtoint ptr %uV to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uV, align 4, !annotation !347
  %3 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
    i32 12, label %sw.bb13
    i32 17, label %sw.bb15
    i32 52, label %sw.bb21
    i32 47, label %sw.bb23
    i32 4, label %sw.bb57
    i32 24, label %entry.sw.bb62_crit_edge
    i32 26, label %entry.sw.bb62_crit_edge130
  ]

entry.sw.bb62_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb62

entry.sw.bb62_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb62

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %battery_status = getelementptr inbounds %struct.charger_manager, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %battery_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %battery_status, align 8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %emergency_stop = getelementptr inbounds %struct.charger_manager, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %emergency_stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %emergency_stop, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %8, label %if.else6 [
    i32 1, label %if.then
    i32 2, label %if.then5
  ]

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %val, align 4
  br label %cleanup

if.else6:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = tail call fastcc zeroext i1 @is_batt_present(ptr noundef %call)
  br i1 %call9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !347
  %psy_fuel_gauge.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %psy_fuel_gauge.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %psy_fuel_gauge.i, align 4
  %call.i = tail call ptr @power_supply_get_by_name(ptr noundef %17) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb13.get_batt_uV.exit_crit_edge, label %if.end.i

sw.bb13.get_batt_uV.exit_crit_edge:               ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_batt_uV.exit

if.end.i:                                         ; preds = %sw.bb13
  %call1.i = call i32 @power_supply_get_property(ptr noundef nonnull %call.i, i32 noundef 12, ptr noundef nonnull %val.i) #11
  call void @power_supply_put(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.get_batt_uV.exit_crit_edge

if.end.i.get_batt_uV.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_batt_uV.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %get_batt_uV.exit

get_batt_uV.exit:                                 ; preds = %if.end4.i, %if.end.i.get_batt_uV.exit_crit_edge, %sw.bb13.get_batt_uV.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end4.i ], [ -19, %sw.bb13.get_batt_uV.exit_crit_edge ], [ %call1.i, %if.end.i.get_batt_uV.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %psy_fuel_gauge = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %psy_fuel_gauge to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psy_fuel_gauge, align 4
  %call17 = tail call ptr @power_supply_get_by_name(ptr noundef %22) #11
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %sw.bb15.cleanup_crit_edge, label %if.end19

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @power_supply_get_property(ptr noundef nonnull %call17, i32 noundef 17, ptr noundef %val) #11
  br label %if.then71

sw.bb21:                                          ; preds = %entry
  %measure_battery_temp.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %measure_battery_temp.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %measure_battery_temp.i, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i123 = icmp eq i8 %24, 0
  br i1 %tobool.not.i123, label %sw.bb21.cleanup_crit_edge, label %if.end.i124

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i124:                                      ; preds = %sw.bb21
  %tzd_batt.i = getelementptr inbounds %struct.charger_manager, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %tzd_batt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tzd_batt.i, align 8
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i124
  %call.i125 = tail call i32 @thermal_zone_get_temp(ptr noundef nonnull %26, ptr noundef %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool4.not.i = icmp eq i32 %call.i125, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %div.i = sdiv i32 %28, 100
  store i32 %div.i, ptr %val, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i124
  %psy_fuel_gauge.i.i = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %psy_fuel_gauge.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psy_fuel_gauge.i.i, align 4
  %call.i.i = tail call ptr @power_supply_get_by_name(ptr noundef %30) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.cleanup_crit_edge, label %if.end.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 @power_supply_get_property(ptr noundef nonnull %call.i.i, i32 noundef 52, ptr noundef %val) #11
  tail call void @power_supply_put(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %call24 = tail call fastcc zeroext i1 @is_batt_present(ptr noundef %call)
  br i1 %call24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 100, ptr %val, align 4
  br label %cleanup

if.end26:                                         ; preds = %sw.bb23
  %32 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc1, align 4
  %psy_fuel_gauge28 = getelementptr inbounds %struct.charger_desc, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %psy_fuel_gauge28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %psy_fuel_gauge28, align 4
  %call29 = tail call ptr @power_supply_get_by_name(ptr noundef %35) #11
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %call33 = tail call i32 @power_supply_get_property(ptr noundef nonnull %call29, i32 noundef 47, ptr noundef %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.if.then71_crit_edge

if.end32.if.then71_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.end36:                                         ; preds = %if.end32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %37)
  %cmp37 = icmp sgt i32 %37, 100
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 100, ptr %val, align 4
  br label %if.then71

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp40 = icmp slt i32 %37, 0
  br i1 %cmp40, label %if.then41, label %if.end39.if.end42_crit_edge

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %val, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %call43 = tail call fastcc zeroext i1 @is_charging(ptr noundef %call)
  br i1 %call43, label %if.end42.if.then71_crit_edge, label %if.end45

if.end42.if.then71_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.end45:                                         ; preds = %if.end42
  %call46 = call fastcc i32 @get_batt_uV(ptr noundef %call, ptr noundef nonnull %uV)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.if.then71_crit_edge

if.end45.if.then71_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.end49:                                         ; preds = %if.end45
  %fullbatt_uV = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %fullbatt_uV to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fullbatt_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp50.not = icmp eq i32 %41, 0
  br i1 %cmp50.not, label %if.end49.if.then71_crit_edge, label %land.lhs.true

if.end49.if.then71_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

land.lhs.true:                                    ; preds = %if.end49
  %42 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp52.not = icmp ult i32 %43, %41
  br i1 %cmp52.not, label %land.lhs.true.if.then71_crit_edge, label %land.lhs.true53

land.lhs.true.if.then71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

land.lhs.true53:                                  ; preds = %land.lhs.true
  %call54 = tail call fastcc zeroext i1 @is_charging(ptr noundef %call)
  br i1 %call54, label %land.lhs.true53.if.then71_crit_edge, label %if.then55

land.lhs.true53.if.then71_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 100, ptr %val, align 4
  br label %if.then71

sw.bb57:                                          ; preds = %entry
  %call58 = tail call fastcc zeroext i1 @is_ext_pwr_online(ptr noundef %call)
  br i1 %call58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else60:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %entry.sw.bb62_crit_edge, %entry.sw.bb62_crit_edge130
  %psy_fuel_gauge64 = getelementptr inbounds %struct.charger_desc, ptr %1, i32 0, i32 12
  %47 = ptrtoint ptr %psy_fuel_gauge64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %psy_fuel_gauge64, align 4
  %call65 = tail call ptr @power_supply_get_by_name(ptr noundef %48) #11
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %sw.bb62.cleanup_crit_edge, label %if.end68

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = tail call i32 @power_supply_get_property(ptr noundef nonnull %call65, i32 noundef %psp, ptr noundef %val) #11
  br label %if.then71

if.then71:                                        ; preds = %if.end68, %if.then55, %land.lhs.true53.if.then71_crit_edge, %land.lhs.true.if.then71_crit_edge, %if.end49.if.then71_crit_edge, %if.end45.if.then71_crit_edge, %if.end42.if.then71_crit_edge, %if.then38, %if.end32.if.then71_crit_edge, %if.end19
  %fuel_gauge.0 = phi ptr [ %call65, %if.end68 ], [ %call29, %if.end32.if.then71_crit_edge ], [ %call29, %if.then38 ], [ %call29, %if.end42.if.then71_crit_edge ], [ %call29, %land.lhs.true53.if.then71_crit_edge ], [ %call29, %if.then55 ], [ %call29, %land.lhs.true.if.then71_crit_edge ], [ %call29, %if.end49.if.then71_crit_edge ], [ %call17, %if.end19 ], [ %call29, %if.end45.if.then71_crit_edge ]
  %ret.0 = phi i32 [ %call69, %if.end68 ], [ %call33, %if.end32.if.then71_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end42.if.then71_crit_edge ], [ 0, %land.lhs.true53.if.then71_crit_edge ], [ 0, %if.then55 ], [ 0, %land.lhs.true.if.then71_crit_edge ], [ 0, %if.end49.if.then71_crit_edge ], [ %call20, %if.end19 ], [ 0, %if.end45.if.then71_crit_edge ]
  tail call void @power_supply_put(ptr noundef nonnull %fuel_gauge.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %sw.bb62.cleanup_crit_edge, %if.else60, %if.then59, %if.end26.cleanup_crit_edge, %if.then25, %if.end.i.i, %if.else.i.cleanup_crit_edge, %if.then5.i, %if.then2.i.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %get_batt_uV.exit, %if.else11, %if.then10, %if.else6, %if.then5, %if.then, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.then71 ], [ -19, %sw.bb21.cleanup_crit_edge ], [ %call.i125, %if.then2.i.cleanup_crit_edge ], [ 0, %if.then5.i ], [ %call1.i.i, %if.end.i.i ], [ -19, %if.else.i.cleanup_crit_edge ], [ -19, %sw.bb62.cleanup_crit_edge ], [ -19, %if.end26.cleanup_crit_edge ], [ -19, %sw.bb15.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %if.else6 ], [ 0, %if.then5 ], [ 0, %if.then ], [ 0, %if.else11 ], [ 0, %if.then10 ], [ %retval.0.i, %get_batt_uV.exit ], [ 0, %if.then25 ], [ 0, %if.else60 ], [ 0, %if.then59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uV) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.121, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_state_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %externally_control = getelementptr i8, ptr %attr, i32 -60
  %0 = ptrtoint ptr %externally_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %externally_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %consumer = getelementptr i8, ptr %attr, i32 -64
  %2 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %consumer, align 4
  %call = tail call i32 @regulator_is_enabled(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  %phi.sel = select i1 %phi.cmp, ptr @.str.123, ptr @.str.122
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state.0 = phi ptr [ @.str.123, %entry.if.end_crit_edge ], [ %phi.sel, %if.then ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.121, ptr noundef nonnull %state.0)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_externally_control_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %externally_control = getelementptr i8, ptr %attr, i32 -88
  %0 = ptrtoint ptr %externally_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %externally_control, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_externally_control_store(ptr nocapture noundef readnone %dev, ptr noundef %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %externally_control = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -96
  %cm1 = getelementptr i8, ptr %attr, i32 44
  %0 = ptrtoint ptr %cm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm1, align 4
  %desc2 = getelementptr inbounds %struct.charger_manager, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %externally_control) #11
  %4 = ptrtoint ptr %externally_control to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %externally_control, align 4, !annotation !347
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.125, ptr noundef nonnull %externally_control)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %externally_control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %externally_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %num_charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %num_charger_regulators to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_charger_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp650 = icmp sgt i32 %8, 0
  br i1 %cmp650, label %for.body.lr.ph, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %charger_regulators = getelementptr inbounds %struct.charger_desc, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %charger_regulators to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %charger_regulators, align 4
  br label %for.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %externally_control4 = getelementptr i8, ptr %attr, i32 -88
  %11 = ptrtoint ptr %externally_control4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %externally_control4, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.charger_regulator, ptr %10, i32 %i.051
  %cmp7.not = icmp eq ptr %arrayidx, %add.ptr
  br i1 %cmp7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %externally_control10 = getelementptr %struct.charger_regulator, ptr %10, i32 %i.051, i32 2
  %12 = ptrtoint ptr %externally_control10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %externally_control10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.then15.critedge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then15.critedge:                               ; preds = %land.lhs.true
  %charger_enabled = getelementptr inbounds %struct.charger_manager, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %charger_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %charger_enabled, align 4, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %cm1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cm1, align 4
  call fastcc void @try_charger_enable(ptr noundef %17, i1 noundef zeroext false)
  %18 = ptrtoint ptr %externally_control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %externally_control, align 4
  %externally_control20 = getelementptr i8, ptr %attr, i32 -88
  %20 = ptrtoint ptr %externally_control20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %externally_control20, align 4
  %21 = ptrtoint ptr %cm1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cm1, align 4
  call fastcc void @try_charger_enable(ptr noundef %22, i1 noundef zeroext true)
  br label %cleanup

if.else:                                          ; preds = %if.then15.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %externally_control23 = getelementptr i8, ptr %attr, i32 -88
  %23 = ptrtoint ptr %externally_control23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %6, ptr %externally_control23, align 4
  br label %cleanup

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %dev26 = getelementptr inbounds %struct.charger_manager, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev26, align 8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.126, ptr noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %if.then17, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then3 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then17 ], [ %count, %if.else ], [ %count, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %externally_control) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_extcon_notifier(ptr noundef %self, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool = icmp ne i32 %event, 0
  %attached = getelementptr i8, ptr %self, i32 12
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %attached, align 8
  %wq = getelementptr i8, ptr %self, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %wq) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @charger_extcon_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr i8, ptr %work, i32 56
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attached, align 8, !range !348
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %min_uA = getelementptr i8, ptr %work, i32 64
  %2 = ptrtoint ptr %min_uA to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_uA, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true1

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true1:                                   ; preds = %land.lhs.true
  %max_uA = getelementptr i8, ptr %work, i32 68
  %4 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not = icmp eq i32 %5, 0
  br i1 %cmp2.not, label %land.lhs.true1.if.end19_crit_edge, label %if.then

land.lhs.true1.if.end19_crit_edge:                ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true1
  %charger = getelementptr i8, ptr %work, i32 60
  %6 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %charger, align 4
  %consumer = getelementptr inbounds %struct.charger_regulator, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer, align 4
  %call = tail call i32 @regulator_set_current_limit(ptr noundef %9, i32 noundef %3, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  %10 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charger, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br i1 %cmp5, label %do.end, label %do.end12

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr i8, ptr %work, i32 -20
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %13, ptr noundef %15) #14
  br label %cleanup

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %min_uA to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_uA, align 8
  %18 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_uA, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %13, i32 noundef %17, i32 noundef %19) #14
  br label %if.end19

if.end19:                                         ; preds = %do.end12, %land.lhs.true1.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @cm_monitor_work) #11
  %20 = load ptr, ptr @cm_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef nonnull @cm_monitor_work, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_extcon_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm_suspend_prepare(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cm_timer, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %cm.0.in.i = phi ptr [ @cm_list, %if.end.i ], [ %cm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %cm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %cm.0.i = load ptr, ptr %cm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cm.0.i, @cm_list
  br i1 %cmp.not.i, label %cm_need_to_awake.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %call.i = tail call fastcc zeroext i1 @is_charging(ptr noundef %cm.0.i) #11
  br i1 %call.i, label %cm_need_to_awake.exit.thread17, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

cm_need_to_awake.exit.thread17:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  br label %return

cm_need_to_awake.exit:                            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  br label %if.end

if.end:                                           ; preds = %cm_need_to_awake.exit, %entry.if.end_crit_edge
  %.b9 = load i1, ptr @cm_suspended, align 1
  br i1 %.b9, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cm_suspended, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load i32, ptr @next_polling, align 4
  %sub.i = sub i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end2.if.end.i11_crit_edge

if.end2.if.end.i11_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i11

if.then.i:                                        ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = sub i32 %3, %4
  %call.i10 = tail call i32 @jiffies_to_msecs(i32 noundef %sub1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp2.not.i = icmp eq i32 %call.i10, 0
  br i1 %cmp2.not.i, label %if.then.i.if.end.i11_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i11_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i11

land.lhs.true.i:                                  ; preds = %if.then.i
  %5 = load i32, ptr @next_polling, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub3.i = sub i32 %5, %6
  %call4.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, -1
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i11_crit_edge, label %cond.true.i

land.lhs.true.i.if.end.i11_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i11

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load i32, ptr @next_polling, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %7, %8
  %call7.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub6.i) #11
  br label %if.end.i11

if.end.i11:                                       ; preds = %cond.true.i, %land.lhs.true.i.if.end.i11_crit_edge, %if.then.i.if.end.i11_crit_edge, %if.end2.if.end.i11_crit_edge
  %wakeup_ms.0.i = phi i32 [ -1, %if.end2.if.end.i11_crit_edge ], [ %call7.i, %cond.true.i ], [ -1, %land.lhs.true.i.if.end.i11_crit_edge ], [ -1, %if.then.i.if.end.i11_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @cm_list_mtx, i32 noundef 0) #11
  %cm.071.i = load ptr, ptr @cm_list, align 4
  %cmp9.not72.i = icmp eq ptr %cm.071.i, @cm_list
  br i1 %cmp9.not72.i, label %for.end.thread.i, label %if.end.i11.for.body.i12_crit_edge

if.end.i11.for.body.i12_crit_edge:                ; preds = %if.end.i11
  br label %for.body.i12

for.end.thread.i:                                 ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  br label %cm_setup_timer.exit.thread

for.body.i12:                                     ; preds = %for.inc.i.for.body.i12_crit_edge, %if.end.i11.for.body.i12_crit_edge
  %cm.077.i = phi ptr [ %cm.0.i14, %for.inc.i.for.body.i12_crit_edge ], [ %cm.071.i, %if.end.i11.for.body.i12_crit_edge ]
  %wakeup_ms.175.i = phi i32 [ %wakeup_ms.2.i, %for.inc.i.for.body.i12_crit_edge ], [ %wakeup_ms.0.i, %if.end.i11.for.body.i12_crit_edge ]
  %timer_req.073.i = phi i32 [ %timer_req.1.i, %for.inc.i.for.body.i12_crit_edge ], [ 0, %if.end.i11.for.body.i12_crit_edge ]
  %desc.i.i = getelementptr inbounds %struct.charger_manager, ptr %cm.077.i, i32 0, i32 2
  %9 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc.i.i, align 4
  %polling_mode.i.i = getelementptr inbounds %struct.charger_desc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %polling_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %polling_mode.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %12, label %do.end.i.i [
    i32 0, label %for.body.i12.land.lhs.true11.i_crit_edge
    i32 1, label %for.body.i12.if.end13.i_crit_edge
    i32 2, label %is_polling_required.exit.i
    i32 3, label %sw.bb3.i.i
  ]

for.body.i12.if.end13.i_crit_edge:                ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

for.body.i12.land.lhs.true11.i_crit_edge:         ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i

sw.bb3.i.i:                                       ; preds = %for.body.i12
  %call4.i.i = tail call fastcc zeroext i1 @is_charging(ptr noundef %cm.077.i) #11
  br i1 %call4.i.i, label %sw.bb3.i.i.if.end13.i_crit_edge, label %sw.bb3.i.i.land.lhs.true11.i_crit_edge

sw.bb3.i.i.land.lhs.true11.i_crit_edge:           ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i

sw.bb3.i.i.if.end13.i_crit_edge:                  ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

do.end.i.i:                                       ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.charger_manager, ptr %cm.077.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %12) #14
  br label %land.lhs.true11.i

is_polling_required.exit.i:                       ; preds = %for.body.i12
  %call.i.i = tail call fastcc zeroext i1 @is_ext_pwr_online(ptr noundef %cm.077.i) #11
  br i1 %call.i.i, label %is_polling_required.exit.i.if.end13.i_crit_edge, label %is_polling_required.exit.i.land.lhs.true11.i_crit_edge

is_polling_required.exit.i.land.lhs.true11.i_crit_edge: ; preds = %is_polling_required.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i

is_polling_required.exit.i.if.end13.i_crit_edge:  ; preds = %is_polling_required.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

land.lhs.true11.i:                                ; preds = %is_polling_required.exit.i.land.lhs.true11.i_crit_edge, %do.end.i.i, %sw.bb3.i.i.land.lhs.true11.i_crit_edge, %for.body.i12.land.lhs.true11.i_crit_edge
  %emergency_stop.i = getelementptr inbounds %struct.charger_manager, ptr %cm.077.i, i32 0, i32 5
  %16 = ptrtoint ptr %emergency_stop.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %emergency_stop.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i13 = icmp eq i32 %17, 0
  br i1 %tobool.not.i13, label %land.lhs.true11.i.for.inc.i_crit_edge, label %land.lhs.true11.i.if.end13.i_crit_edge

land.lhs.true11.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end13.i:                                       ; preds = %land.lhs.true11.i.if.end13.i_crit_edge, %is_polling_required.exit.i.if.end13.i_crit_edge, %sw.bb3.i.i.if.end13.i_crit_edge, %for.body.i12.if.end13.i_crit_edge
  %inc.i = add i32 %timer_req.073.i, 1
  %18 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i.i, align 4
  %polling_interval_ms.i = getelementptr inbounds %struct.charger_desc, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %polling_interval_ms.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %polling_interval_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.i = icmp eq i32 %21, 0
  %22 = tail call i32 @llvm.umin.i32(i32 %wakeup_ms.175.i, i32 %21) #11
  %spec.select.i = select i1 %cmp14.i, i32 %wakeup_ms.175.i, i32 %22
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %land.lhs.true11.i.for.inc.i_crit_edge
  %timer_req.1.i = phi i32 [ %timer_req.073.i, %land.lhs.true11.i.for.inc.i_crit_edge ], [ %inc.i, %if.end13.i ]
  %wakeup_ms.2.i = phi i32 [ %wakeup_ms.175.i, %land.lhs.true11.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end13.i ]
  %23 = ptrtoint ptr %cm.077.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cm.0.i14 = load ptr, ptr %cm.077.i, align 4
  %cmp9.not.i = icmp eq ptr %cm.0.i14, @cm_list
  br i1 %cmp9.not.i, label %for.end.i, label %for.inc.i.for.body.i12_crit_edge

for.inc.i.for.body.i12_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i12

for.end.i:                                        ; preds = %for.inc.i
  tail call void @mutex_unlock(ptr noundef nonnull @cm_list_mtx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer_req.1.i)
  %tobool34.not.i = icmp eq i32 %timer_req.1.i, 0
  br i1 %tobool34.not.i, label %for.end.i.cm_setup_timer.exit.thread_crit_edge, label %land.lhs.true35.i

for.end.i.cm_setup_timer.exit.thread_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_setup_timer.exit.thread

land.lhs.true35.i:                                ; preds = %for.end.i
  %24 = load ptr, ptr @cm_timer, align 4
  %tobool36.not.i = icmp eq ptr %24, null
  br i1 %tobool36.not.i, label %land.lhs.true35.i.cm_setup_timer.exit.thread_crit_edge, label %if.then5

land.lhs.true35.i.cm_setup_timer.exit.thread_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cm_setup_timer.exit.thread

cm_setup_timer.exit.thread:                       ; preds = %land.lhs.true35.i.cm_setup_timer.exit.thread_crit_edge, %for.end.i.cm_setup_timer.exit.thread_crit_edge, %for.end.thread.i
  store i1 false, ptr @cm_timer_set, align 1
  br label %return

if.then5:                                         ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = add i32 %wakeup_ms.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2001, i32 %25)
  %26 = icmp ult i32 %25, 2001
  %wakeup_ms.3.i = select i1 %26, i32 4000, i32 %wakeup_ms.2.i
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %wakeup_ms.3.i) #14
  %call.i67.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #11
  %div.i = udiv i32 %wakeup_ms.3.i, 1000
  %conv.i = zext i32 %div.i to i64
  %27 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %wakeup_ms.3.i, %27
  %mul.i = mul nuw nsw i32 %rem.i.decomposed, 1000000
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000000
  %conv.i.i = zext i32 %mul.i to i64
  %add.i.i = add nuw nsw i64 %mul.i.i, %conv.i.i
  %28 = load ptr, ptr @cm_timer, align 4
  %add46.i = add i64 %add.i.i, %call.i67.i
  tail call void @alarm_start(ptr noundef %28, i64 noundef %add46.i) #11
  store i32 %wakeup_ms.3.i, ptr @cm_suspend_duration_ms, align 4
  store i1 true, ptr @cm_timer_set, align 1
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @setup_polling) #11
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @cm_monitor_work) #11
  br label %return

return:                                           ; preds = %if.then5, %cm_setup_timer.exit.thread, %cm_need_to_awake.exit.thread17
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -16, %cm_need_to_awake.exit.thread17 ], [ 0, %cm_setup_timer.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm_suspend_complete(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %.b12 = load i1, ptr @cm_suspended, align 1
  br i1 %.b12, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @cm_suspended, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.b = load i1, ptr @cm_timer_set, align 1
  br i1 %.b, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @cm_timer, align 4
  %call3 = tail call i32 @alarm_cancel(ptr noundef %2) #11
  store i1 false, ptr @cm_timer_set, align 1
  %3 = load ptr, ptr @cm_timer, align 4
  %call4 = tail call i64 @alarm_expires_remaining(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %cmp8.i.i = icmp slt i64 %call4, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %call4, i1 false) #11
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #15, !srcloc !349
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #15, !srcloc !350
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %7 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %8 = load i32, ptr @cm_suspend_duration_ms, align 4
  %.neg = trunc i64 %7 to i32
  %conv6 = add i32 %8, %.neg
  store i32 %conv6, ptr @cm_suspend_duration_ms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull @setup_polling) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc zeroext i1 @_cm_monitor(ptr noundef %1)
  %dev10 = getelementptr inbounds %struct.charger_manager, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 8
  tail call void @device_set_wakeup_capable(ptr noundef %11, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm_suspend_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %device_may_wakeup.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.return_crit_edge, label %if.then

device_may_wakeup.exit.return_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext false) #11
  br label %return

return:                                           ; preds = %if.then, %device_may_wakeup.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -11, %if.then ], [ 0, %device_may_wakeup.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_expires_remaining(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !19, !20, !21, !23, !25, !26, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !245, !247, !249, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !286, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !331, !332, !333, !335}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !{ptr @__initcall__kmod_charger_manager__288_1760_charger_manager_init7, !1, !"__initcall__kmod_charger_manager__288_1760_charger_manager_init7", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/charger-manager.c", i32 1760, i32 1}
!2 = !{ptr @__exitcall_charger_manager_cleanup, !3, !"__exitcall_charger_manager_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/charger-manager.c", i32 1769, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/power/supply/charger-manager.c", i32 1771, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/charger-manager.c", i32 1772, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/charger-manager.c", i32 1773, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @cm_wq, !12, !"cm_wq", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/charger-manager.c", i32 88, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/charger-manager.c", i32 1752, i32 10}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @charger_manager_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/charger-manager.c", i32 1756, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @charger_manager_init.__key.3, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cm_monitor_work, !22, !"cm_monitor_work", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/charger-manager.c", i32 89, i32 28}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/charger-manager.c", i32 76, i32 8}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cm_list_mtx, !24, !"cm_list_mtx", i1 false, i1 false}
!27 = !{ptr @cm_list, !28, !"cm_list", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/charger-manager.c", i32 75, i32 8}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/charger-manager.c", i32 162, i32 4}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @is_ext_pwr_online._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @is_ext_pwr_online._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/charger-manager.c", i32 539, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cm_check_thermal_status._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cm_check_thermal_status._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/charger-manager.c", i32 467, i32 4}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @check_charging_duration._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @check_charging_duration._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/charger-manager.c", i32 475, i32 4}
!50 = !{ptr @check_charging_duration._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @check_charging_duration._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/charger-manager.c", i32 124, i32 5}
!54 = !{ptr @is_batt_present._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @is_batt_present._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/charger-manager.c", i32 398, i32 5}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @try_charger_enable._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @try_charger_enable._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/charger-manager.c", i32 416, i32 5}
!64 = !{ptr @try_charger_enable._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @try_charger_enable._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/charger-manager.c", i32 430, i32 5}
!68 = !{ptr @try_charger_enable._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @try_charger_enable._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/charger-manager.c", i32 696, i32 8}
!72 = !{ptr @setup_polling, !71, !"setup_polling", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/charger-manager.c", i32 675, i32 2}
!75 = !{ptr @__func__._setup_polling, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/charger-manager.c", i32 355, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @is_polling_required._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @is_polling_required._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/charger-manager.c", i32 232, i32 4}
!83 = !{ptr @is_charging._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @is_charging._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/charger-manager.c", i32 241, i32 4}
!87 = !{ptr @is_charging._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @is_charging._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/charger-manager.c", i32 259, i32 4}
!91 = !{ptr @is_charging._entry.38, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @is_charging._entry_ptr.40, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @polling_jiffy, !94, !"polling_jiffy", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/charger-manager.c", i32 86, i32 22}
!95 = !{ptr @next_polling, !96, !"next_polling", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/charger-manager.c", i32 87, i32 22}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/charger-manager.c", i32 1741, i32 11}
!99 = !{ptr @charger_manager_driver, !100, !"charger_manager_driver", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/charger-manager.c", i32 1739, i32 31}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/charger-manager.c", i32 1436, i32 3}
!103 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @charger_manager_probe._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @charger_manager_probe._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/charger-manager.c", i32 1462, i32 3}
!108 = !{ptr @charger_manager_probe._entry.44, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @charger_manager_probe._entry_ptr.46, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/charger-manager.c", i32 1465, i32 3}
!112 = !{ptr @charger_manager_probe._entry.47, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @charger_manager_probe._entry_ptr.49, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/charger-manager.c", i32 1469, i32 3}
!116 = !{ptr @charger_manager_probe._entry.50, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @charger_manager_probe._entry_ptr.52, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/charger-manager.c", i32 1472, i32 3}
!120 = !{ptr @charger_manager_probe._entry.53, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @charger_manager_probe._entry_ptr.55, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/charger-manager.c", i32 1476, i32 3}
!124 = !{ptr @charger_manager_probe._entry.56, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @charger_manager_probe._entry_ptr.58, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/charger-manager.c", i32 1481, i32 3}
!128 = !{ptr @charger_manager_probe._entry.59, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @charger_manager_probe._entry_ptr.61, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/charger-manager.c", i32 1486, i32 3}
!132 = !{ptr @charger_manager_probe._entry.62, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @charger_manager_probe._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @charger_manager_probe._entry.65, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/charger-manager.c", i32 1496, i32 4}
!136 = !{ptr @charger_manager_probe._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/charger-manager.c", i32 1506, i32 3}
!139 = !{ptr @charger_manager_probe._entry.67, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @charger_manager_probe._entry_ptr.69, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/charger-manager.c", i32 1512, i32 3}
!143 = !{ptr @charger_manager_probe._entry.70, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @charger_manager_probe._entry_ptr.72, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @charger_manager_probe._entry.73, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/charger-manager.c", i32 1543, i32 3}
!147 = !{ptr @charger_manager_probe._entry_ptr.74, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/charger-manager.c", i32 1569, i32 3}
!150 = !{ptr @charger_manager_probe._entry.75, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @charger_manager_probe._entry_ptr.77, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.79, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/charger-manager.c", i32 1580, i32 3}
!154 = !{ptr @charger_manager_probe._entry.78, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @charger_manager_probe._entry_ptr.80, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/charger-manager.c", i32 1590, i32 3}
!158 = !{ptr @charger_manager_probe._entry.81, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @charger_manager_probe._entry_ptr.83, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/charger-manager.c", i32 1598, i32 3}
!162 = !{ptr @charger_manager_probe._entry.84, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @charger_manager_probe._entry_ptr.86, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/charger-manager.c", i32 1296, i32 30}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/charger-manager.c", i32 1298, i32 27}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/charger-manager.c", i32 1301, i32 27}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/charger-manager.c", i32 1304, i32 27}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/charger-manager.c", i32 1306, i32 27}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/charger-manager.c", i32 1307, i32 27}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/charger-manager.c", i32 1308, i32 27}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/charger-manager.c", i32 1311, i32 27}
!180 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/charger-manager.c", i32 1315, i32 43}
!182 = !{ptr @.str.96, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/charger-manager.c", i32 1332, i32 30}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/power/supply/charger-manager.c", i32 1334, i32 30}
!186 = !{ptr @.str.98, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/charger-manager.c", i32 1336, i32 27}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/charger-manager.c", i32 1337, i32 26}
!190 = !{ptr @.str.100, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/power/supply/charger-manager.c", i32 1339, i32 27}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/power/supply/charger-manager.c", i32 1340, i32 27}
!194 = !{ptr @.str.102, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/power/supply/charger-manager.c", i32 1342, i32 27}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/power/supply/charger-manager.c", i32 1344, i32 27}
!198 = !{ptr @.str.104, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/charger-manager.c", i32 1373, i32 35}
!200 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/power/supply/charger-manager.c", i32 1392, i32 6}
!202 = !{ptr @.str.106, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/power/supply/charger-manager.c", i32 1394, i32 6}
!204 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/power/supply/charger-manager.c", i32 1397, i32 6}
!206 = !{ptr @.str.108, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/power/supply/charger-manager.c", i32 1400, i32 6}
!208 = !{ptr @cm_timer, !209, !"cm_timer", i1 false, i1 false}
!209 = !{!"../drivers/power/supply/charger-manager.c", i32 79, i32 22}
!210 = distinct !{null, !211, !"cm_timer_set", i1 false, i1 false}
!211 = !{!"../drivers/power/supply/charger-manager.c", i32 82, i32 13}
!212 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/power/supply/charger-manager.c", i32 842, i32 10}
!214 = !{ptr @psy_default, !215, !"psy_default", i1 false, i1 false}
!215 = !{!"../drivers/power/supply/charger-manager.c", i32 841, i32 39}
!216 = !{ptr @default_charger_props, !217, !"default_charger_props", i1 false, i1 false}
!217 = !{!"../drivers/power/supply/charger-manager.c", i32 824, i32 35}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/power/supply/charger-manager.c", i32 1185, i32 46}
!220 = !{ptr @charger_manager_prepare_sysfs.__key, !221, !"__key", i1 false, i1 false}
!221 = !{!"../drivers/power/supply/charger-manager.c", i32 1198, i32 3}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/power/supply/charger-manager.c", i32 1199, i32 34}
!224 = !{ptr @charger_manager_prepare_sysfs.__key.112, !225, !"__key", i1 false, i1 false}
!225 = !{!"../drivers/power/supply/charger-manager.c", i32 1203, i32 3}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/power/supply/charger-manager.c", i32 1204, i32 35}
!228 = !{ptr @charger_manager_prepare_sysfs.__key.114, !229, !"__key", i1 false, i1 false}
!229 = !{!"../drivers/power/supply/charger-manager.c", i32 1208, i32 3}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/power/supply/charger-manager.c", i32 1210, i32 7}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/power/supply/charger-manager.c", i32 1221, i32 3}
!234 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @charger_manager_prepare_sysfs._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @charger_manager_prepare_sysfs._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.119, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/power/supply/charger-manager.c", i32 1226, i32 3}
!239 = !{ptr @charger_manager_prepare_sysfs._entry.118, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @charger_manager_prepare_sysfs._entry_ptr.120, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/power/supply/charger-manager.c", i32 1081, i32 22}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/power/supply/charger-manager.c", i32 1094, i32 38}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/power/supply/charger-manager.c", i32 1094, i32 50}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/power/supply/charger-manager.c", i32 1103, i32 22}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/power/supply/charger-manager.c", i32 1120, i32 20}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/power/supply/charger-manager.c", i32 1152, i32 3}
!253 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @charger_externally_control_store._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @charger_externally_control_store._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/power/supply/charger-manager.c", i32 1046, i32 4}
!258 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @charger_manager_register_extcon._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @charger_manager_register_extcon._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/power/supply/charger-manager.c", i32 1057, i32 5}
!263 = !{ptr @charger_manager_register_extcon._entry.130, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @charger_manager_register_extcon._entry_ptr.132, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @charger_extcon_init.__key, !266, !"__key", i1 false, i1 false}
!266 = !{!"../drivers/power/supply/charger-manager.c", i32 984, i32 2}
!267 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/power/supply/charger-manager.c", i32 989, i32 3}
!270 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @charger_extcon_init._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @charger_extcon_init._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/power/supply/charger-manager.c", i32 1004, i32 3}
!275 = !{ptr @charger_extcon_init._entry.136, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @charger_extcon_init._entry_ptr.138, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/power/supply/charger-manager.c", i32 1013, i32 3}
!279 = !{ptr @charger_extcon_init._entry.139, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @charger_extcon_init._entry_ptr.141, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/power/supply/charger-manager.c", i32 923, i32 4}
!283 = !{ptr @.str.143, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @charger_extcon_work._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @charger_extcon_work._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/power/supply/charger-manager.c", i32 928, i32 3}
!288 = !{ptr @charger_extcon_work._entry.144, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @charger_extcon_work._entry_ptr.146, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/power/supply/charger-manager.c", i32 34, i32 4}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/power/supply/charger-manager.c", i32 35, i32 4}
!294 = !{ptr @.str.149, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/power/supply/charger-manager.c", i32 36, i32 4}
!296 = !{ptr @.str.150, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/power/supply/charger-manager.c", i32 37, i32 4}
!298 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/power/supply/charger-manager.c", i32 38, i32 4}
!300 = !{ptr @.str.152, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/power/supply/charger-manager.c", i32 39, i32 4}
!302 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/power/supply/charger-manager.c", i32 40, i32 4}
!304 = !{ptr @.str.154, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/power/supply/charger-manager.c", i32 41, i32 4}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/power/supply/charger-manager.c", i32 42, i32 4}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/power/supply/charger-manager.c", i32 43, i32 4}
!310 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/power/supply/charger-manager.c", i32 44, i32 4}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/power/supply/charger-manager.c", i32 45, i32 4}
!314 = !{ptr @.str.159, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/power/supply/charger-manager.c", i32 46, i32 4}
!316 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/power/supply/charger-manager.c", i32 48, i32 4}
!318 = !{ptr @.str.161, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/power/supply/charger-manager.c", i32 49, i32 4}
!320 = !{ptr @extcon_mapping, !321, !"extcon_mapping", i1 false, i1 false}
!321 = !{!"../drivers/power/supply/charger-manager.c", i32 32, i32 3}
!322 = !{ptr @charger_manager_match, !323, !"charger_manager_match", i1 false, i1 false}
!323 = !{!"../drivers/power/supply/charger-manager.c", i32 1276, i32 34}
!324 = !{ptr @charger_manager_pm, !325, !"charger_manager_pm", i1 false, i1 false}
!325 = !{!"../drivers/power/supply/charger-manager.c", i32 1733, i32 32}
!326 = distinct !{null, !327, !"cm_suspended", i1 false, i1 false}
!327 = !{!"../drivers/power/supply/charger-manager.c", i32 81, i32 13}
!328 = !{ptr @.str.162, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/power/supply/charger-manager.c", i32 893, i32 3}
!330 = !{ptr @.str.163, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @cm_setup_timer._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @cm_setup_timer._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @cm_suspend_duration_ms, !334, !"cm_suspend_duration_ms", i1 false, i1 false}
!334 = !{!"../drivers/power/supply/charger-manager.c", i32 83, i32 22}
!335 = !{ptr @charger_manager_id, !336, !"charger_manager_id", i1 false, i1 false}
!336 = !{!"../drivers/power/supply/charger-manager.c", i32 1658, i32 40}
!337 = !{i32 1, !"wchar_size", i32 2}
!338 = !{i32 1, !"min_enum_size", i32 4}
!339 = !{i32 8, !"branch-target-enforcement", i32 0}
!340 = !{i32 8, !"sign-return-address", i32 0}
!341 = !{i32 8, !"sign-return-address-all", i32 0}
!342 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!343 = !{i32 7, !"uwtable", i32 1}
!344 = !{i32 7, !"frame-pointer", i32 2}
!345 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!346 = !{!"branch_weights", i32 1, i32 2000}
!347 = !{!"auto-init"}
!348 = !{i8 0, i8 2}
!349 = !{i64 1502166, i64 1502193}
!350 = !{i64 1502861, i64 1502888, i64 1502921, i64 1502942, i64 1502969, i64 1502995}
