; ModuleID = '/llk/IR_all_yes/drivers/power/supply/wm8350_power.c_pt.bc'
source_filename = "../drivers/power/supply/wm8350_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wm8350 = type { ptr, ptr, i8, %struct.mutex, %struct.completion, %struct.mutex, i32, i32, [7 x i16], %struct.wm8350_codec, %struct.wm8350_gpio, %struct.wm8350_hwmon, %struct.wm8350_pmic, %struct.wm8350_power, %struct.wm8350_rtc, %struct.wm8350_wdt }
%struct.wm8350_codec = type { ptr, ptr }
%struct.wm8350_gpio = type { ptr }
%struct.wm8350_hwmon = type { ptr, ptr }
%struct.wm8350_pmic = type { i32, i32, i32, i32, i16, i16, i16, i16, [12 x ptr], [2 x %struct.wm8350_led] }
%struct.wm8350_led = type { ptr, %struct.work_struct, %struct.spinlock, i32, %struct.led_classdev, i32, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8350_power = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_rtc = type { ptr, ptr, i32, i32 }
%struct.wm8350_wdt = type { ptr }
%struct.wm8350_charger_policy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_wm8350_power__289_534_wm8350_power_driver_init6 = internal global ptr @wm8350_power_driver_init, section ".initcall6.init", align 4
@wm8350_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8350_power_probe, ptr @wm8350_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8350_power_driver_exit = internal global ptr @wm8350_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [52 x i8] c"wm8350_power.file=drivers/power/supply/wm8350_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [25 x i8] c"wm8350_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [56 x i8] c"wm8350_power.description=Power supply driver for WM8350\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [41 x i8] c"wm8350_power.alias=platform:wm8350-power\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8350-power\00", [19 x i8] zeroinitializer }, align 32
@wm8350_ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.6, i32 3, ptr null, i32 0, ptr @wm8350_ac_props, i32 2, ptr @wm8350_ac_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@wm8350_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.7, i32 0, ptr null, i32 0, ptr @wm8350_bat_props, i32 5, ptr @wm8350_bat_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@wm8350_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.8, i32 4, ptr null, i32 0, ptr @wm8350_usb_props, i32 2, ptr @wm8350_usb_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@dev_attr_charger_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @charger_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wm8350_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add charge sysfs: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8350_power_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/power/supply/wm8350_power.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8350_power_probe._entry_ptr = internal global ptr @wm8350_power_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wm8350-ac\00", [22 x i8] zeroinitializer }, align 32
@wm8350_ac_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8350-battery\00", [17 x i8] zeroinitializer }, align 32
@wm8350_bat_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 12, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8350-usb\00", [21 x i8] zeroinitializer }, align 32
@wm8350_usb_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"charger_state\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charger Off\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Trickle Charging\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast Charging\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Battery hot\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Battery cold\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Battery fail\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Charger timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Charge end\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Charge start\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Fast charge ready\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Battery <3.9V\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Battery <3.1V\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Battery <2.85V\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Wall\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Battery\00", [24 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 192, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm8350_charger_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry_ptr = internal global ptr @wm8350_charger_handler._entry, section ".printk_index", align 4
@wm8350_charger_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 195, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"charger timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry_ptr.32 = internal global ptr @wm8350_charger_handler._entry.30, section ".printk_index", align 4
@wm8350_charger_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.28, ptr @.str.3, ptr @.str.34, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8350_power\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fast charger ready\0A\00", [44 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery < 3.9V\0A\00", [16 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry_ptr.37 = internal global ptr @wm8350_charger_handler._entry.35, section ".printk_index", align 4
@wm8350_charger_handler._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"battery < 3.1V\0A\00", [16 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry_ptr.40 = internal global ptr @wm8350_charger_handler._entry.38, section ".printk_index", align 4
@wm8350_charger_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"battery < 2.85V\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry_ptr.43 = internal global ptr @wm8350_charger_handler._entry.41, section ".printk_index", align 4
@wm8350_charger_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.3, i32 238, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown interrupt %d\0A\00", [42 x i8] zeroinitializer }, align 32
@wm8350_charger_handler._entry_ptr.46 = internal global ptr @wm8350_charger_handler._entry.44, section ".printk_index", align 4
@wm8350_charger_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No charger policy, charger not configured.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8350_charger_config\00", [42 x i8] zeroinitializer }, align 32
@wm8350_charger_config._entry_ptr = internal global ptr @wm8350_charger_config._entry, section ".printk_index", align 4
@wm8350_charger_config._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 99, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB fast charge > 500mA\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8350_charger_config._entry_ptr.51 = internal global ptr @wm8350_charger_config._entry.49, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 12]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.57 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 10, i64 11, i64 12, i64 36, i64 37, i64 38]
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"wm8350_power_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 526, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 530, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"wm8350_ac_desc\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 383, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"wm8350_battery_desc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 391, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"wm8350_usb_desc\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 399, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"dev_attr_charger_state\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 493, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 384, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"wm8350_ac_props\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 269, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 392, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"wm8350_bat_props\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 375, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 400, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"wm8350_usb_props\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 299, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 182, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 167, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 170, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 173, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 179, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 415, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 417, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 419, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 422, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 425, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 428, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 431, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 434, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 437, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 440, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 444, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 446, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 448, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 192, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 195, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 207, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 216, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 219, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 222, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 238, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 92, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [39 x i8] c"../drivers/power/supply/wm8350_power.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 99, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_wm8350_power_driver_exit, ptr @__initcall__kmod_wm8350_power__289_534_wm8350_power_driver_init6, ptr @wm8350_charger_config._entry, ptr @wm8350_charger_config._entry.49, ptr @wm8350_charger_config._entry_ptr, ptr @wm8350_charger_config._entry_ptr.51, ptr @wm8350_charger_handler._entry, ptr @wm8350_charger_handler._entry.30, ptr @wm8350_charger_handler._entry.35, ptr @wm8350_charger_handler._entry.38, ptr @wm8350_charger_handler._entry.41, ptr @wm8350_charger_handler._entry.44, ptr @wm8350_charger_handler._entry_ptr, ptr @wm8350_charger_handler._entry_ptr.32, ptr @wm8350_charger_handler._entry_ptr.37, ptr @wm8350_charger_handler._entry_ptr.40, ptr @wm8350_charger_handler._entry_ptr.43, ptr @wm8350_charger_handler._entry_ptr.46, ptr @wm8350_power_driver_exit, ptr @wm8350_power_probe._entry, ptr @wm8350_power_probe._entry_ptr, ptr @wm8350_power_driver, ptr @.str, ptr @wm8350_ac_desc, ptr @wm8350_battery_desc, ptr @wm8350_usb_desc, ptr @dev_attr_charger_state, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wm8350_ac_props, ptr @.str.7, ptr @wm8350_bat_props, ptr @.str.8, ptr @wm8350_usb_props, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_charger_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_ac_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_bat_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_usb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_handler._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_charger_config._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8350_power_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8350_power_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %policy2 = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 4
  %2 = ptrtoint ptr %policy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy2, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @wm8350_ac_desc, ptr noundef null) #5
  %ac = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %ac, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @wm8350_battery_desc, ptr noundef null) #5
  %battery = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %battery, align 4
  %cmp.i65 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.end.battery_failed_crit_edge, label %if.end15

