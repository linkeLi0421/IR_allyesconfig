; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ucs1002_power.c_pt.bc'
source_filename = "../drivers/power/supply/ucs1002_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ucs1002_info = type { ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.delayed_work, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ucs1002_power__288_686_ucs1002_driver_init6 = internal global ptr @ucs1002_driver_init, section ".initcall6.init", align 4
@ucs1002_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ucs1002_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ucs1002_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ucs1002_driver_exit = internal global ptr @ucs1002_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [83 x i8] c"ucs1002_power.description=Microchip UCS1002 Programmable USB Port Power Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [73 x i8] c"ucs1002_power.author=Enric Balletbo Serra <enric.balletbo@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ucs1002_power.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [54 x i8] c"ucs1002_power.file=drivers/power/supply/ucs1002_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"ucs1002_power.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ucs1002\00", [24 x i8] zeroinitializer }, align 32
@ucs1002_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ucs1002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ucs1002_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ucs1002_power:553:(&regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Regmap initialization failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucs1002_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/supply/ucs1002_power.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr = internal global ptr @ucs1002_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a_det\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alert\00", [26 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read product ID: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.11 = internal global ptr @ucs1002_probe._entry.9, section ".printk_index", align 4
@ucs1002_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Product ID does not match (0x%02x != 0x%02x)\0A\00", [50 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.14 = internal global ptr @ucs1002_probe._entry.12, section ".printk_index", align 4
@ucs1002_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read general config: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.17 = internal global ptr @ucs1002_probe._entry.15, section ".printk_index", align 4
@ucs1002_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to configure default mode: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.20 = internal global ptr @ucs1002_probe._entry.18, section ".printk_index", align 4
@ucs1002_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 605, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to set max current default: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.23 = internal global ptr @ucs1002_probe._entry.21, section ".printk_index", align 4
@ucs1002_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr @ucs1002_usb_types, i32 5, ptr @ucs1002_props, i32 8, ptr @ucs1002_get_property, ptr @ucs1002_set_property, ptr @ucs1002_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register power supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.26 = internal global ptr @ucs1002_probe._entry.24, section ".printk_index", align 4
@ucs1002_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read pin status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.29 = internal global ptr @ucs1002_probe._entry.27, section ".printk_index", align 4
@ucs1002_regulator_descriptor = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @ucs1002_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 23, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register VBUS regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.32 = internal global ptr @ucs1002_probe._entry.30, section ".printk_index", align 4
@ucs1002_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&info->health_poll)->work)\00", [49 x i8] zeroinitializer }, align 32
@ucs1002_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&info->health_poll)->timer\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucs1002-a_det\00", [18 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 655, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request A_DET threaded irq: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.39 = internal global ptr @ucs1002_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucs1002-alert\00", [18 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request ALERT threaded irq: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ucs1002_probe._entry_ptr.43 = internal global ptr @ucs1002_probe._entry.41, section ".printk_index", align 4
@ucs1002_current_limit_uA = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 500000, i32 900000, i32 1000000, i32 1200000, i32 1500000, i32 1800000, i32 2000000, i32 2500000], [32 x i8] zeroinitializer }, align 32
@ucs1002_usb_types = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 6, i32 1, i32 2, i32 3, i32 0], [44 x i8] zeroinitializer }, align 32
@ucs1002_props = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 26, i32 17, i32 16, i32 3, i32 74, i32 65, i32 2], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMSC\00", [27 x i8] zeroinitializer }, align 32
@ucs1002_get_charge.bit_weights_uAh = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 5, i32 11, i32 22, i32 43, i32 87, i32 173, i32 347, i32 694, i32 1388, i32 2776, i32 5552, i32 11105, i32 22210, i32 44420, i32 88840, i32 177700, i32 355400, i32 710700, i32 1421000, i32 2843000, i32 5685000, i32 11371000, i32 22742000, i32 45484000, i32 90968000], [32 x i8] zeroinitializer }, align 32
@ucs1002_get_current.bit_weights_uA = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 9760, i32 19500, i32 39000, i32 78100, i32 156200, i32 312300, i32 624600, i32 1249300], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ucs1002-vbus\00", [19 x i8] zeroinitializer }, align 32
@ucs1002_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ucs1002_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"health\00", [25 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.ucs1002_get_property = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 6, i32 1, i32 0, i32 0, i32 2, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.ucs1002_set_property = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 48, i32 56, i32 32, i32 32, i32 32], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 500000, i64 900000, i64 1000000, i64 1200000, i64 1500000, i64 1800000, i64 2000000, i64 2500000]
@__sancov_gen_cov_switch_values.47 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 16, i64 17, i64 26, i64 65, i64 74]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 65]
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"ucs1002_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 679, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 681, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"ucs1002_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 673, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 553, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 556, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 562, i32 46 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 563, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 570, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 575, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 585, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 597, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 605, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"ucs1002_charger_desc\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 427, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 613, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 619, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [29 x i8] c"ucs1002_regulator_descriptor\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 523, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 641, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 646, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 652, i32 7 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 654, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 662, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 664, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [25 x i8] c"ucs1002_current_limit_uA\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 232, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"ucs1002_usb_types\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 299, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"ucs1002_props\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 112, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 392, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"bit_weights_uAh\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 159, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"bit_weights_uA\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 208, i32 19 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 524, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant [22 x i8] c"ucs1002_regulator_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 517, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [40 x i8] c"../drivers/power/supply/ucs1002_power.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 468, i32 47 }
@___asan_gen_.199 = private unnamed_addr constant [34 x i8] c"switch.table.ucs1002_get_property\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"switch.table.ucs1002_set_property\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ucs1002_driver_exit, ptr @__initcall__kmod_ucs1002_power__288_686_ucs1002_driver_init6, ptr @ucs1002_driver_exit, ptr @ucs1002_probe._entry, ptr @ucs1002_probe._entry.12, ptr @ucs1002_probe._entry.15, ptr @ucs1002_probe._entry.18, ptr @ucs1002_probe._entry.21, ptr @ucs1002_probe._entry.24, ptr @ucs1002_probe._entry.27, ptr @ucs1002_probe._entry.30, ptr @ucs1002_probe._entry.37, ptr @ucs1002_probe._entry.41, ptr @ucs1002_probe._entry.9, ptr @ucs1002_probe._entry_ptr, ptr @ucs1002_probe._entry_ptr.11, ptr @ucs1002_probe._entry_ptr.14, ptr @ucs1002_probe._entry_ptr.17, ptr @ucs1002_probe._entry_ptr.20, ptr @ucs1002_probe._entry_ptr.23, ptr @ucs1002_probe._entry_ptr.26, ptr @ucs1002_probe._entry_ptr.29, ptr @ucs1002_probe._entry_ptr.32, ptr @ucs1002_probe._entry_ptr.39, ptr @ucs1002_probe._entry_ptr.43, ptr @ucs1002_driver, ptr @.str, ptr @ucs1002_of_match, ptr @ucs1002_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @ucs1002_charger_desc, ptr @.str.25, ptr @.str.28, ptr @ucs1002_regulator_descriptor, ptr @.str.31, ptr @ucs1002_probe.__key, ptr @.str.33, ptr @ucs1002_probe.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @ucs1002_current_limit_uA, ptr @ucs1002_usb_types, ptr @ucs1002_props, ptr @.str.44, ptr @ucs1002_get_charge.bit_weights_uAh, ptr @ucs1002_get_current.bit_weights_uA, ptr @.str.45, ptr @ucs1002_regulator_ops, ptr @.str.46, ptr @switch.table.ucs1002_get_property, ptr @switch.table.ucs1002_set_property], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_regulator_descriptor to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_current_limit_uA to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_usb_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_props to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_get_charge.bit_weights_uAh to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_get_current.bit_weights_uA to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucs1002_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ucs1002_get_property to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ucs1002_set_property to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ucs1002_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucs1002_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ucs1002_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_probe(ptr noundef %client, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  %charger_config = alloca %struct.power_supply_config, align 4
  %regmap_config = alloca %struct.regmap_config, align 4
  %regulator_config = alloca %struct.regulator_config, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %charger_config) #6
  %0 = getelementptr inbounds i8, ptr %charger_config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #6
  %2 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  %3 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %3, align 4
  %5 = getelementptr inbounds { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] }, ptr %regmap_config, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %regulator_config) #6
  %7 = call ptr @memset(ptr %regulator_config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval, align 4, !annotation !113
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull %regmap_config, ptr noundef nonnull @ucs1002_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i.i.not = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %10) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %client8 = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %client8, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call9 = call i32 @of_irq_get_byname(ptr noundef %13, ptr noundef nonnull @.str.7) #6
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call11 = call i32 @of_irq_get_byname(ptr noundef %15, ptr noundef nonnull @.str.8) #6
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %18 = ptrtoint ptr %charger_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %charger_config, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %charger_config, i32 0, i32 2
  %19 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %drv_data, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %21, i32 noundef 253, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call15) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %22 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %23)
  %cmp.not = icmp eq i32 %23, 78
  br i1 %cmp.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %23, i32 noundef 78) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i218 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 21, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool29.not = icmp eq i32 %call.i218, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call.i218) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i219 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 23, i32 noundef 184, i32 noundef 184, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool37.not = icmp eq i32 %call.i219, 0
  br i1 %tobool37.not, label %if.end42, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call.i219) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %call43 = call fastcc i32 @ucs1002_set_max_current(ptr noundef nonnull %call.i, i32 noundef 500000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call43) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %call50 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @ucs1002_charger_desc, ptr noundef nonnull %charger_config) #6
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call50, ptr %call.i, align 4
  %cmp.i.i220.not = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i220.not, label %do.end57, label %if.end58

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %29) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_read(ptr noundef %31, i32 noundef 20, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end66, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call60) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end58
  %call67 = call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @ucs1002_regulator_descriptor, i32 noundef 244, i32 noundef 3264) #6
  %regulator_descriptor = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %regulator_descriptor to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call67, ptr %regulator_descriptor, align 4
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %33 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regval, align 4
  %enable_is_inverted = getelementptr inbounds %struct.regulator_desc, ptr %call67, i32 0, i32 38
  %35 = trunc i32 %34 to i8
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = ptrtoint ptr %enable_is_inverted to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %enable_is_inverted, align 4
  %40 = ptrtoint ptr %regulator_config to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev1, ptr %regulator_config, align 4
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %of_node76 = getelementptr inbounds %struct.regulator_config, ptr %regulator_config, i32 0, i32 3
  %43 = ptrtoint ptr %of_node76 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %of_node76, align 4
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %regmap78 = getelementptr inbounds %struct.regulator_config, ptr %regulator_config, i32 0, i32 4
  %46 = ptrtoint ptr %regmap78 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %regmap78, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %regulator_config, i32 0, i32 2
  %47 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data, align 4
  %48 = ptrtoint ptr %regulator_descriptor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regulator_descriptor, align 4
  %call80 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %49, ptr noundef nonnull %regulator_config) #6
  %rdev = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call80, ptr %rdev, align 4
  %cmp.i.i222.not = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i222.not, label %do.end87, label %if.end88