if.end.battery_failed_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %battery_failed

if.end15:                                         ; preds = %if.end
  %call17 = tail call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @wm8350_usb_desc, ptr noundef null) #5
  %usb = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %usb, align 4
  %cmp.i66 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %9) #5
  br label %battery_failed

if.end23:                                         ; preds = %if.end15
  %call25 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_charger_state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %call25) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end23.if.end28_crit_edge
  %irq_base.i.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end28.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit.i

if.end28.wm8350_init_charger.exit_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit.i:                       ; preds = %if.end28
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %13, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef %1) #5
  %14 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i39.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i39.i, label %wm8350_register_irq.exit.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit42.i

wm8350_register_irq.exit.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit42.i:                     ; preds = %wm8350_register_irq.exit.i
  %add.i.i = add i32 %.pr.i, 1
  %call.i40.i = tail call i32 @request_threaded_irq(i32 noundef %add.i.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %1) #5
  %15 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr110.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr110.i)
  %tobool.not.i44.i = icmp eq i32 %.pr110.i, 0
  br i1 %tobool.not.i44.i, label %wm8350_register_irq.exit42.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit48.i

wm8350_register_irq.exit42.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit48.i:                     ; preds = %wm8350_register_irq.exit42.i
  %add.i45.i = add i32 %.pr110.i, 2
  %call.i46.i = tail call i32 @request_threaded_irq(i32 noundef %add.i45.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %1) #5
  %16 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr112.pr.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr112.pr.i)
  %tobool.not.i50.i = icmp eq i32 %.pr112.pr.i, 0
  br i1 %tobool.not.i50.i, label %wm8350_register_irq.exit48.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit54.i

wm8350_register_irq.exit48.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit54.i:                     ; preds = %wm8350_register_irq.exit48.i
  %add.i51.i = add i32 %.pr112.pr.i, 3
  %call.i52.i = tail call i32 @request_threaded_irq(i32 noundef %add.i51.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %1) #5
  %17 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr114.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr114.i)
  %tobool.not.i56.i = icmp eq i32 %.pr114.i, 0
  br i1 %tobool.not.i56.i, label %wm8350_register_irq.exit54.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit60.i