do.end87:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %51) #9
  br label %cleanup

if.end88:                                         ; preds = %if.end71
  %health = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 8
  %52 = ptrtoint ptr %health to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %health, align 4
  %health_poll = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 7
  call void @__init_work(ptr noundef %health_poll, i32 noundef 0) #6
  %53 = ptrtoint ptr %health_poll to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %health_poll, align 4
  %lockdep_map = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @ucs1002_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry97 = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %entry97 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry97, ptr %entry97, align 4
  %prev.i = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry97, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ucs1002_health_poll, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ucs1002_info, ptr %call.i, i32 0, i32 7, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.35, ptr noundef nonnull @ucs1002_probe.__key.34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp108 = icmp sgt i32 %call9, 0
  br i1 %cmp108, label %if.then109, label %if.end88.if.end117_crit_edge

if.end88.if.end117_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then109:                                       ; preds = %if.end88
  %call110 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef null, ptr noundef nonnull @ucs1002_charger_irq, i32 noundef 8192, ptr noundef nonnull @.str.36, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then109.if.end117_crit_edge, label %do.end115

if.then109.if.end117_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

do.end115:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %call110) #9
  br label %cleanup

if.end117:                                        ; preds = %if.then109.if.end117_crit_edge, %if.end88.if.end117_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp118 = icmp sgt i32 %call11, 0
  br i1 %cmp118, label %if.then119, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then119:                                       ; preds = %if.end117
  %call.i224 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @ucs1002_alert_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool121.not = icmp eq i32 %call.i224, 0
  br i1 %tobool121.not, label %if.then119.cleanup_crit_edge, label %do.end125

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end125:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %call.i224) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %if.then119.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %do.end115, %do.end87, %if.end66.cleanup_crit_edge, %do.end65, %do.end57, %do.end48, %do.end41, %do.end33, %do.end25, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %call15, %do.end20 ], [ -19, %do.end25 ], [ %call.i218, %do.end33 ], [ %call.i219, %do.end41 ], [ %call43, %do.end48 ], [ %29, %do.end57 ], [ %call60, %do.end65 ], [ %51, %do.end87 ], [ %call110, %do.end115 ], [ %call.i224, %do.end125 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end66.cleanup_crit_edge ], [ 0, %if.then119.cleanup_crit_edge ], [ 0, %if.end117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %regulator_config) #6
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %charger_config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ucs1002_set_max_current(ptr nocapture noundef %info, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !113
  %1 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %val, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 500000, label %entry.if.end7_crit_edge
    i32 900000, label %if.end7.fold.split
    i32 1000000, label %if.end7.fold.split56
    i32 1200000, label %if.end7.fold.split57
    i32 1500000, label %if.end7.fold.split58
    i32 1800000, label %if.end7.fold.split59
    i32 2000000, label %if.end7.fold.split60
    i32 2500000, label %if.end7.fold.split61
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %output_disable = getelementptr inbounds %struct.ucs1002_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %output_disable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %output_disable, align 1
  %rdev = getelementptr inbounds %struct.ucs1002_info, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 4
  %call = tail call i32 @regulator_disable_regmap(ptr noundef %4) #6
  br label %cleanup

if.end7.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7.fold.split56:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7.fold.split57:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7.fold.split58:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7.fold.split59:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7.fold.split60:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7.fold.split61:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.end7.fold.split61, %if.end7.fold.split60, %if.end7.fold.split59, %if.end7.fold.split58, %if.end7.fold.split57, %if.end7.fold.split56, %if.end7.fold.split, %entry.if.end7_crit_edge
  %idx.054.lcssa = phi i32 [ 0, %entry.if.end7_crit_edge ], [ 1, %if.end7.fold.split ], [ 2, %if.end7.fold.split56 ], [ 3, %if.end7.fold.split57 ], [ 4, %if.end7.fold.split58 ], [ 5, %if.end7.fold.split59 ], [ 6, %if.end7.fold.split60 ], [ 7, %if.end7.fold.split61 ]
  %regmap = getelementptr inbounds %struct.ucs1002_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 25, i32 noundef %idx.054.lcssa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %8, i32 noundef 25, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %idx.054.lcssa)
  %cmp16.not = icmp eq i32 %10, %idx.054.lcssa
  br i1 %cmp16.not, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %output_disable19 = getelementptr inbounds %struct.ucs1002_info, ptr %info, i32 0, i32 6
  %11 = ptrtoint ptr %output_disable19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %output_disable19, align 1
  %rdev20 = getelementptr inbounds %struct.ucs1002_info, ptr %info, i32 0, i32 4
  %12 = ptrtoint ptr %rdev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev20, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %land.lhs.true

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end18
  %use_count = getelementptr inbounds %struct.regulator_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true24:                                  ; preds = %land.lhs.true
  %call26 = call i32 @regulator_is_enabled_regmap(ptr noundef nonnull %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %rdev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdev20, align 4
  %call30 = call i32 @regulator_enable_regmap(ptr noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucs1002_health_poll(ptr noundef %work) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !113
  %regmap = getelementptr i8, ptr %work, i32 -16
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %health = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %health to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %health, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %land.lhs.true.if.end5_crit_edge, label %if.then2

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work, i32 noundef 200) #6
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %and6 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %health9 = getelementptr i8, ptr %work, i32 100
  %8 = ptrtoint ptr %health9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %health9, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end5
  %and10 = and i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %health13 = getelementptr i8, ptr %work, i32 100
  %9 = ptrtoint ptr %health13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %health13, align 4
  br label %if.end29

if.else14:                                        ; preds = %if.else
  %and15 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  %health18 = getelementptr i8, ptr %work, i32 100
  %10 = ptrtoint ptr %health18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %health18, align 4
  br label %if.end29

if.else19:                                        ; preds = %if.else14
  %and20 = and i32 %4, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %health25 = getelementptr i8, ptr %work, i32 100
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %health25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %health25, align 4
  br label %if.end29

if.else24:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %health25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %health25, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else24, %if.then22, %if.then17, %if.then12, %if.then8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.power_supply, ptr %14, i32 0, i32 7
  call void @sysfs_notify(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.46) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_charger_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !113
  %present1 = getelementptr inbounds %struct.ucs1002_info, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %present1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %present1, align 4, !range !114
  %regmap = getelementptr inbounds %struct.ucs1002_info, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 15, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %and = lshr i32 %6, 4
  %and.lobit = and i32 %and, 1
  %7 = trunc i32 %and.lobit to i8
  %8 = ptrtoint ptr %present1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %present1, align 4
  %9 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %9)
  %cmp.not = icmp eq i32 %and.lobit, %9
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  call void @power_supply_changed(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_alert_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %health_poll = getelementptr inbounds %struct.ucs1002_info, ptr %data, i32 0, i32 7
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %health_poll, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef %val) #2 align 64 {
entry:
  %reg.i54 = alloca i32, align 4
  %reg.i46 = alloca i32, align 4
  %current_measurement.i = alloca i32, align 4
  %reg.i31 = alloca i32, align 4
  %total_acc_charger.i = alloca i32, align 4
  %reg.i26 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 26, label %sw.bb2
    i32 17, label %sw.bb4
    i32 16, label %sw.bb6
    i32 65, label %sw.bb8
    i32 2, label %sw.bb10
    i32 3, label %sw.bb11
    i32 74, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg.i, align 4, !annotation !113
  %regmap.i = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 15, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.ucs1002_get_online.exit_crit_edge