wm8350_register_irq.exit54.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit60.i:                     ; preds = %wm8350_register_irq.exit54.i
  %add.i57.i = add i32 %.pr114.i, 4
  %call.i58.i = tail call i32 @request_threaded_irq(i32 noundef %add.i57.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %1) #5
  %18 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr116.pr.pr.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr116.pr.pr.i)
  %tobool.not.i62.i = icmp eq i32 %.pr116.pr.pr.i, 0
  br i1 %tobool.not.i62.i, label %wm8350_register_irq.exit60.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit66.i

wm8350_register_irq.exit60.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit66.i:                     ; preds = %wm8350_register_irq.exit60.i
  %add.i63.i = add i32 %.pr116.pr.pr.i, 5
  %call.i64.i = tail call i32 @request_threaded_irq(i32 noundef %add.i63.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %1) #5
  %19 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr118.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr118.i)
  %tobool.not.i68.i = icmp eq i32 %.pr118.i, 0
  br i1 %tobool.not.i68.i, label %wm8350_register_irq.exit66.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit72.i

wm8350_register_irq.exit66.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit72.i:                     ; preds = %wm8350_register_irq.exit66.i
  %add.i69.i = add i32 %.pr118.i, 6
  %call.i70.i = tail call i32 @request_threaded_irq(i32 noundef %add.i69.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %1) #5
  %20 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr120.pr.pr.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr120.pr.pr.i)
  %tobool.not.i74.i = icmp eq i32 %.pr120.pr.pr.i, 0
  br i1 %tobool.not.i74.i, label %wm8350_register_irq.exit72.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit78.i

wm8350_register_irq.exit72.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit78.i:                     ; preds = %wm8350_register_irq.exit72.i
  %add.i75.i = add i32 %.pr120.pr.pr.i, 10
  %call.i76.i = tail call i32 @request_threaded_irq(i32 noundef %add.i75.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef %1) #5
  %21 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr122.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr122.i)
  %tobool.not.i80.i = icmp eq i32 %.pr122.i, 0
  br i1 %tobool.not.i80.i, label %wm8350_register_irq.exit78.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit84.i

wm8350_register_irq.exit78.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit84.i:                     ; preds = %wm8350_register_irq.exit78.i
  %add.i81.i = add i32 %.pr122.i, 11
  %call.i82.i = tail call i32 @request_threaded_irq(i32 noundef %add.i81.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef %1) #5
  %22 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr124.pr.pr.pr.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr124.pr.pr.pr.i)
  %tobool.not.i86.i = icmp eq i32 %.pr124.pr.pr.pr.i, 0
  br i1 %tobool.not.i86.i, label %wm8350_register_irq.exit84.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit90.i

wm8350_register_irq.exit84.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit90.i:                     ; preds = %wm8350_register_irq.exit84.i
  %add.i87.i = add i32 %.pr124.pr.pr.pr.i, 12
  %call.i88.i = tail call i32 @request_threaded_irq(i32 noundef %add.i87.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef %1) #5
  %23 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr126.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr126.i)
  %tobool.not.i92.i = icmp eq i32 %.pr126.i, 0
  br i1 %tobool.not.i92.i, label %wm8350_register_irq.exit90.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit96.i

wm8350_register_irq.exit90.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit96.i:                     ; preds = %wm8350_register_irq.exit90.i
  %add.i93.i = add i32 %.pr126.i, 36
  %call.i94.i = tail call i32 @request_threaded_irq(i32 noundef %add.i93.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %1) #5
  %24 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr128.pr.pr.pr.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr128.pr.pr.pr.i)
  %tobool.not.i98.i = icmp eq i32 %.pr128.pr.pr.pr.i, 0
  br i1 %tobool.not.i98.i, label %wm8350_register_irq.exit96.i.wm8350_init_charger.exit_crit_edge, label %wm8350_register_irq.exit102.i

wm8350_register_irq.exit96.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

wm8350_register_irq.exit102.i:                    ; preds = %wm8350_register_irq.exit96.i
  %add.i99.i = add i32 %.pr128.pr.pr.pr.i, 37
  %call.i100.i = tail call i32 @request_threaded_irq(i32 noundef %add.i99.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %1) #5
  %25 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr130.i = load i32, ptr %irq_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr130.i)
  %tobool.not.i104.i = icmp eq i32 %.pr130.i, 0
  br i1 %tobool.not.i104.i, label %wm8350_register_irq.exit102.i.wm8350_init_charger.exit_crit_edge, label %if.end.i107.i

wm8350_register_irq.exit102.i.wm8350_init_charger.exit_crit_edge: ; preds = %wm8350_register_irq.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wm8350_init_charger.exit

if.end.i107.i:                                    ; preds = %wm8350_register_irq.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i105.i = add i32 %.pr130.i, 38
  %call.i106.i = tail call i32 @request_threaded_irq(i32 noundef %add.i105.i, ptr noundef null, ptr noundef nonnull @wm8350_charger_handler, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %1) #5
  br label %wm8350_init_charger.exit