sw.bb.ucs1002_get_online.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_online.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg.i, align 4
  %and.i = lshr i32 %5, 3
  %and.lobit.i = and i32 %and.i, 1
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.lobit.i, ptr %val, align 4
  br label %ucs1002_get_online.exit

ucs1002_get_online.exit:                          ; preds = %if.end.i, %sw.bb.ucs1002_get_online.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total_acc_charger.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i26) #6
  %7 = ptrtoint ptr %reg.i26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg.i26, align 4, !annotation !113
  %regmap.i27 = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i27, align 4
  %call.i28 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 1, ptr noundef nonnull %reg.i26, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i30, label %sw.bb2.ucs1002_get_charge.exit_crit_edge

sw.bb2.ucs1002_get_charge.exit_crit_edge:         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_charge.exit

if.end.i30:                                       ; preds = %sw.bb2
  %10 = ptrtoint ptr %reg.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i26, align 4
  %12 = ptrtoint ptr %total_acc_charger.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %total_acc_charger.i, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val, align 4
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %total_acc_charger.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i)
  %cmp11.i = icmp ult i32 %call1.i, 32
  br i1 %cmp11.i, label %if.end.i30.for.body.i_crit_edge, label %if.end.i30.ucs1002_get_charge.exit_crit_edge

if.end.i30.ucs1002_get_charge.exit_crit_edge:     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_charge.exit

if.end.i30.for.body.i_crit_edge:                  ; preds = %if.end.i30
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i30.for.body.i_crit_edge
  %i.012.i = phi i32 [ %call3.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i30.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i32], ptr @ucs1002_get_charge.bit_weights_uAh, i32 0, i32 %i.012.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %val, align 4
  %add2.i = add nuw nsw i32 %i.012.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef nonnull %total_acc_charger.i, i32 noundef 32, i32 noundef %add2.i) #6
  %cmp.i = icmp ult i32 %call3.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ucs1002_get_charge.exit_crit_edge

for.body.i.ucs1002_get_charge.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_charge.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ucs1002_get_charge.exit:                          ; preds = %for.body.i.ucs1002_get_charge.exit_crit_edge, %if.end.i30.ucs1002_get_charge.exit_crit_edge, %sw.bb2.ucs1002_get_charge.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i28, %sw.bb2.ucs1002_get_charge.exit_crit_edge ], [ 0, %if.end.i30.ucs1002_get_charge.exit_crit_edge ], [ 0, %for.body.i.ucs1002_get_charge.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i26) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total_acc_charger.i) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_measurement.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i31) #6
  %18 = ptrtoint ptr %reg.i31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg.i31, align 4, !annotation !113
  %regmap.i32 = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %regmap.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i32, align 4
  %call.i33 = call i32 @regmap_read(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %reg.i31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end.i37, label %sw.bb4.ucs1002_get_current.exit_crit_edge

sw.bb4.ucs1002_get_current.exit_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_current.exit

if.end.i37:                                       ; preds = %sw.bb4
  %21 = ptrtoint ptr %reg.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i31, align 4
  %23 = ptrtoint ptr %current_measurement.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %current_measurement.i, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %val, align 4
  %call1.i35 = call i32 @_find_next_bit_be(ptr noundef nonnull %current_measurement.i, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1.i35)
  %cmp11.i36 = icmp ult i32 %call1.i35, 8
  br i1 %cmp11.i36, label %if.end.i37.for.body.i44_crit_edge, label %if.end.i37.ucs1002_get_current.exit_crit_edge

if.end.i37.ucs1002_get_current.exit_crit_edge:    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_current.exit

if.end.i37.for.body.i44_crit_edge:                ; preds = %if.end.i37
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %if.end.i37.for.body.i44_crit_edge
  %i.012.i38 = phi i32 [ %call3.i42, %for.body.i44.for.body.i44_crit_edge ], [ %call1.i35, %if.end.i37.for.body.i44_crit_edge ]
  %arrayidx.i39 = getelementptr [8 x i32], ptr @ucs1002_get_current.bit_weights_uA, i32 0, i32 %i.012.i38
  %25 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i39, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %add.i40 = add i32 %28, %26
  store i32 %add.i40, ptr %val, align 4
  %add2.i41 = add nuw nsw i32 %i.012.i38, 1
  %call3.i42 = call i32 @_find_next_bit_be(ptr noundef nonnull %current_measurement.i, i32 noundef 8, i32 noundef %add2.i41) #6
  %cmp.i43 = icmp ult i32 %call3.i42, 8
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.ucs1002_get_current.exit_crit_edge

for.body.i44.ucs1002_get_current.exit_crit_edge:  ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_current.exit

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i44

ucs1002_get_current.exit:                         ; preds = %for.body.i44.ucs1002_get_current.exit_crit_edge, %if.end.i37.ucs1002_get_current.exit_crit_edge, %sw.bb4.ucs1002_get_current.exit_crit_edge
  %retval.0.i45 = phi i32 [ %call.i33, %sw.bb4.ucs1002_get_current.exit_crit_edge ], [ 0, %if.end.i37.ucs1002_get_current.exit_crit_edge ], [ 0, %for.body.i44.ucs1002_get_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i31) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_measurement.i) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i46) #6
  %29 = ptrtoint ptr %reg.i46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i46, align 4, !annotation !113
  %output_disable.i = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 6
  %30 = ptrtoint ptr %output_disable.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %output_disable.i, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i47 = icmp eq i8 %31, 0
  br i1 %tobool.not.i47, label %if.end.i50, label %sw.bb6.cleanup.sink.split.i_crit_edge