wm8350_init_charger.exit:                         ; preds = %if.end.i107.i, %wm8350_register_irq.exit102.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit96.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit90.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit84.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit78.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit72.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit66.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit60.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit54.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit48.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit42.i.wm8350_init_charger.exit_crit_edge, %wm8350_register_irq.exit.i.wm8350_init_charger.exit_crit_edge, %if.end28.wm8350_init_charger.exit_crit_edge
  %call29 = tail call fastcc i32 @wm8350_charger_config(ptr noundef %1, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %wm8350_init_charger.exit.cleanup_crit_edge

wm8350_init_charger.exit.cleanup_crit_edge:       ; preds = %wm8350_init_charger.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %wm8350_init_charger.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 @wm8350_reg_unlock(ptr noundef %1) #5
  %call33 = tail call i32 @wm8350_set_bits(ptr noundef %1, i16 noundef zeroext 12, i16 noundef zeroext 512) #5
  %call34 = tail call i32 @wm8350_reg_lock(ptr noundef %1) #5
  br label %cleanup

battery_failed:                                   ; preds = %if.then20, %if.end.battery_failed_crit_edge
  %ret.0.in = phi ptr [ %call17, %if.then20 ], [ %call9, %if.end.battery_failed_crit_edge ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %26 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ac, align 4
  tail call void @power_supply_unregister(ptr noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %battery_failed, %if.then31, %wm8350_init_charger.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %ret.0, %battery_failed ], [ 0, %if.then31 ], [ 0, %wm8350_init_charger.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_power_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base.i.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base.i.i, align 4
  %call.i.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %4 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i.i, align 4
  %add.i.i = add i32 %5, 1
  %call.i25.i = tail call ptr @free_irq(i32 noundef %add.i.i, ptr noundef %1) #5
  %6 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base.i.i, align 4
  %add.i27.i = add i32 %7, 2
  %call.i28.i = tail call ptr @free_irq(i32 noundef %add.i27.i, ptr noundef %1) #5
  %8 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_base.i.i, align 4
  %add.i30.i = add i32 %9, 3
  %call.i31.i = tail call ptr @free_irq(i32 noundef %add.i30.i, ptr noundef %1) #5
  %10 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base.i.i, align 4
  %add.i33.i = add i32 %11, 4
  %call.i34.i = tail call ptr @free_irq(i32 noundef %add.i33.i, ptr noundef %1) #5
  %12 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base.i.i, align 4
  %add.i36.i = add i32 %13, 5
  %call.i37.i = tail call ptr @free_irq(i32 noundef %add.i36.i, ptr noundef %1) #5
  %14 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_base.i.i, align 4
  %add.i39.i = add i32 %15, 10
  %call.i40.i = tail call ptr @free_irq(i32 noundef %add.i39.i, ptr noundef %1) #5
  %16 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_base.i.i, align 4
  %add.i42.i = add i32 %17, 11
  %call.i43.i = tail call ptr @free_irq(i32 noundef %add.i42.i, ptr noundef %1) #5
  %18 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_base.i.i, align 4
  %add.i45.i = add i32 %19, 12
  %call.i46.i = tail call ptr @free_irq(i32 noundef %add.i45.i, ptr noundef %1) #5
  %20 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base.i.i, align 4
  %add.i48.i = add i32 %21, 36
  %call.i49.i = tail call ptr @free_irq(i32 noundef %add.i48.i, ptr noundef %1) #5
  %22 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_base.i.i, align 4
  %add.i51.i = add i32 %23, 37
  %call.i52.i = tail call ptr @free_irq(i32 noundef %add.i51.i, ptr noundef %1) #5
  %24 = ptrtoint ptr %irq_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_base.i.i, align 4
  %add.i54.i = add i32 %25, 38
  %call.i55.i = tail call ptr @free_irq(i32 noundef %add.i54.i, ptr noundef %1) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_charger_state) #5
  %battery = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %battery, align 4
  tail call void @power_supply_unregister(ptr noundef %27) #5
  %ac = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 3
  %28 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ac, align 4
  tail call void @power_supply_unregister(ptr noundef %29) #5
  %usb = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %31) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8350_charger_config(ptr noundef %wm8350, ptr noundef readonly %policy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %policy, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.47) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fast_limit_USB_mA = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 3
  %2 = ptrtoint ptr %fast_limit_USB_mA to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fast_limit_USB_mA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %3)
  %cmp = icmp sgt i32 %3, 500
  br i1 %cmp, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %wm8350 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wm8350, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.50) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %policy, align 4
  %8 = shl i32 %7, 10
  %9 = add i32 %8, 6144
  %conv = and i32 %9, 7168
  %call = tail call i32 @wm8350_reg_unlock(ptr noundef %wm8350) #5
  %call8 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 168) #5
  %10 = and i16 %call8, -32768
  %trickle_start_mV = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 5
  %11 = ptrtoint ptr %trickle_start_mV to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trickle_start_mV, align 4
  %or = or i32 %12, %conv
  %13 = trunc i32 %or to i16
  %14 = or i16 %10, %13
  %conv18 = or i16 %14, 784
  %call19 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 168, i16 noundef zeroext %conv18) #5
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 233) #5
  %call1.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 227) #5
  %call2.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 231) #5
  %call3.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 169) #5
  %15 = and i16 %call.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %15)
  %16 = icmp eq i16 %15, 256
  %17 = and i16 %call.i, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %17)
  %cmp15.i = icmp eq i16 %17, 1792
  %or.cond58.i = or i1 %16, %cmp15.i
  %18 = and i16 %call1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  %or.cond59.i = select i1 %or.cond58.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond59.i, label %if.end6.if.then23_crit_edge, label %if.else.i