sw.bb6.cleanup.sink.split.i_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i50:                                       ; preds = %sw.bb6
  %regmap.i48 = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 2
  %32 = ptrtoint ptr %regmap.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i48, align 4
  %call.i49 = call i32 @regmap_read(ptr noundef %33, i32 noundef 25, ptr noundef nonnull %reg.i46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool1.not.i = icmp eq i32 %call.i49, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i50.ucs1002_get_max_current.exit_crit_edge

if.end.i50.ucs1002_get_max_current.exit_crit_edge: ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_max_current.exit

if.end3.i:                                        ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %reg.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg.i46, align 4
  %and.i51 = and i32 %35, 15
  %arrayidx.i52 = getelementptr [8 x i32], ptr @ucs1002_current_limit_uA, i32 0, i32 %and.i51
  %36 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i52, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end3.i, %sw.bb6.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %37, %if.end3.i ], [ 0, %sw.bb6.cleanup.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink.i, ptr %val, align 4
  br label %ucs1002_get_max_current.exit

ucs1002_get_max_current.exit:                     ; preds = %cleanup.sink.split.i, %if.end.i50.ucs1002_get_max_current.exit_crit_edge
  %retval.0.i53 = phi i32 [ %call.i49, %if.end.i50.ucs1002_get_max_current.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i46) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i54) #6
  %39 = ptrtoint ptr %reg.i54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %reg.i54, align 4, !annotation !113
  %regmap.i55 = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 2
  %40 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i55, align 4
  %call.i56 = call i32 @regmap_read(ptr noundef %41, i32 noundef 20, ptr noundef nonnull %reg.i54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.i59, label %sw.bb8.ucs1002_get_usb_type.exit_crit_edge

sw.bb8.ucs1002_get_usb_type.exit_crit_edge:       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ucs1002_get_usb_type.exit

if.end.i59:                                       ; preds = %sw.bb8
  %42 = ptrtoint ptr %reg.i54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg.i54, align 4
  %and.i58 = and i32 %43, 56
  %44 = add nsw i32 %and.i58, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %44)
  %45 = icmp ult i32 %44, 56
  br i1 %45, label %switch.lookup, label %if.end.i59.sw.epilog.i_crit_edge