if.end6.if.then23_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.else.i:                                        ; preds = %if.end6
  %19 = and i16 %call3.i, 15
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %or.cond62.not.i = select i1 %or.cond58.i, i1 %tobool.not.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp36.i = icmp eq i16 %19, 0
  %or.cond63.i = select i1 %or.cond62.not.i, i1 %cmp36.i, i1 false
  br i1 %or.cond63.i, label %if.else.i.if.then23_crit_edge, label %if.else

if.else.i.if.then23_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %if.else.i.if.then23_crit_edge, %if.end6.if.then23_crit_edge
  %trickle_charge_USB_mA = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 7
  br label %if.end47

if.else:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %fast_limit_mA34 = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 2
  %trickle_charge_mA = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 6
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then23
  %trickle_charge_mA.sink = phi ptr [ %trickle_charge_mA, %if.else ], [ %trickle_charge_USB_mA, %if.then23 ]
  %conv37.sink.in.in.in = phi ptr [ %fast_limit_mA34, %if.else ], [ %fast_limit_USB_mA, %if.then23 ]
  %20 = ptrtoint ptr %conv37.sink.in.in.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %conv37.sink.in.in = load i32, ptr %conv37.sink.in.in.in, align 4
  %conv37.sink.in = sdiv i32 %conv37.sink.in.in, 50
  %conv37.sink = and i32 %conv37.sink.in, 15
  %.sink85.in = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 1
  %21 = ptrtoint ptr %.sink85.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %.sink85 = load i32, ptr %.sink85.in, align 4
  %22 = ptrtoint ptr %trickle_charge_mA.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trickle_charge_mA.sink, align 4
  %or39 = or i32 %23, %.sink85
  %or41 = or i32 %or39, %conv37.sink
  %charge_timeout42 = getelementptr inbounds %struct.wm8350_charger_policy, ptr %policy, i32 0, i32 4
  %24 = ptrtoint ptr %charge_timeout42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %charge_timeout42, align 4
  %rev_g_coeff.i74 = getelementptr inbounds %struct.wm8350, ptr %wm8350, i32 0, i32 13, i32 5
  %26 = ptrtoint ptr %rev_g_coeff.i74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rev_g_coeff.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i75 = icmp eq i32 %27, 0
  %sub1.i76 = add i32 %25, -30
  %retval.0.in.in.v.i77 = select i1 %tobool.not.i75, i32 15, i32 30
  %retval.0.in.in.i78 = sdiv i32 %sub1.i76, %retval.0.in.in.v.i77
  %retval.0.in.i79 = shl i32 %retval.0.in.in.i78, 8
  %retval.0.i80 = and i32 %retval.0.in.i79, 3840
  %or44 = or i32 %or41, %retval.0.i80
  %conv45 = trunc i32 %or44 to i16
  %call46 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 169, i16 noundef zeroext %conv45) #5
  %call48 = tail call i32 @wm8350_reg_lock(ptr noundef %wm8350) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ 0, %if.end47 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_ac_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 233) #5
  %call1.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 227) #5
  %call2.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 231) #5
  %call3.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 169) #5
  %5 = and i16 %call.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %6 = icmp eq i16 %5, 256
  %7 = and i16 %call.i, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %7)
  %cmp15.i = icmp eq i16 %7, 1792
  %or.cond58.i = or i1 %6, %cmp15.i
  %8 = and i16 %call1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  %or.cond59.i = select i1 %or.cond58.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond59.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.else.i

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.else.i:                                        ; preds = %sw.bb
  %9 = and i16 %call3.i, 15
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %or.cond62.not.i = select i1 %or.cond58.i, i1 %tobool.not.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp36.i = icmp eq i16 %9, 0
  %or.cond63.i = select i1 %or.cond62.not.i, i1 %cmp36.i, i1 false
  br i1 %or.cond63.i, label %if.else.i.sw.epilog.sink.split_crit_edge, label %if.else39.i

if.else.i.sw.epilog.sink.split_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.else39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = lshr i16 %call2.i, 14
  %.lobit = and i16 %10, 1
  %11 = zext i16 %.lobit to i32
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7 = tail call i32 @wm8350_read_auxadc(ptr noundef %3, i32 noundef 5, i32 noundef 0, i32 noundef 0) #5
  %mul.i = mul i32 %call.i7, 1319
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %if.else39.i, %if.else.i.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %mul.i.sink = phi i32 [ %mul.i, %sw.bb3 ], [ 0, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 0, %if.else.i.sw.epilog.sink.split_crit_edge ], [ %11, %if.else39.i ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wm8350_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_read_auxadc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_bat_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb2
    i32 12, label %sw.bb5
    i32 2, label %sw.bb7
    i32 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 169) #5
  %5 = and i16 %call.i, 12288
  %conv2.i = zext i16 %5 to i32
  %6 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %conv2.i, label %sw.default.i [
    i32 0, label %sw.bb.sw.epilog.sink.split_crit_edge
    i32 4096, label %sw.bb.sw.bb3.i_crit_edge
    i32 8192, label %sw.bb.sw.bb3.i_crit_edge29
  ]

sw.bb.sw.bb3.i_crit_edge29:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

sw.bb.sw.bb3.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb3.i:                                         ; preds = %sw.bb.sw.bb3.i_crit_edge, %sw.bb.sw.bb3.i_crit_edge29
  br label %sw.epilog.sink.split

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %call.i19 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 233) #5
  %call1.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 227) #5
  %call2.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 231) #5
  %call3.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 169) #5
  %7 = and i16 %call.i19, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %7)
  %8 = icmp eq i16 %7, 256
  %9 = and i16 %call.i19, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %9)
  %cmp15.i = icmp eq i16 %9, 1792
  %or.cond58.i = or i1 %8, %cmp15.i
  %10 = and i16 %call1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  %or.cond59.i = select i1 %or.cond58.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond59.i, label %sw.bb2.sw.epilog.sink.split_crit_edge, label %if.else.i

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.else.i:                                        ; preds = %sw.bb2
  %11 = and i16 %call3.i, 15
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %or.cond62.not.i = select i1 %or.cond58.i, i1 %tobool.not.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp36.i = icmp eq i16 %11, 0
  %or.cond63.i = select i1 %or.cond62.not.i, i1 %cmp36.i, i1 false
  br i1 %or.cond63.i, label %if.else.i.sw.epilog.sink.split_crit_edge, label %if.else39.i

if.else.i.sw.epilog.sink.split_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.else39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = lshr i16 %call2.i, 14
  %.lobit = and i16 %12, 1
  %13 = xor i16 %.lobit, 1
  %14 = zext i16 %13 to i32
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i20 = tail call i32 @wm8350_read_auxadc(ptr noundef %3, i32 noundef 6, i32 noundef 0, i32 noundef 0) #5
  %mul.i = mul i32 %call.i20, 1319
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  %call.i.i = tail call i32 @wm8350_read_auxadc(ptr noundef %3, i32 noundef 6, i32 noundef 0, i32 noundef 0) #5
  %mul.i.i = mul i32 %call.i.i, 1319
  call void @__sanitizer_cov_trace_const_cmp4(i32 2850000, i32 %mul.i.i)
  %cmp.i = icmp slt i32 %mul.i.i, 2850000
  br i1 %cmp.i, label %sw.bb7.sw.epilog.sink.split_crit_edge, label %if.end.i

sw.bb7.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end.i:                                         ; preds = %sw.bb7
  %call1.i21 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 226) #5
  %conv.i = zext i16 %call1.i21 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i22 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i22, label %if.end3.i, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and5.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %..i23 = select i1 %tobool6.not.i, i32 1, i32 6
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  %call.i25 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 169) #5
  %15 = and i16 %call.i25, 12288
  %and.i26 = zext i16 %15 to i32
  %16 = zext i32 %and.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and.i26, label %sw.default.i27 [
    i32 0, label %sw.bb9.sw.epilog.sink.split_crit_edge
    i32 4096, label %sw.bb1.i
    i32 8192, label %sw.bb2.i
  ]