if.end.i59.sw.epilog.i_crit_edge:                 ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  %46 = lshr exact i32 %44, 3
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ucs1002_get_property, i32 0, i32 %46
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.i59.sw.epilog.i_crit_edge
  %type.0.i = phi i32 [ 0, %if.end.i59.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %type.0.i, ptr %val, align 4
  br label %ucs1002_get_usb_type.exit

ucs1002_get_usb_type.exit:                        ; preds = %sw.epilog.i, %sw.bb8.ucs1002_get_usb_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i54) #6
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %health = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 8
  %49 = ptrtoint ptr %health to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %health, align 4
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %present = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 5
  %52 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %present, align 4, !range !114
  %54 = zext i8 %53 to i32
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.44, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %ucs1002_get_usb_type.exit, %ucs1002_get_max_current.exit, %ucs1002_get_current.exit, %ucs1002_get_charge.exit, %ucs1002_get_online.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ %50, %sw.bb10 ], [ %call.i56, %ucs1002_get_usb_type.exit ], [ %retval.0.i53, %ucs1002_get_max_current.exit ], [ %retval.0.i45, %ucs1002_get_current.exit ], [ %retval.0.i, %ucs1002_get_charge.exit ], [ %call.i, %ucs1002_get_online.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 65, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call1 = tail call fastcc i32 @ucs1002_set_max_current(ptr noundef %call, i32 noundef %2)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp1.i = icmp ugt i32 %4, 4
  br i1 %cmp1.i, label %sw.bb2.cleanup_crit_edge, label %if.end.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  %arrayidx.i = getelementptr [5 x i32], ptr @ucs1002_usb_types, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %switch.tableidx = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 6
  br i1 %7, label %switch.hole_check, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ucs1002_set_property, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap.i = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 23, i32 noundef 56, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %switch.lookup ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ucs1002_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %psp)
  %switch.selectcmp.case1 = icmp eq i32 %psp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %psp)
  %switch.selectcmp.case2 = icmp eq i32 %psp, 65
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = zext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucs1002_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %output_disable = getelementptr inbounds %struct.ucs1002_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %output_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %output_disable, align 1, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_ucs1002_power__288_686_ucs1002_driver_init6, !1, !"__initcall__kmod_ucs1002_power__288_686_ucs1002_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ucs1002_power.c", i32 686, i32 1}
!2 = !{ptr @__exitcall_ucs1002_driver_exit, !1, !"__exitcall_ucs1002_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ucs1002_power.c", i32 688, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/ucs1002_power.c", i32 689, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/ucs1002_power.c", i32 690, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/ucs1002_power.c", i32 691, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ucs1002_power.c", i32 681, i32 14}
!14 = !{ptr @ucs1002_driver, !15, !"ucs1002_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ucs1002_power.c", i32 679, i32 26}
!16 = !{ptr @ucs1002_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/ucs1002_power.c", i32 553, i32 17}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/ucs1002_power.c", i32 556, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ucs1002_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ucs1002_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/ucs1002_power.c", i32 562, i32 46}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/ucs1002_power.c", i32 563, i32 46}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/ucs1002_power.c", i32 570, i32 3}
!33 = !{ptr @ucs1002_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ucs1002_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/ucs1002_power.c", i32 575, i32 3}
!37 = !{ptr @ucs1002_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ucs1002_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/ucs1002_power.c", i32 585, i32 3}
!41 = !{ptr @ucs1002_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ucs1002_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/ucs1002_power.c", i32 597, i32 3}
!45 = !{ptr @ucs1002_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ucs1002_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/ucs1002_power.c", i32 605, i32 3}
!49 = !{ptr @ucs1002_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ucs1002_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/ucs1002_power.c", i32 613, i32 3}
!53 = !{ptr @ucs1002_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ucs1002_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/ucs1002_power.c", i32 619, i32 3}
!57 = !{ptr @ucs1002_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ucs1002_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/ucs1002_power.c", i32 641, i32 3}
!61 = !{ptr @ucs1002_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ucs1002_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ucs1002_probe.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/ucs1002_power.c", i32 646, i32 2}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ucs1002_probe.__key.34, !64, !"__key", i1 false, i1 false}
!67 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/ucs1002_power.c", i32 652, i32 7}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/ucs1002_power.c", i32 654, i32 4}
!72 = !{ptr @ucs1002_probe._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ucs1002_probe._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/ucs1002_power.c", i32 662, i32 14}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/ucs1002_power.c", i32 664, i32 4}
!78 = !{ptr @ucs1002_probe._entry.41, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ucs1002_probe._entry_ptr.43, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ucs1002_current_limit_uA, !81, !"ucs1002_current_limit_uA", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/ucs1002_power.c", i32 232, i32 18}
!82 = !{ptr @ucs1002_charger_desc, !83, !"ucs1002_charger_desc", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/ucs1002_power.c", i32 427, i32 39}
!84 = !{ptr @ucs1002_usb_types, !85, !"ucs1002_usb_types", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/ucs1002_power.c", i32 299, i32 35}
!86 = !{ptr @ucs1002_props, !87, !"ucs1002_props", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/ucs1002_power.c", i32 112, i32 35}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/ucs1002_power.c", i32 392, i32 17}
!90 = !{ptr @ucs1002_get_charge.bit_weights_uAh, !91, !"bit_weights_uAh", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/ucs1002_power.c", i32 159, i32 19}
!92 = !{ptr @ucs1002_get_current.bit_weights_uA, !93, !"bit_weights_uA", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/ucs1002_power.c", i32 208, i32 19}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/ucs1002_power.c", i32 524, i32 11}
!96 = !{ptr @ucs1002_regulator_descriptor, !97, !"ucs1002_regulator_descriptor", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/ucs1002_power.c", i32 523, i32 36}
!98 = !{ptr @ucs1002_regulator_ops, !99, !"ucs1002_regulator_ops", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/ucs1002_power.c", i32 517, i32 35}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/ucs1002_power.c", i32 468, i32 47}
!102 = !{ptr @ucs1002_of_match, !103, !"ucs1002_of_match", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/ucs1002_power.c", i32 673, i32 34}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i8 0, i8 2}