sw.bb9.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb2.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.default.i27:                                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default.i27, %sw.bb2.i, %sw.bb1.i, %sw.bb9.sw.epilog.sink.split_crit_edge, %if.end3.i, %if.end.i.sw.epilog.sink.split_crit_edge, %sw.bb7.sw.epilog.sink.split_crit_edge, %sw.bb5, %if.else39.i, %if.else.i.sw.epilog.sink.split_crit_edge, %sw.bb2.sw.epilog.sink.split_crit_edge, %sw.default.i, %sw.bb3.i, %sw.bb.sw.epilog.sink.split_crit_edge
  %retval.0.i28.sink = phi i32 [ %mul.i, %sw.bb5 ], [ 0, %sw.default.i ], [ 1, %sw.bb3.i ], [ 2, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split_crit_edge ], [ 1, %if.else.i.sw.epilog.sink.split_crit_edge ], [ %14, %if.else39.i ], [ 5, %sw.bb7.sw.epilog.sink.split_crit_edge ], [ 2, %if.end.i.sw.epilog.sink.split_crit_edge ], [ %..i23, %if.end3.i ], [ 0, %sw.default.i27 ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %sw.bb9.sw.epilog.sink.split_crit_edge ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i28.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_usb_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 12, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 233) #5
  %call1.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 227) #5
  %call2.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 231) #5
  %call3.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 169) #5
  %5 = and i16 %call.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %6 = icmp eq i16 %5, 256
  %7 = and i16 %call.i, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %7)
  %cmp15.i = icmp eq i16 %7, 1792
  %or.cond58.i = or i1 %6, %cmp15.i
  %8 = and i16 %call1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  %or.cond59.i = select i1 %or.cond58.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond59.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.else.i

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %9 = and i16 %call3.i, 15
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %or.cond62.not.i = select i1 %or.cond58.i, i1 %tobool.not.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp36.i = icmp eq i16 %9, 0
  %or.cond63.i = select i1 %or.cond62.not.i, i1 %cmp36.i, i1 false
  %spec.select = zext i1 %or.cond63.i to i32
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i7 = tail call i32 @wm8350_read_auxadc(ptr noundef %3, i32 noundef 4, i32 noundef 0, i32 noundef 0) #5
  %mul.i = mul i32 %call.i7, 1319
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %if.else.i, %sw.bb.sw.epilog.sink.split_crit_edge
  %mul.i.sink = phi i32 [ %mul.i, %sw.bb3 ], [ 1, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %spec.select, %if.else.i ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charger_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 169) #5
  %2 = and i16 %call1, 12288
  %and = zext i16 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 4096, label %sw.bb2
    i32 8192, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %charge.0 = phi ptr [ @.str.12, %sw.bb3 ], [ @.str.11, %sw.bb2 ], [ @.str.10, %entry.sw.epilog_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, ptr noundef nonnull %charge.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_charger_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %policy2 = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 13, i32 4
  %0 = ptrtoint ptr %policy2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policy2, align 4
  %irq_base = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %irq, %3
  %4 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %sub, label %do.end43 [
    i32 2, label %do.end
    i32 3, label %do.end6
    i32 0, label %entry.sw.bb8_crit_edge
    i32 1, label %entry.sw.bb8_crit_edge66
    i32 5, label %entry.sw.bb8_crit_edge67
    i32 4, label %entry.sw.bb8_crit_edge68
    i32 6, label %do.body11
    i32 10, label %do.end25
    i32 11, label %do.end30
    i32 12, label %do.end35
    i32 36, label %entry.sw.bb37_crit_edge
    i32 37, label %entry.sw.bb37_crit_edge69
    i32 38, label %entry.sw.bb39_crit_edge
  ]

entry.sw.bb39_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39

entry.sw.bb37_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

entry.sw.bb37_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb37

entry.sw.bb8_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

entry.sw.bb8_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

entry.sw.bb8_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #8
  br label %sw.epilog

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.31) #8
  %battery = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %battery, align 4
  tail call void @power_supply_changed(ptr noundef %10) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge66, %entry.sw.bb8_crit_edge67, %entry.sw.bb8_crit_edge68
  %battery9 = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %battery9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %battery9, align 4
  tail call void @power_supply_changed(ptr noundef %12) #5
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_charger_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_charger_handler, %do.end17)) #5
          to label %if.then [label %do.end17], !srcloc !125

if.then:                                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_charger_handler.__UNIQUE_ID_ddebug288, ptr noundef %14, ptr noundef nonnull @.str.34) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then, %do.body11
  %call18 = tail call fastcc i32 @wm8350_charger_config(ptr noundef %data, ptr noundef %1)
  %call19 = tail call i32 @wm8350_reg_unlock(ptr noundef %data) #5
  %call20 = tail call i32 @wm8350_set_bits(ptr noundef %data, i16 noundef zeroext 168, i16 noundef zeroext 32) #5
  %call21 = tail call i32 @wm8350_reg_lock(ptr noundef %data) #5
  br label %sw.epilog

do.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.36) #8
  br label %sw.epilog

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.39) #8
  br label %sw.epilog

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.42) #8
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry.sw.bb37_crit_edge, %entry.sw.bb37_crit_edge69
  %call38 = tail call fastcc i32 @wm8350_charger_config(ptr noundef %data, ptr noundef %1)
  br label %sw.bb39

sw.bb39:                                          ; preds = %sw.bb37, %entry.sw.bb39_crit_edge
  %battery40 = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %battery40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %battery40, align 4
  tail call void @power_supply_changed(ptr noundef %22) #5
  %usb = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 13, i32 2
  %23 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %24) #5
  %ac = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 13, i32 3
  %25 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ac, align 4
  tail call void @power_supply_changed(ptr noundef %26) #5
  br label %sw.epilog

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.45, i32 noundef %irq) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %sw.bb39, %do.end35, %do.end30, %do.end25, %do.end17, %sw.bb8, %do.end6, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_wm8350_power__289_534_wm8350_power_driver_init6, !1, !"__initcall__kmod_wm8350_power__289_534_wm8350_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/wm8350_power.c", i32 534, i32 1}
!2 = !{ptr @__exitcall_wm8350_power_driver_exit, !1, !"__exitcall_wm8350_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/wm8350_power.c", i32 536, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/wm8350_power.c", i32 537, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias293, !9, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/wm8350_power.c", i32 538, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/wm8350_power.c", i32 530, i32 11}
!12 = !{ptr @wm8350_power_driver, !13, !"wm8350_power_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/wm8350_power.c", i32 526, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/wm8350_power.c", i32 493, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wm8350_power_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm8350_power_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/wm8350_power.c", i32 384, i32 11}
!24 = !{ptr @wm8350_ac_desc, !25, !"wm8350_ac_desc", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/wm8350_power.c", i32 383, i32 39}
!26 = !{ptr @wm8350_ac_props, !27, !"wm8350_ac_props", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/wm8350_power.c", i32 269, i32 35}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/wm8350_power.c", i32 392, i32 11}
!30 = !{ptr @wm8350_battery_desc, !31, !"wm8350_battery_desc", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/wm8350_power.c", i32 391, i32 39}
!32 = !{ptr @wm8350_bat_props, !33, !"wm8350_bat_props", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/wm8350_power.c", i32 375, i32 35}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/wm8350_power.c", i32 400, i32 11}
!36 = !{ptr @wm8350_usb_desc, !37, !"wm8350_usb_desc", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/wm8350_power.c", i32 399, i32 39}
!38 = !{ptr @wm8350_usb_props, !39, !"wm8350_usb_props", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/wm8350_power.c", i32 299, i32 35}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/wm8350_power.c", i32 182, i32 8}
!42 = !{ptr @dev_attr_charger_state, !41, !"dev_attr_charger_state", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/wm8350_power.c", i32 167, i32 12}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/wm8350_power.c", i32 170, i32 12}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/wm8350_power.c", i32 173, i32 12}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/wm8350_power.c", i32 179, i32 22}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/wm8350_power.c", i32 415, i32 35}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/wm8350_power.c", i32 417, i32 35}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/wm8350_power.c", i32 419, i32 35}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/wm8350_power.c", i32 422, i32 8}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/wm8350_power.c", i32 425, i32 8}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/wm8350_power.c", i32 428, i32 8}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/wm8350_power.c", i32 431, i32 8}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/wm8350_power.c", i32 434, i32 8}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/wm8350_power.c", i32 437, i32 8}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/wm8350_power.c", i32 440, i32 8}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/wm8350_power.c", i32 444, i32 35}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/wm8350_power.c", i32 446, i32 35}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/wm8350_power.c", i32 448, i32 35}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/wm8350_power.c", i32 192, i32 3}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wm8350_charger_handler._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @wm8350_charger_handler._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/wm8350_power.c", i32 195, i32 3}
!85 = !{ptr @wm8350_charger_handler._entry.30, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @wm8350_charger_handler._entry_ptr.32, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/wm8350_power.c", i32 207, i32 3}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @wm8350_charger_handler.__UNIQUE_ID_ddebug288, !88, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/wm8350_power.c", i32 216, i32 3}
!93 = !{ptr @wm8350_charger_handler._entry.35, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @wm8350_charger_handler._entry_ptr.37, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/wm8350_power.c", i32 219, i32 3}
!97 = !{ptr @wm8350_charger_handler._entry.38, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @wm8350_charger_handler._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/wm8350_power.c", i32 222, i32 3}
!101 = !{ptr @wm8350_charger_handler._entry.41, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @wm8350_charger_handler._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/wm8350_power.c", i32 238, i32 3}
!105 = !{ptr @wm8350_charger_handler._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @wm8350_charger_handler._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/wm8350_power.c", i32 92, i32 3}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @wm8350_charger_config._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @wm8350_charger_config._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/wm8350_power.c", i32 99, i32 3}
!114 = !{ptr @wm8350_charger_config._entry.49, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @wm8350_charger_config._entry_ptr.51, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2148966577, i64 2148966582, i64 2148966595, i64 2148966639, i64 2148966673, i64 2148966694}
